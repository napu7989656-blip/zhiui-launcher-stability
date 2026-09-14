"""Scoped execution of actual ownership guards and permanent-dispose smali.
External resource calls use recording doubles; actual Java helpers tested separately.
"""
import argparse,json,re
from pathlib import Path
from stability_local_audit_20260905 import methods
from stability_base09_patch_20260908 import OUT,SRC,DST,TAG,LIFE,RESOURCE,STATUS,FF,EDITOR,NAV
from stability_audit_quicksettings_lifecycle_20260907 import reproduce

class Obj:
    def __init__(self,kind,**fields):self.kind=kind;self.f=fields

class VM:
    def __init__(self,tree):self.tree=tree;self.defs={};self.fail=set();self.calls=[]
    def body(self,owner,sig):
        if owner not in self.defs:self.defs[owner]={s.split()[-1]:b for s,(b,_) in methods(self.tree/('smali/'+owner[1:-1]+'.smali')).items()}
        return self.defs[owner][sig]
    def execute(self,owner,sig,args,guard_only=False,body=None,initial=None):
        b=body if body is not None else self.body(owner,sig)
        ls=[l.strip() for l in b.splitlines() if l.strip() and not l.strip().startswith(('.', '#'))]
        labels={}
        for i,l in enumerate(ls):
            if l.startswith(':'):labels.setdefault(l,i)
        boundary=None
        if guard_only:
            target=next(l.split(', ')[-1] for l in ls if l.startswith('if-eqz v0, '));boundary=labels[target]
        r={f'p{i}':x for i,x in enumerate(args)};r.update(initial or {});pc=0;result=None
        for _ in range(1200):
            if pc==boundary:return 'ORIGINAL_BODY'
            if pc>=len(ls):return None
            l=ls[pc];pc+=1
            if l.startswith(':'):continue
            op,_,rest=l.partition(' ');p=rest.split(', ')
            if op=='const-string':r[p[0]]=json.loads(rest.split(', ',1)[1])
            elif op.startswith('const'):r[p[0]]=int(p[1].split(' ')[0],0)
            elif op.startswith('move-result'):r[rest]=result
            elif op.startswith('move'):r[p[0]]=r[p[1]]
            elif op.startswith('iget'):r[p[0]]=r[p[1]].f.get(p[2],0)
            elif op.startswith('iput'):r[p[1]].f[p[2]]=r[p[0]]
            elif op=='instance-of':r[p[0]]=int(bool(r[p[1]]) and r[p[1]].kind==p[2])
            elif op=='check-cast':assert not r[p[0]] or r[p[0]].kind==p[1],l
            elif op=='and-int/2addr':r[p[0]] &= r[p[1]]
            elif op.startswith('if-'):
                if op=='if-eqz':take=not r[p[0]]
                elif op=='if-nez':take=bool(r[p[0]])
                elif op=='if-ne':take=r[p[0]] is not r[p[1]]
                else:raise ValueError(l)
                if take:pc=labels[p[-1]]
            elif op.startswith('goto'):pc=labels[rest]
            elif op.startswith('invoke'):
                rs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
                if '..' in rs:
                    first,last=rs.split(' .. ');rs=', '.join(first[0]+str(i) for i in range(int(first[1:]),int(last[1:])+1))
                vals=[r[x] for x in rs.split(', ')] if rs else [];self.calls.append(target)
                if target.startswith(LIFE+'->'):result=self.execute(LIFE,target.split('->')[1],vals)
                elif target in [FF+'->stabilityDispose()Z',EDITOR+'->stabilityDispose()Z']:result=self.execute(target.split('->')[0],'stabilityDispose()Z',vals)
                elif target=='Lo/ze;->stabilityRelease()Z':result=self.execute('Lo/ze;','stabilityRelease()Z',vals)
                elif target.startswith((RESOURCE+'->',STATUS+'->')):
                    resource=vals[-1]
                    result=int(not resource or resource not in self.fail)
                    if resource and result:resource.f['released']=True
                elif target=='Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->cancelQueued(Ljava/lang/Object;)V':
                    assert vals[0].f.get(FF+'->stabilityDisposed:Z')==1,'Cancel only after owner stops'
                    vals[0].f['queued_reads_cancelled']=True;result=None
                elif target=='Lcom/byd/launcher/stability/LatestRead;->invalidate()V':
                    assert vals[0].kind=='Lcom/byd/launcher/stability/LatestRead;'
                    vals[0].f['invalidations']=vals[0].f.get('invalidations',0)+1;result=None
                elif target=='Lcom/byd/launcher/stability/InstrumentReads;->invalidate()V':
                    assert vals[0].kind=='Lcom/byd/launcher/stability/InstrumentReads;'
                    vals[0].f['invalidations']=vals[0].f.get('invalidations',0)+1;result=None
                elif target in ['Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V','Ljava/util/ArrayList;->clear()V']:vals[0].f['entries']=[];result=None
                elif target.startswith('Lo/q3;->'):result=None
                else:raise ValueError('Unexpected external call (not executed): '+target)
            elif op=='return-void':return None
            elif op in ['return','return-object']:return r[rest]
            else:raise ValueError('Unimplemented instruction: '+l)
        raise AssertionError('Nonterminating smali')

def controller(disposed=0,dead=0):
    context=Obj(NAV,**{NAV+'->ˋ:Z':dead})
    return Obj(FF,**{FF+'->stabilityDisposed:Z':disposed,FF+'->ˋ:Landroid/content/Context;':context,FF+'->stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;':Obj('Lcom/byd/launcher/stability/LatestRead;'),FF+'->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;':Obj('Lcom/byd/launcher/stability/InstrumentReads;')})

def owned_resources():
    c=controller();fields={}
    for field,kind in [('Ͱ','Landroid/os/Handler;'),('ͱ','Landroid/os/Handler;'),('Ή','Lo/af;'),('Ί','Lo/qe;'),('ͳ','Landroid/view/View;'),('Ώ','Landroid/view/View;'),('ʹ','Landroid/view/View;'),('Ͷ','Landroid/view/View;'),('Ͳ','Landroid/view/ViewGroup;'),('Δ','Lo/xe;'),('Ύ','Lo/cf;'),('ˏ','Landroid/view/WindowManager;'),('Ό','Ljava/util/concurrent/CopyOnWriteArrayList;'),('Β','Ljava/util/ArrayList;')]:
        fields[FF+'->'+field+':'+kind]=Obj(kind,entries=[1,2,3])
    editor=Obj(EDITOR,**{EDITOR+'->ͱ:Landroid/view/View;':Obj('editor-root'),EDITOR+'->Ͱ:Landroid/view/ViewGroup;':Obj('editor-host'),EDITOR+'->ˏ:Landroid/view/WindowManager;':fields[FF+'->ˏ:Landroid/view/WindowManager;'],EDITOR+'->ˋ:Landroid/content/Context;':c.f[FF+'->ˋ:Landroid/content/Context;']})
    fields[FF+'->Γ:Lo/f4;']=editor
    fields[FF+'->stabilityLayoutListener:Lo/ze;']=Obj('Lo/ze;',**{'Lo/ze;->ˏ:Lo/ff;':c,'Lo/ze;->ˋ:Landroid/widget/GridLayout;':Obj('grid'),'Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;':Obj('observer')})
    c.f.update(fields);return c,fields,editor

def guard_checks(tree):
    records=json.loads((OUT/(TAG+'_guard_manifest.json')).read_text());vm=VM(tree)
    for rec in records:
        kind=rec['owner'];field=rec['field'];sig=rec['signature']
        for disposed,dead in [(0,0),(1,0),(0,1)]:
            c=controller(disposed,dead)
            if rec.get('guard_kind')=='service':obj=Obj(kind,**{kind+'->'+field:Obj(NAV,**{NAV+'->ˋ:Z':int(bool(disposed or dead))})})
            elif field:obj=Obj(kind,**{kind+'->'+field:c})
            elif kind==FF:obj=c
            else:obj=Obj(EDITOR,**{EDITOR+'->stabilityDisposed:Z':disposed,EDITOR+'->ˋ:Landroid/content/Context;':c.f[FF+'->ˋ:Landroid/content/Context;']})
            result=vm.execute(kind,sig,[obj],guard_only=True)
            expected='ORIGINAL_BODY' if not (disposed or dead) else (None if sig.endswith(')V') else ('' if sig.endswith(')Ljava/lang/String;') else 0))
            assert result==expected,(rec['path'],sig,disposed,dead,result)
        if field and (field.endswith(':Ljava/lang/Object;') or field.endswith(':Lo/uh;')):
            # Valid non-controller captures continue into the original selector.
            for captured in [0,Obj('unrelated-owner')]:
                obj=Obj(kind,**{kind+'->'+field:captured});assert vm.execute(kind,sig,[obj],guard_only=True)=='ORIGINAL_BODY'
    for adapter,field,descriptor in [('Lo/we;','ˏ','Ljava/lang/Object;'),('Lo/re;','Ͱ','Ljava/lang/Object;'),('Lo/ze;','ˏ','Lo/ff;')]:
        for state in [0,1]:
            c=controller(state);nested=Obj(adapter,**{adapter+'->'+field+':'+descriptor:c})
            assert vm.execute(LIFE,'isDisposed(Ljava/lang/Object;)Z',[nested])==state
    # A newly alive service must not override the identity of an old owner.
    old=controller(dead=1);new=controller();assert vm.execute(LIFE,'isDisposed(Ljava/lang/Object;)Z',[old])==1
    assert vm.execute(LIFE,'isDisposed(Ljava/lang/Object;)Z',[new])==0
    for value in [0,Obj('unrelated-owner')]:assert vm.execute(LIFE,'isDisposed(Ljava/lang/Object;)Z',[value])==0
    return len(records)

def disposal_checks(tree):
    vm=VM(tree);cases=[]
    resource_keys=[FF+'->Ͱ:Landroid/os/Handler;',FF+'->ͱ:Landroid/os/Handler;',FF+'->Ή:Lo/af;',FF+'->Ί:Lo/qe;',FF+'->ͳ:Landroid/view/View;',FF+'->Ώ:Landroid/view/View;',FF+'->stabilityLayoutListener:Lo/ze;','editor-root']
    for failed in [None]+resource_keys:
        c,old,ed=owned_resources();ed_root=ed.f[EDITOR+'->ͱ:Landroid/view/View;']
        vm.fail={ed_root if failed=='editor-root' else old[failed]} if failed else set()
        assert vm.execute(FF,'stabilityDispose()Z',[c])==int(failed is None)
        assert c.f[FF+'->stabilityDisposed:Z']==1 and c.f[FF+'->Ύ:Lo/cf;']==0
        assert ed.f[EDITOR+'->stabilityDisposed:Z']==1
        for k in [FF+'->Ή:Lo/af;',FF+'->Ί:Lo/qe;',FF+'->ͳ:Landroid/view/View;',FF+'->Ώ:Landroid/view/View;',FF+'->stabilityLayoutListener:Lo/ze;']:
            assert c.f[k] is old[k] if k==failed else c.f[k]==0,(failed,k)
        assert c.f[FF+'->Γ:Lo/f4;'] is ed if failed=='editor-root' else c.f[FF+'->Γ:Lo/f4;']==0
        assert old[FF+'->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;'].f['entries']==[]
        assert old[FF+'->Β:Ljava/util/ArrayList;'].f['entries']==[]
        vm.fail=set();assert vm.execute(FF,'stabilityDispose()Z',[c])==1;assert vm.execute(FF,'stabilityDispose()Z',[c])==1
        cases.append('dispose_retry_'+str(failed))
    assert not any('->post' in call or call==FF+'->Ά()V' or 'collapse' in call for call in vm.calls)
    # Execute the actual Service hook through its next-cleanup boundary.
    body=vm.body(NAV,'onDestroy()V');start=body.index('    iget-object v1, p0, '+NAV+'->Ή:Lo/ff;')
    # The first branch's shared target is the start of the next cleanup stage.
    tail=body[start:];label=re.search(r'if-eqz v1, (:\w+)',tail)[1];end=tail.index('    '+label+'\n')+len('    '+label+'\n')
    block=tail[:end]
    for failure in [False,True]:
        c,old,ed=owned_resources();service=Obj(NAV,**{NAV+'->Ή:Lo/ff;':c});vm.fail={old[FF+'->ͳ:Landroid/view/View;']} if failure else set()
        # v2 is the null register already initialized by original onDestroy.
        prefix='    const/4 v2, 0x0\n'+block
        vm.execute(NAV,'onDestroy()V',[service],body=prefix)
        assert service.f[NAV+'->Ή:Lo/ff;'] is c if failure else service.f[NAV+'->Ή:Lo/ff;']==0
        cases.append('service_continues_after_disposal_'+str(failure))
    vm.fail=set();c,old,ed=owned_resources();listener=old[FF+'->stabilityLayoutListener:Lo/ze;']
    current=Obj('new-listener');c.f[FF+'->stabilityLayoutListener:Lo/ze;']=current
    assert vm.execute('Lo/ze;','stabilityRelease()Z',[listener])==1
    assert c.f[FF+'->stabilityLayoutListener:Lo/ze;'] is current
    cases.append('old_layout_listener_cannot_clear_new_owner')
    setup=vm.body(FF,'Ί()V')
    start=setup.index('    iget-object v3, p0, '+FF+'->stabilityLayoutListener:Lo/ze;')
    end=setup.index('    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()',start)
    preflight=setup[start:end]+'    const/4 v4, 0x1\n    return v4\n'
    for failure in [False,True]:
        c,old,ed=owned_resources();listener=old[FF+'->stabilityLayoutListener:Lo/ze;'];vm.fail={listener} if failure else set()
        outcome=vm.execute(FF,'Ί()V',[c],body=preflight)
        assert outcome==(None if failure else 1)
        assert c.f[FF+'->stabilityLayoutListener:Lo/ze;'] is listener if failure else c.f[FF+'->stabilityLayoutListener:Lo/ze;']==0
        cases.append('registration_replaces_only_released_listener_'+str(failure))
    vm.fail=set();c=controller();listener=Obj('Lo/ze;',**{'Lo/ze;->ˏ:Lo/ff;':c});observer=Obj('observer')
    start=setup.index('    iput-object v1, v2, Lo/ze;->stabilityObserver:')
    end=setup.index('    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener',start)
    vm.execute(FF,'Ί()V',[c],body=setup[start:end],initial={'v1':observer,'v2':listener})
    assert c.f[FF+'->stabilityLayoutListener:Lo/ze;'] is listener
    assert listener.f['Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;'] is observer
    cases.append('registration_captured_before_platform_add')
    return cases

def check_preservation():
    records=json.loads((OUT/(TAG+'_guard_manifest.json')).read_text())
    for rec in records:
        old=next(b for s,(b,_) in methods(SRC/rec['path']).items() if s.split()[-1]==rec['signature'])
        new=next(b for s,(b,_) in methods(DST/rec['path']).items() if s.split()[-1]==rec['signature'])
        assert new.count(rec['prefix'])==1
        restored=new.replace(rec['prefix'],'')
        for insertion in rec.get('body_insertions',[]):
            assert restored.count(insertion)==1
            restored=restored.replace(insertion,'')
        if rec['locals_before']==0:restored=restored.replace('    .locals 1\n','    .locals 0\n',1)
        assert restored==old,(rec['path'],rec['signature'])
    grouped={r['path'] for r in records}
    untouched=0
    for rel in grouped:
        before=methods(SRC/rel);after=methods(DST/rel)
        modified={r['signature'] for r in records if r['path']==rel}
        for sig,(body,_) in before.items():
            if sig.split()[-1] not in modified:assert after[sig][0]==body;untouched+=1
    return dict(guarded_bodies_preserved=len(records),other_methods_preserved=untouched,scope='All shared callback selectors retain original instructions after the scoped lifetime prefix; constructors unchanged.')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    preservation=check_preservation();rows=[]
    for tree in [DST]+([OUT/'final_redecode'/TAG] if a.final else []):
        rows.append(dict(tree=str(tree),guard_count=guard_checks(tree),disposal_cases=disposal_checks(tree),status='PASS'))
    report=dict(parent_reproduction=reproduce(SRC),artifacts=rows,preservation=preservation,limits='Actual smali entry/dispose control flow; framework resource operations doubled and production Java tested separately. No ART, real UI timing, IPC or vehicle operations.')
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(report,indent=2),encoding='utf-8')
    print('PASS: 60 guards (live/disposed/dead host/unrelated captures), nested owners, 15 disposal/retry/service/layout cases per artifact; original bodies preserved after explicit guards/registration inserts; old warmup reproduced without Android.')
if __name__=='__main__':main()
