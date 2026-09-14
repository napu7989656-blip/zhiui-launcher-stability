from pathlib import Path
import json,shutil,difflib
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_camera_preferences_r25';DST=OUT/'worktrees/base10_camera_bitmap_r26'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r25_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[]
 for rel,start,end,replacement in [
  ('smali/o/qi.smali','    :cond_22\n','    :cond_23\n','    :cond_22\n'),
  ('smali/o/ˋ.smali','    :cond_e\n','    :cond_f\n','    :cond_e\n'),
  ('smali/o/ki.smali','    :try_start_c\n','    :cond_c\n','    :try_start_c\n    iput-object v3, v2, Lo/qi;->Ζ:Landroid/graphics/Bitmap;\n\n')]:
  p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(start)==1 and s.count(end)==1
  a=s.index(start);b=s.index(end,a);old=s[a:b];assert old.count('Landroid/graphics/Bitmap;->recycle()V')==1
  assert s.count('Landroid/graphics/Bitmap;->recycle()V')==1
  p.write_text(s[:a]+replacement+s[b:],encoding='utf-8');edits.append(dict(path=rel,before=old,after=replacement))
 changes=sorted(x['path'] for x in edits)
 for suffix,obj in [('bitmap_manifest',dict(edits=edits)),('changes',changes)]:
  (OUT/('base10_r26_'+suffix+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r26.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r25/'+r,tofile='r26/'+r)) for r in changes),encoding='utf-8')
 print('R26 draft: three shared bitmap retire paths stop explicit recycle; close clears owner reference regardless of existing recycled status.')
if __name__=='__main__':main()
