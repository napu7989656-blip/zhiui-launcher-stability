from pathlib import Path
import shutil
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
p=ROOT/'stability_verify_base05_cumulative_20260906.py';b=OUT/'tool_archive_before_r24';assert not b.exists();b.mkdir();shutil.copy2(p,b/p.name)
s=p.read_text(encoding='utf-8').replace("'base10_r23']","'base10_r23','base10_r24']").replace("'base10_r23')","'base10_r23','base10_r24')")
s=s.replace("'base10_r23':'base10_media_lifetime_r23'","'base10_r23':'base10_media_lifetime_r23','base10_r24':'base10_media_retry_r24'")
s=s.replace("if args.tag=='base10_r23':","if args.tag in ('base10_r23','base10_r24'):")
line=next(l for l in s.splitlines() if "if args.tag in ('base10_r23','base10_r24'):" in l)
s=s.replace(line,line+"\n    if args.tag=='base10_r24':expected+=['smali/o/u8.smali','smali/o/z8.smali']")
p.write_text(s,encoding='utf-8');print('R24 cumulative whitelist adds exactly u8/z8; prior verifier archived.')
