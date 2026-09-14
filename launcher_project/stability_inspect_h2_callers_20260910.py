import sys,json
from pathlib import Path
from stability_local_audit_20260905 import methods
sys.stdout.reconfigure(encoding='utf-8')
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');tree=OUT/'worktrees/base10_blur_pipeline_r15'
rows=[]
for p in (tree/'smali').rglob('*.smali'):
 text=p.read_text(encoding='utf-8')
 if 'Lo/h2;-><init>' not in text:continue
 for sig,(b,line) in methods(p).items():
  lines=[s.strip() for s in b.splitlines() if s.strip() and not s.strip().startswith(('.','#'))]
  for i,s in enumerate(lines):
   if 'Lo/h2;-><init>' in s:
    row=dict(file=p.relative_to(tree).as_posix(),method=sig,instructions=lines[max(0,i-24):i+1]);rows.append(row)
    print(row['file'],sig);print('\n'.join(row['instructions']))
dest=OUT/'base10_r15_h2_constructor_sites.json';assert not dest.exists();dest.write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf-8')
