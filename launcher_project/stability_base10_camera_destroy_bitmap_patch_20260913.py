from pathlib import Path
import json,shutil,difflib
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_camera_bitmap_r26';DST=OUT/'worktrees/base10_camera_bitmap_r26b';REL='smali/com/byd/launcher/NavBarService.smali'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r26_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 p=DST/REL;s=p.read_text(encoding='utf-8');body=next(b for sig,(b,l) in methods(p).items() if sig.split()[-1]=='onDestroy()V')
 a=body.index('    :try_start_8\n');b=body.index('    :cond_14\n',a);old=body[a:b];assert old.count('Landroid/graphics/Bitmap;->recycle()V')==1
 new='    :try_start_8\n    iput-object v2, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;\n\n';after=body.replace(old,new);p.write_text(s.replace(body,after),encoding='utf-8')
 (OUT/'base10_r26b_bitmap_manifest.json').write_text(json.dumps(dict(edits=[dict(path=REL,before=body,after=after)]),ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r26b_changes.json').write_text(json.dumps([REL]),encoding='utf-8')
 (OUT/'base10_r26b.patch').write_text(''.join(difflib.unified_diff(s.splitlines(True),p.read_text(encoding='utf-8').splitlines(True),fromfile='r26/'+REL,tofile='r26b/'+REL)),encoding='utf-8')
 print('R26b draft: service destroy clears camera bitmap ownership without explicit recycle; all other destruction code retained.')
if __name__=='__main__':main()
