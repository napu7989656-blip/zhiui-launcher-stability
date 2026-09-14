from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project');p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r12_closeout/cumulative_checker_before_r13.py'
assert not archive.exists();shutil.copy2(p,archive)
s=p.read_text(encoding='utf-8')
s=s.replace("'base10_r12']", "'base10_r12','base10_r13']").replace("'base10_r12')", "'base10_r12','base10_r13')")
s=s.replace("'base10_r12':'base10_wait_interrupt_r12'", "'base10_r12':'base10_wait_interrupt_r12','base10_r13':'base10_glass_reads_r13'")
needle='    assert changed==sorted(expected),changed';assert s.count(needle)==1
s=s.replace(needle,"    if args.tag=='base10_r13':expected+=['smali/com/byd/launcher/stability/'+n+'.smali' for n in ('GlassRead','GlassDeliver')]\n"+needle)
p.write_text(s,encoding='utf-8');print('R13 explicit cumulative paths registered; prior checker archived.')
