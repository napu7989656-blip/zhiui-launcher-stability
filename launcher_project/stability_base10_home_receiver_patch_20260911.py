import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_notification_init_r18';DST=OUT/'worktrees/base10_home_receiver_r19'
NAV='Lcom/byd/launcher/NavBarService;'
def main():
 assert (OUT/'base10_r18_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 records=[];appends=[]
 def edit(rel,sig,fn):
  p=DST/rel;text=p.read_text(encoding='utf-8');before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]==sig);after=fn(before);assert before!=after and text.count(before)==1;p.write_text(text.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
 def append(rel,body):
  p=DST/rel;p.write_text(p.read_text(encoding='utf-8')+'\n'+body,encoding='utf-8');appends.append(dict(path=rel,text='\n'+body))
 def connect(b):
  anchor='    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V';assert b.count(anchor)==1
  b=b.replace(anchor,'    iget-boolean v0, p0, '+NAV+'->ˋ:Z\n    if-eqz v0, :home_connect_alive\n    return-void\n    :home_connect_alive\n'+anchor)
  start=b.index('    new-instance v3, Lo/wa;');last='    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;';end=b.index(last,start)+len(last)
  return b[:start]+'    invoke-direct {p0}, '+NAV+'->stabilityRegisterHomeReceiver()V'+b[end:]
 rel='smali/com/byd/launcher/NavBarService.smali';edit(rel,'onServiceConnected()V',connect)
 append(rel,""".method private stabilityRegisterHomeReceiver()V
    .locals 3
    iget-boolean v0, p0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v0, :done
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, p0, :done
    iget-object v0, p0, Lcom/byd/launcher/NavBarService;->Μ:Lo/wa;
    if-nez v0, :done
    :try_start
    new-instance v0, Lo/wa;
    invoke-direct {v0, p0}, Lo/wa;-><init>(Lcom/byd/launcher/NavBarService;)V
    new-instance v1, Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    iput-object v0, p0, Lcom/byd/launcher/NavBarService;->Μ:Lo/wa;
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    goto :done
    :failed
    move-exception v0
    const-string v1, "NavBarSvc"
    const-string v2, "HOME receiver registration failed; reconnect can retry"
    invoke-static {v1, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :done
    return-void
.end method
""")
 rel='smali/o/wa.smali'
 def receive(b):
  needle='    .locals 1';assert b.count(needle)==1
  return b.replace(needle,needle+"""
    if-eqz p2, :home_receive_done
    invoke-virtual {p0}, Lo/wa;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :home_receive_alive
    :home_receive_done
    return-void
    :home_receive_alive
""",1)
 edit(rel,'onReceive(Landroid/content/Context;Landroid/content/Intent;)V',receive)
 append(rel,""".method public stabilityCurrent()Z
    .locals 2
    iget-object v0, p0, Lo/wa;->ˋ:Lcom/byd/launcher/NavBarService;
    if-eqz v0, :invalid
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v1, :invalid
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :invalid
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Μ:Lo/wa;
    if-ne v1, p0, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method
""")
 def callback(b):
  needle='    check-cast v0, Lo/wa;';assert b.count(needle)==1
  return b.replace(needle,needle+"""
    invoke-virtual {v0}, Lo/wa;->stabilityCurrent()Z
    move-result v2
    if-nez v2, :home_callback_alive
    return-void
    :home_callback_alive
""",1)
 edit('smali/o/td.smali','run()V',callback)
 changes=sorted(set(r['path'] for r in records))
 for suffix,obj in [('changes',changes),('home_manifest',dict(edits=records,appends=appends)),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['receiver lifecycle/catch/callback tests','build/final gates','remaining reconnect resources and P1/P2/P3']))]:
  (OUT/('base10_r19_'+suffix+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r19.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r18/'+r,tofile='r19/'+r)) for r in changes),encoding='utf-8')
 print('R19 HOME receiver draft created; media/camera resource reuse not changed.')
if __name__=='__main__':main()
