"""Execute panel-glass helper and original x9 branch using Android image doubles."""
import argparse,json,re
from stability_base10_glass_patch_20260910 import OUT,SRC,DST,P,S,A,SLOT,T
from test_base10_wait_smali_20260909 import WaitVM,check as inherited
from test_base10_tile_identity_20260909 import Obj,FF,NAV
from stability_verify_patch_20260906 import norm
class GlassVM(WaitVM):
    def __init__(self,tree):
        super().__init__(tree);self.preparations=[];self.backgrounds=[];self.sleeps=0;self.sleep_hook=None
        self.static_fields['Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;']=Obj('interpolator')
        self.static_fields['Lo/ak;->ͺ:Landroid/graphics/Bitmap;']=0
    def setup(self):
        c,s,t=super().setup();c.f[FF+'->ʹ:Landroid/view/View;']=Obj('glass_view')
        for f in ['stabilityGlassSlot','stabilityGlassPrepareSlot']:c.f[FF+'->'+f+':'+SLOT]=Obj(SLOT)
        return c,s,t
    def read(self,c):
        r=Obj(S);self.execute(S,'<init>(Lo/ff;Landroid/view/View;)V',[r,c,c.f[FF+'->ʹ:Landroid/view/View;']]);return r
    def extra(self,target,a):
        cls,sig=target.split('->')
        if cls in (S,A):return self.execute(cls,sig,a)
        if target=='Landroid/graphics/Bitmap;->isRecycled()Z':return a[0].f.get('recycled',0)
        if target=='Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;':return Obj('drawable',bitmap=a[0],color=a[1])
        if target=='Lo/pe;-><init>(Landroid/view/View;Landroid/graphics/drawable/LayerDrawable;I)V':return self.execute(cls,sig,a)
        if target=='Lo/lII;-><init>(I)V':a[0].f['selector']=a[1];return
        if target=='Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V':self.backgrounds.append(a);return
        if target=='Ljava/lang/Thread;->sleep(J)V':
            self.sleeps+=1
            if self.sleep_hook:self.sleep_hook()
            return
        return super().extra(target,a)
    def run_callback(self,task):
        if task.kind=='Lo/pe;':return self.execute(task.kind,'run()V',[task])
        self.preparations.append(task)
    def drain(self):
        pending=list(self.submissions);self.submissions.clear()
        for _,_,task in pending:self.execute(A,'run()V',[task])
    def job(self,c):
        task=Obj('Lo/x9;');self.execute(task.kind,'<init>(Lo/ff;ZLandroid/view/View;)V',[task,c,1,c.f[FF+'->ʹ:Landroid/view/View;']]);return task
def check(tree):
    cases=[]
    for state in ['normal','closed','new_read','new_root','cached_only','cached_and_new','new_target','null_target','epoch_changed','disposed','dead','new_service','interrupted','rejected']:
        vm=GlassVM(tree);c,_,_=vm.setup();r=vm.read(c)
        for method in ['prepare','post']:vm.execute(S,method+'(Ljava/lang/Runnable;)V',[r,Obj(method)])
        assert len(vm.submissions)==2 and vm.submissions[0][0] is not vm.submissions[1][0]
        if state=='closed':vm.execute(S,'close(Lo/ff;)V',[c])
        if state=='new_read':vm.read(c)
        if state=='new_root':c.f[FF+'->ͳ:Landroid/view/View;']=Obj('new')
        if state in ('cached_only','cached_and_new'):c.f[FF+'->Ώ:Landroid/view/View;']=c.f[FF+'->ͳ:Landroid/view/View;'];c.f[FF+'->ͳ:Landroid/view/View;']=0 if state=='cached_only' else Obj('new')
        if state=='new_target':c.f[FF+'->ʹ:Landroid/view/View;']=Obj('new')
        if state=='null_target':c.f[FF+'->ʹ:Landroid/view/View;']=0
        if state=='epoch_changed':c.f[FF+'->stabilityTileEpoch:Ljava/lang/Object;']=Obj('new')
        if state=='disposed':c.f[FF+'->stabilityDisposed:Z']=1
        if state=='dead':vm.current.f[NAV+'->ˋ:Z']=1
        if state=='new_service':vm.current=Obj(NAV)
        if state=='interrupted':vm.interrupted=True
        if state=='rejected':
            vm.submissions.clear();vm.accept=False
            for method in ['prepare','post']:vm.execute(S,method+'(Ljava/lang/Runnable;)V',[r,Obj(method)])
        vm.drain();assert len(vm.preparations)==(2 if state in ('normal','cached_only') else 0),state;cases.append(state)
    for state in ['cached_bitmap','missing_bitmap','arrives_after_wait','close_during_wait','target_during_wait','interrupt_during_wait','stale_before_run']:
        vm=GlassVM(tree);c,_,_=vm.setup();job=vm.job(c);bitmap=Obj('bitmap')
        if state=='cached_bitmap':vm.static_fields['Lo/ak;->ͺ:Landroid/graphics/Bitmap;']=bitmap
        if state=='stale_before_run':vm.execute(S,'close(Lo/ff;)V',[c])
        def during():
            vm.static_fields['Lo/ak;->ͺ:Landroid/graphics/Bitmap;']=bitmap
            if state=='close_during_wait':vm.execute(S,'close(Lo/ff;)V',[c])
            if state=='target_during_wait':c.f[FF+'->ʹ:Landroid/view/View;']=Obj('new')
            if state=='interrupt_during_wait':vm.interrupted=True
        if state not in ('cached_bitmap','missing_bitmap','stale_before_run'):vm.sleep_hook=during
        vm.execute('Lo/x9;','run()V',[job]);vm.drain()
        assert len(vm.backgrounds)==int(state in ('cached_bitmap','arrives_after_wait')),state
        assert vm.sleeps==int(state not in ('cached_bitmap','stale_before_run')),state
        for task in vm.preparations:assert task.kind=='Lo/lII;' and task.f['selector']==16
        cases.append(state)
    vm=GlassVM(tree);c,_,_=vm.setup();b=vm.life.body('Lo/x9;','run()V')
    match=re.search(r'\.catch Ljava/lang/InterruptedException; \{[^}]+\} (:\w+)',b);assert match
    start=b.index('    '+match[1]+'\n');handler=b[start:b.index('.end method',start)]
    vm.execute('Lo/x9;','run()V',[vm.job(c)],body=handler);assert vm.interrupted and not vm.backgrounds and not vm.submissions;cases.append('sleep_exception_restores_and_exits')
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z','Ό()V','ˋ(Landroid/view/View;)V']:
        b=vm.life.body(FF,sig);assert b.count(S+'->close(Lo/ff;)V')==1;cases.append('close_hook_'+sig)
    b=vm.life.body(FF,'ˋ(Landroid/view/View;)V');assert 'Ljava/lang/Thread;->start()V' not in b and 'const/16 v0, 0x9' in b
    assert b.index(S+'->close(')<b.index('Lo/ci;->Ͳ(');cases.append('pool_category9_and_disable_invalidates')
    assert norm(SRC/'smali/o/pe.smali')==norm(tree/'smali/o/pe.smali');cases.append('original_background_delegates_preserved')
    return dict(cases=cases,inherited=inherited(tree),limits='Actual glass/capture/worker/callback smali; Bitmap/Looper/queue/sleep are doubles. Existing TileSlot/2-worker-8-queue production modules reused unchanged. MainActivity blur generation chain not yet repaired.')
def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    records=json.loads((OUT/'base10_r13_glass_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        text=(DST/rel).read_text(encoding='utf-8')
        for r in reversed(records):
            if r['path']==rel:assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
        assert text==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:
        final=OUT/'final_redecode/base10_r13'
        for rel in json.loads((OUT/'base10_r13_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
        rows.append(check(final))
    (OUT/('base10_r13_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS:',len(rows[0]['cases']),'glass cases plus 194 inherited per artifact.')
if __name__=='__main__':main()
