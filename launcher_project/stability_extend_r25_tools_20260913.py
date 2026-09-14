from pathlib import Path
import shutil
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
p=ROOT/'stability_verify_base05_cumulative_20260906.py';backup=OUT/'tool_archive_before_r25';assert not backup.exists();backup.mkdir();shutil.copy2(p,backup/p.name)
s=p.read_text(encoding='utf-8').replace("'base10_r24']","'base10_r24','base10_r25']").replace("'base10_r24')","'base10_r24','base10_r25')")
s=s.replace("'base10_r24':'base10_media_retry_r24'","'base10_r24':'base10_media_retry_r24','base10_r25':'base10_camera_preferences_r25'")
s=s.replace("if args.tag=='base10_r24':","if args.tag in ('base10_r24','base10_r25'):")
line=next(l for l in s.splitlines() if "if args.tag in ('base10_r24','base10_r25'):" in l)
s=s.replace(line,line+"\n    if args.tag=='base10_r25':expected+=['smali/o/qi.smali','smali/o/tk.smali','smali/com/byd/launcher/stability/CameraPreferences.smali']")
p.write_text(s,encoding='utf-8');print('R25 whitelist adds exactly three camera preference files; prior tool archived.')
