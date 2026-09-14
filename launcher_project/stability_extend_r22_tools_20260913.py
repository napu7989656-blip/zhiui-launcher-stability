from pathlib import Path
import shutil,json
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
backup=OUT/'tool_archive_before_r22';assert not backup.exists();backup.mkdir()
for name in ('stability_verify_base05_cumulative_20260906.py','stability_static_checks_20260905.py'):shutil.copy2(ROOT/name,backup/name)
p=ROOT/'stability_verify_base05_cumulative_20260906.py';s=p.read_text(encoding='utf-8')
s=s.replace("'base10_r21']","'base10_r21','base10_r22']").replace("'base10_r21')","'base10_r21','base10_r22')")
s=s.replace("'base10_r21':'base10_media_artwork_r21'","'base10_r21':'base10_media_artwork_r21','base10_r22':'base10_media_uri_r22'")
s=s.replace("if args.tag=='base10_r21':","if args.tag in ('base10_r21','base10_r22'):")
line=next(l for l in s.splitlines() if "if args.tag in ('base10_r21','base10_r22'):" in l)
added=json.loads((OUT/'base10_r22_uri_manifest.json').read_text(encoding='utf-8'))['added']
assert len(added)==9
s=s.replace(line,line+"\n    if args.tag=='base10_r22':expected+="+repr(added))
p.write_text(s,encoding='utf-8')
p=ROOT/'stability_static_checks_20260905.py';s=p.read_text(encoding='utf-8');assert s.count('[is][gp]et')==1
p.write_text(s.replace('[is][gp]et','[is](?:get|put)'),encoding='utf-8')
print('Archived old tools; R22 exact 9-file addition; scanner now recognizes get and put.')
