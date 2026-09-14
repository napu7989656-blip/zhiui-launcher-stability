import argparse,json,re
from stability_base10_home_receiver_patch_20260911 import OUT,SRC,DST,NAV
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj
from test_base10_notification_init_20260911 import check as inherited
from stability_verify_patch_20260906 import norm
WA='Lo/wa;'
class RegistrationFailure(Exception):pass
class HomeVM(NavVM):
 def __init__(self,tree):super().__init__(tree);self.extra_call=self.extra;self.registrations=[];self.fail=False
 def extra(self,target,args):
  cls,sig=target.split('->')
  if cls==WA or target==NAV+'->stabilityRegisterHomeReceiver()V':return self.execute(cls,sig,args)
  if target=='Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V':return
  if target=='Landroid/content/BroadcastReceiver;-><init>()V':return
  if target=='Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;':
   self.registrations.append(args[1])
   if self.fail:raise RegistrationFailure()
   return 0
  if target=='Landroid/content/Intent;->getAction()Ljava/lang/String;':return args[0].f['action']
  if target=='Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;':return args[0].f.get(args[1],0)
  if target=='Ljava/lang/String;->equals(Ljava/lang/Object;)Z':return int(args[0]==args[1])
  if target=='Lo/td;-><init>(ILjava/lang/Object;)V':args[0].f.update({'selector':args[1],'receiver':args[2]});return
  if target=='Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V':self.logs.append(args);return
  raise AssertionError(target)
def check(tree):
 cases=[];vm=HomeVM(tree);service=Obj(NAV);vm.current=service
 vm.execute(NAV,'stabilityRegisterHomeReceiver()V',[service]);first=service.f[NAV+'->Μ:'+WA]
 vm.execute(NAV,'stabilityRegisterHomeReceiver()V',[service]);assert len(vm.registrations)==1 and service.f[NAV+'->Μ:'+WA] is first;cases.append('reconnect_reuses_registered_receiver')
 for state in ['current','destroyed','replacement_service','replacement_receiver','unregistered','missing_owner','missing_current']:
  vm=HomeVM(tree);service=Obj(NAV);vm.current=service;receiver=Obj(WA);vm.execute(WA,'<init>('+NAV+')V',[receiver,service]);service.f[NAV+'->Μ:'+WA]=receiver;service.f[NAV+'->Ͷ:Landroid/os/Handler;']=Obj('handler')
  if state=='destroyed':service.f[NAV+'->ˋ:Z']=1
  if state=='replacement_service':vm.current=Obj(NAV)
  if state=='replacement_receiver':service.f[NAV+'->Μ:'+WA]=Obj(WA)
  if state=='unregistered':service.f[NAV+'->Μ:'+WA]=0
  if state=='missing_owner':receiver.f[WA+'->ˋ:'+NAV]=0
  if state=='missing_current':vm.current=0
  assert vm.execute(WA,'stabilityCurrent()Z',[receiver])==int(state=='current')
  for reason,action in [('homekey','android.intent.action.CLOSE_SYSTEM_DIALOGS'),('recentapps','android.intent.action.CLOSE_SYSTEM_DIALOGS'),('other','android.intent.action.CLOSE_SYSTEM_DIALOGS'),('homekey','other')]:
   vm.posts=[];intent=Obj('intent');intent.f.update(action=action,reason=reason)
   vm.execute(WA,'onReceive(Landroid/content/Context;Landroid/content/Intent;)V',[receiver,service,intent]);assert len(vm.posts)==int(state=='current' and reason in ['homekey','recentapps'] and action=='android.intent.action.CLOSE_SYSTEM_DIALOGS')
  vm.posts=[];vm.execute(WA,'onReceive(Landroid/content/Context;Landroid/content/Intent;)V',[receiver,service,0]);assert not vm.posts
  b=vm.life.body('Lo/td;','run()V');at=b.index('    check-cast v0, Lo/wa;');match=re.search(r'if-nez v2, (:\w+)',b[at:]);end=b.index('    '+match[1]+'\n',at)+len('    '+match[1]+'\n')
  value=vm.execute('Lo/td;','run()V',[Obj('task')],body=b[at:end]+'    const/4 v2, 0x1\n    return v2\n',initial={'v0':receiver});assert value==(1 if state=='current' else None)
  cases.append(state+'_broadcast_and_queued_callback')
 vm=HomeVM(tree);service=Obj(NAV);vm.current=service;vm.fail=True
 b=vm.life.body(NAV,'stabilityRegisterHomeReceiver()V')
 try:vm.execute(NAV,'stabilityRegisterHomeReceiver()V',[service]);raise AssertionError()
 except RegistrationFailure:pass
 assert not service.f.get(NAV+'->Μ:'+WA)
 catch=re.search(r'\.catch Ljava/lang/Exception; \{(:\w+) \.\. (:\w+)\} (:\w+)',b);assert catch
 invoke=b.index('->registerReceiver(');assert b.index('    '+catch[1]+'\n')<invoke<b.index('    '+catch[2]+'\n')
 at=b.index('    '+catch[3]+'\n');vm.execute(NAV,'stabilityRegisterHomeReceiver()V',[service],body=b[at:]);assert vm.logs
 vm.fail=False;vm.execute(NAV,'stabilityRegisterHomeReceiver()V',[service]);assert len(vm.registrations)==2 and service.f[NAV+'->Μ:'+WA] is vm.registrations[1];cases.append('registration_failure_does_not_commit_and_reconnect_retries')
 b=vm.life.body(NAV,'onServiceConnected()V');at=b.index('    iget-boolean v0, p0, '+NAV+'->ˋ:Z');end=b.index('    invoke-super {p0}',at)
 for dead in [0,1]:
  service.f[NAV+'->ˋ:Z']=dead;result=vm.execute(NAV,'onServiceConnected()V',[service],body=b[at:end]+'    const/4 v0, 0x1\n    return v0\n');assert result==(None if dead else 1)
 cases.append('destroyed_service_does_not_reenter_connection')
 return dict(cases=cases,inherited=inherited(tree),limits='Actual registration/receiver/callback guard paths, repeated broadcasts and failure retry; Android framework doubled. Exception handler invoked separately after verifying catch range. Not real broadcast delivery, ART or vehicle.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();r=json.loads((OUT/'base10_r19_home_manifest.json').read_text(encoding='utf-8'))
 for rel in {x['path'] for x in r['edits']}:
  s=(DST/rel).read_text(encoding='utf-8')
  for x in reversed(r['appends']):
   if x['path']==rel:assert s.endswith(x['text']);s=s[:-len(x['text'])]
  for x in reversed(r['edits']):
   if x['path']==rel:assert s.count(x['after'])==1;s=s.replace(x['after'],x['before'])
  assert s==(SRC/rel).read_text(encoding='utf-8')
 rows=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r19'
  for rel in json.loads((OUT/'base10_r19_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel)
  rows.append(check(final))
 (OUT/('base10_r19_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(rows[0]['cases']),'HOME receiver groups plus316 inherited')
if __name__=='__main__':main()
