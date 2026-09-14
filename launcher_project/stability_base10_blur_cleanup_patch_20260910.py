"""R16 draft: release locally allocated images on crop/stack-blur failure."""
import json,shutil,difflib,re
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_blur_pipeline_r15';DST=OUT/'worktrees/base10_blur_cleanup_r16'
C='Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V'
def main():
 assert (OUT/'base10_r15_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 rel='smali/o/a2.smali';records=[]
 def edit(sig,fn):
  p=DST/rel;text=p.read_text(encoding='utf-8');before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]==sig);after=fn(before)
  assert text.count(before)==1 and before!=after;p.write_text(text.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
 def crop(b):
  assert '.locals 7' in b;b=b.replace('.locals 7','.locals 10\n    const/4 v7, 0x0\n    const/4 v8, 0x0\n    const/4 v9, 0x0',1)
  for target,result,saved in [('Landroid/graphics/Bitmap;->createBitmap(', 'p0','v7'),('Landroid/graphics/Bitmap;->createScaledBitmap(', 'p1','v8'),('Lo/a2;->Β(', 'p0','v9')]:
   start=b.index(target);at=b.index('    move-result-object '+result,start)+len('    move-result-object '+result)
   b=b[:at]+'\n    move-object '+saved+', '+result+b[at:]
  cleanup=''.join('    invoke-static {'+v+', v6}, '+C+'\n' for v in ['v7','v8','v9'])
  catch='    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0';assert b.count(catch)==1
  b=b.replace(catch,catch+'\n    .catchall {:try_start_0 .. :try_end_0} :bitmap_crop_error',1)
  needle='    :catch_0\n';assert b.count(needle)==1;b=b.replace(needle,needle+'    move-exception p0\n'+cleanup,1)
  return b.replace('.end method','    :bitmap_crop_error\n    move-exception p0\n'+cleanup+'    throw p0\n.end method',1)
 edit('ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;',crop)
 def blur(b):
  assert '.locals 37' in b and not re.search(r'\bv37\b',b)
  assert [s.strip() for s in b.splitlines() if re.search(r'\bp0\b',s)]==['move-object/from16 v0, p0']
  b=b.replace('.locals 37','.locals 38',1)
  needle='    move-result-object v2';assert b.count(needle)==1
  b=b.replace(needle,needle+'\n    move-object/from16 v37, v2',1)
  needle='    :cond_0\n';assert b.count(needle)==1;b=b.replace(needle,needle+'    :bitmap_blur_try\n',1)
  needle='    return-object v20';assert b.count(needle)==1
  b=b.replace(needle,'    :bitmap_blur_end\n    .catchall {:bitmap_blur_try .. :bitmap_blur_end} :bitmap_blur_error\n'+needle,1)
  return b.replace('.end method','''    :bitmap_blur_error
    move-exception v0
    move-object/from16 v1, v37
    move-object/from16 v2, p0
    invoke-static {v1, v2}, '''+C+'''
    throw v0
.end method''',1)
 edit('Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;',blur)
 helper='smali/com/byd/launcher/stability/BitmapCleanup.smali';shutil.copy2(ROOT/'stability_modules/bridge/BitmapCleanup.smali',DST/helper)
 changes=[helper,rel]
 for name,obj in [('changes',changes),('blur_cleanup_manifest',records),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['source/final exception-path tests','exact math preservation','final gates','full remaining plan']))]:
  (OUT/('base10_r16_'+name+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r15/'+r,tofile='r16/'+r)) for r in changes)
 (OUT/'base10_r16.patch').write_text(patch,encoding='utf-8');print('R16 cleanup draft applied; not built/tested.')
if __name__=='__main__':main()
