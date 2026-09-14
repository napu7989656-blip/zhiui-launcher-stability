"""Bound pending UI result ownership by backpressuring wallpaper workers only."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base05_bounded_wallpaper_queue_r1';DST=OUT/'worktrees/base07_wallpaper_delivery_r1'
MODULE=OUT/'modules/wallpaper_delivery_r2'
def main():
    assert json.loads((OUT/'base05_r1_verification.json').read_text())['unexpected_final_business_changes']==[]
    assert 'PASS:' in (MODULE/'jvm_tests.txt').read_text(encoding='utf-8-sig')
    if DST.exists():raise ValueError('Refuse overwrite')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    rel='smali/com/byd/launcher/stability/WallpaperFrameApply.smali';p=DST/rel;before=p.read_text(encoding='utf-8')
    old='    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z'
    assert before.count(old)==1
    after=before.replace(old,'    invoke-static {v1, v0}, Lcom/byd/launcher/stability/WallpaperDelivery;->deliver(Landroid/os/Handler;Ljava/lang/Runnable;)V')
    p.write_text(after,encoding='utf-8',newline='\n')
    diffs=list(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='base05_r1/'+rel,tofile='base07_r1/'+rel))
    records=[dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p))]
    classes=list((MODULE/'decoded').glob('smali/**/*.smali'))
    assert {p.name for p in classes}=={'WallpaperDelivery.smali','WallpaperDelivery$Pending.smali'}
    for source in classes:
        rel=source.relative_to(MODULE/'decoded').as_posix();target=DST/rel
        assert not target.exists();shutil.copyfile(source,target)
        diffs.extend(difflib.unified_diff([],target.read_text(encoding='utf-8').splitlines(True),fromfile='/dev/null',tofile='base07_r1/'+rel))
        records.append(dict(path=rel,before_sha='',after_sha=sha(target)))
    (OUT/'base07_r1.patch').write_text(''.join(diffs),encoding='utf-8')
    (OUT/'base07_r1_changes.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    print('BASE-07 integrated: one dispatch call and two owned compiled classes, no framework test doubles.')
if __name__=='__main__':main()
