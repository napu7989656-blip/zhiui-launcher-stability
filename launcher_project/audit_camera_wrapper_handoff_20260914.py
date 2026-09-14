from pathlib import Path
import json
from test_base10_camera_bitmap_20260913 import VM,Obj,Q
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_camera_bitmap_r26b';N='Lcom/byd/launcher/NavBarService;'
class HandoffVM(VM):
 def __init__(self):super().__init__(TREE);self.threads=[]
 def lifecycle(self,target,args):
  if target=='Lo/ki;-><init>(Lo/qi;I)V':args[0].f.update({'Lo/ki;->ͱ:Lo/qi;':args[1],'Lo/ki;->Ͱ:I':args[2]});return
  if target=='Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V':args[0].f['task']=args[1];return
  if target=='Ljava/lang/Thread;->start()V':self.threads.append(args[0].f['task']);return
  if target=='Ljava/lang/Object;->getClass()Ljava/lang/Class;':assert args[0];return Obj('Class')
  return super().lifecycle(target,args)
vm=HandoffVM();owner=Obj(Q);wrapper=Obj('wrapper',native_open=True);owner.f.update({Q+'->Ͳ:Lo/ˏ;':wrapper,Q+'->Έ:Ljava/lang/Object;':Obj('lock')});vm.owner=owner
vm.execute(Q,'ˋ()V',[owner]);assert len(vm.threads)==1
b=vm.life.body(N,'onDestroy()V');a=b.index('    iget-object v1, v0, Lo/qi;->Ͳ:Lo/ˏ;');end=b.index('    iput-object v2, p0, '+N+'->Ό:Lo/qi;',a)
vm.execute(N,'onDestroy()V',[],body=b[a:end],initial={'v0':owner,'v2':0});assert not owner.f[Q+'->Ͳ:Lo/ˏ;']
vm.execute('Lo/ki;','run()V',[vm.threads[0]])
assert wrapper.f['native_open'] and vm.operations==['egl_cleanup_substitute']
(OUT/'camera_wrapper_handoff_r26b_audit.json').write_text(json.dumps(dict(status='LATE_CLOSE_SEES_NULL_WRAPPER_REPRODUCED_NOT_FIXED',actual_close_tasks=len(vm.threads),wrapper_cleared_before_task=True,old_wrapper_still_open_in_substitute=True,task_operations=vm.operations,scope='Actual qi close scheduling, actual service wrapper clear fragment, full ki selector2 with null wrapper. Native Thread/camera/EGL effects substituted. Legal sequential delayed-worker schedule, not measured OEM scheduling. No camera/vehicle instruction executed.'),ensure_ascii=False,indent=2),encoding='utf-8')
print('Reproduced delayed close losing wrapper after actual destroy field clear; full close selector skipped wrapper operations, no hardware calls.')
