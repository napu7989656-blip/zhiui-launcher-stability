"""Read-only ownership call-site inventory for the remaining blur integration."""
import json,sys
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
TREE=OUT/'worktrees/base10_bitmap_alias_r14'
targets=['Lcom/byd/launcher/MainActivity;->ͷ()V','Lcom/byd/launcher/MainActivity;->Ί()V',
 'Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V','Lo/a8;-><init>',
 'Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)', 'Lo/a2;->Β(Landroid/graphics/Bitmap;I)',
 'Lo/ak;->ͷ:Landroid/graphics/Bitmap;', 'Lo/ak;->ͺ:Landroid/graphics/Bitmap;',
 'Lcom/byd/launcher/MainActivity;->Κ:Landroid/graphics/Bitmap;',
 'Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;',
 'Lcom/byd/launcher/NavBarService;->Ϛ:Landroid/graphics/Bitmap;']
rows=[]
for p in sorted((TREE/'smali').rglob('*.smali')):
 text=p.read_text(encoding='utf-8')
 if not any(t in text for t in targets):continue
 for sig,(b,line) in methods(p).items():
  for i,s in enumerate(b.splitlines()):
   for target in targets:
    if target in s:rows.append(dict(file=p.relative_to(TREE).as_posix(),method=sig,line=line+i,target=target,instruction=s.strip(),manual_status='PENDING_OWNERSHIP_REVIEW'))
dest=OUT/'base10_blur_callers_r14.json';assert not dest.exists()
dest.write_text(json.dumps(dict(tree=str(TREE),call_sites=rows,limits='Textual static references; each selector, dynamic source replacement and publication consumer still needs review. R14 only protects borrowed source at three recycle decisions.'),ensure_ascii=False,indent=2),encoding='utf-8')
print(len(rows),'static reference sites across',len({(r['file'],r['method']) for r in rows}),'methods; ownership classification pending.')
for target in targets:print(target,len([r for r in rows if r['target']==target]))
