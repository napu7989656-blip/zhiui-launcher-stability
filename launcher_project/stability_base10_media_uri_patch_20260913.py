import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_media_artwork_r21';DST=OUT/'worktrees/base10_media_uri_r22'
MOD=OUT/'modules/media_uri_r22';A='Lo/a9;'
def main():
 assert not DST.exists()
 assert json.loads((OUT/'base10_r21_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[];added=[]
 def change(rel,before,after):
  p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1 and before!=after
  p.write_text(s.replace(before,after),encoding='utf-8');edits.append(dict(path=rel,before=before,after=after))
 rel='smali/o/a9.smali';before=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]=='ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;')
 after='''.method public final ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    iget-object v0, p0, Lo/a9;->ˋ:Landroid/content/Context;
    const/4 v1, 0x0
    invoke-static {v0, p1, v1}, Lcom/byd/launcher/stability/MediaUriReader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method'''
 change(rel,before,after)
 rel='smali/com/byd/launcher/stability/MediaArtworkHost.smali'
 before=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]=='load(Ljava/lang/String;)Ljava/lang/Object;')
 # Preserve the old helper for binary compatibility; the active pipeline uses the new request-aware overload.
 after=before+'''

.method public load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    iget-object v0, v0, Lo/a9;->ˋ:Landroid/content/Context;
    invoke-static {v0, p1, p2}, Lcom/byd/launcher/stability/MediaUriReader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method'''
 change(rel,before,after)
 for p in (MOD/'decoded/smali/com/byd/launcher/stability').glob('*.smali'):
  rel='smali/com/byd/launcher/stability/'+p.name;target=DST/rel
  if target.exists():
   before=target.read_text(encoding='utf-8');after=p.read_text(encoding='utf-8')
   if before!=after:change(rel,before,after)
  else:shutil.copy2(p,target);added.append(rel)
 changes=sorted({r['path'] for r in edits}|set(added))
 for suffix,obj in [('uri_manifest',dict(edits=edits,added=added)),('changes',changes),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['Android bridge production tests','final APK validation','full P1/P2/P3']))]:
  (OUT/('base10_r22_'+suffix+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r22.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r21/'+r,tofile='r22/'+r)) for r in changes),encoding='utf-8')
 print('R22 independent URI draft:',len(changes),'changed files',len(added),'new files')
if __name__=='__main__':main()
