"""Execute R12 wait decisions and actual interruption handlers; Android/IPC doubled."""
import json,re,argparse
from stability_base10_wait_patch_20260909 import OUT,SRC,DST
from test_base10_nav_action_smali_20260909 import NavActionVM,check as nav_check
from test_base10_theme_epoch_smali_20260909 import FreshVM
from test_base10_tile_identity_20260909 import TileVM,Obj
from stability_verify_patch_20260906 import norm
THREAD='Ljava/lang/Thread;'
class WaitVM(NavActionVM):
    def __init__(self,tree):super().__init__(tree);self.interrupted=False;self.await_result=1;self.waits=0
    def extra(self,target,a):
        if target==THREAD+'->currentThread()'+THREAD:return self
        if target==THREAD+'->isInterrupted()Z':return int(self.interrupted)
        if target==THREAD+'->interrupt()V':self.interrupted=True;return
        if target=='Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z':self.waits+=1;return self.await_result
        return super().extra(target,a)
def check(tree):
    vm=WaitVM(tree);cases=[]
    for cls,sig,array,dest,index,regs in [('ff','ͼ(Ljava/lang/String;Ljava/lang/String;)I','v3','p0','p1','v2, v4, v5, p1'),('ie','run()V','v3','v3','v13','v6, v7, v8, v5'),('je','run()V','v9','v1','v1','v7, v10, v11, v6')]:
        owner='Lo/'+cls+';';b=vm.life.body(owner,sig)
        # Catch-table audit ties the real await instruction to typed interruption exit.
        needle='invoke-virtual {'+regs+'}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z'
        start=b.index('    '+needle);end=b.index('    aget ',start);end=b.index('\n',end)
        if cls!='ff':
            label=re.search(r'goto(?:/\w+)? (:\w+)',b[start:end])[1]
            end=b.index('    '+label+'\n',end)+len('    '+label+'\n')
        fragment=b[start:end]+'\n    return '+dest+'\n'
        for completed in [0,1]:
            vm.await_result=completed;vm.interrupted=False
            initial={f'v{i}':0 for i in range(15)};initial.update({'v0':-1,'v1':0,array:[17],'v13':0})
            # Set await's long arguments and receiver, keeping result array separate.
            for reg in regs.split(', '):initial.setdefault(reg,0)
            args=[Obj(owner),0] if cls=='ff' else [Obj(owner)]
            value=vm.execute(owner,sig,args,body=fragment,initial=initial)
            assert value==(17 if completed else -1),(cls,completed,value)
            cases.append(cls+'_completed_'+str(completed))
        match=re.search(r'\.catch Ljava/lang/InterruptedException; \{(:\w+) \.\. (:\w+)\} (:\w+)',b);assert match
        assert b.index('    '+match[1]+'\n')<start<b.index('    '+match[2]+'\n')
        hstart=b.index('    '+match[3]+'\n');handler=b[hstart:b.index('.end method',hstart)]
        assert 'move-exception' in handler and '->interrupt()V' in handler and '->complete(' not in handler and '->invalid()' not in handler
        vm.interrupted=False;vm.execute(owner,sig,[Obj(owner),0] if cls=='ff' else [Obj(owner)],body=handler);assert vm.interrupted
        cases.append(cls+'_interrupt_restored_and_exits')
    b=vm.life.body('Lo/ff;','ͼ(Ljava/lang/String;Ljava/lang/String;)I');start=b.index('    const/4 v0, -0x1');label=re.search(r'if-eqz v1, (:\w+)',b[start:])[1];end=b.index('    '+label+'\n',start)+len('    '+label+'\n')
    vm.interrupted=True;assert vm.execute('Lo/ff;','ͼ(Ljava/lang/String;Ljava/lang/String;)I',[Obj('command'),Obj('key')],body=b[start:end])==-1;cases.append('preinterrupted_query_returns_before_ipc')
    cls='Lcom/byd/launcher/stability/TileSnapshots;';sig='post(Lcom/byd/launcher/stability/TileBatch;Ljava/lang/Runnable;)Z'
    vm.interrupted=True;assert vm.execute(cls,sig,[0,Obj('callback')])==0 and not vm.submissions;cases.append('interrupted_tile_result_not_posted')
    # Run inherited behavioural checks on actual current methods. Framework Thread
    # calls return a non-interrupted thread in these ordinary regression scenarios.
    previous=TileVM.extra
    def extra(self,target,a):
        if target==THREAD+'->currentThread()'+THREAD:return self
        if target==THREAD+'->isInterrupted()Z':return 0
        return previous(self,target,a)
    TileVM.extra=extra
    try:inherited=nav_check(tree)
    finally:TileVM.extra=previous
    return dict(cases=cases,inherited=inherited,limits='Actual await result branches and typed catch handlers executed; await outcomes injected. Catch table statically linked to actual wait. No IPC/vehicle calls or ART; inherited Thread double is non-interrupted.')
def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    records=json.loads((OUT/'base10_r12_wait_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        text=(DST/rel).read_text(encoding='utf-8')
        for r in reversed(records):
            if r['path']==rel:assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
        assert text==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:
        final=OUT/'final_redecode/base10_r12'
        for rel in json.loads((OUT/'base10_r12_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
        rows.append(check(final))
    (OUT/('base10_r12_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS:',len(rows[0]['cases']),'wait cases plus 183 inherited cases per artifact.')
if __name__=='__main__':main()
