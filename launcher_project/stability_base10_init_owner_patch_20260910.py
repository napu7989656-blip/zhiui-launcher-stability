"""R17: cooperative stop for the existing Service bootstrap, no command changes."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_blur_cleanup_r16b';DST=OUT/'worktrees/base10_init_owner_r17'
REL='smali/o/ea.smali';EA='Lo/ea;';NAV='Lcom/byd/launcher/NavBarService;'
HELPER='''.method private stabilityInitCurrent()Z
    .locals 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-nez v0, :init_invalid
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;
    if-eqz v0, :init_invalid
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v1, :init_invalid
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :init_invalid
    const/4 v0, 0x1
    return v0
    :init_invalid
    const/4 v0, 0x0
    return v0
.end method
'''
def main():
 assert (OUT/'base10_r16b_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 p=DST/REL;text=p.read_text(encoding='utf-8');before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]=='run()V')
 start=before.index('    :pswitch_1c\n');end=before.index('    :goto_14\n',start)
 branch=before[start:end];guards=[]
 def guard(anchor):
  nonlocal branch
  assert branch.count(anchor)==1,anchor
  label=':init_continue_'+str(len(guards))
  code='    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z\n    move-result v3\n    if-nez v3, '+label+'\n    return-void\n    '+label+'\n'
  branch=branch.replace(anchor,code+anchor,1);guards.append(dict(anchor=anchor,code=code))
 # v3 is scratch at these exact locations; do not insert between invoke/move-result.
 for anchor in [
  '    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;',
  '    invoke-static {}, Lo/c0;->ensureConnection()Z',
  '    :try_start_6\n',
  '    :goto_f\n',
  '    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V',
  '    iput-boolean v2, v0, '+NAV+'->Κ:Z',
  '    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;',
  '    invoke-static {v4, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;',
  '    iget-object v1, v0, '+NAV+'->Ͷ:Landroid/os/Handler;',
  '    invoke-static {}, '+NAV+'->Λ()V',
  '    invoke-virtual {v0}, '+NAV+'->Κ()V',
  '    iget-boolean v1, v0, '+NAV+'->Κ:Z',
  '    :goto_12\n',
 ]:guard(anchor)
 # A branch targeting an original label must also pass its guard.
 for label in [':goto_f',':goto_12']:
  g=next(x for x in guards if x['anchor']=='    '+label+'\n')
  branch=branch.replace(g['code']+'    '+label+'\n','    '+label+'\n'+g['code'])
 old='    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4'
 assert branch.count(old)==1;branch=branch.replace(old,old.replace(':catch_4',':init_interrupted'))
 handler='''    :init_interrupted
    move-exception v0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    return-void
'''
 after=before[:start]+branch+before[end:];after=after.replace('.end method',handler+'.end method')
 assert text.count(before)==1
 p.write_text(text.replace(before,after)+'\n'+HELPER,encoding='utf-8')
 record=dict(path=REL,before=before,after=after,append='\n'+HELPER,guards=guards)
 for name,obj in [('changes',[REL]),('init_manifest',record),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['source/final tests','build/sign/content/JADX','nested initialization methods and callbacks audit','full P1/P2/P3']))]:
  (OUT/('base10_r17_'+name+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r17.patch').write_text(''.join(difflib.unified_diff(text.splitlines(True),p.read_text(encoding='utf-8').splitlines(True),fromfile='r16b/'+REL,tofile='r17/'+REL)),encoding='utf-8')
 print('R17 draft: 13 cooperative checkpoints and typed interruption exit; nested operations still need review.')
if __name__=='__main__':main()
