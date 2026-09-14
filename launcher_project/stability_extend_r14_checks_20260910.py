from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project');p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r13_closeout/cumulative_checker_before_r14.py'
assert not archive.exists();shutil.copy2(p,archive)
s=p.read_text(encoding='utf-8')
s=s.replace("'base10_r13']", "'base10_r13','base10_r14']").replace("'base10_r13')", "'base10_r13','base10_r14')")
s=s.replace("'base10_r13':'base10_glass_reads_r13'", "'base10_r13':'base10_glass_reads_r13','base10_r14':'base10_bitmap_alias_r14'")
s=s.replace("args.tag=='base10_r13'", "args.tag in ('base10_r13','base10_r14')")
needle='    assert changed==sorted(expected),changed';assert s.count(needle)==1
s=s.replace(needle,"    if args.tag=='base10_r14':expected+=['smali/o/a2.smali'] # h2 already covered by BASE-09 owner guards\n"+needle)
p.write_text(s,encoding='utf-8');print('R14 explicit paths registered; previous checker preserved.')
