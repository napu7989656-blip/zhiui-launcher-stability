"""R13 owns the quick-panel glass read and preparation request, preserving blur work."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_wait_interrupt_r12';DST=OUT/'worktrees/base10_glass_reads_r13'
P='Lcom/byd/launcher/stability/';S=P+'GlassRead;';A=P+'GlassDeliver;';SLOT=P+'TileSlot;';T=P+'TileSlot$Ticket;';B=P+'TileBatch;'
def main():
    assert (OUT/'base10_r12_manual_audit.json').exists() and not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;text=p.read_text(encoding='utf-8');assert text.count(before)==1,(rel,before[:80]);p.write_text(text.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    def method(cls,sig,fn):
        rel='smali/o/'+cls+'.smali';before=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]==sig);after=fn(before);assert before!=after;replace(rel,before,after)
    replace('smali/o/ff.smali','# instance fields','# instance fields\n.field public final stabilityGlassSlot:'+SLOT+'\n.field public final stabilityGlassPrepareSlot:'+SLOT)
    init=''
    for field in ['stabilityGlassSlot','stabilityGlassPrepareSlot']:
        init+='    new-instance v0, '+SLOT+'\n    invoke-direct {v0}, '+SLOT+'-><init>()V\n    iput-object v0, p0, Lo/ff;->'+field+':'+SLOT+'\n'
    method('ff','<init>(Landroid/content/Context;Landroid/view/WindowManager;)V',lambda b:b.replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+init,1))
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z','Ό()V']:
        needle='    invoke-static/range {p0 .. p0}, '+P+'NavRead;->close(Lo/ff;)V'
        method('ff',sig,lambda b:b.replace(needle,needle+'\n    invoke-static/range {p0 .. p0}, '+S+'->close(Lo/ff;)V',1))
    def start(b):
        b=b.replace('    :stability_owner_alive\n','    :stability_owner_alive\n    invoke-static {p0}, '+S+'->close(Lo/ff;)V\n',1)
        b=b.replace('    new-instance v0, Ljava/lang/Thread;','    const/16 v0, 0x9',1)
        before='''    const-string p1, "QSGlassBg"

    invoke-direct {v0, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V'''
        assert before in b
        return b.replace(before,'    invoke-static {p0, v0, v2}, '+P+'QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z',1)
    method('ff','ˋ(Landroid/view/View;)V',start)
    replace('smali/o/x9.smali','# instance fields','# instance fields\n.field public final stabilityGlassRead:'+S)
    hook='    new-instance v0, '+S+'\n    invoke-direct {v0, p1, p3}, '+S+'-><init>(Lo/ff;Landroid/view/View;)V\n    iput-object v0, p0, Lo/x9;->stabilityGlassRead:'+S+'\n'
    method('x9','<init>(Lo/ff;ZLandroid/view/View;)V',lambda b:b.replace('    return-void',hook+'    return-void',1))
    def run(b):
        start=b.index('    :pswitch_0\n');end=b.index('    :pswitch_1\n',start);part=b[start:end]
        guard='''    move-object/from16 v1, p0
    iget-object v1, v1, Lo/x9;->stabilityGlassRead:'''+S+'''
    invoke-virtual {v1}, '''+S+'''->current()Z
    move-result v1
    if-nez v1, :glass_worker_current
    return-void
    :glass_worker_current
'''
        part=part.replace('    :pswitch_0\n','    :pswitch_0\n'+guard,1)
        old='    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert part.count(old)==1
        part=part.replace(old,'    move-object/from16 v2, p0\n    iget-object v2, v2, Lo/x9;->stabilityGlassRead:'+S+'\n    invoke-virtual {v2, v5}, '+S+'->prepare(Ljava/lang/Runnable;)V')
        part=part.replace(':catch_0\n',':catch_0\n'+guard.replace('v1','v2').replace('glass_worker_current','glass_after_wait'),1)
        part=part.replace('} :catch_0','} :glass_interrupted',1)
        old='    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert part.count(old)==1
        part=part.replace(old,'    move-object/from16 v1, p0\n    iget-object v1, v1, Lo/x9;->stabilityGlassRead:'+S+'\n    invoke-virtual {v1, v3}, '+S+'->post(Ljava/lang/Runnable;)V')
        b=b[:start]+part+b[end:]
        return b.replace('.end method','''    :glass_interrupted
    move-exception v1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    return-void
.end method''')
    method('x9','run()V',run)
    # Reuse the proven batch/root and one-pending-result mechanics, without SOC action state.
    text=(SRC/'smali/com/byd/launcher/stability/SocRead.smali').read_text(encoding='utf-8').replace('SocRead','GlassRead').replace('SocApply','GlassDeliver').replace('stabilitySocSlot','stabilityGlassSlot')
    text=text[:text.index('.method public static tracking')]
    text=text.replace('.field public final batch:', '.field private final target:Landroid/view/View;\n.field private final prepareTicket:'+T+'\n.field public final batch:',1)
    text=text.replace('<init>(Lo/ff;)V','<init>(Lo/ff;Landroid/view/View;)V',1)
    needle='    invoke-direct {p0}, Ljava/lang/Object;-><init>()V'
    text=text.replace(needle,needle+'\n    iput-object p2, p0, '+S+'->target:Landroid/view/View;\n    iget-object v0, p1, Lo/ff;->stabilityGlassPrepareSlot:'+SLOT+'\n    invoke-virtual {v0}, '+SLOT+'->begin()'+T+'\n    move-result-object v0\n    iput-object v0, p0, '+S+'->prepareTicket:'+T,1)
    begin=text.index('    iget-boolean v1, v0, Lo/ff;->stabilitySocTracking:Z');end=text.index('    iget-object v0, p0, '+S+'->ticket:',begin)
    text=text[:begin]+'''    iget-object v1, p0, '''+S+'''->target:Landroid/view/View;
    if-eqz v1, :no
    iget-object v0, v0, Lo/ff;->ʹ:Landroid/view/View;
    if-ne v0, v1, :no
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-nez v0, :no
'''+text[end:]
    post=text[text.index('.method public post('):]
    text+=post.replace('post(Ljava/lang/Runnable;)V','prepare(Ljava/lang/Runnable;)V',1).replace('->ticket:'+T,'->prepareTicket:'+T)
    text+='''.method public static close(Lo/ff;)V
    .locals 1
    iget-object v0, p0, Lo/ff;->stabilityGlassSlot:'''+SLOT+'''
    invoke-virtual {v0}, '''+SLOT+'''->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilityGlassPrepareSlot:'''+SLOT+'''
    invoke-virtual {v0}, '''+SLOT+'''->invalidate()V
    return-void
.end method
'''
    target=DST/'smali/com/byd/launcher/stability';(target/'GlassRead.smali').write_text(text,encoding='utf-8')
    text=(SRC/'smali/com/byd/launcher/stability/SocApply.smali').read_text(encoding='utf-8').replace('SocRead','GlassRead').replace('SocApply','GlassDeliver')
    (target/'GlassDeliver.smali').write_text(text,encoding='utf-8')
    changes=sorted({'smali/o/ff.smali','smali/o/x9.smali','smali/com/byd/launcher/stability/GlassRead.smali','smali/com/byd/launcher/stability/GlassDeliver.smali'})
    (OUT/'base10_r13_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8');(OUT/'base10_r13_glass_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r12/'+r,tofile='r13/'+r)) for r in changes)
    (OUT/'base10_r13.patch').write_text(patch,encoding='utf-8')
    (OUT/'base10_r13_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT',remaining=['glass branch tests','shared pool category9 proof','prepare and result bounds','final gates','MainActivity blur preparation ownership remains separate R14 work']),indent=2),encoding='utf-8')
    print('R13 panel glass draft created; main blur production chain remains unfinished.')
if __name__=='__main__':main()
