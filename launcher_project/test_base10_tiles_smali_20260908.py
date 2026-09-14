"""Test only audited tile submission replacement, preserving all action branches."""
import argparse,json
from stability_base10_tiles_patch_20260908 import OUT,SRC,DST,TAG
from stability_local_audit_20260905 import methods
from test_base10_reads_smali_20260908 import execute,ins,check as read_check

def check(tree,extra_controller_changes=(),submission_replacements=()):
    rows=[]
    for rec in json.loads((OUT/f'{TAG}_read_manifest.json').read_text()):
        body=next(b for s,(b,_) in methods(tree/rec['path']).items() if s.split()[-1]==rec['signature'])
        actual=ins(body);expected=ins(rec['after'])
        matches=[i for i in range(len(actual)-len(expected)+1) if actual[i:i+len(expected)]==expected];assert len(matches)==1
        owner='ff_owner' if rec['path'].endswith('/ff.smali') else 'ie_owner'
        old=execute(ins(rec['before']),owner);new=execute(actual[matches[0]:matches[0]+len(expected)],owner)
        assert new[0]==old[0] and not new[2] and len(new[1])==1 and len(old[2])==1
        assert new[1][0]==[owner,6,old[2][0]]
        # The original selector constant must remain 16 for ag and 22 for ie.
        args=new[0][-1][1]
        if owner=='ff_owner':assert args[0]==16 and args[1]==owner
        else:
            # v1=22 is defined in the unchanged ie.run prologue, outside this block.
            assert args==[owner,('initial',1)]
            assert 'const/16 v1, 0x16' in actual
        rows.append(dict(path=rec['path'],key=6,arguments_and_selector_preserved=True))
    return dict(tree=str(tree),tile_cases=rows,inherited=read_check(tree,('Ό()V',)+tuple(extra_controller_changes),submission_replacements),status='PASS; actual submission instructions recorded; no worker/getter/vehicle execution')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/f'{TAG}_read_manifest.json').read_text())
    for rec in records:
        before=(SRC/rec['path']).read_text(encoding='utf-8');after=(DST/rec['path']).read_text(encoding='utf-8')
        assert after.count(rec['after'])==1 and after.replace(rec['after'],rec['before'])==before
    for c in ['ag','ke','le','sj','fe','Ϙ']:
        assert (SRC/f'smali/o/{c}.smali').read_bytes()==(DST/f'smali/o/{c}.smali').read_bytes()
    rows=[check(DST)]
    if a.final:rows.append(check(OUT/'final_redecode'/TAG))
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True,worker_getters_and_action_callbacks_unchanged=True),indent=2),encoding='utf-8')
    print('PASS: both tile producers preserve selector/task arguments; all 9 bounded read submissions and inherited queue/theme/disposal cases passed per artifact; action/getter bodies unchanged.')
if __name__=='__main__':main()
