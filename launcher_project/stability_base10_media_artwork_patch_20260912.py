import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_media_owner_r20b';DST=OUT/'worktrees/base10_media_artwork_r21'
A='Lo/a9;';P='Lcom/byd/launcher/stability/MediaArtworkPipeline;'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r20b_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[];added=[]
 def change(rel,before,after):
  p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1 and before!=after;(p).write_text(s.replace(before,after),encoding='utf-8');edits.append(dict(path=rel,before=before,after=after))
 def edit(rel,sig,fn):
  b=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]==sig);change(rel,b,fn(b))
 def append(rel,body):
  p=DST/rel;s=p.read_text(encoding='utf-8');change(rel,s,s+'\n'+body)
 rel='smali/o/a9.smali';change(rel,'.field public volatile stabilitySessionToken:Ljava/lang/Object;','.field public volatile stabilitySessionToken:Ljava/lang/Object;\n\n.field public final stabilityArtwork:'+P)
 def constructor(b):
  start=b.index('    new-instance v0, Lo/d1;');last='    iput-object v0, p0, Lo/a9;->Ͱ:Ljava/util/concurrent/ExecutorService;';end=b.index(last,start)+len(last)
  return b[:start]+'''    new-instance v0, Lcom/byd/launcher/stability/MediaArtworkHost;
    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/MediaArtworkHost;-><init>(Lo/a9;)V
    new-instance v1, Lcom/byd/launcher/stability/MediaArtworkPipeline;
    invoke-direct {v1, v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;-><init>(Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;)V
    iput-object v1, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    const/4 v0, 0x0
'''+last+b[end:]
 edit(rel,'<init>(Lcom/byd/launcher/NavBarService;)V',constructor)
 def metadata(b):
  marker='    move-object/from16 v1, p1';assert b.count(marker)==1
  b=b.replace(marker,marker+'''\n    if-eqz v1, :art_metadata_done
    invoke-virtual {v7}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :art_metadata_alive
    :art_metadata_done
    return-void
    :art_metadata_alive''')
  start=b.index('    :goto_b\n')+len('    :goto_b\n')
  return b[:start]+'''    invoke-virtual {v7, v1, v2, v3}, Lo/a9;->stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method'''
 edit(rel,'Ͱ(Landroid/media/MediaMetadata;)V',metadata)
 def submit(b):
  needle='    iget-object v0, p0, Lo/a9;->Ͱ:Ljava/util/concurrent/ExecutorService;';assert b.count(needle)==1
  return b.replace(needle,needle+'\n    if-nez v0, :legacy_art_executor_present\n    return-void\n    :legacy_art_executor_present')
 edit(rel,'ˋ(Ljava/lang/Runnable;)V',submit)
 def detach(b):
  needle='    .locals 3';assert b.count(needle)==1
  return b.replace(needle,needle+'''\n    iget-object v2, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    if-eqz v2, :art_detach_continue
    invoke-virtual {v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->invalidate()V
    :art_detach_continue''')
 edit(rel,'ˏ()V',detach)
 append(rel,''' .method public stabilityCloseArtwork()V
    .locals 1
    iget-object v0, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->close()V
    :done
    return-void
.end method

.method public stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    iget-object v0, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    if-eqz v0, :done
    iget-object v1, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    :try_start
    invoke-static {p1}, Lcom/byd/launcher/stability/MediaArtworkMetadata;->from(Landroid/media/MediaMetadata;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;
    move-result-object v2
    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->update(Ljava/lang/Object;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;Ljava/lang/String;Ljava/lang/String;)V
    :try_end
    .catch Ljava/lang/RuntimeException; {:try_start .. :try_end} :failed
    goto :done
    :failed
    move-exception v1
    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->invalidate()V
    const-string v2, "MusicCtrlMgr"
    const-string v3, "Artwork metadata snapshot failed"
    invoke-static {v2, v3, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :done
    return-void
.end method
'''.lstrip())
 def destroy(b):
  needle='    iput-boolean v0, v1, Lo/a9;->ͺ:Z';assert b.count(needle)==1
  return b.replace(needle,needle+'\n    invoke-virtual {v1}, Lo/a9;->stabilityCloseArtwork()V')
 edit('smali/com/byd/launcher/NavBarService.smali','onDestroy()V',destroy)
 def replace(b):
  needle='    new-instance v2, Lo/a9;';assert b.count(needle)==1
  return b.replace(needle,'''    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    if-eqz v2, :art_new_manager
    invoke-virtual {v2}, Lo/a9;->stabilityCloseArtwork()V
    :art_new_manager
'''+needle)
 edit('smali/o/llI.smali','run()V',replace)
 files=list((OUT/'modules/media_artwork_prod_r1/decoded/smali/com/byd/launcher/stability').glob('*.smali'))+[ROOT/'stability_modules/bridge/MediaArtworkHost.smali']
 for p in files:
  rel='smali/com/byd/launcher/stability/'+p.name;assert not (DST/rel).exists();shutil.copy2(p,DST/rel);added.append(rel)
 changes=sorted({r['path'] for r in edits}|set(added))
 for suffix,obj in [('artwork_manifest',dict(edits=edits,added=added)),('changes',changes),('draft_status',dict(status='DRAFT_NOT_TESTED_OR_BUILT',remaining=['Android bridge and actual metadata tests','final APK validation','URI cleanup/cache/bounds','full P1/P2/P3']))]:
  (OUT/('base10_r21_'+suffix+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r21.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r20b/'+r,tofile='r21/'+r)) for r in changes),encoding='utf-8')
 print('R21 draft created:',len(changes),'files; original art entry points replaced; no build yet.')
if __name__=='__main__':main()
