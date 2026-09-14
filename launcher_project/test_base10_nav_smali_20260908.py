"""Execute nav publication/ticket smali. Queries/UI/Handler are explicit doubles.
Monitors are recorded sequentially here; real concurrency is in LatestReadTest.
"""
import argparse,json,re
from stability_base10_nav_patch_20260908 import OUT,SRC,DST,TAG,L,T,A
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm
from test_base09_smali_20260908 import VM,Obj,controller,LIFE,FF,NAV
from test_base10_tiles_smali_20260908 import check as inherited
from stability_audit_read_freshness_20260908 import apply_view_callback
J='Lo/je;';CTOR='<init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V'

class NavVM:
    def __init__(self,tree):
        self.tree=tree;self.life=VM(tree);self.current=None;self.posts=[];self.logs=[];self.query=3;self.reads=0;self.accept=True;self.fail_ui=False;self.extra_call=None;self.static_fields={}
    def execute(self,cls,sig,args,body=None,initial=None):
        b=body if body is not None else self.life.body(cls,sig)
        ls=[s.strip() for s in b.splitlines() if s.strip() and not s.strip().startswith(('.','#'))]
        labels={}
        for i,s in enumerate(ls):
            if s.startswith(':'):labels.setdefault(s,i)
        r={f'p{i}':v for i,v in enumerate(args)};r.update(initial or {});pc=0;result=None
        for _ in range(350):
            if pc==len(ls):return
            s=ls[pc];pc+=1
            if s.startswith(':'):continue
            op,_,rest=s.partition(' ');p=rest.split(', ')
            if op.startswith('iget'):r[p[0]]=r[p[1]].f.get(p[2],0)
            elif op.startswith('iput'):r[p[1]].f[p[2]]=r[p[0]]
            elif op.startswith('sget'):
                if p[1] in self.static_fields:r[p[0]]=self.static_fields[p[1]]
                else:assert p[1]==NAV+'->O0:'+NAV;r[p[0]]=self.current
            elif op.startswith('sput'):self.static_fields[p[1]]=r[p[0]]
            elif op=='new-instance':r[p[0]]=Obj(p[1])
            elif op=='check-cast':pass
            elif op=='instance-of':r[p[0]]=int(bool(r[p[1]]) and getattr(r[p[1]],'kind',None)==p[2])
            elif op.startswith('aget'):r[p[0]]=r[p[1]][r[p[2]]]
            elif op=='add-int/lit8':r[p[0]]=r[p[1]]+int(p[2],0)
            elif op in ('packed-switch','sparse-switch'):
                payload=b[b.index('    '+p[1]+'\n'):]
                match=re.search(r'\.'+op+r'([^\n]*)\n(.*?)\.end '+op,payload,re.S);assert match
                rows=[line.strip() for line in match[2].splitlines() if line.strip()]
                mapping={int(match[1].strip(),0)+i:label for i,label in enumerate(rows)} if op=='packed-switch' else {int(row.split(' -> ')[0],0):row.split(' -> ')[1] for row in rows}
                if r[p[0]] in mapping:pc=labels[mapping[r[p[0]]]]
            elif op=='move-exception':r[rest]=Obj('exception')
            elif op=='move-result-wide':r[rest]=result;r[rest[0]+str(int(rest[1:])+1)]=0
            elif op.startswith('move-result'):r[rest]=result
            elif op.startswith('move'):r[p[0]]=r[p[1]]
            elif op=='const-string':r[p[0]]=json.loads(rest.split(', ',1)[1])
            elif op.startswith('const-wide'):
                r[p[0]]=int(p[1].removesuffix('L'),0);r[p[0][0]+str(int(p[0][1:])+1)]=0
            elif op.startswith('const'):r[p[0]]=int(p[1],0)
            elif op.startswith('monitor-'):assert r[rest]
            elif op.startswith('if-'):
                x=r[p[0]];y=r[p[1]] if len(p)==3 else None
                take={'if-eqz':lambda:not x,'if-nez':lambda:bool(x),'if-eq':lambda:x==y,'if-ne':lambda:x!=y,'if-ltz':lambda:x<0,'if-ge':lambda:x>=y}[op]()
                if take:pc=labels[p[-1]]
            elif op.startswith('goto'):pc=labels[rest]
            elif op.startswith('invoke'):
                regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
                if ' .. ' in regs:
                    start,end=regs.split(' .. ');regs=', '.join(start[0]+str(i) for i in range(int(start[1:]),int(end[1:])+1))
                a=[r[k] for k in regs.split(', ')] if regs else []
                owner,method=target.split('->')
                if owner in (L,T,A):result=self.execute(owner,method,a)
                elif target=='Lcom/byd/launcher/stability/InstrumentReads;->begin(Z)Lcom/byd/launcher/stability/InstrumentReads$Request;':
                    assert a[0].kind=='Lcom/byd/launcher/stability/InstrumentReads;'
                    result=Obj('Lcom/byd/launcher/stability/InstrumentReads$Request;',retry=bool(a[1]),state=a[0])
                    a[0].f.setdefault('begins',[]).append(result)
                elif owner==LIFE:result=self.life.execute(owner,method,a)
                elif target=='Ljava/lang/Object;-><init>()V':pass
                elif target=='Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z':
                    if self.accept:self.posts.append(a)
                    result=int(self.accept)
                elif target==FF+'->Ͷ()I':self.reads+=1;result=self.query
                elif target=='Lo/be;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;I)V':
                    a[0].f.update({'Lo/be;->ͱ:Landroid/widget/SeekBar;':a[1],'Lo/be;->Ͳ:I':a[2],'Lo/be;->ͳ:Landroid/widget/TextView;':a[3],'Lo/be;->Ͱ:I':a[4]})
                elif target=='Ljava/lang/Runnable;->run()V':
                    if hasattr(self,'run_callback'):self.run_callback(a[0])
                    elif self.fail_ui:
                        match=re.search(r'\.catch Ljava/lang/Exception; \{[^}]+\} (:\w+)',b);assert match;pc=labels[match[1]]
                    else:apply_view_callback(self.tree,a[0])
                elif target=='Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V':self.logs.append(a)
                elif self.extra_call is not None:result=self.extra_call(target,a)
                else:raise AssertionError('Unmodelled call: '+target)
            elif op=='return-void':return
            elif op in ('return','return-object'):return r[rest]
            else:raise AssertionError(s)
        raise AssertionError('Execution limit')
    def setup(self):
        c=controller();self.current=c.f[FF+'->ˋ:Landroid/content/Context;']
        c.f[FF+'->ͳ:Landroid/view/View;']=Obj('root');c.f[FF+'->Ώ:Landroid/view/View;']=0
        c.f[FF+'->Ͱ:Landroid/os/Handler;']=Obj('Handler');c.f[FF+'->Λ:I']=-1
        self.execute(L,'<init>()V',[c.f[FF+'->stabilityNavReads:'+L]])
        return c,Obj('SeekBar'),Obj('TextView')
    def job(self,c,seek,text,selector=0):
        j=Obj(J);self.execute(J,CTOR,[j,c,seek,text,selector]);return j
    def complete(self,j,value):
        self.query=value;b=self.life.body(J,'run()V')
        if j.f[J+'->Ͱ:I']==0:b=b[b.index('    :pswitch_1\n'):b.index('    :goto_1\n')]
        else:b=b[b.index('    :goto_1\n'):b.index('    :pswitch_data_0\n')]
        self.execute(J,'run()V',[j],body=b,initial={'v1':0})
    def drain(self):
        for handler,task in self.posts:self.execute(A,'run()V',[task])
        self.posts.clear()

def check(tree,submission_replacements=(),instrument_parent=None):
    cases=[]
    for selector in [0,2]:
        for order in ['new_old','old_new','queued_before_new']:
            vm=NavVM(tree);c,s,t=vm.setup();old=vm.job(c,s,t,selector)
            if order=='queued_before_new':vm.complete(old,3)
            new=vm.job(c,s,t,selector)
            for job,value in ([(new,9),(old,3)] if order=='new_old' else [(old,3),(new,9)] if order=='old_new' else [(new,9)]):vm.complete(job,value)
            assert c.f[FF+'->Λ:I']==-1 and 'progress' not in s.f
            assert all(h is c.f[FF+'->Ͱ:Landroid/os/Handler;'] for h,_ in vm.posts)
            for _,task in vm.posts:assert task.f[A+'->delegate:Ljava/lang/Runnable;'].f['Lo/be;->Ͱ:I']==(2 if selector==0 else 0)
            vm.drain();assert c.f[FF+'->Λ:I']==9 and s.f['progress']==9 and t.f['text']=='9';cases.append(f'selector{selector}_{order}')
    for state in ['disposed','dead_service','replacement_service','no_service','null_ticket','null_root','detached_root','cached_root','closed_reopened','negative','handler_rejected','null_delegate','ui_exception']:
        vm=NavVM(tree);c,s,t=vm.setup();job=vm.job(c,s,t);vm.complete(job,-1 if state=='negative' else 4)
        if state=='disposed':c.f[FF+'->stabilityDisposed:Z']=1
        elif state=='dead_service':vm.current.f[NAV+'->ˋ:Z']=1
        elif state=='replacement_service':vm.current=Obj(NAV)
        elif state=='no_service':vm.current=0
        elif state=='null_ticket':job.f[J+'->stabilityNavTicket:'+T]=0
        elif state=='null_root':job.f[J+'->stabilityNavRoot:Landroid/view/View;']=0
        elif state=='detached_root':c.f[FF+'->ͳ:Landroid/view/View;']=Obj('other')
        elif state=='cached_root':c.f[FF+'->Ώ:Landroid/view/View;']=c.f[FF+'->ͳ:Landroid/view/View;'];c.f[FF+'->ͳ:Landroid/view/View;']=0
        elif state=='closed_reopened':vm.execute(L,'invalidate()V',[c.f[FF+'->stabilityNavReads:'+L]])
        elif state=='handler_rejected':vm.posts.clear();vm.accept=False;vm.complete(job,4)
        elif state=='null_delegate':vm.posts[0][1].f[A+'->delegate:Ljava/lang/Runnable;']=0
        elif state=='ui_exception':vm.fail_ui=True
        vm.drain()
        if state=='cached_root':assert s.f['progress']==4 and c.f[FF+'->Λ:I']==4
        elif state=='ui_exception':assert len(vm.logs)==1 and 'progress' not in s.f and c.f[FF+'->Λ:I']==4
        else:assert 'progress' not in s.f and c.f[FF+'->Λ:I']==-1,state
        cases.append(state)
    vm=NavVM(tree);c,s,t=vm.setup();job=vm.job(c,s,t);ticket=job.f[J+'->stabilityNavTicket:'+T]
    instrument=vm.job(c,s,t,1);assert not instrument.f.get(J+'->stabilityNavTicket:'+T) and vm.execute(T,'isCurrent()Z',[ticket])==1
    cases.append('instrument_constructor_does_not_invalidate_nav')
    for sig,marker in [('ʹ()V','    :cond_0\n'),('Ά()V','    :stability_owner_alive\n'),('stabilityDispose()Z','    iput-boolean v0, p0, Lo/ff;->stabilityDisposed:Z\n')]:
        vm=NavVM(tree);c,s,t=vm.setup();job=vm.job(c,s,t);body=vm.life.body(FF,sig)
        hooks=re.findall(r'    iget-object (v\d+), p0, Lo/ff;->stabilityNavReads:'+re.escape(L)+r'\s+invoke-virtual \{\1\}, '+re.escape(L)+r'->invalidate\(\)V',body);assert len(hooks)==1
        reg=hooks[0];hook=f'    iget-object {reg}, p0, Lo/ff;->stabilityNavReads:{L}\n    invoke-virtual {{{reg}}}, {L}->invalidate()V'
        vm.execute(FF,sig,[c],body=hook);vm.complete(job,3);vm.drain();assert c.f[FF+'->Λ:I']==-1
        new=vm.job(c,s,t);vm.complete(new,9);vm.drain();assert c.f[FF+'->Λ:I']==9
        cases.append('close_hook_'+sig)
    # Preserve the entire instrument worker branch, query method and original delegates.
    old=VM(instrument_parent or SRC).body(J,'run()V');new=vm.life.body(J,'run()V')
    def strip(x):
        clean='\n'.join(s.strip() for s in x.splitlines() if s.strip() and not s.strip().startswith(('.line','#')))
        labels={}
        def label(m):
            if m[0] not in labels:labels[m[0]]=':label_'+str(len(labels))
            return labels[m[0]]
        return re.sub(r':\w+',label,clean)
    assert strip(old[old.index('    :pswitch_0\n'):old.index('    :pswitch_1\n')])==strip(new[new.index('    :pswitch_0\n'):new.index('    :pswitch_1\n')])
    assert dict(norm(SRC/'smali/o/ff.smali')[1])['public final Ͷ()I']==dict(norm(tree/'smali/o/ff.smali')[1])['public final Ͷ()I']
    assert norm(SRC/'smali/o/be.smali')==norm(tree/'smali/o/be.smali')
    return dict(tree=str(tree),cases=cases,instrument_query_delegate_preserved=True,inherited=inherited(tree,('ʹ()V','Ά()V'),submission_replacements),limits='Actual ticket, helper, nav-worker instructions; sequential monitor model, injected query values, Handler/UI doubles. UI exception contains failure but does not roll back already committed cache. No ART or vehicle execution.')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    recs=json.loads((OUT/f'{TAG}_nav_manifest.json').read_text())
    for rel in {r['path'] for r in recs}:
        restored=(DST/rel).read_text(encoding='utf-8')
        for rec in reversed(recs):
            if rec['path']==rel:assert restored.count(rec['after'])==1;restored=restored.replace(rec['after'],rec['before'])
        assert restored==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:rows.append(check(OUT/'final_redecode'/TAG))
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS: 23 nav freshness/close/identity/publication cases per artifact, original instrument/query/delegate preserved, all 9 read submissions and inherited lifecycle regressions.')
if __name__=='__main__':main()
