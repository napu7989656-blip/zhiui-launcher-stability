from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project');p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r14_closeout/cumulative_checker_before_r15.py'
assert not archive.exists();shutil.copy2(p,archive)
s=p.read_text(encoding='utf-8')
s=s.replace("'base10_r14']", "'base10_r14','base10_r15']").replace("'base10_r14')", "'base10_r14','base10_r15')")
s=s.replace("'base10_r14':'base10_bitmap_alias_r14'", "'base10_r14':'base10_bitmap_alias_r14','base10_r15':'base10_blur_pipeline_r15'")
s=s.replace("args.tag=='base10_r14'", "args.tag in ('base10_r14','base10_r15')")
needle='    assert changed==sorted(expected),changed';assert s.count(needle)==1
extra="""    if args.tag=='base10_r15':
        expected+=['smali/o/a8.smali','smali/com/byd/launcher/stability/MainBlurHost.smali']
        expected+=['smali/com/byd/launcher/stability/BlurPipeline'+suffix+'.smali' for suffix in ('','$1','$2','$3','$4','$Child','$Frame','$Host')]
        expected+=['smali/com/byd/launcher/stability/LatestVisualWork'+suffix+'.smali' for suffix in ('','$$ExternalSyntheticLambda0','$1','$Delivery','$Host','$Job','$Request','$Result')]
"""
s=s.replace(needle,extra+needle);p.write_text(s,encoding='utf-8');print('R15 explicit cumulative paths registered.')
