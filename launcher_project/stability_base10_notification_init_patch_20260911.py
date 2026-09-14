import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_init_owner_r17';DST=OUT/'worktrees/base10_notification_init_r18'
P='Lcom/byd/launcher/stability/'
def main():
 assert (OUT/'base10_r17_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 rel='smali/com/byd/launcher/NavBarService.smali';p=DST/rel;text=p.read_text(encoding='utf-8')
 before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]=='Κ()V')
 # Retain the existing four media refresh callbacks and their timing.
 tail=before[before.index('    :goto_b\n'):before.index('    :try_end_d\n')]
 tail=tail.replace('    :goto_b\n','')
 tail=tail.replace('    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z',
  '    invoke-virtual {v15}, '+P+'NotificationInitHost;->current()Z\n    move-result v16\n    if-eqz v16, :done\n    new-instance v9, '+P+'NotificationInitCallback;\n    invoke-direct {v9, v15, v6}, '+P+'NotificationInitCallback;-><init>('+P+'NotificationInitHost;Ljava/lang/Runnable;)V\n    invoke-virtual {v5, v9, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z')
 tail=tail.replace('    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z',
  '    invoke-virtual {v15}, '+P+'NotificationInitHost;->current()Z\n    move-result v16\n    if-eqz v16, :done\n    new-instance v9, '+P+'NotificationInitCallback;\n    invoke-direct {v9, v15, v3}, '+P+'NotificationInitCallback;-><init>('+P+'NotificationInitHost;Ljava/lang/Runnable;)V\n    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z')
 assert tail.count('NotificationInitCallback;-><init>')==2
 after=""".method public final Κ()V
    .locals 17
    move-object/from16 v1, p0
    const-string v2, "NavBarSvc"
    :try_start_owned
    new-instance v15, Lcom/byd/launcher/stability/NotificationInitHost;
    invoke-direct {v15, v1}, Lcom/byd/launcher/stability/NotificationInitHost;-><init>(Lcom/byd/launcher/NavBarService;)V
    invoke-virtual {v15}, Lcom/byd/launcher/stability/NotificationInitHost;->current()Z
    move-result v0
    if-eqz v0, :done
    new-instance v0, Landroid/content/ComponentName;
    const-class v3, Lcom/byd/launcher/MusicNotificationListener;
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v15, v0}, Lcom/byd/launcher/stability/NotificationInit;->ensure(Lcom/byd/launcher/stability/NotificationInit$Host;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :not_verified
    const-string v0, "NotificationListener access verified"
    goto :report
    :not_verified
    const-string v0, "NotificationListener access not verified"
    :report
    invoke-static {v2, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-nez v0, :done
    const/4 v11, 0x0
"""+tail+"""    :try_end_owned
    .catch Ljava/lang/Exception; {:try_start_owned .. :try_end_owned} :failure
    goto :done
    :failure
    move-exception v0
    const-string v3, "NotificationListener initialization failed"
    invoke-static {v2, v3, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :done
    return-void
.end method"""
 assert text.count(before)==1;p.write_text(text.replace(before,after),encoding='utf-8')
 added=[]
 for source in (OUT/'modules/notification_init_prod_r1/decoded/smali').rglob('*.smali'):
  target='smali/'+source.relative_to(OUT/'modules/notification_init_prod_r1/decoded/smali').as_posix();assert not (DST/target).exists();shutil.copy2(source,DST/target);added.append(target)
 for name in ['NotificationInitHost','NotificationInitCallback']:
  target='smali/com/byd/launcher/stability/'+name+'.smali';assert not (DST/target).exists();shutil.copy2(ROOT/'stability_modules/bridge'/ (name+'.smali'),DST/target);added.append(target)
 records=dict(path=rel,before=before,after=after,added=sorted(added))
 for suffix,value in [('changes',sorted([rel]+added)),('notification_manifest',records),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['host/final smali tests','compile and full package gates','manual review','P1/P2/P3']))]:
  (OUT/('base10_r18_'+suffix+'.json')).write_text(json.dumps(value,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r18.patch').write_text(''.join(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='r17/'+rel,tofile='r18/'+rel)),encoding='utf-8')
 print('R18 integration draft created:',1+len(added),'files; not built or validated as APK.')
if __name__=='__main__':main()
