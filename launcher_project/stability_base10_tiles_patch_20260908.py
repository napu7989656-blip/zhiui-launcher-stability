"""Extend the existing bounded pool to two audited tile read producers."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods,sha
from stability_base10_reads_patch_20260908 import OUT,blocks,convert
SRC=OUT/'worktrees/base10_bounded_reads_r3';DST=OUT/'worktrees/base10_bounded_tiles_r4';TAG='base10_r4'

def main():
    assert (OUT/'base10_r3_cumulative_content.json').exists(),'Parent cumulative gate must finish'
    assert (OUT/'base10_r3_cumulative_signature_check.json').exists(),'Parent API gate must finish'
    assert not DST.exists(),'Refuse overwrite'
    shutil.copytree(SRC,DST,ignore=lambda path,names:[n for n in names if Path(path)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[];changes=[];diff=[]
    for cls,sig,owner in [('ff','Ό()V','p0'),('ie','run()V','v0')]:
        rel=f'smali/o/{cls}.smali';p=DST/rel;old=p.read_text(encoding='utf-8')
        body=next(b for s,(b,_) in methods(p).items() if s.split()[-1]==sig)
        scope=body
        if cls=='ie':
            a=body.index('    :pswitch_17\n');scope=body[a:body.index('    :pswitch_18\n',a)]
        found=blocks(scope);assert len(found)==1
        before=found[0][0];after,meta=convert(before,owner,6)
        assert ('Lo/ag;-><init>' if cls=='ff' else 'Lo/ie;-><init>') in before
        new=old.replace(before,after);assert new!=old
        p.write_text(new,encoding='utf-8')
        records.append(dict(path=rel,signature=sig,before=before,after=after,**meta))
        changes.append(dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)))
        diff.extend(difflib.unified_diff(old.splitlines(True),new.splitlines(True),fromfile='base10_r3/'+rel,tofile=TAG+'/'+rel))
    (OUT/f'{TAG}_read_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    (OUT/f'{TAG}_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/f'{TAG}.patch').write_text(''.join(diff),encoding='utf-8')
    print('BASE-10 r4: initial/poll tile status reads use category6; action callbacks, getters and worker bodies unchanged.')
if __name__=='__main__':main()
