from pathlib import Path
import json,shutil,difflib
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1';SRC=OUT/'worktrees/base10_camera_bitmap_r26b';DST=OUT/'worktrees/base10_camera_handoff_r27';REL='smali/com/byd/launcher/NavBarService.smali'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r26b_manual_audit.json').read_text(encoding='utf-8'))['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 p=DST/REL;s=p.read_text(encoding='utf-8');b=next(b for sig,(b,l) in methods(p).items() if sig.split()[-1]=='onDestroy()V')
 at=b.index('    iget-object v1, v0, Lo/qi;->\u0372:Lo/\u02cf;');end=b.index('    :cond_15\n',at)
 old=b[at:end];assert old.count('iput-object v2, v0, Lo/qi;->\u0372:Lo/\u02cf;')==1
 after=b[:at]+b[end:];p.write_text(s.replace(b,after),encoding='utf-8')
 (OUT/'base10_r27_handoff_manifest.json').write_text(json.dumps(dict(edits=[dict(path=REL,before=b,after=after)]),ensure_ascii=True,indent=2),encoding='utf-8')
 (OUT/'base10_r27_changes.json').write_text(json.dumps([REL]),encoding='utf-8')
 (OUT/'base10_r27.patch').write_text(''.join(difflib.unified_diff(s.splitlines(True),p.read_text(encoding='utf-8').splitlines(True),fromfile='r26b/'+REL,tofile='r27/'+REL)),encoding='utf-8')
 print('R27 draft: service stops dropping the wrapper before queued close; service owner field still cleared. Other destroy code unchanged.')
if __name__=='__main__':main()
