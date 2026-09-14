"""Read-only APK-code audit. Execute a restricted callback branch, never Android/IPC.

Reproduces an old close callback scheduling warmup despite the stopped flags.
Stops before ContextThemeWrapper construction / layout inflation.
"""
import json,re,subprocess
from pathlib import Path
from stability_local_audit_20260905 import methods,sha

OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
TREE=OUT/'worktrees/base08_statusbar_rollback_r1'
FF='Lo/ff;';IE='Lo/ie;'

class Obj:
    def __init__(self,kind,**fields):self.kind=kind;self.fields=fields

def reproduce(tree):
    definitions={owner:{s.split()[-1]:b for s,(b,_) in methods(tree/('smali/'+owner[1:-1]+'.smali')).items()} for owner in [FF,IE]}
    queue=[];trace=[]
    def run(owner,sig,args):
        body=definitions[owner][sig]
        lines=[l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('.', '#'))]
        labels={}
        for i,l in enumerate(lines):
            if l.startswith(':'):labels.setdefault(l,i)
        switches={}
        for m in re.finditer(r'(:\w+)\s+\.packed-switch (0x[0-9a-f]+)\s+(.*?)\.end packed-switch',body,re.S):
            switches[m[1]]=(int(m[2],0),re.findall(r':\w+',m[3]))
        r={f'p{i}':v for i,v in enumerate(args)};result=None;pc=0
        for _ in range(200):
            l=lines[pc];pc+=1
            if l.startswith(':'):continue
            op,_,rest=l.partition(' ');p=rest.split(', ')
            if op=='new-instance' and p[1]=='Landroid/view/ContextThemeWrapper;':
                trace.append('WOULD_CONSTRUCT_AND_INFLATE_USING_STOPPED_CONTROLLER_CONTEXT')
                return 'WOULD_INFLATE'
            if op=='const-string':r[p[0]]=p[1]
            elif op.startswith('const'):r[p[0]]=int(p[1].split(' ')[0],0)
            elif op.startswith('iget'):r[p[0]]=r[p[1]].fields.get(p[2],0)
            elif op=='new-instance':r[p[0]]=Obj(p[1])
            elif op.startswith('if-'):
                if op=='if-eqz':take=not r[p[0]]
                elif op=='if-nez':take=bool(r[p[0]])
                else:raise ValueError(l)
                if take:pc=labels[p[-1]]
            elif op.startswith('goto'):pc=labels[rest]
            elif op=='packed-switch':
                start,targets=switches[p[1]];index=r[p[0]]-start
                if 0<=index<len(targets):pc=labels[targets[index]]
            elif op.startswith('invoke'):
                regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
                vals=[r[x] for x in regs.split(', ')]
                trace.append(target)
                if target==FF+'->ͻ()V':run(FF,'ͻ()V',vals)
                elif target==IE+'-><init>(Lo/ff;I)V':
                    vals[0].fields[IE+'->ͱ:Lo/ff;']=vals[1]
                    vals[0].fields[IE+'->Ͱ:I']=vals[2]
                elif target=='Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z':queue.append(vals[1]);result=1
                else:raise ValueError('Unsupported call (never executed): '+target)
            elif op.startswith('move-result'):r[rest]=result
            elif op=='return-void':return
            else:raise ValueError('Unsupported instruction: '+l)
        raise AssertionError('Nonterminating callback')
    controller=Obj(FF,**{FF+'->ͺ:Z':0,FF+'->ͷ:Z':0,FF+'->ͳ:Landroid/view/View;':0,FF+'->Ώ:Landroid/view/View;':0,FF+'->Ͱ:Landroid/os/Handler;':Obj('handler'),FF+'->ˋ:Landroid/content/Context;':Obj('destroyed_service')})
    late=Obj(IE,**{IE+'->Ͱ:I':4,IE+'->ͱ:Lo/ff;':controller})
    run(IE,'run()V',[late])
    assert len(queue)==1 and queue[0].fields[IE+'->Ͱ:I']==0
    outcome=run(IE,'run()V',[queue.pop()])
    assert outcome=='WOULD_INFLATE'
    close=definitions[FF]['Ά()V']
    assert re.search(r'const/4 v4, 0x4\s+.*?invoke-direct \{v3, p0, v4\}, Lo/ie;-><init>\(Lo/ff;I\)V',close,re.S)
    assert 'const-wide/16 v1, 0x1f4' in close
    return dict(tree=str(tree),stopped_flags={'ͺ':False,'ͷ':False},late_selector=4,posted_selector=0,trace=trace,status='REPRODUCED_AT_INFLATION_BOUNDARY; no Android code or vehicle commands executed')

def main():
    rg=subprocess.run(['rg','-l',r'check-cast [vp][0-9]+, Lo/ff;|\.field .*:Lo/ff;',str(TREE/'smali'),'-g','*.smali'],capture_output=True,text=True,encoding='utf-8',check=True)
    holders=[]
    for name in rg.stdout.splitlines():
        path=Path(name);text=path.read_text(encoding='utf-8')
        holders.append(dict(path=str(path.relative_to(TREE)),sha256=sha(path),fields=[l for l in text.splitlines() if l.startswith('.field ') and (':Lo/ff;' in l or ':Ljava/lang/Object;' in l)],
            methods=[dict(signature=s,line=line,explicit_ff_cast='Lo/ff;' in body) for s,(body,line) in methods(path).items() if '<init>' not in s and '<clinit>' not in s],
            status='CALLBACK_OWNERSHIP_REVIEW_PENDING; field/cast candidate list, not proof every method needs editing'))
    report=dict(issue='BASE-09',reproduction=[reproduce(TREE),reproduce(OUT/'final_redecode/base08_r1')],holders=holders,
        required_next_checks=['Separate permanent dispose from ordinary close; cancel owned queues without scheduling restoration','Retain failed-to-remove resources and isolate cleanup exceptions so service teardown continues','Audit Object-typed shared callback owners, in-flight work and delivery guards without changing unrelated/vehicle selectors','Verify cached/open/embedded root and animation ownership before choosing disposal operations'],
        limitation='Restricted execution covers actual selector 4 -> warmup 0 branches only. Does not execute full onDestroy, wait 500ms, run ART or measure a vehicle leak.')
    (OUT/'base09_lifecycle_audit.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
    print(f'BASE-09 reproduced in source/final: stopped controller receives delayed selector 4, posts selector 0 and reaches inflation boundary. {len(holders)} holder/cast candidate classes indexed. No external calls executed.')
if __name__=='__main__':main()
