from pathlib import Path
import shutil
root=Path('D:/apk/launcher_project');p=root/'stability_verify_base05_cumulative_20260906.py'
archive=root/'diagnostics/stability_local_20260905_r1/record_archive_before_r17_closeout'
archive.mkdir(exist_ok=False);shutil.copy2(p,archive/'cumulative_checker_before_r17.py')
s=p.read_text(encoding='utf-8').replace("'base10_r16b']","'base10_r16b','base10_r17']").replace("'base10_r16b')","'base10_r16b','base10_r17')")
s=s.replace("'base10_r16b':'base10_blur_cleanup_r16b'","'base10_r16b':'base10_blur_cleanup_r16b','base10_r17':'base10_init_owner_r17'")
p.write_text(s,encoding='utf-8');print('R17 registered; cumulative scope remains 120 files.')
