"""Execute Android-host smali and verify exact integration into existing methods."""
import argparse,json,re
from stability_base10_blur_pipeline_patch_20260910 import OUT,SRC,DST,P,M
from test_base10_nav_smali_20260908 import NavVM,Obj
from test_base10_bitmap_alias_20260910 import check as inherited
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm
H='Lcom/byd/launcher/stability/MainBlurHost;';N='Lcom/byd/launcher/NavBarService;'
class BridgeVM(NavVM):
 def __init__(self,tree):
  super().__init__(tree);self.extra_call=self.extra;self.activity=Obj(M);self.current=Obj(N);self.events=[];self.applied=[]
  self.activity.f[M+'->ˋ:Landroid/os/Handler;']=Obj('Landroid/os/Handler;');self.owner=self.activity;self.valid=True
 def extra(self,target,a):
  self.events.append((target,a))
  if target==M+'->ͺ()'+M:return self.activity
  if target=='Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V':return self.execute(target.split('->')[0],target.split('->')[1],a)
  if target.startswith(P+'->'):
   if target.endswith('current()Z') or target.endswith('Current()Z'):return int(self.valid)
   return 1
  if target=='Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z':self.posts.append(a);return int(self.accept)
  if target in ['Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V','Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z']:return 1
  if target=='Landroid/view/View;->post(Ljava/lang/Runnable;)Z':self.posts.append(a);return int(self.accept)
  if target=='Landroid/graphics/Bitmap;->isRecycled()Z':return a[0].f.get('recycled',0)
  if target=='Landroid/graphics/Bitmap;->recycle()V':assert not a[0].f.get('recycled');a[0].f['recycled']=1;return
  if target=='Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I':return 0
  raise AssertionError(target)
 def run_callback(self,task):self.applied.append(task)
 def host(self):
  h=Obj(H);self.execute(H,'<init>('+M+')V',[h,self.owner]);return h
def body(tree,cls,sig):return NavVM(tree).life.body(cls,sig)
def check(tree):
 cases=[]
 for state in ['active','destroyed','replacement','no_activity','dead_service','no_service']:
  vm=BridgeVM(tree);h=vm.host()
  if state=='destroyed':vm.owner.f[M+'->ͺ:Z']=1
  if state=='replacement':vm.activity=Obj(M)
  if state=='no_activity':vm.activity=0
  if state=='dead_service':vm.current.f[N+'->ˋ:Z']=1
  if state=='no_service':vm.current=0
  assert vm.execute(H,'current()Z',[h])==int(state in ('active','no_service'));cases.append(state)
 for kind in ['Landroid/os/Handler;','Landroid/view/View;','unrelated']:
  vm=BridgeVM(tree);h=vm.host();queue=Obj(kind);task=Obj('task')
  assert vm.execute(H,'postChild(Ljava/lang/Object;Ljava/lang/Runnable;)Z',[h,queue,task])==int(kind!='unrelated')
  vm.execute(H,'removeChild(Ljava/lang/Object;Ljava/lang/Runnable;)V',[h,queue,task]);cases.append('child_queue_'+kind)
 vm=BridgeVM(tree);h=vm.host();task=Obj('task');vm.execute(H,'post(Ljava/lang/Runnable;J)Z',[h,task,500,0]);assert vm.posts[-1][1:] == [task,500,0]
 vm.execute(H,'remove(Ljava/lang/Runnable;)V',[h,task]);cases.append('owner_handler_delay_and_remove')
 src=Obj('bitmap');blur=Obj('bitmap');vm.execute(H,'commit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V',[h,src,blur,task]);assert vm.owner.f[M+'->Κ:Landroid/graphics/Bitmap;'] is src and vm.static_fields['Lo/ak;->ͺ:Landroid/graphics/Bitmap;'] is blur and vm.applied==[task];cases.append('main_commit_then_original_apply')
 assert [vm.execute(H,'retry()Z',[h]) for _ in range(7)]==[1]*5+[0]*2;assert vm.owner.f[M+'->Ι:I']==5;cases.append('retry_cap_five')
 for image in [0,Obj('bitmap'),Obj('bitmap',recycled=1)]:vm.execute(H,'release(Ljava/lang/Object;)V',[h,image]);vm.execute(H,'release(Ljava/lang/Object;)V',[h,image])
 cases.append('release_null_live_recycled')
 vm.execute(H,'failed(Ljava/lang/RuntimeException;)V',[h,Obj('error')]);cases.append('failure_log')
 for sig in ['ͷ()V','Ί()V']:
  vm=BridgeVM(tree);vm.valid=False;vm.owner.f[M+'->stabilityBlur:'+P]=Obj(P)
  vm.execute(M,sig,[vm.owner]);assert len(vm.events)==1 and not vm.posts;cases.append('inactive_entry_'+sig)
 h2=body(tree,'Lo/h2;','run()V');at=h2.index('    :pswitch_7\n');end=h2.index('    :pswitch_8\n',at);part=h2[at:end]
 vm=BridgeVM(tree);vm.valid=False;vm.execute('Lo/h2;','run()V',[],body=part);assert len(vm.events)==1;cases.append('stale_worker_exits_before_bitmap')
 a8=body(tree,'Lo/a8;','run()V');vm=BridgeVM(tree);vm.valid=False;vm.execute('Lo/a8;','run()V',[]);assert len(vm.events)==1;cases.append('stale_delivery_exits_before_fields')
 assert '->Κ:Landroid/graphics/Bitmap;' in part and 'iput-object v11, v8' not in part
 assert 'sput-object v2, Lo/ak;->ͺ' not in part and 'Landroid/os/Handler;->post' not in part
 for fn,n in [('source',1),('unused',1),('retain',3),('blurred',1),('publish',1),('retry',1)]:assert part.count(P+'->'+fn+'(')==n
 assert part.index(P+'->source(')<part.index(P+'->unused(')<part.index(P+'->publish(')
 assert part.count('Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)')==3 and part.count('Lo/a2;->Β(Landroid/graphics/Bitmap;I)')==1
 assert '->Ι:I' not in part;cases.append('worker_stages_original_algorithm_and_retry')
 # JADX currently renders retry as fall-through after publish. Execute the
 # final smali jump to prove a successful publication exits without retry.
 vm=BridgeVM(tree);start_publish=part.index('    invoke-static {v2}, '+P+'->publish(')
 vm.execute('Lo/h2;','run()V',[],body=part[start_publish:],initial={'v2':Obj('apply')})
 assert len(vm.events)==1 and P+'->publish(' in vm.events[0][0];cases.append('successful_publish_never_falls_into_retry')
 for slot,reg in [(0,'v7'),(1,'v5'),(2,'v3')]:assert 'const/4 '+reg+', '+hex(slot) in a8
 assert a8.count(P+'->postChild(')==3 and '->post(Ljava/lang/Runnable;)' not in a8;cases.append('three_original_child_posts_owned')
 start=body(tree,M,'Ί()V');schedule=body(tree,M,'ͷ()V');destroy=body(tree,M,'onDestroy()V')
 assert 'Ljava/lang/Thread;' not in start and P+'->execute(' in start
 assert P+'->schedule(' in schedule and '->post(Ljava/lang/Runnable;)' not in schedule
 assert destroy.index(P+'->close()')<destroy.index('removeCallbacksAndMessages');cases.append('entry_schedule_pool_and_destroy')
 return dict(cases=cases,inherited=inherited(tree),limits='Actual host/early guards execute; original math preserved by inverse patch, allocation/routing sites inspected. JVM production pipeline exercises queue/ownership; Android/Bitmap/Handler remain doubles, not ART.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/'base10_r15_blur_pipeline_manifest.json').read_text(encoding='utf-8'))
 # The classes supplied to D8 are byte-identical to those executed in the JVM suite.
 prod=OUT/'modules/blur_pipeline_prod_r1'
 for cls in (prod/'classes/com/byd/launcher/stability').glob('*.class'):
  tested=OUT/'modules/blur_pipeline_r1/com/byd/launcher/stability'/cls.name
  assert tested.read_bytes()==cls.read_bytes(),cls.name
 for smali in (prod/'decoded/smali/com/byd/launcher/stability').glob('*.smali'):
  assert norm(smali)==norm(DST/'smali/com/byd/launcher/stability'/smali.name)
 for rel in {r['path'] for r in records}:
  text=(DST/rel).read_text(encoding='utf-8')
  for r in reversed(records):
   if r['path']==rel:assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
  assert text==(SRC/rel).read_text(encoding='utf-8'),rel
 results=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r15'
  for rel in json.loads((OUT/'base10_r15_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
  results.append(check(final))
 (OUT/('base10_r15_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=results,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(results[0]['cases']),'blur bridge/wiring cases plus 238 inherited per artifact.')
if __name__=='__main__':main()
