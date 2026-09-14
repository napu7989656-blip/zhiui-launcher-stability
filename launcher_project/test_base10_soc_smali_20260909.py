import argparse,json,re
from stability_base10_soc_patch_20260909 import OUT,SRC,DST,P,S,A,B,Q,T,SLOT
from test_base10_tile_identity_20260909 import TileVM,Obj,FF,NAV
from test_base10_tile_subtitles_20260909 import check as inherited
from stability_verify_patch_20260906 import norm
from stability_local_audit_20260905 import methods
class SocVM(TileVM):
    def __init__(self,tree):super().__init__(tree);self.delivered=[];self.now=100
    def fixture(self):
        c,d,g=super().fixture();c.f[FF+'->stabilitySocSlot:'+SLOT]=Obj(SLOT);c.f[FF+'->stabilitySocActionGate:'+P+'ReadAfterAction;']=Obj(P+'ReadAfterAction;');return c,d,g
    def extra(self,target,a):
        cls,sig=target.split('->')
        if target=='Landroid/os/SystemClock;->uptimeMillis()J':return self.now
        if cls==P+'ReadAfterAction;':
            if sig.startswith('begin('):
                token=Obj(P+'ReadAfterAction$Token;',gate=a[0],started=a[1]);a[0].f['current']=token;return token
            if sig.startswith('blocked('):
                token=a[0].f.get('current')
                if token is not None and a[1]-token.f['started']<15000:return 1
                a[0].f['current']=None;return 0
            if sig=='reset()V':a[0].f['current']=None;return
        if cls==P+'ReadAfterAction$Token;' and sig=='finish()Z':
            gate=a[0].f['gate'];current=gate.f.get('current') is a[0]
            if current:gate.f['current']=None
            return int(current)
        if cls in (S,A):return self.execute(cls,sig,a)
        if cls==SLOT and sig=='begin()'+T:
            t=Obj(T,slot=a[0]);a[0].f['current']=t;return t
        if cls==T:
            current=a[0].f['slot'].f.get('current') is a[0]
            if sig=='isCurrent()Z':return int(current)
            if sig.startswith('post('):
                if current and self.accept:self.submissions.append(a)
                return int(current and self.accept)
        return super().extra(target,a)
    def run_callback(self,task):self.delivered.append(task)
    def read(self,c):
        r=Obj(S);self.execute(S,'<init>(Lo/ff;)V',[r,c]);return r

def check(tree,action_parent=None):
    cases=[]
    for state in ['normal','cached_root','new_query','close','rebuild','new_root','service_replaced','disposed','dead','tracking','tracking_ends','user_progress','rejected']:
        vm=SocVM(tree);c,d,g=vm.fixture();read=vm.read(c);task=Obj('original_callback')
        vm.execute(S,'post(Ljava/lang/Runnable;)V',[read,task]);pending=vm.submissions[-1][2]
        if state=='cached_root':c.f[FF+'->Ώ:Landroid/view/View;']=c.f[FF+'->ͳ:Landroid/view/View;'];c.f[FF+'->ͳ:Landroid/view/View;']=0
        if state=='new_query':vm.read(c)
        if state=='close':vm.execute(S,'close(Lo/ff;)V',[c])
        if state=='rebuild':c.f[FF+'->stabilityTileEpoch:Ljava/lang/Object;']=Obj('new_epoch')
        if state=='new_root':c.f[FF+'->ͳ:Landroid/view/View;']=Obj('new_root')
        if state=='service_replaced':vm.current=Obj(NAV)
        if state=='disposed':c.f[FF+'->stabilityDisposed:Z']=1
        if state=='dead':vm.current.f[NAV+'->ˋ:Z']=1
        if state in ['tracking','tracking_ends']:
            vm.execute(S,'tracking(Lo/ff;Z)V',[c,1]);new=vm.read(c);assert vm.execute(S,'current()Z',[new])==0
            if state=='tracking_ends':vm.execute(S,'tracking(Lo/ff;Z)V',[c,0]);assert vm.execute(S,'current()Z',[new])==0
        if state=='user_progress':vm.execute(S,'changed(Lo/ff;)V',[c])
        if state=='rejected':vm.submissions.clear();vm.accept=False;vm.execute(S,'post(Ljava/lang/Runnable;)V',[read,task]);assert not vm.submissions;cases.append(state);continue
        vm.execute(A,'run()V',[pending]);assert vm.delivered==([task] if state in ['normal','cached_root'] else []),state
        cases.append(state)
    vm=SocVM(tree);c,d,g=vm.fixture()
    for cls,sig,args in [('ie','<init>(Lo/ff;I)V',[c,24]),('sj','<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V',[c,Obj('seek'),Obj('text'),Obj('image'),3])]:
        job=Obj('Lo/'+cls+';');vm.execute(job.kind,sig,[job]+args);read=job.f[job.kind+'->stabilitySocRead:'+S];assert vm.execute(S,'current()Z',[read])==1
        args[-1]=0;other=Obj(job.kind);vm.execute(other.kind,sig,[other]+args);assert not other.f.get(other.kind+'->stabilitySocRead:'+S)
        b=vm.life.body(job.kind,'run()V');start=b.index('    iget-object v0, p0, '+job.kind+'->stabilitySocRead:'+S)
        label=re.search(r'if-nez v0, (:\w+)',b[start:])[1];end=b.index('    '+label+'\n',start)+len('    '+label+'\n');guard=b[start:end]
        vm.execute(S,'close(Lo/ff;)V',[c]);vm.execute(job.kind,'run()V',[job],body=guard);assert vm.reads==0
        cases.append('capture_and_entry_'+cls)
    # Execute only inserted listener hooks, retaining original UI/action instructions in inverse proof.
    for sig,flag in [('onStartTrackingTouch(Landroid/widget/SeekBar;)V',1),('onStopTrackingTouch(Landroid/widget/SeekBar;)V',0)]:
        b=vm.life.body('Lo/re;',sig);start=b.index('    :pswitch_0\n');end=b.index(S+'->tracking(Lo/ff;Z)V',start)+len(S+'->tracking(Lo/ff;Z)V')
        obj=Obj('Lo/re;',**{'Lo/re;->Ͱ:Ljava/lang/Object;':c});read=vm.read(c)
        vm.execute('Lo/re;',sig,[obj,Obj('seek')],body=b[start:end]);assert c.f[FF+'->stabilitySocTracking:Z']==flag and not vm.execute(S,'current()Z',[read]);cases.append(sig)
    b=vm.life.body('Lo/re;','onProgressChanged(Landroid/widget/SeekBar;IZ)V');start=b.index('    :pswitch_0\n');label=re.search(r'if-eqz p3, (:\w+)',b[start:])[1];end=b.index('    '+label+'\n',start)+len('    '+label+'\n')
    for user in [0,1]:
        vm.execute(S,'close(Lo/ff;)V',[c]);read=vm.read(c);vm.execute('Lo/re;','onProgressChanged(Landroid/widget/SeekBar;IZ)V',[obj,Obj('seek'),42,user],body=b[start:end]);assert vm.execute(S,'current()Z',[read])==1-user
        cases.append('progress_from_user_'+str(user))
    for cls in ['de','ϓ','bg','se','je']:
        assert norm((action_parent if cls=='bg' and action_parent else SRC)/f'smali/o/{cls}.smali')==norm(tree/f'smali/o/{cls}.smali'),cls
    for cls in ['ff','ie','sj','re']:
        for _,(body,_) in methods(tree/f'smali/o/{cls}.smali').items():
            for payload in re.findall(r'\.packed-switch [^\n]+\n(.*?)\.end packed-switch',body,re.S):assert all(re.fullmatch(r':\w+',line.strip()) for line in payload.splitlines() if line.strip())
    return dict(cases=cases,inherited=inherited(tree,shared_sj_parent=DST),limits='Actual SOC capture, acceptance, queue routing and drag hooks executed with explicit TileSlot/UI doubles. Shared unchanged query/action bodies checked by inverse proof. No ART or vehicle execution; action completion latency review still pending.')
def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/'base10_r9_soc_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        text=(DST/rel).read_text(encoding='utf-8')
        for r in reversed(records):
            if r['path']==rel:assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
        assert text==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:
        final=OUT/'final_redecode/base10_r9'
        for rel in json.loads((OUT/'base10_r9_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
        rows.append(check(final))
    (OUT/('base10_r9_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS: '+str(len(rows[0]['cases']))+' SOC capture/result/drag cases plus 95 inherited tile cases per artifact.')
if __name__=='__main__':main()
