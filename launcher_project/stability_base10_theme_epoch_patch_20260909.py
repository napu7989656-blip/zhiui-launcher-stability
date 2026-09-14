"""Theme queries: per-controller latest result and process-local preference write identity."""
import json,shutil,re,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_soc_action_reads_r9b';DST=OUT/'worktrees/base10_theme_epoch_r10'
P='Lcom/byd/launcher/stability/';S=P+'ThemeRead;';A=P+'ThemeDeliver;';SLOT=P+'TileSlot;';T=P+'TileSlot$Ticket;';Q=P+'TileSlot$Queue;'
HELPER=f'''.class public final {S}
.super Ljava/lang/Object;
.field private static volatile preferenceEpoch:Ljava/lang/Object;
.field private final owner:Lo/ff;
.field private final expectedEpoch:Ljava/lang/Object;
.field private final ticket:{T}
.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {{v0}}, Ljava/lang/Object;-><init>()V
    sput-object v0, {S}->preferenceEpoch:Ljava/lang/Object;
    return-void
.end method
.method public static preferenceChanged()V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {{v0}}, Ljava/lang/Object;-><init>()V
    sput-object v0, {S}->preferenceEpoch:Ljava/lang/Object;
    return-void
.end method
.method public constructor <init>(Lo/ff;)V
    .locals 1
    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, {S}->owner:Lo/ff;
    sget-object v0, {S}->preferenceEpoch:Ljava/lang/Object;
    iput-object v0, p0, {S}->expectedEpoch:Ljava/lang/Object;
    iget-object v0, p1, Lo/ff;->stabilityThemeSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->begin(){T}
    move-result-object v0
    iput-object v0, p0, {S}->ticket:{T}
    return-void
.end method
.method public current()Z
    .locals 3
    iget-object v0, p0, {S}->owner:Lo/ff;
    invoke-static {{v0}}, {P}QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v1, v2, :no
    iget-object v1, p0, {S}->expectedEpoch:Ljava/lang/Object;
    sget-object v2, {S}->preferenceEpoch:Ljava/lang/Object;
    if-ne v1, v2, :no
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
    iget-object v2, p0, {S}->owner:Lo/ff;
    new-instance v1, {P}TileSnapshots;
    invoke-direct {{v1, v2}}, {P}TileSnapshots;-><init>(Lo/ff;)V
    new-instance v3, {A}
    invoke-direct {{v3, p0, p1}}, {A}-><init>({S}Ljava/lang/Runnable;)V
    invoke-virtual {{v0, v1, v3}}, {T}->post({Q}Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public static close(Lo/ff;)V
    .locals 1
    iget-object v0, p0, Lo/ff;->stabilityThemeSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
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
    assert (OUT/'base10_r9b_manual_audit.json').exists();assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before[:120]);p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    def method(cls,sig,fn):
        rel=f'smali/o/{cls}.smali';b=next(b for s,(b,n) in methods(DST/rel).items() if s.split()[-1]==sig);replace(rel,b,fn(b))
    replace('smali/o/ff.smali','# instance fields',f'# instance fields\n.field public final stabilityThemeSlot:{SLOT}')
    init=f'''    new-instance v0, {SLOT}
    invoke-direct {{v0}}, {SLOT}-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityThemeSlot:{SLOT}
'''
    method('ff','<init>(Landroid/content/Context;Landroid/view/WindowManager;)V',lambda b:b.replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+init,1))
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z']:
        needle=f'    invoke-static/range {{p0 .. p0}}, {P}SocRead;->close(Lo/ff;)V'
        method('ff',sig,lambda b:b.replace(needle,needle+f'\n    invoke-static/range {{p0 .. p0}}, {S}->close(Lo/ff;)V',1))
    replace('smali/o/ie.smali','# instance fields',f'# instance fields\n.field public final stabilityThemeRead:{S}')
    hook=f'''    const/4 v0, 0x6
    if-ne p2, v0, :theme_capture_done
    new-instance v0, {S}
    invoke-direct {{v0, p1}}, {S}-><init>(Lo/ff;)V
    iput-object v0, p0, Lo/ie;->stabilityThemeRead:{S}
    :theme_capture_done
'''
    method('ie','<init>(Lo/ff;I)V',lambda b:b.replace('    return-void',hook+'    return-void',1))
    def edit(b):
        i=b.index('    :pswitch_16\n');j=b.index('    :pswitch_17\n',i);part=b[i:j]
        guard=f'''    iget-object v0, p0, Lo/ie;->stabilityThemeRead:{S}
    invoke-virtual {{v0}}, {S}->current()Z
    move-result v0
    if-nez v0, :theme_worker_current
    return-void
    :theme_worker_current
'''
        part=part.replace('    :pswitch_16\n','    :pswitch_16\n'+guard,1)
        old='    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;';assert part.count(old)==1
        part=part.replace(old,f'    iget-object v0, p0, Lo/ie;->stabilityThemeRead:{S}')
        old='    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert part.count(old)==1
        part=part.replace(old,f'    invoke-virtual {{v0, v1}}, {S}->post(Ljava/lang/Runnable;)V')
        return b[:i]+part+b[j:]
    method('ie','run()V',edit)
    needle='    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V'
    method('ci','Ͷ(Landroid/content/Context;I)V',lambda b:b.replace(needle,f'    invoke-static {{}}, {S}->preferenceChanged()V\n'+needle,1))
    target=DST/'smali/com/byd/launcher/stability';(target/'ThemeRead.smali').write_text(HELPER,encoding='utf-8');(target/'ThemeDeliver.smali').write_text(APPLY,encoding='utf-8')
    changes=['smali/o/'+c+'.smali' for c in ['ff','ie','ci']]+['smali/com/byd/launcher/stability/'+c+'.smali' for c in ['ThemeRead','ThemeDeliver']]
    (OUT/'base10_r10_changes.json').write_text(json.dumps(sorted(changes),indent=2),encoding='utf-8');(OUT/'base10_r10_theme_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    (OUT/'base10_r10_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT',scope='Theme latest-read and preference-write identity. Process-local epoch; not cross-process preference mutation tracking.',remaining=['source/final tests','caller write coverage','build and cumulative gates']),indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r9b/'+r,tofile='r10/'+r)) for r in changes)
    (OUT/'base10_r10.patch').write_text(patch,encoding='utf-8');print('Theme preference/query identity draft created; not built or verified.')
if __name__=='__main__':main()
