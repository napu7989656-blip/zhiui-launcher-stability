from pathlib import Path
import shutil
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
p=ROOT/'stability_verify_base05_cumulative_20260906.py';b=OUT/'tool_archive_before_r23';assert not b.exists();b.mkdir();shutil.copy2(p,b/p.name)
s=p.read_text(encoding='utf-8').replace("'base10_r22']","'base10_r22','base10_r23']").replace("'base10_r22')","'base10_r22','base10_r23')")
s=s.replace("'base10_r22':'base10_media_uri_r22'","'base10_r22':'base10_media_uri_r22','base10_r23':'base10_media_lifetime_r23'")
s=s.replace("if args.tag=='base10_r22':","if args.tag in ('base10_r22','base10_r23'):")
line=next(l for l in s.splitlines() if "if args.tag in ('base10_r22','base10_r23'):" in l)
s=s.replace(line,line+"\n    if args.tag=='base10_r23':expected+=['smali/o/c8.smali','smali/com/byd/launcher/stability/MediaManagerStart.smali']")
p.write_text(s,encoding='utf-8');print('R23 exact cumulative whitelist extended; prior verifier archived.')
