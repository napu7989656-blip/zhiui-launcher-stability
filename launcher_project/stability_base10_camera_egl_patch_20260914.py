from pathlib import Path
import json,shutil,difflib
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1';SRC=OUT/'worktrees/base10_camera_handoff_r27';DST=OUT/'worktrees/base10_camera_egl_r28';REL='smali/o/qi.smali';Q='Lo/qi;'
HELP='''.method public static stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    .locals 2
    :try_start_log
    const-string v0, "TurnSignalCamera"
    const-string v1, "EGL cleanup failed; continuing remaining cleanup"
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_log
    .catch Ljava/lang/Exception; {:try_start_log .. :try_end_log} :catch_log
    return-void
    :catch_log
    move-exception v0
    return-void
.end method
'''
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r27_manual_audit.json').read_text(encoding='utf-8'))['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 p=DST/REL;s=p.read_text(encoding='utf-8');b=next(b for sig,(b,l) in methods(p).items() if sig.split()[-1]=='\u037a()V');a=b
 calls=[l for l in b.splitlines() if 'invoke-static' in l];assert len(calls)==4
 for i,line in enumerate(calls):
  block=f'''    :try_start_egl_{i}
{line}
    :try_end_egl_{i}
    .catch Ljava/lang/Exception; {{:try_start_egl_{i} .. :try_end_egl_{i}}} :catch_egl_{i}
    goto :egl_next_{i}
    :catch_egl_{i}
    move-exception v0
    invoke-static {{v0}}, Lo/qi;->stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    :egl_next_{i}'''
  assert a.count(line)==1;a=a.replace(line,block)
 assert 'stabilityLogEglCleanupFailure' not in s
 p.write_text(s.replace(b,a)+'\n\n'+HELP,encoding='utf-8')
 (OUT/'base10_r28_egl_manifest.json').write_text(json.dumps(dict(path=REL,before=b,after=a,helper=HELP),indent=2),encoding='utf-8')
 (OUT/'base10_r28_changes.json').write_text(json.dumps([REL]),encoding='utf-8')
 (OUT/'base10_r28.patch').write_text(''.join(difflib.unified_diff(s.splitlines(True),p.read_text(encoding='utf-8').splitlines(True),fromfile='r27/'+REL,tofile='r28/'+REL)),encoding='utf-8')
 print('R28 draft: four independent EGL exception ranges and failure-safe diagnostic log; original call order/guards retained.')
if __name__=='__main__':main()
