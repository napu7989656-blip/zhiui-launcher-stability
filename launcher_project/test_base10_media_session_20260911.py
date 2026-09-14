import argparse,json,re
from stability_base10_media_session_patch_20260911 import OUT,SRC,DST,A,Y,NAV
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj
from test_base10_home_receiver_20260911 import check as inherited
from stability_verify_patch_20260906 import norm
class UnregisterFailure(Exception):pass
class SessionVM(NavVM):
 def __init__(self,tree):super().__init__(tree);self.extra_call=self.extra;self.events=[];self.fail=False
 def extra(self,target,args):
  cls,sig=target.split('->')
  if cls==Y or (cls==A and sig in ['stabilityCurrent()Z','ˏ()V']):return self.execute(cls,sig,args)
  if target=='Landroid/media/session/MediaController$Callback;-><init>()V':return
  if '->unregisterCallback(' in target:
   assert not self.manager.f.get(A+'->ͳ:Landroid/media/session/MediaController;') and not self.manager.f.get(A+'->ͼ:'+Y)
   self.events.append(('unregister',args[0],args[1]))
   if self.fail:raise UnregisterFailure()
   return
  if '->registerCallback(' in target:
   self.events.append(('register',args[0],args[1]))
   if self.fail:raise UnregisterFailure()
   return
  if cls==A and sig in ['Ͱ(Landroid/media/MediaMetadata;)V','ͺ()V']:self.events.append((sig,*args));return
  if cls=='Lo/ia;':self.events.append((sig,*args));return
  if target=='Lo/td;-><init>(ILjava/lang/Object;)V':args[0].f.update(selector=args[1],owner=args[2]);return
  if target=='Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z':self.posts.append(args[1]);return True
  raise AssertionError(target)
 def setup_media(self):
  self.current=Obj(NAV);self.manager=Obj(A);m=self.manager;m.f.update({A+'->ˋ:Landroid/content/Context;':self.current,A+'->ʹ:Lo/ia;':Obj('Lo/ia;'),A+'->ˏ:Landroid/os/Handler;':Obj('handler'),A+'->ͳ:Landroid/media/session/MediaController;':Obj('controller')});self.current.f[NAV+'->ͼ:'+A]=m
  y=Obj(Y);self.execute(Y,'<init>('+A+')V',[y,m]);m.f[A+'->ͼ:'+Y]=y;return m,y

def check(tree):
 cases=[]
 for state in ['current','manager_dead','service_dead','service_replaced','manager_replaced','callback_replaced','detached','missing_owner','wrong_context']:
  vm=SessionVM(tree);m,y=vm.setup_media()
  if state=='manager_dead':m.f[A+'->ͺ:Z']=1
  if state=='service_dead':vm.current.f[NAV+'->ˋ:Z']=1
  if state=='service_replaced':vm.current=Obj(NAV)
  if state=='manager_replaced':vm.current.f[NAV+'->ͼ:'+A]=Obj(A)
  if state=='callback_replaced':m.f[A+'->ͼ:'+Y]=Obj(Y)
  if state=='detached':m.f[A+'->ͳ:Landroid/media/session/MediaController;']=0
  if state=='missing_owner':y.f[Y+'->Ͱ:'+A]=0
  if state=='wrong_context':m.f[A+'->ˋ:Landroid/content/Context;']=Obj('context')
  assert vm.execute(Y,'stabilityCurrent()Z',[y])==int(state=='current')
  vm.execute(Y,'onMetadataChanged(Landroid/media/MediaMetadata;)V',[y,Obj('metadata')]);assert len(vm.events)==int(state=='current')
  for sig in ['onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V','onSessionDestroyed()V']:
   b=vm.life.body(Y,sig);label=re.search(r'if-nez v0, (:\w+)',b)[1];end=b.index('    '+label+'\n')+len('    '+label)
   result=vm.execute(Y,sig,[y,Obj('state')],body=b[:end]+'\n    const/4 v0, 0x1\n    return v0\n');assert result==(1 if state=='current' else None)
  cases.append(state+'_callback_admission')
 vm=SessionVM(tree);m,y=vm.setup_media();vm.execute(Y,'onSessionDestroyed()V',[y]);assert len(vm.posts)==1 and len(vm.events)==2
 assert vm.execute(Y,'stabilityCurrent()Z',[y])==0 and vm.execute(Y,'stabilityRecoveryCurrent()Z',[y])==1
 before=list(vm.events);vm.execute(Y,'onSessionDestroyed()V',[y]);assert vm.events==before and len(vm.posts)==1
 b=vm.life.body('Lo/td;','run()V');at=b.index('    check-cast v0, Lo/y8;');end=b.index('    return-void',b.index('->ͺ()V',at))+len('    return-void')
 fragment=b[at:end]
 vm.execute('Lo/td;','run()V',[Obj('td')],body=fragment,initial={'v0':y});assert vm.events[-1][0]=='ͺ()V'
 vm.execute(A,'ˏ()V',[m]);before=list(vm.events);vm.execute('Lo/td;','run()V',[Obj('td')],body=fragment,initial={'v0':y});assert vm.events==before
 cases.append('destroy_event_detaches_once_and_recovery_expires_on_next_detach')
 for state in ['new_controller','new_manager','new_service','manager_dead']:
  vm=SessionVM(tree);m,y=vm.setup_media();vm.execute(Y,'onSessionDestroyed()V',[y])
  if state=='new_controller':m.f[A+'->ͳ:Landroid/media/session/MediaController;']=Obj('controller')
  if state=='new_manager':vm.current.f[NAV+'->ͼ:'+A]=Obj(A)
  if state=='new_service':vm.current=Obj(NAV)
  if state=='manager_dead':m.f[A+'->ͺ:Z']=1
  before=list(vm.events);vm.execute('Lo/td;','run()V',[Obj('td')],body=fragment,initial={'v0':y});assert vm.events==before
  cases.append(state+'_blocks_delayed_recovery')
 vm=SessionVM(tree);m,y=vm.setup_media();vm.fail=True
 try:vm.execute(A,'ˏ()V',[m]);raise AssertionError('failure not injected')
 except UnregisterFailure:pass
 assert vm.execute(Y,'stabilityCurrent()Z',[y])==0 and m.f[A+'->stabilitySessionToken:Ljava/lang/Object;']
 b=vm.life.body(A,'ˏ()V');catch=re.search(r'\.catch Ljava/lang/Exception; \{(:\w+) \.\. (:\w+)\} (:\w+)',b);pos=b.index('->unregisterCallback(');assert b.index('    '+catch[1]+'\n')<pos<b.index('    '+catch[2]+'\n');vm.execute(A,'ˏ()V',[m],body=b[b.index('    '+catch[3]+'\n'):]);cases.append('unregister_failure_already_invalidated_handler_range_verified')
 vm=SessionVM(tree);m,old=vm.setup_media();vm.execute(A,'ˏ()V',[m]);newctrl=Obj('controller');m.f[A+'->ͳ:Landroid/media/session/MediaController;']=newctrl
 b=vm.life.body(A,'Ͷ(Ljava/util/List;)V');at=b.index('    new-instance v0, Lo/y8;');label=re.search(r'iput-wide v5, p0, Lo/a9;->Ό:J\s+goto(?:/16|/32)? (:\w+)',b)[1];end=b.index('    '+label+'\n')+len('    '+label);vm.execute(A,'Ͷ(Ljava/util/List;)V',[m,Obj('handler')],body=b[at:end],initial={'v3':newctrl});new=m.f[A+'->ͼ:'+Y];assert new is not old and vm.execute(Y,'stabilityCurrent()Z',[new])==1 and vm.execute(Y,'stabilityCurrent()Z',[old])==0
 assert m.f[A+'->Ή:Ljava/lang/String;']=='' and m.f[A+'->Ί:Ljava/lang/String;']=='' and m.f[A+'->Ό:J']==0
 cases.append('attach_allocates_distinct_callback_and_resets_same_title_filter')
 vm=SessionVM(tree);m,y=vm.setup_media();vm.fail=True
 b=vm.life.body(A,'Ͷ(Ljava/util/List;)V');at=b.index('    new-instance v0, Lo/y8;');label=re.search(r'iput-wide v5, p0, Lo/a9;->Ό:J\s+goto(?:/16|/32)? (:\w+)',b)[1];end=b.index('    '+label+'\n')+len('    '+label)
 try:vm.execute(A,'Ͷ(Ljava/util/List;)V',[m,Obj('handler')],body=b[at:end],initial={'v3':m.f[A+'->ͳ:Landroid/media/session/MediaController;']});raise AssertionError('register failure not injected')
 except UnregisterFailure:pass
 new=m.f[A+'->ͼ:'+Y];catch=next(c for c in re.finditer(r'\.catch Ljava/lang/Exception; \{(:\w+) \.\. (:\w+)\} (:\w+)',b) if b.index('    '+c[1]+'\n')<b.index('->registerCallback(')<b.index('    '+c[2]+'\n'))
 pos=b.index('->registerCallback(');assert b.index('    '+catch[1]+'\n')<pos<b.index('    '+catch[2]+'\n')
 vm.fail=False;at=b.index('    '+catch[3]+'\n');end=b.index('    return-void',at)+len('    return-void')
 vm.execute(A,'Ͷ(Ljava/util/List;)V',[m],body=b[at:end]);assert vm.execute(Y,'stabilityCurrent()Z',[new])==0 and not m.f[A+'->ͳ:Landroid/media/session/MediaController;']
 cases.append('registration_failure_detaches_new_callback_and_allows_retry')
 return dict(cases=cases,inherited=inherited(tree),limits='Actual smali guards, detach and selected attach/recovery paths. Android and callback effects doubled; catch handler executed separately after range proof. No ART/device guarantee; artwork scheduling unchanged.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();rows=json.loads((OUT/'base10_r20_session_manifest.json').read_text(encoding='utf-8'))
 for rel in {r['path'] for r in rows}:
  s=(DST/rel).read_text(encoding='utf-8')
  for r in reversed(rows):
   if r['path']==rel:assert s.count(r['after'])==1;s=s.replace(r['after'],r['before'])
  assert s==(SRC/rel).read_text(encoding='utf-8')
 results=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r20'
  for rel in {r['path'] for r in rows}:assert norm(DST/rel)==norm(final/rel)
  results.append(check(final))
 (OUT/('base10_r20_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=results,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(results[0]['cases']),'session groups +326 inherited')
if __name__=='__main__':main()

