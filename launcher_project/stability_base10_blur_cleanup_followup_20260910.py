"""R16b: own completed blur before fallible old-image recycle; isolate cleanup errors."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_blur_cleanup_r16';DST=OUT/'worktrees/base10_blur_cleanup_r16b'
P='Lcom/byd/launcher/stability/BlurPipeline;';C='Lcom/byd/launcher/stability/BitmapCleanup;'
def main():
 assert (OUT/'base10_r16_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 records=[]
 def edit(rel,sig,fn):
  p=DST/rel;text=p.read_text(encoding='utf-8');before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]==sig);after=fn(before)
  assert text.count(before)==1 and before!=after;p.write_text(text.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
 def stage(b):
  line='    invoke-static {v2}, '+P+'->blurred(Ljava/lang/Object;)V';assert b.count(line)==1;b=b.replace(line+'\n','',1)
  start=b.index('    invoke-static {v1, v3}, Lo/a2;->Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;')
  at=b.index('    move-result-object v2',start)+len('    move-result-object v2')
  return b[:at]+'\n'+line+b[at:]
 edit('smali/o/h2.smali','run()V',stage)
 def release(b):return '''.method public release(Ljava/lang/Object;)V
    .locals 1
    check-cast p1, Landroid/graphics/Bitmap;
    const/4 v0, 0x0
    invoke-static {p1, v0}, '''+C+'''->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    return-void
.end method'''
 edit('smali/com/byd/launcher/stability/MainBlurHost.smali','release(Ljava/lang/Object;)V',release)
 changes=[r['path'] for r in records]
 for name,obj in [('changes',changes),('blur_cleanup_manifest',records),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['caller failure regression','inherited checks','build/final gates','full remaining P1/P2/P3']))]:
  (OUT/('base10_r16b_'+name+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r16/'+r,tofile='r16b/'+r)) for r in changes)
 (OUT/'base10_r16b.patch').write_text(patch,encoding='utf-8');print('R16b caller cleanup draft created; not built/tested.')
if __name__=='__main__':main()
