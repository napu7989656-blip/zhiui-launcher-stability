"""SOC read publication ownership; preserves existing query and action requests."""
import json,shutil,re,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_tile_subtitles_r8b';DST=OUT/'worktrees/base10_soc_reads_r9'
P='Lcom/byd/launcher/stability/';S=P+'SocRead;';A=P+'SocApply;';B=P+'TileBatch;';Q=P+'TileSlot$Queue;';T=P+'TileSlot$Ticket;';SLOT=P+'TileSlot;'
HELPER=f'''.class public final {S}
.super Ljava/lang/Object;
.field public final batch:{B}
.field public final ticket:{T}
.method public constructor <init>(Lo/ff;)V
    .locals 5
    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V
    new-instance v0, {B}
    move-object v1, p1
    iget-object v2, p1, Lo/ff;->ͳ:Landroid/view/View;
    iget-object v3, p1, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    new-instance v4, {P}TileSnapshots;
    invoke-direct {{v4, p1}}, {P}TileSnapshots;-><init>(Lo/ff;)V
    invoke-direct {{v0, v1, v2, v3, v4}}, {B}-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;{Q})V
    iput-object v0, p0, {S}->batch:{B}
    iget-object v0, p1, Lo/ff;->stabilitySocSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->begin(){T}
    move-result-object v0
    iput-object v0, p0, {S}->ticket:{T}
    return-void
.end method
.method public current()Z
    .locals 3
    iget-object v0, p0, {S}->batch:{B}
    invoke-static {{v0}}, {P}TileSnapshots;->usable({B})Z
    move-result v1
    if-eqz v1, :no
    iget-object v0, v0, {B}->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    iget-boolean v1, v0, Lo/ff;->stabilitySocTracking:Z
    if-nez v1, :no
    iget-object v0, p0, {S}->ticket:{T}
    invoke-virtual {{v0}}, {T}->isCurrent()Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public post(Ljava/lang/Runnable;)V
    .locals 4
    invoke-virtual {{p0}}, {S}->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, {S}->ticket:{T}
    iget-object v1, p0, {S}->batch:{B}
    iget-object v1, v1, {B}->queue:{Q}
    new-instance v2, {A}
    invoke-direct {{v2, p0, p1}}, {A}-><init>({S}Ljava/lang/Runnable;)V
    invoke-virtual {{v0, v1, v2}}, {T}->post({Q}Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public static tracking(Lo/ff;Z)V
    .locals 1
    iput-boolean p1, p0, Lo/ff;->stabilitySocTracking:Z
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    return-void
.end method
.method public static changed(Lo/ff;)V
    .locals 1
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    return-void
.end method
.method public static close(Lo/ff;)V
    .locals 1
    const/4 v0, 0x0
    invoke-static {{p0, v0}}, {S}->tracking(Lo/ff;Z)V
    return-void
.end method
'''
APPLY=f'''.class public final {A}
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final read:{S}
.field private final delegate:Ljava/lang/Runnable;
.method public constructor <init>({S}Ljava/lang/Runnable;)V
    .locals 0
    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, {A}->read:{S}
    iput-object p2, p0, {A}->delegate:Ljava/lang/Runnable;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, {A}->read:{S}
    invoke-virtual {{v0}}, {S}->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, {A}->delegate:Ljava/lang/Runnable;
    invoke-interface {{v0}}, Ljava/lang/Runnable;->run()V
    :done
    return-void
.end method
'''
def main():
    assert (OUT/'base10_r8b_verification.json').exists();assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;t=p.read_text(encoding='utf-8');assert t.count(before)==1,(rel,before[:100]);p.write_text(t.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    def method(cls,sig,fn):
        rel=f'smali/o/{cls}.smali';b=next(b for s,(b,n) in methods(DST/rel).items() if s.split()[-1]==sig);replace(rel,b,fn(b))
    replace('smali/o/ff.smali','# instance fields',f'# instance fields\n.field public final stabilitySocSlot:{SLOT}\n.field public volatile stabilitySocTracking:Z')
    init=f'''    new-instance v0, {SLOT}
    invoke-direct {{v0}}, {SLOT}-><init>()V
    iput-object v0, p0, Lo/ff;->stabilitySocSlot:{SLOT}
'''
    method('ff','<init>(Landroid/content/Context;Landroid/view/WindowManager;)V',lambda b:b.replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+init,1))
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z','Ό()V']:
        method('ff',sig,lambda b:re.sub(r'(    invoke-static(?:/range)? \{[^}]+\}, '+re.escape(P)+r'TileSnapshots;->invalidate\(Lo/ff;\)V)',lambda m:m[0]+f'\n    invoke-static/range {{p0 .. p0}}, {S}->close(Lo/ff;)V',b))
    for cls,sig,selector,arg,owner in [('ie','<init>(Lo/ff;I)V',24,'p2','p1'),('sj','<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V',3,'p5','p1')]:
        replace(f'smali/o/{cls}.smali','# instance fields',f'# instance fields\n.field public final stabilitySocRead:{S}')
        hook=f'''    const/16 v0, {hex(selector)}
    if-ne {arg}, v0, :soc_capture_done
    move-object v0, {owner}
    check-cast v0, Lo/ff;
    new-instance v1, {S}
    invoke-direct {{v1, v0}}, {S}-><init>(Lo/ff;)V
    iput-object v1, p0, Lo/{cls};->stabilitySocRead:{S}
    :soc_capture_done
'''
        method(cls,sig,lambda b,h=hook:b.replace('.locals 0','.locals 2',1).replace('    return-void',h+'    return-void',1))
    for cls,start,end,reg,owner,cb in [('ie',':pswitch_4',':pswitch_5','v2','v0','v3'),('sj',':pswitch_3',':pswitch_4','v0','v2','v7')]:
        def edit(b):
            i=b.index('    '+start+'\n');j=b.index('    '+end+'\n',i);part=b[i:j]
            guard=f'''    iget-object v0, p0, Lo/{cls};->stabilitySocRead:{S}
    invoke-virtual {{v0}}, {S}->current()Z
    move-result v0
    if-nez v0, :soc_worker_current
    return-void
    :soc_worker_current
'''
            part=part.replace('    '+start+'\n','    '+start+'\n'+guard,1)
            old=f'    iget-object {reg}, {owner}, Lo/ff;->Ͱ:Landroid/os/Handler;';assert part.count(old)==1
            part=part.replace(old,f'    iget-object {reg}, p0, Lo/{cls};->stabilitySocRead:{S}')
            old=f'    invoke-virtual {{{reg}, {cb}}}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert part.count(old)==1
            part=part.replace(old,f'    invoke-virtual {{{reg}, {cb}}}, {S}->post(Ljava/lang/Runnable;)V')
            return b[:i]+part+b[j:]
        method(cls,'run()V',edit)
    # re selector1 is SOC. Other selectors include unrelated vehicle controls and stay exact.
    for sig,flag in [('onStartTrackingTouch(Landroid/widget/SeekBar;)V',1),('onStopTrackingTouch(Landroid/widget/SeekBar;)V',0)]:
        hook=f'''    iget-object v0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    const/4 v4, {hex(flag)}
    invoke-static {{v0, v4}}, {S}->tracking(Lo/ff;Z)V
'''
        # start locals1 needs two temporaries; p1 not changed by the hook.
        if flag:hook=hook.replace('v4','v1')
        method('re',sig,lambda b,h=hook,f=flag:b.replace('.locals 1','.locals 2',1) .replace('    :pswitch_0\n','    :pswitch_0\n'+h,1) if f else b.replace('    :pswitch_0\n','    :pswitch_0\n'+h,1))
    hook=f'''    if-eqz p3, :soc_programmatic_progress
    iget-object v0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {{v0}}, {S}->changed(Lo/ff;)V
    :soc_programmatic_progress
'''
    method('re','onProgressChanged(Landroid/widget/SeekBar;IZ)V',lambda b:b.replace('    :pswitch_0\n','    :pswitch_0\n'+hook,1))
    target=DST/'smali/com/byd/launcher/stability';(target/'SocRead.smali').write_text(HELPER,encoding='utf-8');(target/'SocApply.smali').write_text(APPLY,encoding='utf-8')
    (OUT/'base10_r9_soc_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    changes=['smali/o/'+c+'.smali' for c in ['ff','ie','sj','re']]+['smali/com/byd/launcher/stability/SocRead.smali','smali/com/byd/launcher/stability/SocApply.smali']
    (OUT/'base10_r9_changes.json').write_text(json.dumps(sorted(changes),indent=2),encoding='utf-8')
    (OUT/'base10_r9_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT',remaining=['source/final tests','register and lifecycle audit','local build gates'],limits='Existing vehicle action bodies preserved; not executed. Post-action query consistency still needs caller/latency review.'),indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r8b/'+r,tofile='r9/'+r)) for r in changes)
    (OUT/'base10_r9.patch').write_text(patch,encoding='utf-8');print('SOC r9 drafted, not built or verified.')
if __name__=='__main__':main()
