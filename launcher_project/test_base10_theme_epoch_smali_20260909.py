import json,argparse,re
from stability_base10_theme_epoch_patch_20260909 import OUT,SRC,DST,P,S,A,SLOT,T
from test_base10_soc_action_smali_20260909 import ActionVM,check as inherited
from test_base10_tile_identity_20260909 import Obj,FF,NAV
from test_base10_theme_smali_20260908 import ThemeVM as OriginalThemeVM,task as original_task
from stability_verify_patch_20260906 import norm
class FreshVM(ActionVM):
    def __init__(self,tree):
        super().__init__(tree);self.pref=0;self.hour=12;self.applied=[];self.execute(S,'<clinit>()V',[])
    def fixture(self):
        c,d,g=super().fixture();c.f[FF+'->stabilityThemeSlot:'+SLOT]=Obj(SLOT);return c,d,g
    def extra(self,target,args):
        if target.startswith((S+'->',A+'->')):return self.execute(target.split('->')[0],target.split('->')[1],args)
        return super().extra(target,args)
    def read(self,c):
        obj=Obj(S);self.execute(S,'<init>(Lo/ff;)V',[obj,c]);return obj
    def publish(self,read,c,mode,expected):
        task=original_task(c,mode,expected);self.execute(S,'post(Ljava/lang/Runnable;)V',[read,task]);return task
    def run_callback(self,task):
        original=OriginalThemeVM(self.tree);original.current=self.current;original.pref=self.pref;original.hour=self.hour
        original.execute([task]);self.pref=original.pref;self.applied.extend(original.ui)
        if original.writes:self.execute(S,'preferenceChanged()V',[])
    def drain(self):
        pending=list(self.submissions);self.submissions.clear()
        for ticket,queue,task in pending:self.execute(A,'run()V',[task])
def check(tree):
    cases=[]
    for state in ['normal','older_query','ABA','write_same_mode','close','disposed','dead','replacement_service','preference_mismatch','rejected']:
        vm=FreshVM(tree);c,d,g=vm.fixture();read=vm.read(c);vm.publish(read,c,1,0)
        if state=='older_query':vm.read(c)
        if state=='ABA':
            for value in [1,0]:vm.pref=value;vm.execute(S,'preferenceChanged()V',[])
        if state=='write_same_mode':vm.execute(S,'preferenceChanged()V',[])
        if state=='close':vm.execute(S,'close(Lo/ff;)V',[c])
        if state=='disposed':c.f[FF+'->stabilityDisposed:Z']=1
        if state=='dead':vm.current.f[NAV+'->ˋ:Z']=1
        if state=='replacement_service':vm.current=Obj(NAV)
        if state=='preference_mismatch':vm.pref=2
        if state=='rejected':vm.submissions.clear();vm.accept=False;vm.publish(read,c,1,0)
        vm.drain();assert len(vm.applied)==int(state=='normal'),state
        assert vm.pref==(1 if state=='normal' else 2 if state=='preference_mismatch' else 0)
        cases.append(state)
    for mode,hour,light in [(0,12,0),(1,12,1),(2,6,0),(2,7,1),(2,18,1),(2,19,0)]:
        vm=FreshVM(tree);c,d,g=vm.fixture();vm.hour=hour;read=vm.read(c);vm.publish(read,c,mode,0);vm.drain()
        assert vm.applied==[[vm.current,light]] and vm.pref==mode
        assert vm.execute(S,'current()Z',[read])==0
        cases.append(f'original_mode_{mode}_{hour}')
    vm=FreshVM(tree);c,d,g=vm.fixture()
    for selector in [0,5,6,22,24,28]:
        job=Obj('Lo/ie;');vm.execute(job.kind,'<init>(Lo/ff;I)V',[job,c,selector]);assert bool(job.f.get(job.kind+'->stabilityThemeRead:'+S))==(selector==6)
    cases.append('only_theme_read_constructor_captures_generation')
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z']:
        b=vm.life.body(FF,sig);assert b.count(S+'->close(Lo/ff;)V')==1;cases.append('close_hook_'+sig)
    assert S+'->close(Lo/ff;)V' not in vm.life.body(FF,'Ό()V'),'Theme query created before grid prep must not be invalidated by grid construction'
    setter=vm.life.body('Lo/ci;','Ͷ(Landroid/content/Context;I)V');needle=f'    invoke-static {{}}, {S}->preferenceChanged()V'
    assert setter.count(needle)==1 and setter.index(needle)<setter.index('SharedPreferences$Editor;->apply()V')
    old=vm.read(c);vm.execute('Lo/ci;','Ͷ(Landroid/content/Context;I)V',[vm.current,0],body=needle);assert not vm.execute(S,'current()Z',[old]);cases.append('actual_setter_hook_invalidates_even_same_value')
    b=vm.life.body('Lo/ie;','run()V');i=b.index('    iget-object v0, p0, Lo/ie;->stabilityThemeRead:'+S);label=re.search(r'if-nez v0, (:\w+)',b[i:])[1];end=b.index('    '+label+'\n',i)+len('    '+label+'\n')
    job=Obj('Lo/ie;',**{'Lo/ie;->stabilityThemeRead:'+S:old});vm.execute('Lo/ie;','run()V',[job],body=b[i:end]);assert not vm.reads;cases.append('stale_worker_entry_returns_before_query')
    # Existing target mapping, exception/cursor cleanup and complete theme apply helper remain exact after inverse proof.
    assert norm(SRC/'smali/com/byd/launcher/stability/QuickSettingsThemeApply.smali')==norm(tree/'smali/com/byd/launcher/stability/QuickSettingsThemeApply.smali')
    return dict(cases=cases,inherited=inherited(tree),limits='Actual preference epoch/ticket/wrapper and original theme apply instructions; preference/Calendar/Handler/System UI doubled. Process-local setter coverage only, not external preference writes or ART/OEM validation.')
def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/'base10_r10_theme_manifest.json').read_text())
    for rel in {r['path'] for r in records}:
        text=(DST/rel).read_text(encoding='utf-8')
        for r in reversed(records):
            if r['path']==rel:assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
        assert text==(SRC/rel).read_text(encoding='utf-8'),rel
    rows=[check(DST)]
    if a.final:
        final=OUT/'final_redecode/base10_r10'
        for rel in json.loads((OUT/'base10_r10_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
        rows.append(check(final))
    (OUT/('base10_r10_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS: '+str(len(rows[0]['cases']))+' theme ABA/latest/close/setter/original-mode cases plus 122 inherited SOC/tile cases per artifact.')
if __name__=='__main__':main()
