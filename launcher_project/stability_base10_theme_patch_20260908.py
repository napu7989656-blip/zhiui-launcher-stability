"""Move system-theme query publication onto its controller's owned main queue."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods,sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_owned_handler_r1';DST=OUT/'worktrees/base10_theme_delivery_r2';TAG='base10_r2'
T='Lcom/byd/launcher/stability/QuickSettingsThemeApply;'
HELPER=f'''.class public final {T}
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "QuickSettingsThemeApply"

.field private final owner:Lo/ff;
.field private final mode:I
.field private final expectedMode:I

.method public constructor <init>(Lo/ff;II)V
    .locals 0
    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, {T}->owner:Lo/ff;
    iput p2, p0, {T}->mode:I
    iput p3, p0, {T}->expectedMode:I
    return-void
.end method

.method public run()V
    .locals 5
    iget-object v0, p0, {T}->owner:Lo/ff;
    invoke-static {{v0}}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :done
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;
    instance-of v1, v0, Lcom/byd/launcher/NavBarService;
    if-eqz v1, :done
    check-cast v0, Lcom/byd/launcher/NavBarService;
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :done
    :try_start_apply
    invoke-static {{v0}}, Lo/ci;->Ͱ(Landroid/content/Context;)I
    move-result v1
    iget v2, p0, {T}->expectedMode:I
    if-ne v1, v2, :done
    iget v1, p0, {T}->mode:I
    if-ltz v1, :done
    const/4 v2, 0x2
    if-gt v1, v2, :done
    invoke-static {{v0, v1}}, Lo/ci;->Ͷ(Landroid/content/Context;I)V
    const/4 v3, 0x0
    const/4 v4, 0x1
    if-ne v1, v2, :fixed_mode
    invoke-static {{}}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v1
    const/16 v2, 0xb
    invoke-virtual {{v1, v2}}, Ljava/util/Calendar;->get(I)I
    move-result v1
    const/4 v2, 0x7
    if-lt v1, v2, :apply
    const/16 v2, 0x13
    if-ge v1, v2, :apply
    goto :light
    :fixed_mode
    if-ne v1, v4, :apply
    :light
    move v3, v4
    :apply
    invoke-virtual {{v0, v3}}, Lcom/byd/launcher/NavBarService;->Ύ(Z)V
    :try_end_apply
    .catch Ljava/lang/Exception; {{:try_start_apply .. :try_end_apply}} :failed
    :done
    return-void
    :failed
    move-exception v0
    const-string v1, "QuickSettingsMgr"
    const-string v2, "Owned main-thread theme publication failed"
    invoke-static {{v1, v2, v0}}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method
'''

def main():
    assert not DST.exists(),'Refuse overwrite'
    shutil.copytree(SRC,DST,ignore=lambda path,names:[n for n in names if Path(path)==SRC and n in ('build','dist','.audit_decode_ok')])
    rel='smali/o/ie.smali';p=DST/rel;old=p.read_text(encoding='utf-8')
    a=old.index('    :pswitch_16\n');z=old.index('    :pswitch_17\n',a);block=old[a:z]
    capture='    move-result v5\n\n    .line 1201'
    assert block.count(capture)==1
    block=block.replace(capture,'    move-result v5\n\n    # Preserve the preference observed by this read until main-thread publication.\n    move v6, v5\n\n    .line 1201')
    start=block.index('    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;')
    end=block.index('    :try_end_d',start)
    removed=block[start:end]
    replacement=f'''    new-instance v1, {T}
    invoke-direct {{v1, v0, v3, v6}}, {T}-><init>(Lo/ff;II)V
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {{v0, v1}}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
'''
    block=block[:start]+replacement+block[end:]
    updated=old[:a]+block+old[z:];p.write_text(updated,encoding='utf-8')
    helper='smali/com/byd/launcher/stability/QuickSettingsThemeApply.smali';(DST/helper).write_text(HELPER,encoding='utf-8')
    assert old[:a]==updated[:a] and old[z:]==updated[updated.index('    :pswitch_17\n',a):]
    changes=[dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)),dict(path=helper,before_sha='',after_sha=sha(DST/helper))]
    (OUT/f'{TAG}_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/f'{TAG}_theme_manifest.json').write_text(json.dumps(dict(removed=removed,replacement=replacement,capture=capture),indent=2),encoding='utf-8')
    (OUT/f'{TAG}.patch').write_text(''.join(difflib.unified_diff(old.splitlines(True),updated.splitlines(True),fromfile='base10_r1/'+rel,tofile=TAG+'/'+rel)),encoding='utf-8')
    print('BASE-10 r2: theme result posts to original controller, validates service identity and observed preference; original cursor/failure cleanup preserved.')
if __name__=='__main__':main()
