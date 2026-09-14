from pathlib import Path
import shutil
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
p=ROOT/'stability_verify_base05_cumulative_20260906.py';backup=OUT/'tool_archive_before_r26b';assert not backup.exists();backup.mkdir();shutil.copy2(p,backup/p.name)
s=p.read_text(encoding='utf-8').replace("'base10_r26']","'base10_r26','base10_r26b']").replace("'base10_r26')","'base10_r26','base10_r26b')")
s=s.replace("'base10_r26':'base10_camera_bitmap_r26'","'base10_r26':'base10_camera_bitmap_r26','base10_r26b':'base10_camera_bitmap_r26b'")
s=s.replace("if args.tag=='base10_r26':","if args.tag in ('base10_r26','base10_r26b'):")
# NavBarService was already an accounted cumulative path; no new allowance.
p.write_text(s,encoding='utf-8');print('R26b extends existing exact cumulative list with no new paths.')
