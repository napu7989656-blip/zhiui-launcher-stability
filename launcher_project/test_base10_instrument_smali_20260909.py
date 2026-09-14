"""Actual host/producer/lifecycle wiring; production state machine tested on JVM."""
import argparse,json,re,difflib
from stability_base10_instrument_patch_20260909 import OUT,SRC,DST,TAG,S,Q,H
from test_base10_nav_smali_20260908 import NavVM,check as nav_check
from test_base09_smali_20260908 import Obj,VM,FF,NAV
from test_base10_read_keys_20260908 import keys
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm

class WiringVM(NavVM):
    def __init__(self,tree):
        super().__init__(tree);self.extra_call=self.extra;self.calls=[];self.static_fields[FF+'->Τ:[I']=[150,350,700,1200,2000]
    def extra(self,target,a):
        self.calls.append((target,a))
        if target.startswith(H+'->'):return self.execute(H,target.split('->')[1],a)
        if target.startswith((S+'->',Q+'->')):return None
        if target=='Lo/de;-><init>(Lo/ff;II)V':a[0].f.update(owner=a[1],step=a[2],selector=a[3]);return
        if target=='Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z':self.posts.append(a);return int(self.accept)
        if target=='Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V':return
        if target==FF+'->ͽ()V':return
        raise AssertionError('Unexpected external call: '+target)

def method(tree,cls,sig):return VM(tree).body('Lo/'+cls+';',sig)
def instructions(b):return [l.strip() for l in b.splitlines() if l.strip() and not l.strip().startswith(('.','#'))]
def check(tree):
    # A switch payload contains labels, never executable hook instructions.
    for cls in ['ff','ie','je','se']:
        for _,(body,_) in methods(tree/f'smali/o/{cls}.smali').items():
            for payload in re.findall(r'\.packed-switch [^\n]+\n(.*?)\.end packed-switch',body,re.S):
                assert all(re.fullmatch(r':\w+',line.strip()) for line in payload.splitlines() if line.strip()),cls
    vm=WiringVM(tree);c,seek,text=vm.setup();h=Obj(H)
    vm.execute(H,'<init>(Lo/ff;)V',[h,c]);root=c.f[FF+'->ͳ:Landroid/view/View;']
    cases=[]
    for state in ['active','cached_only','old_cached_with_new_active','different','null','disposed','dead','replacement_service']:
        vm=WiringVM(tree);c,seek,text=vm.setup();h=Obj(H);vm.execute(H,'<init>(Lo/ff;)V',[h,c]);captured=c.f[FF+'->ͳ:Landroid/view/View;']
        if state.startswith(('cached','old_cached')):c.f[FF+'->Ώ:Landroid/view/View;']=captured;c.f[FF+'->ͳ:Landroid/view/View;']=0 if state=='cached_only' else Obj('replacement')
        if state=='different':captured=Obj('unrelated')
        if state=='null':captured=0
        if state=='disposed':c.f[FF+'->stabilityDisposed:Z']=1
        if state=='dead':vm.current.f[NAV+'->ˋ:Z']=1
        if state=='replacement_service':vm.current=Obj(NAV)
        assert vm.execute(H,'usable(Ljava/lang/Object;)Z',[h,captured])==int(state in ['active','cached_only']),state
        cases.append('host_'+state)
    vm=WiringVM(tree);c,seek,text=vm.setup();h=Obj(H);vm.execute(H,'<init>(Lo/ff;)V',[h,c])
    assert vm.execute(H,'root()Ljava/lang/Object;',[h]) is c.f[FF+'->ͳ:Landroid/view/View;']
    vm.execute(H,'commit(I)V',[h,8]);assert vm.execute(H,'cached()I',[h])==8
    vm.execute(H,'retryState(IZ)V',[h,2,1]);assert c.f[FF+'->Κ:I']==2 and c.f[FF+'->Θ:Z']==1
    assert vm.execute(H,'delays()[I',[h])==[150,350,700,1200,2000]
    clinit=method(tree,'ff','<clinit>()V');assert 'filled-new-array {v2, v0, v1, v3, v4}, [I' in clinit
    for literal in ['0x96','0x15e','0x2bc','0x4b0','0x7d0']:assert literal in clinit
    task=Obj('callback')
    for accept in [True,False]:vm.accept=accept;assert vm.execute(H,'post(Ljava/lang/Runnable;J)Z',[h,task,150,0])==int(accept)
    assert vm.posts[-1]==[c.f[FF+'->Ͱ:Landroid/os/Handler;'],task,150,0]
    vm.execute(H,'remove(Ljava/lang/Runnable;)V',[h,task]);vm.execute(H,'refresh()V',[h]);vm.execute(H,'failed(Ljava/lang/RuntimeException;)V',[h,Obj('error')])
    cases.append('host_cache_retry_delay_queue_rejection_remove_refresh_log')
    state=c.f[FF+'->stabilityInstrumentReads:'+S]
    for selector in [0,1,5,6,22,24,27,28]:
        job=Obj('Lo/ie;');vm.execute('Lo/ie;','<init>(Lo/ff;I)V',[job,c,selector])
        request=job.f.get('Lo/ie;->stabilityInstrumentRequest:'+Q)
        assert bool(request)==(selector==28)
        if request:assert request.f['retry'] and request.f['state'] is state;refreshjob=job
    for selector in [0,1,2]:
        job=vm.job(c,seek,text,selector);request=job.f.get('Lo/je;->stabilityInstrumentRequest:'+Q)
        assert bool(request)==(selector==1)
        if request:assert not request.f['retry'] and request.f['state'] is state;initialjob=job
    cases.append('only_initial_instrument_and_refresh_capture_shared_state')
    for cls,job,value,register,delegate in [('ie',refreshjob,9,'v1','v3'),('je',initialjob,7,'v5','v3')]:
        b=method(tree,cls,'run()V');m=re.search(r'^    iget-object (v\d+), p0, Lo/'+cls+r';->stabilityInstrumentRequest:'+re.escape(Q),b,re.M);assert m
        end=b.index('->complete(ILjava/lang/Runnable;)V',m.start())+len('->complete(ILjava/lang/Runnable;)V');block=b[m.start():end]
        initial={'v0':c if cls=='ie' else seek,'v1':value if cls=='ie' else None,'v2':text,'v3':c,'v5':value,'v8':1,'v11':2}
        vm.calls.clear();vm.execute('Lo/'+cls+';','run()V',[job],body=block,initial=initial)
        target,args=vm.calls[-1];assert target==Q+'->complete(ILjava/lang/Runnable;)V' and args[1]==value
        cb=args[2]
        if cls=='ie':assert cb.f==dict(owner=c,step=value,selector=2)
        else:assert cb.f['Lo/be;->Ͱ:I']==1 and cb.f['Lo/be;->ͱ:Landroid/widget/SeekBar;'] is seek
        cases.append(cls+'_worker_only_submits_original_delegate')
    b=method(tree,'ie','run()V');m=re.search(r'^    iget-object v1, p0, Lo/ie;->stabilityInstrumentRequest:'+re.escape(Q)+r'\s+invoke-virtual \{v1\}, '+re.escape(Q)+r'->invalid\(\)V',b,re.M);assert m
    vm.calls.clear();vm.execute('Lo/ie;','run()V',[refreshjob],body=m[0]);assert vm.calls[-1][0]==Q+'->invalid()V'
    branch=b[b.index('    :pswitch_0\n'):b.index('    :pswitch_1\n')]
    assert not any(l.startswith('iput') and FF in l for l in instructions(branch));assert 'postDelayed' not in branch
    cases.append('invalid_result_posts_without_background_cache_retry_writes')
    b=method(tree,'ff','ͽ()V');start=b.index('    iget v0, p0, Lo/ff;->Ι:I',b.index('    :cond_1'));end=b.index('->applyCached(Ljava/lang/Runnable;)V',start)+len('->applyCached(Ljava/lang/Runnable;)V')
    vm.calls.clear();vm.execute(FF,'ͽ()V',[c],body=b[start:end]);assert vm.calls[-1][0]==S+'->applyCached(Ljava/lang/Runnable;)V';assert vm.calls[-1][1][1].f['selector']==0
    cases.append('prefill_uses_owned_cached_publication')
    for selector in [0,1,2]:
        obj=Obj('Lo/se;',**{'Lo/se;->ˋ:I':selector,'Lo/se;->Ͱ:Lo/ff;':c});vm.calls.clear()
        vm.execute('Lo/se;','onStartTrackingTouch(Landroid/widget/SeekBar;)V',[obj,seek]);assert any(t==S+'->tracking(Z)V' and a[1]==1 for t,a in vm.calls)==(selector==1)
    b=method(tree,'se','onStopTrackingTouch(Landroid/widget/SeekBar;)V');a=b.index('    :pswitch_0\n');end=b.index('->tracking(Z)V',a)+len('->tracking(Z)V');vm.calls.clear()
    vm.execute('Lo/se;','onStopTrackingTouch(Landroid/widget/SeekBar;)V',[obj,seek],body=b[a:end]);assert vm.calls[-1][0]==S+'->tracking(Z)V' and vm.calls[-1][1][1]==0
    cases.append('instrument_only_drag_begin_and_end_invalidate')
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z']:
        b=method(tree,'ff',sig);assert len(re.findall(re.escape(S)+r'->invalidate\(\)V',b))==1
    # Unmodified action callbacks and other original helper classes stay exact.
    for cls in ['de','ee','ue','be','te']:
        assert norm(SRC/f'smali/o/{cls}.smali')==norm(tree/f'smali/o/{cls}.smali')
    assert keys(tree)==[1,2,2]
    replacements=json.loads((OUT/'base10_r6_key_manifest.json').read_text())
    return dict(tree=str(tree),cases=cases,original_action_helpers_preserved=True,inherited=nav_check(tree,replacements,instrument_parent=DST),limits='Actual host/constructor/submission/drag instructions with production-module calls recorded; full InstrumentReads state machine executed separately as real JVM Java. No ART, IPC, vehicle or full-window execution.')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/f'{TAG}_instrument_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        restored=(DST/rel).read_text(encoding='utf-8')
        for rec in reversed(records):
            if rec['path']==rel:assert restored.count(rec['after'])==1;restored=restored.replace(rec['after'],rec['before'])
        assert restored==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:rows.append(check(OUT/'final_redecode'/TAG))
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS: instrument host, initial/refresh/cached publication, invalid-result route, drag/close ownership; original action/query bodies restored exactly; inherited nav/queue/read/lifecycle checks.')
if __name__=='__main__':main()
