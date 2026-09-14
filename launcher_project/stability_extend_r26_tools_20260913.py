from pathlib import Path
import shutil
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
p=ROOT/'stability_verify_base05_cumulative_20260906.py';backup=OUT/'tool_archive_before_r26';assert not backup.exists();backup.mkdir();shutil.copy2(p,backup/p.name)
s=p.read_text(encoding='utf-8').replace("'base10_r25']","'base10_r25','base10_r26']").replace("'base10_r25')","'base10_r25','base10_r26')")
s=s.replace("'base10_r25':'base10_camera_preferences_r25'","'base10_r25':'base10_camera_preferences_r25','base10_r26':'base10_camera_bitmap_r26'")
s=s.replace("if args.tag=='base10_r25':","if args.tag in ('base10_r25','base10_r26'):")
line=next(l for l in s.splitlines() if "if args.tag in ('base10_r25','base10_r26'):" in l)
s=s.replace(line,line+"\n    if args.tag=='base10_r26':expected+=['smali/o/ki.smali','smali/o/ˋ.smali']")
p.write_text(s,encoding='utf-8');print('R26 exact three-path whitelist; prior tool archived.')
