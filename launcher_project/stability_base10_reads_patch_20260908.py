"""Wire seven audited replaceable reads into the tested process-wide bounded pool."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods,sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_theme_delivery_r2';DST=OUT/'worktrees/base10_bounded_reads_r3';TAG='base10_r3'
E='Lcom/byd/launcher/stability/QuickSettingsReadExecutor;'
ALLOWED_METHODS=('ͽ()V','Ί()V','Ύ(I)V','stabilityDispose()Z')
CANCEL=f'    invoke-static {{p0}}, {E}->cancelQueued(Ljava/lang/Object;)V\n'

def blocks(body):
    pattern=r'    new-instance (v\d+), Ljava/lang/Thread;\n(?:(?!    new-instance \w+, Ljava/lang/Thread;).)*?    invoke-virtual \{\1\}, Ljava/lang/Thread;->start\(\)V'
    return list(re.finditer(pattern,body,re.S))

def convert(block,owner,key):
    thread=re.search(r'new-instance (v\d+), Ljava/lang/Thread;',block)[1]
    ctor=re.search(r'    invoke-direct \{'+thread+r', (v\d+)(?:, \w+)?\}, Ljava/lang/Thread;-><init>\(Ljava/lang/Runnable;(?:Ljava/lang/String;)?\)V',block)
    assert ctor,block
    job=ctor[1]
    # The old Thread register is not overwritten between its allocation/start.
    instructions=[l.strip() for l in block.splitlines() if l.strip() and not l.strip().startswith(('.','#'))]
    assert not any(re.match(r'(?:move|const|iget|sget|new-instance)\S* '+thread+r'(?:,|$)',l) for l in instructions[1:]),block
    result=block.replace(f'new-instance {thread}, Ljava/lang/Thread;',f'const/4 {thread}, 0x{key:x}',1)
    call=f'    invoke-static {{{owner}, {thread}, {job}}}, {E}->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z'
    result=result.replace(ctor[0],call).replace(f'    invoke-virtual {{{thread}}}, Ljava/lang/Thread;->start()V','')
    return result,dict(owner_register=owner,key_register=thread,task_register=job,key=key)

def main():
    assert not DST.exists(),'Refuse overwrite'
    shutil.copytree(SRC,DST,ignore=lambda path,names:[n for n in names if Path(path)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[];changes=[];diff=[]
    for cls in ['ff','ie']:
        rel=f'smali/o/{cls}.smali';p=DST/rel;old=p.read_text(encoding='utf-8');text=old
        for signature,(body,_) in methods(p).items():
            sig=signature.split()[-1];selected=[]
            if cls=='ff' and sig in ['ͽ()V','Ί()V','Ύ(I)V']:
                allblocks=blocks(body)
                expected={'ͽ()V':1,'Ί()V':3,'Ύ(I)V':1}[sig];assert len(allblocks)==expected
                keys={'ͽ()V':[0],'Ί()V':[1,2,3],'Ύ(I)V':[4]}[sig]
                selected=list(zip(allblocks,keys))
                local=int(re.search(r'\.locals (\d+)',body)[1]);assert local<=15,'invoke argument register overflow'
            elif cls=='ie' and sig=='run()V':
                a=body.index('    :pswitch_17\n');z=body.index('    :pswitch_18\n',a)
                selected=[(m,key) for m,key in zip(blocks(body[a:z]),[1,5,99]) if key!=99]
                assert len(blocks(body[a:z]))==3
            updated=body
            for m,key in selected:
                block=m[0];replacement,meta=convert(block,'p0' if cls=='ff' else 'v0',key)
                assert updated.count(block)==1;updated=updated.replace(block,replacement)
                records.append(dict(path=rel,signature=sig,before=block,after=replacement,**meta))
            if cls=='ff' and sig=='stabilityDispose()Z':
                needle='    iput-boolean v0, p0, Lo/ff;->stabilityDisposed:Z\n'
                assert updated.count(needle)==1;updated=updated.replace(needle,needle+CANCEL)
            if updated!=body:assert text.count(body)==1;text=text.replace(body,updated)
        p.write_text(text,encoding='utf-8')
        changes.append(dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)))
        diff.extend(difflib.unified_diff(old.splitlines(True),text.splitlines(True),fromfile='base10_r2/'+rel,tofile=TAG+'/'+rel))
    assert len(records)==7
    source=OUT/'modules/quick_read_executor_r1/decoded/smali/com/byd/launcher/stability'
    names=sorted(p.name for p in source.glob('*.smali'))
    assert names==['QuickSettingsReadExecutor$1.smali','QuickSettingsReadExecutor$Read.smali','QuickSettingsReadExecutor.smali']
    for name in names:
        rel='smali/com/byd/launcher/stability/'+name;shutil.copyfile(source/name,DST/rel)
        changes.append(dict(path=rel,before_sha='',after_sha=sha(DST/rel)))
    (OUT/f'{TAG}_read_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    (OUT/f'{TAG}_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/f'{TAG}.patch').write_text(''.join(diff),encoding='utf-8')
    print('BASE-10 r3: seven audited read submissions, owned queued cancellation, three compiled classes; other thread producers retained for further audit.')
if __name__=='__main__':main()
