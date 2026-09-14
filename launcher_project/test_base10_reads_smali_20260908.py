"""Recording execution of all seven actual submission blocks; never runs queries."""
import argparse,json,re
from stability_base10_reads_patch_20260908 import OUT,SRC,DST,TAG,E,CANCEL,ALLOWED_METHODS
from stability_local_audit_20260905 import methods
from test_base09_smali_20260908 import VM,controller,owned_resources,FF
from test_base10_theme_smali_20260908 import check as theme_check

def ins(body):return [l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('.','#'))]
def execute(lines,owner):
    r={f'v{i}':('initial',i) for i in range(30)};r['p0']=owner
    # ie.run uses v0 as the captured ff; ff setup v0 is a View sentinel.
    if owner=='ie_owner':r['v0']=owner
    construction=[];submissions=[];starts=[]
    for line in lines:
        op,_,rest=line.partition(' ');p=rest.split(', ')
        if op=='new-instance':r[p[0]]={'kind':p[1]}
        elif op=='const-string':r[p[0]]=json.loads(rest.split(', ',1)[1])
        elif op.startswith('const'):r[p[0]]=int(p[1],0)
        elif op.startswith('move'):r[p[0]]=r[p[1]]
        elif op.startswith('invoke'):
            regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
            if '..' in regs:
                first,last=regs.split(' .. ');regs=', '.join(first[0]+str(i) for i in range(int(first[1:]),int(last[1:])+1))
            a=[r[k] for k in regs.split(', ')]
            if '-><init>' in target:
                a[0]['target']=target;a[0]['args']=a[1:]
                if not target.startswith('Ljava/lang/Thread;'):construction.append((target,a[1:]))
            elif target=='Ljava/lang/Thread;->start()V':starts.append(a[0]['args'][0])
            elif target==E+'->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z':submissions.append(a)
            else:raise AssertionError('Unmodelled external call: '+target)
        else:raise AssertionError(line)
    return construction,submissions,starts

def check(tree,extra_controller_changes=(),submission_replacements=()):
    records=json.loads((OUT/f'{TAG}_read_manifest.json').read_text());cases=[]
    for change in submission_replacements:
        selected=[r for r in records if r['path']==change['path'] and r['signature']==change['signature'] and r['key']==change['key_before']]
        assert len(selected)==1 and selected[0]['after']==change['before']
        selected[0]['after']=change['after'];selected[0]['key']=change['key_after']
    for rec in records:
        owner='ie_owner' if rec['path']=='smali/o/ie.smali' else 'ff_owner'
        original=execute(ins(rec['before']),owner)
        b=next(b for s,(b,_) in methods(tree/rec['path']).items() if s.split()[-1]==rec['signature'])
        actual=ins(b);expected=ins(rec['after'])
        matches=[i for i in range(len(actual)-len(expected)+1) if actual[i:i+len(expected)]==expected]
        assert len(matches)==1,(rec['path'],rec['key'],matches)
        result=execute(actual[matches[0]:matches[0]+len(expected)],owner)
        assert result[0]==original[0],rec
        assert len(result[1])==1 and len(original[2])==1 and not result[2]
        submission=result[1][0]
        assert submission[:2]==[owner,rec['key']]
        assert submission[2]==original[2][0]
        cases.append(dict(path=rec['path'],method=rec['signature'],key=rec['key'],task_constructor=result[0][-1][0],arguments_preserved=True,original_thread_start_replaced=True))
    vm=VM(tree);c,_,_=owned_resources()
    vm.execute(FF,'stabilityDispose()Z',[c]);assert c.f['queued_reads_cancelled']
    vm.execute(FF,'stabilityDispose()Z',[c]);assert c.f['queued_reads_cancelled']
    inherited=theme_check(tree,ALLOWED_METHODS+tuple(extra_controller_changes))
    return dict(tree=str(tree),read_submissions=cases,owned_cancel_after_stop=True,repeated_dispose=True,inherited=inherited,status='PASS; original Runnable arguments recorded, pool/queries not executed by smali test; actual pool tested on JVM')

def preservation():
    records=json.loads((OUT/f'{TAG}_read_manifest.json').read_text())
    for rel in ['smali/o/ff.smali','smali/o/ie.smali']:
        before=(SRC/rel).read_text(encoding='utf-8');after=(DST/rel).read_text(encoding='utf-8')
        for r in records:
            if r['path']==rel:assert after.count(r['after'])==1;after=after.replace(r['after'],r['before'])
        if rel.endswith('/ff.smali'):assert after.count(CANCEL)==1;after=after.replace(CANCEL,'')
        assert before==after,rel
    for rel in ['smali/o/je.smali','smali/o/sj.smali','smali/com/byd/launcher/stability/QuickSettingsThemeApply.smali']:
        assert (SRC/rel).read_bytes()==(DST/rel).read_bytes(),rel
    return dict(exact_parent_restoration=True,unchanged_query_implementations=True,scope='Only seven submissions and one owned cancellation; other selectors/commands preserved')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();rows=[check(DST)]
    if a.final:rows.append(check(OUT/'final_redecode'/TAG))
    (OUT/(TAG+'_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,preservation=preservation()),indent=2),encoding='utf-8')
    print('PASS: seven original Runnable constructors/arguments preserved and submitted with audited owner/key; cancellation after stop/repeat and all inherited theme, handler and disposal branches passed.')
if __name__=='__main__':main()
