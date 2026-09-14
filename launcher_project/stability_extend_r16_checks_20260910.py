from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project');p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r15_closeout/cumulative_checker_before_r16.py'
assert not archive.exists();shutil.copy2(p,archive)
s=p.read_text(encoding='utf-8')
s=s.replace("'base10_r15']", "'base10_r15','base10_r16']").replace("'base10_r15')", "'base10_r15','base10_r16')")
s=s.replace("'base10_r15':'base10_blur_pipeline_r15'", "'base10_r15':'base10_blur_pipeline_r15','base10_r16':'base10_blur_cleanup_r16'")
s=s.replace("args.tag=='base10_r15'", "args.tag in ('base10_r15','base10_r16')")
needle='    assert changed==sorted(expected),changed';assert s.count(needle)==1
s=s.replace(needle,"    if args.tag=='base10_r16':expected+=['smali/com/byd/launcher/stability/BitmapCleanup.smali']\n"+needle)
p.write_text(s,encoding='utf-8');print('R16 explicit cumulative path registered.')
