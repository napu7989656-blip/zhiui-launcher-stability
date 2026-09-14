"""Inventory direct business thread/wait sites for P1 manual classification."""
import json,re,sys
from pathlib import Path
from stability_local_audit_20260905 import methods
sys.stdout.reconfigure(encoding='utf-8')
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_blur_cleanup_r16'
files=list((TREE/'smali/o').glob('*.smali'))+list((TREE/'smali/com/byd/launcher').rglob('*.smali'))
pattern=re.compile(r'Ljava/lang/Thread;->(?:<init>|start|sleep)|Ljava/lang/Object;->wait|Ljava/util/concurrent/CountDownLatch;->await|Ljava/util/Timer;->|Ljava/util/concurrent/Executors;->')
rows=[]
for p in files:
 text=p.read_text(encoding='utf-8')
 if not pattern.search(text):continue
 for sig,(b,line) in methods(p).items():
  ins=[s.strip() for s in b.splitlines() if s.strip() and not s.strip().startswith(('.','#'))]
  for i,s in enumerate(ins):
   if pattern.search(s):rows.append(dict(file=p.relative_to(TREE).as_posix(),method=sig,instruction=s,context=ins[max(0,i-12):i+10],status='PENDING_MANUAL_CLASSIFICATION'))
dest=OUT/'base10_remaining_threads_r16.json';assert not dest.exists();dest.write_text(json.dumps(dict(tree=str(TREE),sites=rows,limits='Business o/com.byd package scope, direct patterns only. Thread pools, indirect callbacks and library threads require separate coverage. Existence is not a defect or a completed review.'),ensure_ascii=False,indent=2),encoding='utf-8')
print(len(rows),'sites across',len({(r['file'],r['method']) for r in rows}),'methods.')
for file,sig in sorted({(r['file'],r['method']) for r in rows}):print(file,sig)
