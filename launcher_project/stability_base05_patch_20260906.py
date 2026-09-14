"""Integrate the independently compiled/tested Java wallpaper executor only."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base04_wallpaper_results_r1';DST=OUT/'worktrees/base05_bounded_wallpaper_queue_r1'
def main():
    assert json.loads((OUT/'base04_r1_verification.json').read_text())['unexpected_final_business_changes']==[]
    assert 'PASS:' in (OUT/'modules/wallpaper_executor_r1/jvm_tests.txt').read_text(encoding='utf-8-sig')
    if DST.exists():raise ValueError('Refuse overwrite')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    rel='smali/o/ak.smali';p=DST/rel;before=p.read_text(encoding='utf-8')
    old='    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;'
    assert before.count(old)==1
    after=before.replace(old,'    invoke-static {}, Lcom/byd/launcher/stability/WallpaperExecutor;->create()Ljava/util/concurrent/ExecutorService;')
    p.write_text(after,encoding='utf-8',newline='\n')
    helper='smali/com/byd/launcher/stability/WallpaperExecutor.smali'
    source=OUT/'modules/wallpaper_executor_r1/decoded'/helper;target=DST/helper
    shutil.copyfile(source,target)
    patch=''.join(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='base04_r1/'+rel,tofile='base05_r1/'+rel))
    patch+=''.join(difflib.unified_diff([],target.read_text(encoding='utf-8').splitlines(True),fromfile='/dev/null',tofile='base05_r1/'+helper))
    (OUT/'base05_r1.patch').write_text(patch,encoding='utf-8')
    (OUT/'base05_r1_changes.json').write_text(json.dumps([dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)),dict(path=helper,before_sha='',after_sha=sha(target),compiled_java_sha=sha(Path('D:/apk/launcher_project/stability_modules/src/com/byd/launcher/stability/WallpaperExecutor.java')))],indent=2),encoding='utf-8')
    print('BASE-05 integrated: original Adapter constructor uses bounded Java module. Two files changed.')
if __name__=='__main__':main()
