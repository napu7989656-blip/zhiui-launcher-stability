"""R12: explicit latch timeout and interruption exits; no query/action changes."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_nav_action_reads_r11';DST=OUT/'worktrees/base10_wait_interrupt_r12'
def main():
    assert (OUT/'base10_r11_manual_audit.json').exists() and not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def method(rel,sig,fn):
        p=DST/rel;before=next(b for s,(b,_) in methods(p).items() if s.split()[-1]==sig)
        after=fn(before);assert after!=before
        text=p.read_text(encoding='utf-8');assert text.count(before)==1
        p.write_text(text.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    thread='''    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
'''
    def query(b):
        pre='''    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v1
    if-eqz v1, :wait_enter
    return v0
    :wait_enter
'''
        b=b.replace('    const/4 v0, -0x1','    const/4 v0, -0x1\n'+pre,1)
        needle='    invoke-virtual {v2, v4, v5, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z'
        assert b.count(needle)==1
        b=b.replace(needle,needle+'\n    move-result p1\n    if-nez p1, :wait_completed\n    return v0\n    :wait_completed',1)
        needle='    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0'
        assert b.count(needle)==1
        b=b.replace(needle,'    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :wait_interrupted\n'+needle,1)
        b=b.replace('.end method','    :wait_interrupted\n    move-exception v1\n'+thread+'    const/4 v0, -0x1\n    return v0\n.end method')
        return b
    method('smali/o/ff.smali','ͼ(Ljava/lang/String;Ljava/lang/String;)I',query)
    for cls,regs,temp,array,index in [('ie','v6, v7, v8, v5','v5','v3','v13'),('je','v7, v10, v11, v6','v6','v9','v1')]:
        def worker(b,regs=regs,temp=temp,array=array,index=index,cls=cls):
            needle='    invoke-virtual {'+regs+'}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z'
            assert b.count(needle)==1
            b=b.replace(needle,needle+'\n    move-result '+temp+'\n    if-nez '+temp+', :wait_completed\n    const/4 '+('v3' if cls=='ie' else 'v1')+', -0x1\n    goto :wait_value_ready\n    :wait_completed',1)
            needle='    aget '+('v3' if cls=='ie' else 'v1')+', '+array+', '+index
            assert b.count(needle)==1;b=b.replace(needle,needle+'\n    :wait_value_ready',1)
            needle='    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0'
            assert b.count(needle)==1
            b=b.replace(needle,'    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :wait_interrupted\n'+needle,1)
            # Append after switch payload: branch target reachable only from the catch table.
            b=b.replace('.end method','    :wait_interrupted\n    move-exception v0\n'+thread+'    return-void\n.end method')
            return b
        method('smali/o/'+cls+'.smali','run()V',worker)
    def post(b):
        needle='    .locals 11'
        assert b.count(needle)==1
        return b.replace(needle,needle+'''
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-eqz v0, :wait_post_allowed
    const/4 v0, 0x0
    return v0
    :wait_post_allowed
''',1)
    method('smali/com/byd/launcher/stability/TileSnapshots.smali','post(Lcom/byd/launcher/stability/TileBatch;Ljava/lang/Runnable;)Z',post)
    changes=sorted(r['path'] for r in records)
    (OUT/'base10_r12_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/'base10_r12_wait_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r11/'+r,tofile='r12/'+r)) for r in changes)
    (OUT/'base10_r12.patch').write_text(patch,encoding='utf-8')
    (OUT/'base10_r12_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT',remaining=['dedicated source/final latch outcome tests','inherited regressions','caller/callback audit','build/signature/cumulative/JADX']),indent=2),encoding='utf-8')
    print('R12 draft created; no APK built; latch and caller tests required.')
if __name__=='__main__':main()
