from pathlib import Path
import json,hashlib
from test_base10_media_lifetime_20260913 import LifetimeVM,Obj,N
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_media_retry_r24';Q='Lo/qi;'
class CameraVM(LifetimeVM):
 def __init__(self,tree):super().__init__(tree);self.allocations=[];self.threads=[]
 def lifecycle(self,target,args):
  if target==Q+'-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V':
   args[0].f[Q+'->ˋ:Landroid/content/Context;']=args[1];self.allocations.append(args[0]);return
  if target=='Lo/ki;-><init>(Lo/qi;I)V':args[0].f.update(owner=args[1],selector=args[2]);return
  if target=='Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V':args[0].f.update(task=args[1],name=args[2]);return
  if target=='Ljava/lang/Thread;->start()V':self.threads.append(args[0]);return
  raise AssertionError('Camera/native/framework calls prohibited in audit: '+target)
vm=CameraVM(TREE);service=Obj(N);service.f[N+'->ˏ:Landroid/view/WindowManager;']=Obj('windowmanager');old=Obj(Q);view=Obj('live_view');old.f[Q+'->ͺ:Landroid/widget/ImageView;']=view;old.f[Q+'->ˋ:Landroid/content/Context;']=service;service.f[N+'->Ό:'+Q]=old
body=vm.life.body(N,'onServiceConnected()V');first=body.index('    new-instance v3, '+Q);last='    iput-object v3, p0, '+N+'->Ό:'+Q;end=body.index(last,first)+len(last)
vm.execute(N,'onServiceConnected()V',[service],body=body[first:end]);assert service.f[N+'->Ό:'+Q] is not old and old.f[Q+'->ͺ:Landroid/widget/ImageView;'] is view
refs=[line.strip() for line in body.splitlines() if Q in line];assert len(refs)==3 and all('iget-object' not in line for line in refs)
vm.execute(Q,'ˋ()V',[old]);vm.execute(Q,'ˋ()V',[old]);assert len(vm.threads)==2 and all(t.f['task'].f['owner'] is old for t in vm.threads)
files=['smali/o/qi.smali','smali/o/ki.smali','smali/com/byd/launcher/NavBarService.smali'];sha={rel:hashlib.sha256((TREE/rel).read_bytes()).hexdigest() for rel in files}
(OUT/'camera_reconnect_r24_audit.json').write_text(json.dumps(dict(parent='R24 candidate',file_hashes=sha,reconnect_qi_references=refs,replaced_owner_view_reference_retained=True,two_close_calls_create_two_threads=True,scope='Only actual reconnect assignment and close scheduling smali executed with allocation/Thread substitutes; no camera/native/vehicle/framework operation executed',constructor_preferences=['turn_signal_camera_enabled','turn_signal_overlay_w','turn_signal_overlay_h','turn_signal_overlay_x','turn_signal_overlay_y'],next=['review all qi/ki/lb/ag callbacks and EGL/frame ownership','choose bounded cleanup/refresh strategy before modifying','typed preferences and geometry bounds','avoid executing or extending vendor postEvent/setPanoOutputState'],status='SCOPED_REPRODUCTION_AND_STATIC_AUDIT; NOT_FIXED'),ensure_ascii=False,indent=2),encoding='utf-8')
print('Camera audit: replacement abandons live old reference; two closes create two tasks; no camera/native/vehicle calls.')
