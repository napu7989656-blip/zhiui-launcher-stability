"""Correct the nav poll key using actual je selectors, not allocation order."""
import json,shutil,difflib
from pathlib import Path
from stability_base10_nav_patch_20260908 import OUT
SRC=OUT/'worktrees/base10_nav_freshness_r5';DST=OUT/'worktrees/base10_read_keys_r6';TAG='base10_r6'
def main():
    assert (OUT/'base10_r5_cumulative_content.json').exists()
    assert not DST.exists(),'Refuse overwrite'
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    rec=next(r for r in json.loads((OUT/'base10_r3_read_manifest.json').read_text()) if r['path']=='smali/o/ie.smali' and r['key']==1)
    before=rec['after'];after=before.replace('    const/4 v6, 0x1','    const/4 v6, 0x2');assert before!=after
    p=DST/rec['path'];old=p.read_text(encoding='utf-8');assert old.count(before)==1
    p.write_text(old.replace(before,after),encoding='utf-8')
    change=dict(path=rec['path'],signature=rec['signature'],key_before=1,key_after=2,before=before,after=after)
    (OUT/f'{TAG}_key_manifest.json').write_text(json.dumps([change],indent=2),encoding='utf-8')
    (OUT/f'{TAG}.patch').write_text(''.join(difflib.unified_diff(old.splitlines(True),p.read_text(encoding='utf-8').splitlines(True),fromfile='base10_r5/'+rec['path'],tofile=TAG+'/'+rec['path'])),encoding='utf-8')
    print('Changed only nav polling queue key 1 -> 2; matches nav initialization, distinct from instrument initialization key1.')
if __name__=='__main__':main()
