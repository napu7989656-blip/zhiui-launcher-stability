"""Navigation volume read/drag/command-wait UI ownership, preserving existing commands."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_theme_epoch_r10';DST=OUT/'worktrees/base10_nav_action_reads_r11'
P='Lcom/byd/launcher/stability/';S=P+'NavRead;';A=P+'NavAction;';G=P+'ReadAfterAction;';T=P+'ReadAfterAction$Token;';SLOT=P+'TileSlot;'
ACTION=f'''.class public final {A}
.super Ljava/lang/Object;
.method public static begin(Lo/ff;){T}
    .locals 4
    iget-object v0, p0, Lo/ff;->stabilityNavSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilityNavActionGate:{G}
    invoke-static {{}}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    invoke-virtual {{v0, v1, v2}}, {G}->begin(J){T}
    move-result-object v0
    return-object v0
.end method
.method public static finishJob(Lo/de;)V
    .locals 2
    iget-object v0, p0, Lo/de;->stabilityNavActionToken:{T}
    if-eqz v0, :done
    invoke-virtual {{v0}}, {T}->finish()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lo/de;->ͱ:Lo/ff;
    iget-object v0, v0, Lo/ff;->stabilityNavSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    :done
    return-void
.end method
'''
def main():
    assert (OUT/'base10_r10_verification.json').exists();assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before[:100]);p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    def method(cls,sig,fn):
        rel=f'smali/o/{cls}.smali';b=next(b for s,(b,n) in methods(DST/rel).items() if s.split()[-1]==sig);replace(rel,b,fn(b))
    replace('smali/o/ff.smali','# instance fields',f'# instance fields\n.field public final stabilityNavSlot:{SLOT}\n.field public final stabilityNavActionGate:{G}\n.field public volatile stabilityNavTracking:Z')
    init=f'''    new-instance v0, {SLOT}
    invoke-direct {{v0}}, {SLOT}-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityNavSlot:{SLOT}
    new-instance v0, {G}
    invoke-direct {{v0}}, {G}-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityNavActionGate:{G}
'''
    method('ff','<init>(Landroid/content/Context;Landroid/view/WindowManager;)V',lambda b:b.replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+init,1))
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z','Ό()V']:
        needle=f'    invoke-static/range {{p0 .. p0}}, {P}SocRead;->close(Lo/ff;)V'
        method('ff',sig,lambda b:b.replace(needle,needle+f'\n    invoke-static/range {{p0 .. p0}}, {S}->close(Lo/ff;)V',1))
    replace('smali/o/je.smali','# instance fields',f'# instance fields\n.field public final stabilityNavRead:{S}')
    hook=f'''    new-instance v0, {S}
    invoke-direct {{v0, p1}}, {S}-><init>(Lo/ff;)V
    iput-object v0, p0, Lo/je;->stabilityNavRead:{S}
'''
    # This is inside the existing nav-only branch, before instrument construction reuses p4.
    method('je','<init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V',lambda b:b.replace('    :nav_capture_done\n',hook+'    :nav_capture_done\n',1))
    def guard(b):
        for label in [':pswitch_1',':goto_1']:
            hook=f'''    iget-object v0, p0, Lo/je;->stabilityNavRead:{S}
    invoke-virtual {{v0}}, {S}->current()Z
    move-result v0
    if-nez v0, :nav_worker_current_{label[1:]}
    return-void
    :nav_worker_current_{label[1:]}
'''
            b=b.replace('    '+label+'\n','    '+label+'\n'+hook,1)
        return b
    method('je','run()V',guard)
    rel='smali/com/byd/launcher/stability/NavVolumeApply.smali'
    before='''    iget-object v1, p0, Lo/je;->ͱ:Lo/ff;
    iget-object v1, v1, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z'''
    after=f'''    iget-object v1, p0, Lo/je;->stabilityNavRead:{S}
    invoke-virtual {{v1, v0}}, {S}->post(Ljava/lang/Runnable;)V'''
    replace(rel,before,after)
    hook=f'''    iget v0, p0, Lo/se;->ˋ:I
    const/4 v1, 0x2
    if-ne v0, v1, :nav_start_done
    iget-object v0, p0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {{v0}}, {P}QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :nav_start_done
    const/4 v1, 0x1
    invoke-static {{v0, v1}}, {S}->tracking(Lo/ff;Z)V
    :nav_start_done
'''
    method('se','onStartTrackingTouch(Landroid/widget/SeekBar;)V',lambda b:b.replace('    .locals 2\n','    .locals 2\n'+hook,1))
    hook=f'''    iget-object v3, p0, Lo/se;->Ͱ:Lo/ff;
    const/4 v4, 0x0
    invoke-static {{v3, v4}}, {S}->tracking(Lo/ff;Z)V
'''
    method('se','onStopTrackingTouch(Landroid/widget/SeekBar;)V',lambda b:b.replace('    :goto_4\n','    :goto_4\n'+hook,1))
    hook=f'''    if-eqz p3, :nav_programmatic_progress
    iget-object v1, p0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {{v1}}, {S}->changed(Lo/ff;)V
    :nav_programmatic_progress
'''
    method('se','onProgressChanged(Landroid/widget/SeekBar;IZ)V',lambda b:b.replace('    :goto_2\n','    :goto_2\n'+hook,1))
    replace('smali/o/de.smali','# instance fields',f'# instance fields\n.field public final stabilityNavActionToken:{T}')
    hook=f'''    const/4 v0, 0x1
    if-ne p3, v0, :nav_action_capture_done
    invoke-static {{p1}}, {A}->begin(Lo/ff;){T}
    move-result-object v0
    iput-object v0, p0, Lo/de;->stabilityNavActionToken:{T}
    :nav_action_capture_done
'''
    method('de','<init>(Lo/ff;II)V',lambda b:b.replace('.locals 0','.locals 1',1).replace('    return-void',hook+'    return-void',1))
    method('de','run()V',lambda b:b.replace('    :goto_1\n','    :goto_1\n'+f'    invoke-static {{p0}}, {A}->finishJob(Lo/de;)V\n',1))
    target=DST/'smali/com/byd/launcher/stability'
    for old,new in [('SocRead','NavRead'),('SocApply','NavDeliver')]:
        text=(SRC/f'smali/com/byd/launcher/stability/{old}.smali').read_text(encoding='utf-8')
        text=text.replace('SocRead','NavRead').replace('SocApply','NavDeliver').replace('stabilitySoc','stabilityNav')
        (target/(new+'.smali')).write_text(text,encoding='utf-8')
    (target/'NavAction.smali').write_text(ACTION,encoding='utf-8')
    changes=['smali/o/'+c+'.smali' for c in ['ff','je','se','de']]+['smali/com/byd/launcher/stability/'+c+'.smali' for c in ['NavVolumeApply','NavRead','NavDeliver','NavAction']]
    (OUT/'base10_r11_changes.json').write_text(json.dumps(sorted(changes),indent=2),encoding='utf-8');(OUT/'base10_r11_nav_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    (OUT/'base10_r11_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT',scope='Navigation read freshness/one pending result/drag and bounded UI wait for existing synchronous nav-volume action. Original command remains unchanged.',remaining=['source/final tests','original 23 nav result scenarios','build and cumulative gates']),indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r10/'+r,tofile='r11/'+r)) for r in changes)
    (OUT/'base10_r11.patch').write_text(patch,encoding='utf-8');print('Nav read/action wait draft created; not tested or built.')
if __name__=='__main__':main()
