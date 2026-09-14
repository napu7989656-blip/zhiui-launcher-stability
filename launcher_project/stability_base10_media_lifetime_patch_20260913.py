import json,shutil,difflib,re
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_media_uri_r22';DST=OUT/'worktrees/base10_media_lifetime_r23'
A='Lo/a9;';N='Lcom/byd/launcher/NavBarService;';START='Lcom/byd/launcher/stability/MediaManagerStart;'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r22_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[];added=[]
 def change(rel,before,after):
  p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1 and before!=after
  p.write_text(s.replace(before,after),encoding='utf-8');edits.append(dict(path=rel,before=before,after=after))
 def body(rel,sig):return next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]==sig)
 def edit(rel,sig,fn):
  b=body(rel,sig);change(rel,b,fn(b))
 rel='smali/o/a9.smali'
 change(rel,'.field public volatile ͺ:Z','.field public volatile ͺ:Z\n\n.field private stabilityDisposed:Z\n\n.field private stabilityStarted:Z')
 dispose='''.method public stabilityDispose()V
    .locals 4
    iget-boolean v0, p0, Lo/a9;->stabilityDisposed:Z
    if-nez v0, :done
    const/4 v0, 0x1
    iput-boolean v0, p0, Lo/a9;->stabilityDisposed:Z
    iput-boolean v0, p0, Lo/a9;->ͺ:Z
    const/4 v1, 0x0
    iput-object v1, p0, Lo/a9;->ʹ:Lo/ia;
    iput-object v1, p0, Lo/a9;->ͽ:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lo/a9;->ΐ:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lo/a9;->Ώ:Ljava/lang/String;
    iput-object v1, p0, Lo/a9;->Γ:Ljava/lang/Runnable;
    iget-object v2, p0, Lo/a9;->ͱ:Ljava/util/concurrent/Future;
    iput-object v1, p0, Lo/a9;->ͱ:Ljava/util/concurrent/Future;
    if-eqz v2, :after_future
    :try_future
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :end_future
    .catch Ljava/lang/RuntimeException; {:try_future .. :end_future} :fail_future
    goto :after_future
    :fail_future
    move-exception v3
    :after_future
    :try_art
    invoke-virtual {p0}, Lo/a9;->stabilityCloseArtwork()V
    :end_art
    .catch Ljava/lang/RuntimeException; {:try_art .. :end_art} :fail_art
    goto :after_art
    :fail_art
    move-exception v3
    :after_art
    :try_handler
    iget-object v2, p0, Lo/a9;->ˏ:Landroid/os/Handler;
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :end_handler
    .catch Ljava/lang/RuntimeException; {:try_handler .. :end_handler} :fail_handler
    goto :after_handler
    :fail_handler
    move-exception v3
    :after_handler
    :try_detach
    invoke-virtual {p0}, Lo/a9;->ˏ()V
    :end_detach
    .catch Ljava/lang/RuntimeException; {:try_detach .. :end_detach} :fail_detach
    goto :after_detach
    :fail_detach
    move-exception v3
    :after_detach
    iput-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iput-object v1, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v1, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    iget-object v2, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;
    iput-object v1, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;
    iput-boolean v1, p0, Lo/a9;->ͻ:Z
    if-eqz v2, :done
    :try_listener
    iget-object v3, p0, Lo/a9;->ͷ:Lo/x8;
    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :end_listener
    .catch Ljava/lang/RuntimeException; {:try_listener .. :end_listener} :fail_listener
    goto :done
    :fail_listener
    move-exception v3
    :done
    return-void
.end method
'''
 # Move the existing Android startup logic into an owner-bound, one-shot method.
 ea=body('smali/o/ea.smali','run()V');start=ea.index('    :pswitch_d\n');end=ea.index('    .line 424\n',start)
 old=ea[start:end];original=old[old.index('    :try_start_2\n'):]
 original=original.replace('v13','v9')
 startup='''.method public stabilityStart()V
    .locals 10
    invoke-virtual {p0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-eqz v0, :start_done
    iget-boolean v0, p0, Lo/a9;->stabilityStarted:Z
    if-nez v0, :start_done
    const/4 v9, 0x1
    iput-boolean v9, p0, Lo/a9;->stabilityStarted:Z
    move-object v0, p0
    const-wide/16 v1, 0xbb8
    const/4 v3, 0x3
    const-string v4, "MusicCtrlMgr"
'''+original+'''    :start_done
    return-void
.end method
'''
 # Keep legacy selector callable, but it can no longer revive destroyed managers or create duplicate loops.
 new='''    :pswitch_d
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    if-eqz v0, :media_start_done
    invoke-virtual {v0}, Lo/a9;->stabilityStart()V
    :media_start_done
    return-void

'''
 change('smali/o/ea.smali',old,new)
 p=DST/rel;s=p.read_text(encoding='utf-8');change(rel,s,s+'\n'+dispose+'\n'+startup)
 def guard(b):
  marker='    .locals 4';assert b.count(marker)==1
  return b.replace(marker,marker+'''\n    invoke-virtual {p0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :refresh_alive
    return-void
    :refresh_alive''')
 edit(rel,'ͺ()V',guard)
 def destroy(b):
  first=b.index('    iput-boolean v0, v1, Lo/a9;->ͺ:Z');last=b.index('    iput-object v2, p0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;',first)
  return b[:first]+'    invoke-virtual {v1}, Lo/a9;->stabilityDispose()V\n\n'+b[last:]
 edit('smali/com/byd/launcher/NavBarService.smali','onDestroy()V',destroy)
 def replacement(b):
  b=b.replace('    invoke-virtual {v2}, Lo/a9;->stabilityCloseArtwork()V','    invoke-virtual {v2}, Lo/a9;->stabilityDispose()V')
  marker='    :pswitch_d\n';at=b.index(marker)+len(marker)
  b=b[:at]+'''    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v2, :media_replace_done
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-eq v0, v2, :media_replace_alive
    :media_replace_done
    return-void
    :media_replace_alive
'''+b[at:]
  begin=b.index('    new-instance v3, Lo/ea;',b.index('    :art_new_manager'));last='    invoke-direct {v3, v0, v4}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V';end=b.index(last,begin)+len(last)
  b=b[:begin]+'''    new-instance v3, Lcom/byd/launcher/stability/MediaManagerStart;
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    invoke-direct {v3, v4}, Lcom/byd/launcher/stability/MediaManagerStart;-><init>(Lo/a9;)V'''+b[end:]
  return b
 edit('smali/o/llI.smali','run()V',replacement)
 def poll(b):
  needle='    iget-boolean v0, v0, Lo/a9;->ͺ:Z';assert b.count(needle)==1
  b=b.replace(needle,'    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z\n    move-result v0')
  b=b.replace('    if-eqz v0, :cond_0','    if-nez v0, :cond_0',1)
  return b
 edit('smali/o/c8.smali','run()V',poll)
 rel='smali/com/byd/launcher/stability/MediaManagerStart.smali'
 (DST/rel).write_text('''.class public final Lcom/byd/launcher/stability/MediaManagerStart;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final owner:Lo/a9;
.method public constructor <init>(Lo/a9;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaManagerStart;->owner:Lo/a9;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaManagerStart;->owner:Lo/a9;
    invoke-virtual {v0}, Lo/a9;->stabilityStart()V
    return-void
.end method
''',encoding='utf-8');added.append(rel)
 changes=sorted({r['path'] for r in edits}|set(added))
 for suffix,obj in [('lifetime_manifest',dict(edits=edits,added=added)),('changes',changes)]:
  (OUT/('base10_r23_'+suffix+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r23.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r22/'+r,tofile='r23/'+r)) for r in changes),encoding='utf-8')
 print('R23 draft:',len(changes),'files; requires tests and build; R22 retained.')
if __name__=='__main__':main()
