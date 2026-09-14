import json,re,argparse
from stability_base10_soc_action_patch_20260909 import OUT,SRC,DST,P,S,SLOT,G,T,A
from test_base10_soc_smali_20260909 import SocVM,check as inherited
from test_base10_tile_identity_20260909 import Obj,FF
from stability_verify_patch_20260906 import norm
class ActionVM(SocVM):
    def extra(self,target,a):
        if target.startswith(A+'->'):return self.execute(A,target.split('->')[1],a)
        return super().extra(target,a)
    def job(self,c,selector=3):
        listener=Obj('Lo/re;',**{'Lo/re;->Ͱ:Ljava/lang/Object;':c})
        job=Obj('Lo/bg;');self.execute(job.kind,'<init>(Ljava/lang/Object;II)V',[job,listener,50,selector]);return job
def check(tree):
    cases=[]
    vm=ActionVM(tree);c,d,g=vm.fixture();oldread=vm.read(c);job=vm.job(c)
    token=job.f['Lo/bg;->stabilitySocActionToken:'+T];assert token
    assert vm.execute(S,'current()Z',[oldread])==0
    pendingread=vm.read(c);assert vm.execute(S,'current()Z',[pendingread])==0
    vm.execute(A,'finishJob(Lo/bg;)V',[job]);assert vm.execute(S,'current()Z',[pendingread])==0
    assert vm.execute(S,'current()Z',[vm.read(c)])==1;cases.append('pending_action_blocks_and_finish_invalidates_pre_reply_read')
    for selector in [0,1,2,4,5]:assert not vm.job(c,selector).f.get('Lo/bg;->stabilitySocActionToken:'+T)
    cases.append('only_existing_soc_action_constructor_starts_gate')
    old=vm.job(c);new=vm.job(c);current=new.f['Lo/bg;->stabilitySocActionToken:'+T]
    b=vm.life.body('Lo/bg;','run()V');start=b.index('    iget-object v7, p0, Lo/bg;->stabilitySocActionToken:'+T);end=b.index('Lo/oa;->stabilitySocActionToken:'+T,start)+len('Lo/oa;->stabilitySocActionToken:'+T)
    callback=Obj('Lo/oa;',**{'Lo/oa;->Ͱ:Ljava/lang/Object;':old.f['Lo/bg;->Ͳ:Ljava/lang/Object;']})
    vm.execute('Lo/bg;','run()V',[old],body=b[start:end],initial={'v6':callback})
    assert callback.f['Lo/oa;->stabilitySocActionToken:'+T] is old.f['Lo/bg;->stabilitySocActionToken:'+T]
    vm.execute(A,'finishCallback(Lo/oa;)V',[callback]);assert c.f[FF+'->stabilitySocActionGate:'+G].f['current'] is current
    cases.append('callback_carries_original_action_token_and_old_reply_keeps_new_gate')
    for sig,jobreg in [('onSuccess(Lorg/json/JSONObject;)V','v6'),('onError(Ljava/lang/String;)V','p0')]:
        callback.f['Lo/oa;->stabilitySocActionToken:'+T]=current
        b=vm.life.body('Lo/oa;',sig);needle=f'    invoke-static {{{jobreg}}}, {A}->finishCallback(Lo/oa;)V';assert b.count(needle)==1
        vm.execute('Lo/oa;',sig,[callback,Obj('reply')],body=needle,initial={'v6':callback});assert c.f[FF+'->stabilitySocActionGate:'+G].f.get('current') is None
        new=vm.job(c);current=new.f['Lo/bg;->stabilitySocActionToken:'+T];cases.append(sig)
    for suffix in ['finishJob(Lo/bg;)V']:
        assert vm.life.body('Lo/bg;','run()V').count(A+'->'+suffix)==2
    cases.append('disconnected_and_exception_routes_finish_gate')
    vm.now=100;job=vm.job(c);vm.now=15099;assert vm.execute(S,'current()Z',[vm.read(c)])==0
    vm.now=15100;assert vm.execute(S,'current()Z',[vm.read(c)])==1;cases.append('same_15000ms_timeout_as_existing_core_callback')
    assert 'CALLBACK_TIMEOUT_MS:J = 0x3a98L' in (tree/'smali/com/byd/launcher/ipc/CoreServiceClient.smali').read_text(encoding='utf-8')
    job=vm.job(c);vm.execute(S,'close(Lo/ff;)V',[c]);assert c.f[FF+'->stabilitySocActionGate:'+G].f.get('current') is None
    vm.execute(A,'finishJob(Lo/bg;)V',[job]);assert vm.execute(S,'current()Z',[vm.read(c)])==1;cases.append('close_clears_wait_and_old_callback_cannot_restore_it')
    return dict(cases=cases,inherited=inherited(tree,action_parent=DST),limits='Actual UI gating and token forwarding hooks, with query/UI and production gate calls doubled; production gate independently tested on JVM. No action/IPC execution or command-order guarantee. 15s UI wait expiry does not cancel commands.')
def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/'base10_r9b_action_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        text=(DST/rel).read_text(encoding='utf-8')
        for r in reversed(records):
            if r['path']==rel:assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
        assert text==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:
        final=OUT/'final_redecode/base10_r9b'
        for rel in json.loads((OUT/'base10_r9b_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
        rows.append(check(final))
    (OUT/('base10_r9b_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS: '+str(len(rows[0]['cases']))+' action/read-gate cases plus 19 SOC and 95 tile inherited cases per artifact.')
if __name__=='__main__':main()
