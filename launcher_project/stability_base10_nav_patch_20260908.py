"""Scoped nav read generation/cache publication patch, parent BASE10 r4."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods,sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_bounded_tiles_r4';DST=OUT/'worktrees/base10_nav_freshness_r5';TAG='base10_r5'
L='Lcom/byd/launcher/stability/LatestRead;';T='Lcom/byd/launcher/stability/LatestRead$Ticket;'
A='Lcom/byd/launcher/stability/NavVolumeApply;'
HELPER=''' .class public final Lcom/byd/launcher/stability/NavVolumeApply;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final job:Lo/je;
.field private final value:I
.field private final delegate:Ljava/lang/Runnable;

.method public constructor <init>(Lo/je;ILjava/lang/Runnable;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/NavVolumeApply;->job:Lo/je;
    iput p2, p0, Lcom/byd/launcher/stability/NavVolumeApply;->value:I
    iput-object p3, p0, Lcom/byd/launcher/stability/NavVolumeApply;->delegate:Ljava/lang/Runnable;
    return-void
.end method

.method public static submit(Lo/je;ILjava/lang/Runnable;)V
    .locals 2
    new-instance v0, Lcom/byd/launcher/stability/NavVolumeApply;
    invoke-direct {v0, p0, p1, p2}, Lcom/byd/launcher/stability/NavVolumeApply;-><init>(Lo/je;ILjava/lang/Runnable;)V
    iget-object v1, p0, Lo/je;->ͱ:Lo/ff;
    iget-object v1, v1, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public final run()V
    .locals 5
    iget-object v0, p0, Lcom/byd/launcher/stability/NavVolumeApply;->job:Lo/je;
    iget-object v1, v0, Lo/je;->ͱ:Lo/ff;
    invoke-static {v1}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :done
    iget-object v2, v1, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v2, v3, :done
    iget-object v2, v0, Lo/je;->stabilityNavTicket:Lcom/byd/launcher/stability/LatestRead$Ticket;
    if-eqz v2, :done
    invoke-virtual {v2}, Lcom/byd/launcher/stability/LatestRead$Ticket;->isCurrent()Z
    move-result v2
    if-eqz v2, :done
    iget-object v2, v0, Lo/je;->stabilityNavRoot:Landroid/view/View;
    if-eqz v2, :done
    iget-object v3, v1, Lo/ff;->ͳ:Landroid/view/View;
    if-eq v2, v3, :apply
    iget-object v3, v1, Lo/ff;->Ώ:Landroid/view/View;
    if-ne v2, v3, :done
    :apply
    iget v2, p0, Lcom/byd/launcher/stability/NavVolumeApply;->value:I
    if-ltz v2, :done
    iget-object v3, p0, Lcom/byd/launcher/stability/NavVolumeApply;->delegate:Ljava/lang/Runnable;
    if-eqz v3, :done
    :try_start
    iput v2, v1, Lo/ff;->Λ:I
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    :done
    return-void
    :failed
    move-exception v4
    const-string v2, "QuickSettingsMgr"
    const-string v3, "Navigation volume result publication failed"
    invoke-static {v2, v3, v4}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method
'''.lstrip()

def main():
    assert (OUT/'base10_r4_cumulative_content.json').exists()
    assert not DST.exists(),'Refuse overwrite'
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before)
        p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    f='smali/o/ff.smali';j='smali/o/je.smali'
    replace(f,'# instance fields\n','# instance fields\n.field public final stabilityNavReads:'+L+'\n')
    ctor=next(b for s,(b,_) in methods(DST/f).items() if '<init>' in s)
    needle='    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'
    init=f'\n    new-instance v0, {L}\n    invoke-direct {{v0}}, {L}-><init>()V\n    iput-object v0, p0, Lo/ff;->stabilityNavReads:{L}\n'
    replace(f,ctor,ctor.replace(needle,needle+init))
    for sig,marker,reg in [('ʹ()V','    :cond_0\n','v0'),('Ά()V','    :stability_owner_alive\n','v0'),('stabilityDispose()Z','    iput-boolean v0, p0, Lo/ff;->stabilityDisposed:Z\n','v2')]:
        body=next(b for s,(b,_) in methods(DST/f).items() if s.split()[-1]==sig)
        hook=f'    iget-object {reg}, p0, Lo/ff;->stabilityNavReads:{L}\n    invoke-virtual {{{reg}}}, {L}->invalidate()V\n'
        assert body.count(marker)==1;replace(f,body,body.replace(marker,marker+hook))
    replace(j,'# instance fields\n',f'# instance fields\n.field public final stabilityNavTicket:{T}\n.field public final stabilityNavRoot:Landroid/view/View;\n')
    ctor=next(b for s,(b,_) in methods(DST/j).items() if '<init>' in s)
    ticket=f'''
    const/4 v0, 0x1
    if-eq p4, v0, :nav_capture_done
    iget-object v0, p1, Lo/ff;->stabilityNavReads:{L}
    invoke-virtual {{v0}}, {L}->issue(){T}
    move-result-object v0
    iput-object v0, p0, Lo/je;->stabilityNavTicket:{T}
    iget-object v0, p1, Lo/ff;->ͳ:Landroid/view/View;
    iput-object v0, p0, Lo/je;->stabilityNavRoot:Landroid/view/View;
    :nav_capture_done
'''
    replace(j,ctor,ctor.replace('.locals 0','.locals 1').replace(needle,needle+ticket))
    for value,delegate in [('v3','v4'),('v4','v5')]:
        replace(j,f'    iput {value}, v0, Lo/ff;->Λ:I', f'    # Nav {value} cache is committed with the accepted result on the main Handler.')
        # Match the context to distinguish the two identical Handler loads.
        s=(DST/j).read_text(encoding='utf-8');start=s.index('    :pswitch_1\n' if value=='v3' else '    :goto_1\n')
        end=s.index('    new-instance '+delegate+', Lo/be;',start)
        block=s[start:end];replace(j,block,block.replace('    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;','    # Owned Handler selected by NavVolumeApply.submit.'))
        replace(j,f'    invoke-virtual {{v0, {delegate}}}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z',f'    invoke-static {{p0, {value}, {delegate}}}, {A}->submit(Lo/je;ILjava/lang/Runnable;)V')
    module=OUT/'modules/latest_read_r1/decoded/smali/com/byd/launcher/stability'
    files=sorted(module.glob('*.smali'));assert len(files)==3
    for p in files:shutil.copy2(p,DST/'smali/com/byd/launcher/stability'/p.name)
    (DST/'smali/com/byd/launcher/stability/NavVolumeApply.smali').write_text(HELPER,encoding='utf-8')
    (OUT/f'{TAG}_nav_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    changed=[f,j]+['smali/com/byd/launcher/stability/'+p.name for p in files]+['smali/com/byd/launcher/stability/NavVolumeApply.smali']
    diff=[]
    for rel in changed:
        old=(SRC/rel).read_text(encoding='utf-8') if (SRC/rel).exists() else ''
        diff.extend(difflib.unified_diff(old.splitlines(True),(DST/rel).read_text(encoding='utf-8').splitlines(True),fromfile='base10_r4/'+rel,tofile=TAG+'/'+rel))
    (OUT/f'{TAG}.patch').write_text(''.join(diff),encoding='utf-8')
    (OUT/f'{TAG}_changes.json').write_text(json.dumps(changed,indent=2),encoding='utf-8')
    print('Created nav-only freshness checkpoint: 2 existing files, 4 owned helper classes; no queries executed.')
if __name__=='__main__':main()
