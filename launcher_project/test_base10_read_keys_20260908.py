"""Verify semantic category mapping plus existing branch suites."""
import argparse,json,re,subprocess
from pathlib import Path
from stability_base10_read_keys_patch_20260908 import OUT,SRC,DST,TAG
from stability_local_audit_20260905 import methods
from test_base10_nav_smali_20260908 import check as nav_check

def keys(tree):
    def body(cls):return next(b for s,(b,_) in methods(tree/f'smali/o/{cls}.smali').items() if s.split()[-1]==('Ί()V' if cls=='ff' else 'run()V'))
    ff=body('ff');ie=body('ie');je=body('je')
    # Resolve the original packed-switch: selector 1 queries instrument, 0/default nav.
    payload=je[je.index('    .packed-switch 0x0'):je.index('    .end packed-switch')]
    labels=re.findall(r':pswitch_\w+',payload);assert len(labels)==2
    a=je.index('    '+labels[1]+'\n');b=je.index('    '+labels[0]+'\n')
    assert '"getBacklightBrightness"' in je[a:b] and 'Lo/ff;->Ͷ()I' in je[b:]
    # Each setup Runnable is constructed with an explicit selector: v6=1 and v4=0.
    assert ff.count('Lo/je;-><init>')==2 and ie.count('Lo/je;-><init>')==1
    assert 'const/4 v6, 0x1' in ff and 'const/4 v4, 0x0' in ff and 'const/4 v11, 0x2' in ie
    # Match key allocation directly adjacent to its original constructor sequence.
    clean=lambda x:'\n'.join(l.strip() for l in x.splitlines() if l.strip() and not l.strip().startswith(('.','#')))
    f=clean(ff);i=clean(ie)
    instrument=re.search(r'const/4 v3, (0x\w+)\nnew-instance v5, Lo/je;\nconst/4 v6, 0x1',f)
    nav=re.search(r'const/4 v2, (0x\w+)\nnew-instance v3, Lo/je;\ninvoke-direct \{v3, p0, v0, v1, v4\}',f)
    poll=re.search(r'const/4 v6, (0x\w+)\nnew-instance v7, Lo/je;\ninvoke-direct \{v7, v0, v3, v4, v11\}',i)
    assert instrument and nav and poll
    return [int(m[1],0) for m in (instrument,nav,poll)]

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    changes=json.loads((OUT/f'{TAG}_key_manifest.json').read_text());rec=changes[0]
    before=(SRC/rec['path']).read_text(encoding='utf-8');after=(DST/rec['path']).read_text(encoding='utf-8')
    assert after.count(rec['after'])==1 and after.replace(rec['after'],rec['before'])==before
    old=keys(SRC);assert old==[1,2,1]
    trees=[DST]+([OUT/'final_redecode'/TAG] if a.final else []);rows=[]
    for tree in trees:
        current=keys(tree);assert current==[1,2,2]
        rows.append(dict(tree=str(tree),instrument_initial=current[0],nav_initial=current[1],nav_poll=current[2],inherited=nav_check(tree,changes)))
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(parent_keys=old,artifacts=rows,only_one_key_instruction_changed=True),indent=2),encoding='utf-8')
    print('PASS: actual selectors map instrument=1, initial/poll nav=2; original parent collision confirmed; all inherited nav/lifecycle cases passed.')
if __name__=='__main__':main()
