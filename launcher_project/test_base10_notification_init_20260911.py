import argparse,json,re
from unittest.mock import patch
from stability_base10_notification_init_patch_20260911 import OUT,SRC,DST,P
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj,NAV
from test_base10_init_owner_20260910 import check as inherited
from stability_verify_patch_20260906 import norm
HOST=P+'NotificationInitHost;';CALL=P+'NotificationInitCallback;';LIST=P+'ListenerList;';RESULT=P+'InitProcess$Result;'
class BridgeVM(NavVM):
 def __init__(self,tree):super().__init__(tree);self.extra_call=self.extra;self.calls=[];self.value=None;self.success=0;self.delivered=0
 def extra(self,target,args):
  cls,sig=target.split('->')
  if cls in (HOST,CALL):return self.execute(cls,sig,args)
  if target==NAV+'->getContentResolver()Landroid/content/ContentResolver;' or target=='Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;':return Obj('resolver')
  if target.startswith('Landroid/provider/Settings$Secure;->getString('):return self.value
  if target==LIST+'->parse(Ljava/lang/String;Z)'+LIST:return (args[0],args[1])
  if target==RESULT+'->successful()Z':return self.success
  if target=='Ljava/lang/Runnable;->run()V':self.delivered+=1;return
  if target=='Ljava/lang/String;->startsWith(Ljava/lang/String;)Z':return int(args[0].startswith(args[1]))
  if target=='Ljava/lang/String;->equals(Ljava/lang/Object;)Z':return int(args[0]==args[1])
  if target.startswith('Lo/c0;->execAdbCmd(') or target.startswith(P+'InitProcess;->run('):self.calls.append((target,args));return 0
  raise AssertionError(target)
def check(tree):
 cases=[]
 for state in ['current','dead','replaced','null_owner','no_current']:
  vm=BridgeVM(tree);service=Obj(NAV);host=Obj(HOST);host.f[HOST+'->owner:'+NAV]=service;vm.current=service
  if state=='dead':service.f[NAV+'->ˋ:Z']=1
  if state=='replaced':vm.current=Obj(NAV)
  if state=='no_current':vm.current=0
  if state=='null_owner':host.f[HOST+'->owner:'+NAV]=0
  assert vm.execute(HOST,'current()Z',[host])==int(state=='current')
  task=Obj(CALL);vm.execute(CALL,'<init>('+HOST+'Ljava/lang/Runnable;)V',[task,host,Obj('delegate')])
  with patch('test_base10_nav_smali_20260908.apply_view_callback',lambda tree,task:setattr(vm,'delivered',vm.delivered+1)):
   vm.execute(CALL,'run()V',[task])
  assert vm.delivered==int(state=='current')
  if state!='current':assert vm.execute(HOST,'read()'+LIST,[host])==(0,0)
  cases.append(state+'_host_and_callback')
 vm=BridgeVM(tree);service=Obj(NAV);vm.current=service;host=Obj(HOST);host.f[HOST+'->owner:'+NAV]=service
 for value in [None,'','com.other/.Listener']:
  vm.value=value;assert vm.execute(HOST,'read()'+LIST,[host])==(value,1);cases.append('settings_read_'+str(value))
 for command,timeout in [('cmd notification allow_listener x',3000),('settings put secure x',2000)]:
  vm.calls=[];vm.execute(HOST,'adb(Ljava/lang/String;)V',[host,command]);assert vm.calls[0][1]==[command,timeout];cases.append('adb_timeout_'+str(timeout))
 for command,timeout in [(['cmd','notification','allow_listener','x'],3000),(['settings','put','secure','x','value'],2000)]:
  vm.calls=[];vm.execute(HOST,'process([Ljava/lang/String;)V',[host,command]);assert vm.calls[0][1]==[command,timeout,8192,host];cases.append('process_timeout_'+str(timeout))
 b=vm.life.body(HOST,'read()'+LIST);at=b.index('    invoke-virtual {v0}, '+RESULT+'->successful()Z');end=b.index('    return-object v0',at)+len('    return-object v0')
 for good in [0,1]:
  result=Obj(RESULT);result.f[RESULT+'->output:Ljava/lang/String;']='';vm.success=good
  assert vm.execute(HOST,'read()'+LIST,[host],body=b[at:end],initial={'v0':result})==('',good);cases.append('fallback_exit_status_'+str(good))
 assert 'Landroid/provider/Settings$Secure;->getString(' in b and '.catch Ljava/lang/Exception;' in b
 nav=vm.life.body(NAV,'Κ()V')
 assert 'NotificationInit;->ensure(' in nav and '->readLine(' not in nav and 'Ljava/lang/Runtime;' not in nav
 assert nav.count('NotificationInitCallback;-><init>')==2
 assert all(x in nav for x in ['0xfa0','0x1f40','0x7d0','0xbb8','const/16 v7, 0xb','const/16 v4, 0xc'])
 return dict(cases=cases,inherited=inherited(tree),limits='Actual Host identity, callback, direct settings read, fallback result decision and timeout dispatch executed with explicit framework/module doubles. Full method, exception dispatch, Settings/ART and device behavior not executed. Production workflow/process/parser have separate JVM evidence.')
def main():
 a=argparse.ArgumentParser();a.add_argument('--final',action='store_true');args=a.parse_args()
 r=json.loads((OUT/'base10_r18_notification_manifest.json').read_text(encoding='utf-8'));s=(DST/r['path']).read_text(encoding='utf-8');assert s.count(r['after'])==1;assert s.replace(r['after'],r['before'])==(SRC/r['path']).read_text(encoding='utf-8')
 for rel in r['added']:assert not (SRC/rel).exists()
 rows=[check(DST)]
 if args.final:
  final=OUT/'final_redecode/base10_r18'
  for rel in [r['path']]+r['added']:assert norm(DST/rel)==norm(final/rel),rel
  rows.append(check(final))
 (OUT/('base10_r18_branch_tests'+('_final' if args.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(rows[0]['cases']),'bridge cases plus 302 inherited per artifact')
if __name__=='__main__':main()
