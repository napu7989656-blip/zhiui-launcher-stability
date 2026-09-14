from pathlib import Path
import json,shutil,difflib
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_media_lifetime_r23';DST=OUT/'worktrees/base10_media_retry_r24';A='Lo/a9;'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r23_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[]
 for name in ['u8','z8']:
  rel='smali/o/'+name+'.smali';p=DST/rel;s=p.read_text(encoding='utf-8');b=next(b for sig,(b,_) in methods(p).items() if sig.split()[-1]=='run()V')
  marker='    .locals '+('5' if name=='u8' else '6')
  prefix='''
    iget-object v0, p0, Lo/'''+name+''';->ͱ:Lo/a9;
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :media_retry_alive
    return-void
    :media_retry_alive
'''
  assert b.count(marker)==1;after=b.replace(marker,marker+prefix);p.write_text(s.replace(b,after),encoding='utf-8');edits.append(dict(path=rel,before=b,after=after))
 changes=[r['path'] for r in edits]
 for suffix,value in [('retry_manifest',dict(edits=edits,added=[])),('changes',changes)]:
  (OUT/('base10_r24_'+suffix+'.json')).write_text(json.dumps(value,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r24.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r23/'+r,tofile='r24/'+r)) for r in changes),encoding='utf-8')
 print('R24 two owner guards drafted; original media actions/retry timing unchanged.')
if __name__=='__main__':main()
