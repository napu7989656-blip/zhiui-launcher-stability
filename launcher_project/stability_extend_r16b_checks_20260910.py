from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project');p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r16_closeout/cumulative_checker_before_r16b.py'
assert not archive.exists();shutil.copy2(p,archive)
s=p.read_text(encoding='utf-8').replace("'base10_r16']","'base10_r16','base10_r16b']").replace("'base10_r16')","'base10_r16','base10_r16b')")
s=s.replace("'base10_r16':'base10_blur_cleanup_r16'","'base10_r16':'base10_blur_cleanup_r16','base10_r16b':'base10_blur_cleanup_r16b'")
s=s.replace("args.tag=='base10_r16'","args.tag in ('base10_r16','base10_r16b')")
p.write_text(s,encoding='utf-8');print('R16b registered with unchanged 120-file cumulative scope.')
