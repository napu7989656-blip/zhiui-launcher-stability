"""Reproduce old read publication/cache overwrite using actual BASE-10 r4 smali.
Execution order is injected, not Android scheduling. No queries or commands run.
"""
import json,re
from pathlib import Path
from stability_local_audit_20260905 import methods
from test_base09_smali_20260908 import Obj,VM,controller,FF
from test_base10_smali_20260908 import QueueVM,H
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')

def apply_view_callback(tree,callback):
    b=next(b for s,(b,_) in methods(tree/'smali/o/be.smali').items() if s.endswith('run()V'))
    lines=[l.strip() for l in b.splitlines() if l.strip() and not l.strip().startswith(('.line','#'))]
    # Keep packed-switch payload separately; it is not executable bytecode.
    labels={}
    for i,line in enumerate(lines):
        if line.startswith(':'):labels.setdefault(line,i)
    start=lines.index('.packed-switch 0x0');targets=lines[start+1:lines.index('.end packed-switch')]
    r={'p0':callback};pc=lines.index('.locals 4')+1;result=None
    for _ in range(80):
        line=lines[pc];pc+=1
        if line.startswith(':'):continue
        op,_,rest=line.partition(' ');p=rest.split(', ')
        if op.startswith('iget'):r[p[0]]=r[p[1]].f[p[2]]
        elif op=='packed-switch':pc=labels[targets[r[p[0]]]]
        elif op=='move-result-object':r[rest]=result
        elif op=='if-eqz':
            if not r[p[0]]:pc=labels[p[1]]
        elif op=='mul-int/lit8':r[p[0]]=r[p[1]]*int(p[2],0)
        elif op.startswith('invoke'):
            regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups();a=[r[k] for k in regs.split(', ')]
            if target=='Landroid/widget/ProgressBar;->setProgress(I)V':a[0].f['progress']=a[1]
            elif target=='Ljava/lang/String;->valueOf(I)Ljava/lang/String;':result=str(a[0])
            elif target=='Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V':a[0].f['text']=a[1]
            else:raise AssertionError('Unmodelled external call: '+target)
        elif op=='return-void':return
        else:raise AssertionError(line)
    raise AssertionError('Execution budget')

def reproduce(tree):
    c=controller();handler=Obj(H);vm=QueueVM(tree);vm.execute('<init>(Ljava/lang/Object;)V',[handler,c])
    seek=Obj('SeekBar');text=Obj('TextView')
    def callback(value):return Obj('Lo/be;',**{'Lo/be;->Ͱ:I':2,'Lo/be;->ͱ:Landroid/widget/SeekBar;':seek,'Lo/be;->Ͳ:I':value,'Lo/be;->ͳ:Landroid/widget/TextView;':text})
    new=callback(9);old=callback(3)
    # Same live controller, same retained View; an old read finishes after new.
    for cb in [new,old]:
        assert vm.execute('sendMessageAtTime(Landroid/os/Message;J)Z',[handler,cb,0,0])==1
        vm.execute('dispatchMessage(Landroid/os/Message;)V',[handler,cb])
        apply_view_callback(tree,vm.dispatched[-1])
    assert seek.f['progress']==3 and text.f['text']=='3'
    # The worker also writes its cache before Handler.post, so dropping the UI
    # callback alone would not prevent the stale cached value being reused.
    body=next(b for s,(b,_) in methods(tree/'smali/o/je.smali').items() if s.endswith('run()V'))
    cache='    iput v3, v0, Lo/ff;->Λ:I'
    assert body.count(cache)==1
    worker=VM(tree)
    for value in [9,3]:worker.execute('Lo/je;','run()V',[],body=cache,initial={'v0':c,'v3':value})
    assert c.f[FF+'->Λ:I']==3
    # Simulated ordinary close/reopen does not set permanent disposal.
    c.f[FF+'->ͷ:Z']=0;c.f[FF+'->ͷ:Z']=1
    assert vm.execute('sendMessageAtTime(Landroid/os/Message;J)Z',[handler,old,0,0])==1
    return dict(tree=str(tree),new_value=9,late_old_value=3,final_display=seek.f['progress'],final_cached_nav_volume=c.f[FF+'->Λ:I'],ordinary_close_reopen_does_not_reject_old_message=True,status='EXISTING_FRESHNESS_DEFECT_REPRODUCED; injected completion order with actual smali; not ART')

def main():
    trees=[OUT/'worktrees/base10_bounded_tiles_r4',OUT/'final_redecode/base10_r4']
    writes=[]
    for cls,sig in [('ie','run()V'),('je','run()V'),('ke','get()Z')]:
        b=next(b for s,(b,_) in methods(trees[0]/f'smali/o/{cls}.smali').items() if s.split()[-1]==sig)
        writes.append(dict(path=f'smali/o/{cls}.smali',method=sig,owner_cache_write_candidates=[l.strip() for l in b.splitlines() if l.strip().startswith('iput') and 'Lo/ff;' in l],scope='Mixed selectors; instrument/nav/tile read writes require separate commit review, not every listed write is a defect'))
    report=dict(artifacts=[reproduce(t) for t in trees],cache_write_index=writes,next_requirements=['Guard UI publication by panel and per-read-category generation','Apply generation validation to owner cache commits too, not only Handler callbacks','Review instrument retry fields and tile getter caches; getters are status reads but may update local owner caches','Preserve immediate user-action semantics and avoid rerunning any device queries in local tests'],limits='Completion order and framework UI calls are test doubles. No Android runtime, IPC, network or vehicle commands executed.')
    (OUT/'base10_freshness_audit.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
    print('Reproduced in source and final r4: new 9 overwritten by late old 3 in both View and nav cache; ordinary close/reopen still accepts old message. No queries executed.')
if __name__=='__main__':main()
