"""R14 narrowly prevents recycling the borrowed source during blur preparation."""
import json, shutil, difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_glass_reads_r13'; DST=OUT/'worktrees/base10_bitmap_alias_r14'
def main():
 assert (OUT/'base10_r13_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 records=[]
 def edit(cls,sig,fn):
  rel='smali/o/'+cls+'.smali';p=DST/rel;src=p.read_text(encoding='utf-8')
  before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]==sig);after=fn(before)
  assert before!=after and src.count(before)==1
  p.write_text(src.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
 def crop(b):
  assert b.count('.locals 6')==1
  b=b.replace('.locals 6','.locals 7\n    move-object v6, p0',1)
  for value,label in [('p0',':cond_2'),('p1',':cond_3')]:
   needle='    invoke-virtual {'+value+'}, Landroid/graphics/Bitmap;->recycle()V'
   assert b.count(needle)==1
   b=b.replace(needle,'    if-eq '+value+', v6, '+label+'\n'+needle,1)
  return b
 edit('a2','ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;',crop)
 def full(b):
  needle='    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V'
  assert b.count(needle)==1
  return b.replace(needle,'    if-eq v1, v11, :cond_1a\n'+needle,1)
 edit('h2','run()V',full)
 changes=[r['path'] for r in records]
 for name,obj in [('changes',changes),('bitmap_alias_manifest',records),('draft_status',dict(status='DRAFT_NOT_BUILT',scope='Borrowed source recycle protection only; downstream lifecycle and partial-allocation cleanup remain pending'))]:
  (OUT/('base10_r14_'+name+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r13/'+r,tofile='r14/'+r)) for r in changes)
 (OUT/'base10_r14.patch').write_text(patch,encoding='utf-8')
 print('R14 borrowed-source protection draft created, not yet built.')
if __name__=='__main__':main()
