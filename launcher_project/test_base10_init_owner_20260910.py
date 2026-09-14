"""Run actual R17 guards/catch; Android/ADB side effects are never executed."""
import argparse,json,re
from stability_base10_init_owner_patch_20260910 import OUT,SRC,DST,REL,EA,NAV
from test_base10_wait_smali_20260909 import WaitVM
from test_base10_tile_identity_20260909 import Obj
from test_base10_blur_cleanup_followup_20260910 import check as inherited
from stability_verify_patch_20260906 import norm
class InitVM(WaitVM):
 def extra(self,target,args):
  if target==EA+'->stabilityInitCurrent()Z':return self.execute(EA,'stabilityInitCurrent()Z',args)
  return super().extra(target,args)
def check(tree):
 cases=[];vm=InitVM(tree);b=vm.life.body(EA,'run()V')
 for state in ['current','dead','replaced','no_current','null_owner','interrupted']:
  owner=Obj(NAV);task=Obj(EA);task.f[EA+'->ͱ:'+NAV]=owner;vm.current=owner;vm.interrupted=False
  if state=='dead':owner.f[NAV+'->ˋ:Z']=1
  if state=='replaced':vm.current=Obj(NAV)
  if state=='no_current':vm.current=0
  if state=='null_owner':task.f[EA+'->ͱ:'+NAV]=0
  if state=='interrupted':vm.interrupted=True
  assert vm.execute(EA,'stabilityInitCurrent()Z',[task])==int(state=='current')
  # Execute all 13 real call sites, with a sentinel representing the next step.
  compact='\n'.join(x for x in b.splitlines() if x.strip() and not x.strip().startswith(('.line','#')))+'\n'
  fragments=re.findall(r'    invoke-direct \{p0\}, Lo/ea;->stabilityInitCurrent\(\)Z\n    move-result v3\n    if-nez v3, (:\w+)\n    return-void\n    \1\n',compact)
  assert len(fragments)==13
  for label in fragments:
   start=compact.rfind('    invoke-direct {p0}',0,compact.index('    '+label+'\n')+1)
   end=compact.index('    '+label+'\n',start)+len('    '+label+'\n')
   result=vm.execute(EA,'run()V',[task],body=compact[start:end]+'    const/4 v3, 0x7\n    return v3\n')
   assert result==(7 if state=='current' else None),(state,label,result)
  cases.append(state+'_helper_and_13_checkpoints')
 # Both jump targets enter the guard, rather than bypassing it.
 guarded_targets=re.findall(r'    (:\w+)\n    invoke-direct \{p0\}, Lo/ea;->stabilityInitCurrent\(\)Z',compact)
 jumps=re.findall(r'\bgoto(?:/\w+)? (:\w+)',compact)
 assert len(set(guarded_targets)&set(jumps))>=2
 cases.extend(['retry_decision_jump_enters_guard','followup_jump_enters_guard'])
 match=re.search(r'\.catch Ljava/lang/InterruptedException; \{(:\w+) \.\. (:\w+)\} (:\w+)',b);assert match
 sleep=b.index('    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V')
 assert b.index('    '+match[1]+'\n')<sleep<b.index('    '+match[2]+'\n')
 start=b.index('    '+match[3]+'\n');vm.interrupted=False
 vm.execute(EA,'run()V',[Obj(EA)],body=b[start:]);assert vm.interrupted
 cases.append('sleep_interrupt_restored_then_return')
 # Original attempt cap and normal continuation remain; no catch-handler retry.
 assert 'if-gt v1, v6,' in b and 'const/16 v6, 0xa' in b
 assert 'add-int/lit8 v1, v1, 0x1' in b
 return dict(cases=cases,inherited=inherited(tree),limits='Actual helper, all 13 checkpoint fragments and typed interruption handler executed. Catch range and jump entries checked. No ADB, Android, full initializer execution, ART, or vehicle test. Checks cannot cancel an operation already entered; nested methods/callbacks remain under audit.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 r=json.loads((OUT/'base10_r17_init_manifest.json').read_text(encoding='utf-8'));t=(DST/REL).read_text(encoding='utf-8')
 assert t.endswith(r['append']);t=t[:-len(r['append'])];assert t.count(r['after'])==1
 assert t.replace(r['after'],r['before'])==(SRC/REL).read_text(encoding='utf-8')
 rows=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r17';assert norm(DST/REL)==norm(final/REL);rows.append(check(final))
 (OUT/('base10_r17_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(rows[0]['cases']),'initializer checks plus 293 inherited per artifact.')
if __name__=='__main__':main()
