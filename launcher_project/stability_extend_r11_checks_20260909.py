"""Extend explicit cumulative allowlists, retaining pre-R11 checker."""
from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project')
p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r10_closeout/cumulative_checker_before_r11.py'
assert not archive.exists()
shutil.copy2(p,archive)
s=p.read_text(encoding='utf-8')
s=s.replace("'base10_r10']", "'base10_r10','base10_r11']").replace("'base10_r10')", "'base10_r10','base10_r11')")
s=s.replace("'base10_r10':'base10_theme_epoch_r10'", "'base10_r10':'base10_theme_epoch_r10','base10_r11':'base10_nav_action_reads_r11'")
s=s.replace("if args.tag=='base10_r10':", "if args.tag in ('base10_r10','base10_r11'):")
needle='    assert changed==sorted(expected),changed'
assert s.count(needle)==1
s=s.replace(needle,"    if args.tag=='base10_r11':expected+=['smali/com/byd/launcher/stability/'+n+'.smali' for n in ('NavRead','NavDeliver','NavAction')]\n"+needle)
p.write_text(s,encoding='utf-8')
print('R11 explicit cumulative paths registered; earlier checker archived.')
