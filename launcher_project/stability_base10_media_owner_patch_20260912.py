import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_media_session_r20';DST=OUT/'worktrees/base10_media_owner_r20b'
def main():
 assert not DST.exists() and (OUT/'base10_r20_manual_audit.json').exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 rel='smali/o/a9.smali';p=DST/rel;s=p.read_text(encoding='utf-8');b=next(b for sig,(b,_) in methods(p).items() if sig.split()[-1]=='stabilityCurrent()Z')
 needle='    iget-object v0, p0, Lo/a9;->ˋ:Landroid/content/Context;'
 assert b.count(needle)==1
 after=b.replace(needle,'''    iget-object v0, p0, Lo/a9;->ʹ:Lo/ia;
    if-eqz v0, :invalid
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;''')
 p.write_text(s.replace(b,after),encoding='utf-8')
 (OUT/'base10_r20b_owner_manifest.json').write_text(json.dumps([dict(path=rel,before=b,after=after)],ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r20b_changes.json').write_text(json.dumps([rel]),encoding='utf-8')
 (OUT/'base10_r20b.patch').write_text(''.join(difflib.unified_diff(s.splitlines(True),p.read_text(encoding='utf-8').splitlines(True),fromfile='r20/'+rel,tofile='r20b/'+rel)),encoding='utf-8')
 print('R20b owner fix draft created; Application Context preserved.')
if __name__=='__main__':main()
