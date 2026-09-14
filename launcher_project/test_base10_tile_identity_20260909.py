"""Execute actual r8 bridge smali with explicit UI/query/module doubles.
Production TileSlot/TileBatch concurrency is separately tested on the JVM.
"""
import argparse,json,re,difflib
from pathlib import Path
from stability_base10_tile_identity_20260909 import OUT,SRC,DST,P,S,B,E,SLOT,Q,A
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj,FF,NAV,VM
from stability_verify_patch_20260906 import norm
from stability_local_audit_20260905 import treehash,methods
DF='Lo/df;'; KE='Lo/ke;'; STATE=P+'TileState;'
class TileVM(NavVM):
    def __init__(self,tree):
        super().__init__(tree);self.extra_call=self.extra;self.callbacks=[];self.submissions=[]
    def extra(self,target,a):
        owner,sig=target.split('->')
        if owner in (S,A,STATE,KE):return self.execute(owner,sig,a)
        if owner==SLOT:
            if sig=='invalidate()V':a[0].f['current']=None
            return
        if owner==B:
            batch=a[0]
            if sig.startswith('<init>'):batch.f.update({B+'->'+n+':'+t:v for n,t,v in zip(['owner','root','epoch','queue'],['Ljava/lang/Object;']*3+[Q],a[1:])});batch.f['entries']={}
            elif sig.startswith('capture('):
                item,slot,frame,action=a[1:];token=Obj('ticket');slot.f['current']=token
                batch.f['entries'][id(item)]=Obj(E,**{E+'->frame:Ljava/lang/Object;':frame,E+'->action:Ljava/lang/Object;':action,'slot':slot,'token':token})
            elif sig.startswith('entry('):return batch.f['entries'].get(id(a[1]))
            elif sig.startswith('current('):
                e=batch.f['entries'].get(id(a[1]));return int(e is not None and e.f['slot'].f.get('current') is e.f['token'])
            elif sig.startswith('post('):self.submissions.append((batch,a[1],a[2]));return int(self.accept)
            else:raise AssertionError(target)
            return
        if target=='Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;':return [a[0]]
        if sig=='iterator()Ljava/util/Iterator;':return iter(a[0])
        if sig=='hasNext()Z':
            if not hasattr(self,'iterator_cache'):self.iterator_cache={}
            k=a[0] # retain the iterator identity; numeric ids can be reused after exhaustion
            if k not in self.iterator_cache:self.iterator_cache[k]=next(a[0],None)
            return int(self.iterator_cache[k] is not None)
        if sig=='next()Ljava/lang/Object;':return self.iterator_cache.pop(a[0])
        if sig=='contains(Ljava/lang/Object;)Z':return int(any(x is a[1] for x in a[0]))
        if sig=='size()I':return len(a[0])
        if sig=='get(I)Ljava/lang/Object;':return a[0][a[1]]
        if target=='Ljava/lang/Object;->getClass()Ljava/lang/Class;':return Obj('class')
        if target==FF+'->ͼ(Ljava/lang/String;Ljava/lang/String;)I':self.reads+=1;return self.query
        if target=='Lo/fe;-><init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V':return self.execute('Lo/fe;',sig,a)
        if target==FF+'->Ͱ(Lo/df;ZLjava/lang/String;)V':self.callbacks.append(a);return
        if target=='Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V':return
        raise AssertionError('Unmodelled tile call '+target)
    def run_callback(self,task):self.execute(task.kind,'run()V',[task])
    def fixture(self):
        c,_,_=self.setup();c.f[FF+'->stabilityTileEpoch:Ljava/lang/Object;']=Obj('epoch')
        d=Obj(DF,**{DF+'->Ͷ:Landroid/widget/FrameLayout;':Obj('frame'),DF+'->stabilityTileSlot:'+SLOT:Obj(SLOT),DF+'->stabilityTileAction:Ljava/lang/Object;':Obj('action')})
        c.f[FF+'->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;']=[d];c.f[FF+'->Β:Ljava/util/ArrayList;']=[d]
        getter=Obj(KE,**{KE+'->ˏ:Lo/ff;':c,KE+'->ˋ:I':8});d.f[DF+'->ͳ:Lo/ef;']=getter
        return c,d,getter
    def capture(self,c,d):return self.execute(S,'capture(Lo/ff;Lo/df;)'+B,[c,d])

def check(tree,shared_sj_parent=None):
    cases=[]
    for state in ['active','cached_only','new_active','new_epoch','null_root','new_frame','null_frame','new_action','new_query','removed','disposed','dead','service_replaced']:
        vm=TileVM(tree);c,d,g=vm.fixture();batch=vm.capture(c,d)
        if state=='cached_only':c.f[FF+'->Ώ:Landroid/view/View;']=c.f[FF+'->ͳ:Landroid/view/View;'];c.f[FF+'->ͳ:Landroid/view/View;']=0
        if state=='new_active':c.f[FF+'->Ώ:Landroid/view/View;']=c.f[FF+'->ͳ:Landroid/view/View;'];c.f[FF+'->ͳ:Landroid/view/View;']=Obj('new_root')
        if state=='new_epoch':vm.execute(S,'invalidate(Lo/ff;)V',[c])
        if state=='null_root':batch.f[B+'->root:Ljava/lang/Object;']=0
        if state=='new_frame':d.f[DF+'->Ͷ:Landroid/widget/FrameLayout;']=Obj('new_frame')
        if state=='null_frame':d.f[DF+'->Ͷ:Landroid/widget/FrameLayout;']=0
        if state=='new_action':vm.execute(S,'action(Lo/df;)V',[d])
        if state=='new_query':vm.capture(c,d)
        if state=='removed':c.f[FF+'->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;']=[]
        if state=='disposed':c.f[FF+'->stabilityDisposed:Z']=1
        if state=='dead':vm.current.f[NAV+'->ˋ:Z']=1
        if state=='service_replaced':vm.current=Obj(NAV)
        expected=state in ('active','cached_only')
        assert vm.execute(S,'accept('+B+DF+')Z',[batch,d])==int(expected),state
        c.f[FF+'->Π:Z']=0;vm.query=1
        assert vm.execute(S,'read('+B+DF+'Lo/ef;)Z',[batch,d,g])==int(expected)
        assert vm.reads==int(expected) and c.f[FF+'->Π:Z']==0
        cb=Obj('Lo/fe;');vm.execute('Lo/fe;','<init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V',[cb,c,d,1,'fresh',0])
        wrapper=Obj(A);vm.execute(A,'<init>('+B+DF+'Ljava/lang/Runnable;)V',[wrapper,batch,d,cb]);vm.execute(A,'run()V',[wrapper])
        assert len(vm.callbacks)==int(expected) and c.f[FF+'->Π:Z']==int(expected),state
        cases.append('publication_'+state)
    # Actual query mapping and fallback, with injected integer replies only.
    for selector,field,on in [(2,'Ο',1),(3,'Ν',2),(6,'Ξ',2),(8,'Π',1)]:
        for query in [-1,0,1,2,3]:
            for cached in [0,1]:
                vm=TileVM(tree);c,d,g=vm.fixture();g.f[KE+'->ˋ:I']=selector;c.f[FF+'->'+field+':Z']=cached;vm.query=query
                value=vm.execute(KE,'stabilityRead()Z',[g]);assert value==(cached if query<0 else int(query==on))
                assert c.f[FF+'->'+field+':Z']==cached and vm.reads==1
                vm.execute(STATE,'commit(Lo/ff;Lo/df;Z)V',[c,d,value]);assert c.f[FF+'->'+field+':Z']==value
                cases.append(f'pure_query_{selector}_{query}_{cached}')
    # All selector aliases are checked against the actual original packed switch.
    for selector in range(-1,13):
        vm=TileVM(tree);c,d,g=vm.fixture();g.f[KE+'->ˋ:I']=selector
        for f in 'ΟΝΞΠΜ':c.f[FF+'->'+f+':Z']=0
        vm.execute(KE,'stabilityCommit(Z)V',[g,1]);changed=[f for f in 'ΟΝΞΠΜ' if c.f[FF+'->'+f+':Z']]
        expected={2:['Ο'],3:['Ν'],6:['Ξ'],8:['Π'],0:[],5:[],10:[]}.get(selector,['Μ'])
        assert changed==expected,(selector,changed,expected)
        cases.append('commit_selector_'+str(selector))
    vm=TileVM(tree);c,d,g=vm.fixture();batch=vm.capture(c,d)
    for kind,selector in [('Lo/fe;',0),('Lo/fe;',1),('Lo/Ϋ;',7)]:
        cb=Obj(kind,**{kind+'->Ͱ:I':selector,kind+'->Ͳ:Lo/df;':d,kind+'->ͳ:Ljava/lang/Object;':d})
        vm.execute(S,'post('+B+'Ljava/lang/Runnable;)Z',[batch,cb]);assert vm.submissions[-1][1] is d
        wrapper=vm.submissions[-1][2];assert wrapper.f[A+'->delegate:Ljava/lang/Runnable;'] is cb
        cases.append('original_callback_route_'+kind+str(selector))
    bulk=Obj('Lo/sj;',**{'Lo/sj;->Ͱ:I':4,'Lo/sj;->ͱ:Ljava/lang/Object;':[d],'Lo/sj;->Ͳ:Ljava/lang/Object;':[True],'Lo/sj;->ʹ:Ljava/lang/Object;':['subtitle']})
    vm.execute(S,'post('+B+'Ljava/lang/Runnable;)Z',[batch,bulk]);cb=vm.submissions[-1][2].f[A+'->delegate:Ljava/lang/Runnable;']
    assert cb.kind=='Lo/fe;' and cb.f['Lo/fe;->ͱ:Lo/ff;'] is c and cb.f['Lo/fe;->Ͳ:Lo/df;'] is d and cb.f['Lo/fe;->ͳ:Z']==1 and cb.f['Lo/fe;->ʹ:Ljava/lang/String;']=='subtitle'
    cases.append('bulk_split_preserves_original_row_values')
    for cls,sig,args,index in [('ag','<init>(ILjava/lang/Object;Ljava/lang/Object;)V',[16,c,[d]],0),('ie','<init>(Lo/ff;I)V',[c,22],1),('ce','<init>(Lo/ff;Lo/df;I)V',[c,d,3],2)]:
        job=Obj('Lo/'+cls+';');vm.execute(job.kind,sig,[job]+args);assert job.f[job.kind+'->stabilityTileBatch:'+B].f['entries'][id(d)]
        args[index]=0;job=Obj(job.kind);vm.execute(job.kind,sig,[job]+args);assert not job.f.get(job.kind+'->stabilityTileBatch:'+B)
        cases.append('constructor_capture_only_'+cls)
    for cls in ['ff','df','ag','ie','ce','Ϙ','ke','fe']:
        for _,(body,_) in methods(tree/f'smali/o/{cls}.smali').items():
            for payload in re.findall(r'\.packed-switch [^\n]+\n(.*?)\.end packed-switch',body,re.S):assert all(re.fullmatch(r':\w+',line.strip()) for line in payload.splitlines() if line.strip()),cls
    ce=VM(tree).body('Lo/ce;','run()V');assert 'Ljava/lang/Thread;' not in ce
    assert ce.count('QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)Z')==2
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z','Ό()V']:assert VM(tree).body(FF,sig).count(S+'->invalidate(Lo/ff;)V')==1
    assert VM(tree).body('Lo/Ϙ;','onClick(Landroid/view/View;)V').count(S+'->action(Lo/df;)V')==1
    assert norm((shared_sj_parent or SRC)/'smali/o/sj.smali')==norm(tree/'smali/o/sj.smali')
    before=dict(norm(SRC/'smali/o/ke.smali')[1]);after=dict(norm(tree/'smali/o/ke.smali')[1]);assert before['public final get()Z']==after['public final get()Z']
    return dict(cases=cases,count=len(cases),limits='Actual bridge smali executes in a limited sequential interpreter; module, vehicle query, Android UI are doubles. Production module concurrency tested independently on JVM. Not ART or vehicle verification.')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');args=p.parse_args()
    records=[]
    for name in ['tile','identity','mapping']:records+=json.loads((OUT/f'base10_r8_{name}_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        restored=(DST/rel).read_text(encoding='utf-8')
        for rec in reversed(records):
            if rec['path']!=rel:continue
            if rec.get('append_only'):assert restored.endswith(rec['after']);restored=restored[:-len(rec['after'])]
            elif rec['after']=='':
                # The only removal is the known sj tile commit, reconstructed from its original call anchor.
                assert rel=='smali/o/sj.smali';anchor='    invoke-virtual {v0, v5, v6, v7}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V';assert restored.count(anchor)==1;restored=restored.replace(anchor,rec['before']+anchor)
            else:assert restored.count(rec['after'])==1,(rel,rec['after'][:80]);restored=restored.replace(rec['after'],rec['before'])
        assert restored==(SRC/rel).read_text(encoding='utf-8'),rel
    a,b=treehash(SRC),treehash(DST);changed=sorted(k for k in a.keys()|b.keys() if a.get(k)!=b.get(k))
    # Explicit reviewed list, not inferred approval from the worktree.
    expected=['smali/o/'+c+'.smali' for c in ['ag','ce','df','fe','ff','ie','ke','Ϙ']]
    expected+=['smali/com/byd/launcher/stability/'+c+'.smali' for c in ['TileState','TileSnapshots','TileApply','TileSlot','TileSlot$1','TileSlot$Ticket','TileSlot$Pending','TileSlot$Queue','TileBatch','TileBatch$1','TileBatch$Entry','QuickSettingsReadExecutor','QuickSettingsReadExecutor$Read']]
    assert changed==sorted(expected),(changed,expected)
    rows=[check(DST)]
    if args.final:
        final=OUT/'final_redecode/base10_r8'
        for rel in changed:assert norm(DST/rel)==norm(final/rel),rel
        rows.append(check(final))
    (OUT/'base10_r8_changes.json').write_text(json.dumps(changed,indent=2),encoding='utf-8')
    (OUT/('base10_r8_branch_tests'+('_final' if args.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True,inherited='r7 verified behaviors retained by exact inverse-patch proof for changed original classes; r8 changed behavior tested here; full APK content gate runs separately.'),indent=2),encoding='utf-8')
    patch=''
    for rel in changed:patch+=''.join(difflib.unified_diff((SRC/rel).read_text(encoding='utf-8').splitlines(True) if (SRC/rel).exists() else [],(DST/rel).read_text(encoding='utf-8').splitlines(True),fromfile='r7/'+rel,tofile='r8/'+rel))
    (OUT/'base10_r8.patch').write_text(patch,encoding='utf-8')
    print('PASS: r8 exact inverse patch, explicit file allowlist, '+str(rows[0]['count'])+' bridge/query/cache/constructor cases; source'+('/final' if args.final else '')+'.')
if __name__=='__main__':main()
