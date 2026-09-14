"""BASE-08: transactional status root ownership and retry-safe listener cleanup."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import sha,methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base06_policy_readonly_r1';DST=OUT/'worktrees/base08_statusbar_rollback_r1'
N='Lcom/byd/launcher/NavBarService;';H='Lcom/byd/launcher/stability/StatusBarResources;'
def main():
 assert not DST.exists(),'Refuse overwrite'
 assert json.loads((OUT/'base06_r1_verification.json').read_text())['unexpected_final_business_changes']==[]
 assert 'PASS:' in (OUT/'modules/status_resources_r1/jvm_tests.txt').read_text(encoding='utf-8-sig')
 shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
 rel='smali/com/byd/launcher/NavBarService.smali';p=DST/rel;old=p.read_text(encoding='utf-8');t=old
 assert '.field public volatile stabilityStatusBarFailed:Z' not in t
 t=t.replace('# instance fields','# instance fields\n.field public volatile stabilityStatusBarFailed:Z',1)
 def transform(sig,fn):
  nonlocal t
  matches=re.findall(r'(?ms)^\.method [^\n]*'+re.escape(sig)+r'\n.*?^\.end method',t)
  assert len(matches)==1,sig
  t=t.replace(matches[0],fn(matches[0]))
 def create(b):
  b=b.replace('public final Ϡ(I)V','private final stabilityCreateStatusBar(I)V',1)
  start=b.index('    move-object/from16 v1, p0');end=b.index('    :cond_1\n',start)
  prefix=f'''    move-object/from16 v1, p0
    move/from16 v8, p1
    const-string v9, "NavBarSvc"
    const/4 v10, 0x0
    iget-boolean v0, v1, {N}->stabilityStatusBarFailed:Z
    if-nez v0, :stability_cleanup_previous
    iget-object v0, v1, {N}->ͱ:Landroid/view/View;
    if-eqz v0, :stability_cleanup_previous
    invoke-virtual {{v0}}, Landroid/view/View;->isAttachedToWindow()Z
    move-result v0
    if-nez v0, :stability_keep_existing
    iget-object v0, v1, {N}->ͱ:Landroid/view/View;
    invoke-virtual {{v0}}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :stability_cleanup_previous
    :stability_keep_existing
    return-void
    :stability_cleanup_previous
    invoke-virtual {{v1}}, {N}->stabilityReleaseStatusBar()Z
    move-result v0
    if-eqz v0, :stability_keep_existing
    const/4 v0, 0x0
    iput-boolean v0, v1, {N}->stabilityStatusBarFailed:Z
'''
  b=b[:start]+prefix+b[end:]
  # The controller belongs to the Service, not a particular status-bar View.
  anchor='    new-instance v0, Lo/ff;';assert b.count(anchor)==1
  b=b.replace(anchor,f'''    iput v8, v1, {N}->ν:I
    iget-object v0, v1, {N}->Ή:Lo/ff;
    if-nez v0, :stability_controller_ready
{anchor}''')
  # Keep only the newly inserted window-type assignment.
  a=b.index('    new-instance v0, Lo/ff;')
  b=b[:a]+b[a:].replace(f'    iput v8, v1, {N}->ν:I','',1)
  anchor='    invoke-virtual {v0}, Lo/ff;->ͻ()V';assert b.count(anchor)==1
  b=b.replace(anchor,anchor+'\n    :stability_controller_ready')
  # Route both local catches and all uncovered initialization exceptions to
  # the outer method. No overlapping DEX try regions are introduced.
  b=re.sub(r'(?ms)    :catch_4\n.*?(?=    :cond_e\n)','    :catch_4\n    move-exception v0\n    throw v0\n\n',b,count=1)
  b=re.sub(r'(?ms)    :catch_5\n.*?(?=\.end method)','    :catch_5\n    move-exception v0\n    throw v0\n',b,count=1)
  return b
 transform('Ϡ(I)V',create)
 wrapper=f'''
.method public final Ϡ(I)V
    .locals 3
    iget-boolean v0, p0, {N}->ˋ:Z
    if-eqz v0, :stability_alive
    return-void
    :stability_alive
    :try_start_stability
    invoke-direct {{p0, p1}}, {N}->stabilityCreateStatusBar(I)V
    :try_end_stability
    .catch Ljava/lang/Exception; {{:try_start_stability .. :try_end_stability}} :catch_stability
    return-void
    :catch_stability
    move-exception v0
    const-string v1, "NavBarSvc"
    const-string v2, "Status bar initialization failed; releasing owned resources"
    invoke-static {{v1, v2, v0}}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-virtual {{p0}}, {N}->stabilityReleaseStatusBar()Z
    return-void
.end method
'''
 listeners=f'''
.method public final stabilityReleaseStatusListeners()Z
    .locals 5
    const/4 v0, 0x1
    const/4 v1, 0x0
    iget-object v2, p0, {N}->μ:Lo/ta;
    iget-object v3, p0, {N}->Ͷ:Landroid/os/Handler;
    invoke-static {{v3, v2}}, {H}->cancel(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    move-result v4
    and-int/2addr v0, v4
    if-eqz v4, :stability_listener_0
    iput-object v1, p0, {N}->μ:Lo/ta;
    :stability_listener_0
'''
 for index,(field,kind,signature) in enumerate([('ι','Lo/za;','unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z'),('κ','Lo/va;','unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z'),('λ','Lo/bb;','unregisterNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z')],1):
  listeners+=f'''    iget-object v2, p0, {N}->{field}:{kind}
    invoke-static {{p0, v2}}, {H}->{signature}
    move-result v4
    and-int/2addr v0, v4
    if-eqz v4, :stability_listener_{index}
    iput-object v1, p0, {N}->{field}:{kind}
    :stability_listener_{index}
'''
 listeners+='    return v0\n.end method\n'
 release=f'''
.method public final stabilityReleaseStatusBar()Z
    .locals 5
    const/4 v0, 0x1
    iput-boolean v0, p0, {N}->stabilityStatusBarFailed:Z
    const/4 v1, 0x0
    iget-object v2, p0, {N}->ˏ:Landroid/view/WindowManager;
    iget-object v3, p0, {N}->ͱ:Landroid/view/View;
    invoke-static {{v2, v3}}, {H}->removeWindow(Landroid/view/WindowManager;Landroid/view/View;)Z
    move-result v4
    and-int/2addr v0, v4
    if-eqz v4, :stability_status_retained
    iput-object v1, p0, {N}->ͱ:Landroid/view/View;
'''
 for field,kind in [('β','ImageView'),('γ','ImageView'),('δ','ImageView'),('ε','ImageView'),('ζ','ImageView'),('η','ImageView'),('θ','TextView')]:release+=f'    iput-object v1, p0, {N}->{field}:Landroid/widget/{kind};\n'
 release+=f'''    :stability_status_retained
    iget-object v3, p0, {N}->φ:Lo/yb;
    invoke-static {{v2, v3}}, {H}->removeWindow(Landroid/view/WindowManager;Landroid/view/View;)Z
    move-result v4
    and-int/2addr v0, v4
    if-eqz v4, :stability_touch_retained
    iput-object v1, p0, {N}->φ:Lo/yb;
    :stability_touch_retained
    invoke-virtual {{p0}}, {N}->stabilityReleaseStatusListeners()Z
    move-result v4
    and-int/2addr v0, v4
    if-nez v0, :stability_release_done
    const-string v1, "NavBarSvc"
    const-string v2, "Status bar cleanup incomplete; references retained and recreation deferred"
    invoke-static {{v1, v2}}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :stability_release_done
    return v0
.end method
'''
 transform('ϧ()V',lambda b:f'''.method public final ϧ()V
    .locals 0
    invoke-virtual {{p0}}, {N}->stabilityReleaseStatusListeners()Z
    return-void
.end method''')
 def update_guard(b):
  block=f'''\n    iget-boolean v0, p0, {N}->ˋ:Z
    if-nez v0, :stability_skip_update
    iget-boolean v0, p0, {N}->stabilityStatusBarFailed:Z
    if-eqz v0, :stability_allow_update
    :stability_skip_update
    return-void
    :stability_allow_update
'''
  return re.sub(r'(    \.locals \d+\n)',lambda m:m.group(1)+block,b,count=1)
 transform('Ϫ()V',update_guard)
 def destroy(b):
  start=b.index(f'    invoke-virtual {{p0}}, {N}->ϧ()V')
  end=b.index(f'    iget-object v1, p0, {N}->Ͱ:Landroid/view/View;',start)
  b=b[:start]+f'    invoke-virtual {{p0}}, {N}->stabilityReleaseStatusBar()Z\n\n'+b[end:]
  start=b.index(f'    iget-object v1, p0, {N}->φ:Lo/yb;')
  end=b.index('    :cond_7\n',start)
  b=b[:start]+b[end:]
  return b
 transform('onDestroy()V',destroy)
 t+=wrapper+listeners+release
 p.write_text(t,encoding='utf-8',newline='\n')
 helper='smali/com/byd/launcher/stability/StatusBarResources.smali'
 hp=DST/helper;hp.write_text((OUT/'modules/status_resources_r1/decoded'/helper).read_text(encoding='utf-8'),encoding='utf-8',newline='\n')
 changes=[dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)),dict(path=helper,before_sha='',after_sha=sha(hp))]
 (OUT/'base08_r1_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
 (OUT/'base08_r1.patch').write_text(''.join(difflib.unified_diff(old.splitlines(True),t.splitlines(True),fromfile='base06_r1/'+rel,tofile='base08_r1/'+rel)),encoding='utf-8')
 print('Created BASE-08 independent worktree: service ownership/rollback hooks and one compiled resource helper.')
if __name__=='__main__':main()
