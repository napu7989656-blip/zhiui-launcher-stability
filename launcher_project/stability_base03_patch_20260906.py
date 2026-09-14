"""Replace only the wallpaper video retriever sequence with a finally-safe helper."""
import json,shutil,re,difflib
from pathlib import Path
from stability_local_audit_20260905 import sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base02_adapter_detach_r1';DST=OUT/'worktrees/base03_retriever_release_r1'
def main():
    assert json.loads((OUT/'base02_r1_verification.json').read_text())['unexpected_source_changes']==[]
    if DST.exists():raise ValueError('Refuse overwrite')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    rel='smali/o/sj.smali';p=DST/rel;before=p.read_text(encoding='utf-8')
    pattern=r'    new-instance v4, Landroid/media/MediaMetadataRetriever;.*?    invoke-virtual \{v4\}, Landroid/media/MediaMetadataRetriever;->release\(\)V'
    after,count=re.subn(pattern,'''    # BASE-03: owned helper releases on both normal and exceptional paths.
    invoke-static {v1}, Lcom/byd/launcher/stability/VideoThumbnail;->read(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v1''',before,flags=re.S)
    assert count==1,count
    # The unrelated vehicle IPC selector immediately before the wallpaper selector stays exact.
    assert before.split(':pswitch_5\n',1)[1].split(':pswitch_6\n',1)[0]==after.split(':pswitch_5\n',1)[1].split(':pswitch_6\n',1)[0]
    p.write_text(after,encoding='utf-8',newline='\n')
    helper='smali/com/byd/launcher/stability/VideoThumbnail.smali';target=DST/helper;target.parent.mkdir(parents=True,exist_ok=True)
    shutil.copyfile(OUT/'modules/VideoThumbnail.smali',target)
    patch=''.join(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='base02_r1/'+rel,tofile='base03_r1/'+rel))
    patch+=''.join(difflib.unified_diff([],target.read_text(encoding='utf-8').splitlines(True),fromfile='/dev/null',tofile='base03_r1/'+helper))
    (OUT/'base03_r1.patch').write_text(patch,encoding='utf-8')
    (OUT/'base03_r1_changes.json').write_text(json.dumps([dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)),dict(path=helper,before_sha='',after_sha=sha(target))],indent=2),encoding='utf-8')
    print('BASE-03 created: one wallpaper selector and one owned helper; other selectors unchanged.')
if __name__=='__main__':main()
