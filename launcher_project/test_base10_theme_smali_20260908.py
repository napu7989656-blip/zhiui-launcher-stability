"""Actual theme-result smali branches; preferences, Calendar, UI and queues doubled."""
import argparse,json,re
from stability_base10_theme_patch_20260908 import OUT,SRC,DST,TAG,T
from stability_local_audit_20260905 import methods
from test_base09_smali_20260908 import VM,Obj,controller,LIFE,FF,NAV
from test_base10_smali_20260908 import check as queue_check

class ThemeVM:
    def __init__(self,tree):
        self.life=VM(tree);self.tree=tree;self.current=None;self.pref=0;self.hour=12
        self.writes=[];self.ui=[];self.logs=[];self.fail=None;self.posts=[]
    def execute(self,args=None,body=None,initial=None):
        if body is None:body=self.life.body(T,'run()V')
        lines=[s.strip() for s in body.splitlines() if s.strip() and not s.strip().startswith(('.','#'))]
        labels={l:i for i,l in enumerate(lines) if l.startswith(':')};r={f'p{i}':a for i,a in enumerate(args or [])};r.update(initial or {});pc=0;result=None
        catch=re.search(r'\.catch Ljava/lang/Exception; \{[^}]+\} (:\w+)',body)
        for _ in range(250):
            if pc==len(lines):return
            l=lines[pc];pc+=1
            if l.startswith(':'):continue
            op,_,rest=l.partition(' ');p=rest.split(', ')
            if op.startswith('iget'):r[p[0]]=r[p[1]].f.get(p[2],0)
            elif op.startswith('sget'):assert p[1]==NAV+'->O0:'+NAV;r[p[0]]=self.current
            elif op=='instance-of':r[p[0]]=int(bool(r[p[1]]) and r[p[1]].kind==p[2])
            elif op=='check-cast':assert r[p[0]].kind==p[1]
            elif op=='move-exception':r[rest]=Obj('exception')
            elif op.startswith('move-result'):r[rest]=result
            elif op.startswith('move'):r[p[0]]=r[p[1]]
            elif op=='const-string':r[p[0]]=json.loads(rest.split(', ',1)[1])
            elif op.startswith('const'):r[p[0]]=int(p[1],0)
            elif op=='new-instance':r[p[0]]=Obj(p[1])
            elif op.startswith('if-'):
                x=r[p[0]];y=r[p[1]] if len(p)==3 else None
                if op=='if-eqz':take=not x
                elif op=='if-nez':take=bool(x)
                elif op=='if-ne':take=x!=y
                elif op=='if-ltz':take=x<0
                elif op=='if-lt':take=x<y
                elif op=='if-ge':take=x>=y
                elif op=='if-gt':take=x>y
                else:raise AssertionError(l)
                if take:pc=labels[p[-1]]
            elif op.startswith('goto'):pc=labels[rest]
            elif op.startswith('invoke'):
                regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups();a=[r[k] for k in regs.split(', ')] if regs else []
                if self.fail and target.startswith(self.fail):
                    assert catch;pc=labels[catch[1]];continue
                if target==LIFE+'->isDisposed(Ljava/lang/Object;)Z':result=self.life.execute(LIFE,'isDisposed(Ljava/lang/Object;)Z',a)
                elif target=='Lo/ci;->Ͱ(Landroid/content/Context;)I':result=self.pref
                elif target=='Lo/ci;->Ͷ(Landroid/content/Context;I)V':self.writes.append(a);self.pref=a[1]
                elif target=='Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;':result=Obj('calendar')
                elif target=='Ljava/util/Calendar;->get(I)I':assert a[1]==11;result=self.hour
                elif target==NAV+'->Ύ(Z)V':self.ui.append(a)
                elif target=='Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V':self.logs.append(a)
                elif target==T+'-><init>(Lo/ff;II)V':a[0].f.update({T+'->owner:Lo/ff;':a[1],T+'->mode:I':a[2],T+'->expectedMode:I':a[3]})
                elif target=='Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z':self.posts.append(a);result=1
                else:raise AssertionError('Unmodelled external call: '+target)
            elif op=='return-void':return
            else:raise AssertionError(l)
        raise AssertionError('Execution budget')

def task(c,mode,expected=0):return Obj(T,**{T+'->owner:Lo/ff;':c,T+'->mode:I':mode,T+'->expectedMode:I':expected})
def check(tree,allowed_controller_changes=()):
    cases=[]
    for mode,hour,light in [(0,12,0),(1,12,1),(2,6,0),(2,7,1),(2,18,1),(2,19,0)]:
        vm=ThemeVM(tree);c=controller();vm.current=c.f[FF+'->ˋ:Landroid/content/Context;'];vm.hour=hour
        vm.execute([task(c,mode)]);assert vm.writes==[[vm.current,mode]] and vm.ui==[[vm.current,light]];cases.append('mode_hour_'+str((mode,hour)))
    for state in ['disposed','dead_service','replacement_service','missing_service','non_service','preference_changed','invalid_negative','invalid_high']:
        vm=ThemeVM(tree);c=controller(disposed=int(state=='disposed'),dead=int(state=='dead_service'));vm.current=c.f[FF+'->ˋ:Landroid/content/Context;'];mode=1
        if state=='replacement_service':vm.current=Obj(NAV)
        if state=='missing_service':vm.current=None
        if state=='non_service':c.f[FF+'->ˋ:Landroid/content/Context;']=Obj('other')
        if state=='preference_changed':vm.pref=2
        if state=='invalid_negative':mode=-1
        if state=='invalid_high':mode=3
        vm.execute([task(c,mode)]);assert vm.writes==[] and vm.ui==[];cases.append(state)
    for fail in ['Lo/ci;->Ͱ','Lo/ci;->Ͷ','Ljava/util/Calendar;->getInstance','Lcom/byd/launcher/NavBarService;->Ύ']:
        vm=ThemeVM(tree);c=controller();vm.current=c.f[FF+'->ˋ:Landroid/content/Context;'];vm.fail=fail
        vm.execute([task(c,2)]);assert len(vm.logs)==1 and not vm.ui;cases.append('exception_'+fail)
    body=next(b for s,(b,_) in methods(tree/'smali/o/ie.smali').items() if s.endswith('run()V'))
    producer=body[body.index('    new-instance v1, '+T):];producer=producer[:producer.index('    :try_end_')]
    vm=ThemeVM(tree);c=controller();handler=Obj('handler');c.f[FF+'->Ͱ:Landroid/os/Handler;']=handler
    vm.execute(body=producer,initial={'v0':c,'v3':2,'v6':1})
    assert not vm.ui and not vm.writes and len(vm.posts)==1
    q,pending=vm.posts[0];assert q is handler and pending.f[T+'->owner:Lo/ff;'] is c and pending.f[T+'->expectedMode:I']==1
    cases.append('producer_posts_owned_result_without_background_mutation')
    return dict(tree=str(tree),cases=cases,queue_regressions=queue_check(tree,allowed_controller_changes),status='PASS; actual instruction flow, isolated external calls; not ART')

def preservation():
    # Source-only exact review: restore only the documented insert/replacement.
    old=(SRC/'smali/o/ie.smali').read_text(encoding='utf-8');new=(DST/'smali/o/ie.smali').read_text(encoding='utf-8')
    m=json.loads((OUT/f'{TAG}_theme_manifest.json').read_text())
    restored=new.replace(m['replacement'],m['removed']).replace('    # Preserve the preference observed by this read until main-thread publication.\n    move v6, v5\n\n','')
    assert restored==old
    # The single known ff allocation uses its NavBarService instance as context.
    sites=[]
    for path in SRC.glob('smali/**/*.smali'):
        s=path.read_text(encoding='utf-8')
        if re.search(r'new-instance \w+, Lo/ff;',s):sites.append(str(path.relative_to(SRC)))
    assert sites==['smali\\com\\byd\\launcher\\NavBarService.smali'],sites
    return dict(original_ie_restored_exactly=True,controller_allocation_sites=sites)

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();rows=[check(DST)]
    if a.final:rows.append(check(OUT/'final_redecode'/TAG))
    # Execute original publication with old context but replaced global service.
    m=json.loads((OUT/f'{TAG}_theme_manifest.json').read_text());vm=ThemeVM(SRC);c=controller();vm.current=Obj(NAV)
    oldctx=c.f[FF+'->ˋ:Landroid/content/Context;'];oldblock=m['removed']+'\n    :cond_27\n'
    vm.execute(body=oldblock,initial={'v0':c,'v3':1,'v11':2,'v13':0,'v14':1})
    assert vm.writes==[[oldctx,1]] and vm.ui==[[vm.current,1]]
    report=dict(parent_wrong_service_publication_reproduced=True,preservation=preservation(),artifacts=rows,limitations='No Android runtime; same-service A-B-A preference changes and concurrent query generations still require separate audit. No IPC/vehicle execution.')
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(report,indent=2),encoding='utf-8')
    print('PASS: original cross-service theme application reproduced; 19 theme publication/guard/failure cases plus inherited owned-queue and permanent-disposal branches per artifact.')
if __name__=='__main__':main()
