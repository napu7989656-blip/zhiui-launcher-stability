from pathlib import Path
import hashlib,json,re
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_camera_bitmap_r26'
rows=[]
for rel in ['smali/o/qi.smali','smali/o/ki.smali','smali/o/lb.smali','smali/o/ag.smali','smali/o/mi.smali','smali/o/ˋ.smali','smali/o/ˏ.smali','smali/o/ik.smali','smali/o/pi.smali','smali/o/tk.smali','smali/com/byd/launcher/NavBarService.smali']:
 p=TREE/rel;selected=[]
 for sig,(body,line) in methods(p).items():
  if 'Lo/qi;' not in body and rel not in ['smali/o/mi.smali','smali/o/ˏ.smali']:continue
  refs=[(line+i,s.strip()) for i,s in enumerate(body.splitlines()) if any(t in s for t in ['Lo/qi;','Ljava/lang/Thread;','Landroid/graphics/Bitmap;','Landroid/view/ViewManager;->removeView','postEvent','setPanoOutputState'])]
  selected.append(dict(method=sig,line=line,references=refs))
 rows.append(dict(path=rel,sha256=hashlib.sha256(p.read_bytes()).hexdigest(),methods=selected))
(OUT/'camera_owner_map_r26.json').write_text(json.dumps(dict(scope='Static method/line/reference index for actual R26 smali; shared selector bodies retained. No native calls or semantic reachability guarantee.',files=rows),ensure_ascii=False,indent=2),encoding='utf-8')
print('Camera owner index:11 relevant classes with source hashes and actual method references; no device operations.')
