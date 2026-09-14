"""R20 scoped session callback isolation; never modifies playback controls."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_home_receiver_r19';DST=OUT/'worktrees/base10_media_session_r20'
A='Lo/a9;';Y='Lo/y8;';NAV='Lcom/byd/launcher/NavBarService;'
def main():
 assert (OUT/'base10_r19_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[]
 def change(rel,before,after):
  p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1 and before!=after,(rel,before[:100]);p.write_text(s.replace(before,after),encoding='utf-8');edits.append(dict(path=rel,before=before,after=after))
 def edit(rel,sig,fn):
  b=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]==sig);change(rel,b,fn(b))
 def append(rel,body):
  p=DST/rel;s=p.read_text(encoding='utf-8');change(rel,s,s+'\n'+body.lstrip())
 rel='smali/o/a9.smali'
 change(rel,'.field public final ͼ:Lo/y8;','.field public volatile ͼ:Lo/y8;\n\n.field public volatile stabilitySessionToken:Ljava/lang/Object;')
 edit(rel,'ˏ()V',lambda b:''' .method public final ˏ()V
    .locals 3
    iget-object v0, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iget-object v1, p0, Lo/a9;->ͼ:Lo/y8;
    const/4 v2, 0x0
    iput-object v2, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v2, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    new-instance v2, Ljava/lang/Object;
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    iput-object v2, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-eqz v0, :done
    if-eqz v1, :done
    :try_start
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    goto :done
    :failed
    move-exception v2
    :done
    return-void
.end method'''.lstrip())
 def attach(b):
  needle='    .locals 9';b=b.replace(needle,needle+'\n    invoke-virtual {p0}, Lo/a9;->stabilityCurrent()Z\n    move-result v0\n    if-nez v0, :session_owner_alive\n    return-void\n    :session_owner_alive',1)
  needle='    iget-object v0, p0, Lo/a9;->ͼ:Lo/y8;';assert b.count(needle)==1
  b=b.replace(needle,'    new-instance v0, Lo/y8;\n    invoke-direct {v0, p0}, Lo/y8;-><init>(Lo/a9;)V\n    iput-object v0, p0, Lo/a9;->ͼ:Lo/y8;')
  needle='    invoke-virtual {v3, v0, p1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V';assert b.count(needle)==1
  b=b.replace(needle,'''    :session_register_start
'''+needle+'''
    :session_register_end
    .catch Ljava/lang/Exception; {:session_register_start .. :session_register_end} :session_register_failed
    const-string p1, ""
    iput-object p1, p0, Lo/a9;->Ή:Ljava/lang/String;
    iput-object p1, p0, Lo/a9;->Ί:Ljava/lang/String;
    const-wide/16 v5, 0x0
    iput-wide v5, p0, Lo/a9;->Ό:J
    goto :session_register_ok
    :session_register_failed
    move-exception p1
    invoke-virtual {p0}, Lo/a9;->ˏ()V
    return-void
    :session_register_ok''')
  return b
 edit(rel,'Ͷ(Ljava/util/List;)V',attach)
 append(rel,''' .method public stabilityCurrent()Z
    .locals 2
    iget-boolean v0, p0, Lo/a9;->ͺ:Z
    if-nez v0, :invalid
    iget-object v0, p0, Lo/a9;->ˋ:Landroid/content/Context;
    instance-of v1, v0, Lcom/byd/launcher/NavBarService;
    if-eqz v1, :invalid
    check-cast v0, Lcom/byd/launcher/NavBarService;
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v1, :invalid
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :invalid
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    if-ne v1, p0, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method
'''.lstrip())
 rel='smali/o/y8.smali'
 change(rel,'.field public ˋ:Z','.field public stabilityRecoveryToken:Ljava/lang/Object;\n\n.field public ˋ:Z')
 def guard(b):
  pos=b.index('\n',b.index('    .locals '));return b[:pos]+'''\n    invoke-virtual {p0}, Lo/y8;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :session_callback_alive
    return-void
    :session_callback_alive'''+b[pos:]
 for sig in ['onMetadataChanged(Landroid/media/MediaMetadata;)V','onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V','onSessionDestroyed()V']:edit(rel,sig,guard)
 def recovery(b):
  needle='    invoke-virtual {v0}, Lo/a9;->ˏ()V';assert b.count(needle)==1
  return b.replace(needle,needle+'\n    iget-object v1, v0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;\n    iput-object v1, p0, Lo/y8;->stabilityRecoveryToken:Ljava/lang/Object;')
 edit(rel,'onSessionDestroyed()V',recovery)
 for name,extra in [('stabilityCurrent','''    iget-object v1, v0, Lo/a9;->ͼ:Lo/y8;
    if-ne v1, p0, :invalid
    iget-object v1, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    if-eqz v1, :invalid'''),('stabilityRecoveryCurrent','''    iget-object v1, p0, Lo/y8;->stabilityRecoveryToken:Ljava/lang/Object;
    if-eqz v1, :invalid
    iget-object v2, v0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-ne v1, v2, :invalid
    iget-object v1, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    if-nez v1, :invalid''')]:
  append(rel,''' .method public '''+name+'''()Z
    .locals 3
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;
    if-eqz v0, :invalid
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v1
    if-eqz v1, :invalid
'''+extra+'''
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method
''')
 def delayed(b):
  needle='    check-cast v0, Lo/y8;';assert b.count(needle)==1
  return b.replace(needle,needle+'''\n    invoke-virtual {v0}, Lo/y8;->stabilityRecoveryCurrent()Z
    move-result v2
    if-nez v2, :session_recovery_alive
    return-void
    :session_recovery_alive''')
 edit('smali/o/td.smali','run()V',delayed)
 changes=sorted({x['path'] for x in edits})
 for name,obj in [('session_manifest',edits),('changes',changes),('draft_status',dict(status='DRAFT_NOT_TESTED_OR_BUILT',remaining=['actual smali tests','final APK gates','art epochs and bounded worker','full P1/P2/P3']))]:
  (OUT/('base10_r20_'+name+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r20.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r19/'+r,tofile='r20/'+r)) for r in changes),encoding='utf-8')
 print('R20 session draft created; not tested or built.')
if __name__=='__main__':main()

