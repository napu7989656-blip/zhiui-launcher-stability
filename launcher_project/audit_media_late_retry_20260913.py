from test_base10_media_lifetime_20260913 import LifetimeVM,Obj,A,N
from stability_base10_media_lifetime_patch_20260913 import DST,OUT
import json
class VM(LifetimeVM):
 def lifecycle(self,target,args):
  if target==A+'->ͺ()V':return self.execute(A,'ͺ()V',args)
  if 'getTransportControls' in target or any(x in target for x in ['->play()','->skipTo']):raise AssertionError('No playback calls permitted in this disposed-owner reproduction')
  return super().lifecycle(target,args)
rows=[]
for cls in ['Lo/z8;','Lo/u8;']:
 vm=VM(DST);m=vm.setup_life();task=Obj(cls)
 task.f[cls+'->ͱ:'+A]=m
 if cls=='Lo/u8;':task.f[cls+'->Ͱ:I']=2;m.f[A+'->Β:Lo/u8;']=task
 else:task.f[cls+'->Ͱ:Ljava/lang/Runnable;']=Obj('unused')
 vm.execute(A,'stabilityDispose()V',[m]);vm.ops.clear();vm.posts.clear()
 vm.execute(cls,'run()V',[task]);assert len(vm.posts)==1 and not vm.ops
 rows.append(dict(cls=cls,disposed_owner=True,posted_after_dispose=len(vm.posts),media_control_calls=0))
(OUT/'media_late_retry_r23_audit.json').write_text(json.dumps(dict(parent='R23 candidate',findings=rows,status='REPRODUCED_IN_LOCAL_SMALI_WITH_HANDLER_DOUBLES; needs next scoped guard patch',no_device_or_playback_calls=True),indent=2),encoding='utf-8')
print('Reproduced: z8 and u8 selector2 requeue after disposal if a callback has escaped removal; zero media control calls.')
