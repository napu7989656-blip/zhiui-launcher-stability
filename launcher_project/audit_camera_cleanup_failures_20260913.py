from pathlib import Path
import json,hashlib
from test_base10_media_lifetime_20260913 import LifetimeVM,Fault,Obj
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_camera_preferences_r25';Q='Lo/qi;'
class VM(LifetimeVM):
 def __init__(self,tree):super().__init__(tree);self.operations=[];self.inject=None
 def lifecycle(self,target,args):
  operations={'Landroid/view/Surface;->release()V':'surface','Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V':'texture_listener','Landroid/graphics/SurfaceTexture;->release()V':'texture',Q+'->ͺ()V':'egl','Landroid/graphics/Bitmap;->recycle()V':'bitmap'}
  if target in operations:
   key=operations[target];self.operations.append(key)
   if self.inject==key:raise Fault(key)
   if key=='bitmap':args[0].f['recycled']=True
   return
  if target=='Landroid/graphics/Bitmap;->isRecycled()Z':return args[0].f.get('recycled',False)
  if target.startswith(('Lo/v1;','Lo/q3;')):self.logs.append(args);return
  if target=='Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V':return
  raise AssertionError('No camera/vendor/native operation allowed: '+target)
rows=[]
for fault in [None,'surface','texture_listener','texture','egl']:
 vm=VM(TREE);owner=Obj(Q);owner.f.update({Q+'->Ί:Landroid/view/Surface;':Obj('surface'),Q+'->Ή:Landroid/graphics/SurfaceTexture;':Obj('texture'),Q+'->Έ:Ljava/lang/Object;':Obj('lock'),Q+'->Ζ:Landroid/graphics/Bitmap;':Obj('bitmap'),Q+'->Η:Landroid/graphics/Bitmap;':Obj('published'),Q+'->Δ:[I':[0]})
 body=vm.life.body('Lo/ki;','run()V');at=body.index('    :try_start_b\n');end=body.index('    :pswitch_3\n',at);fragment=body[at:end]
 vm.inject=fault;vm.execute('Lo/ki;','run()V',[Obj('ki')],body=fragment,initial={'v0':Obj('camera_wrapper'),'v2':owner,'v3':0})
 retained=[k for k,v in owner.f.items() if v and k!=Q+'->Έ:Ljava/lang/Object;']
 if fault is None:assert not retained and vm.operations==['surface','texture_listener','texture','egl','bitmap']
 else:assert owner.f[Q+'->Ζ:Landroid/graphics/Bitmap;'] and 'bitmap' not in vm.operations and vm.logs
 rows.append(dict(injected=fault,operations=vm.operations,retained_fields=retained))
p=TREE/'smali/o/ki.smali'
(OUT/'camera_cleanup_failure_r25_audit.json').write_text(json.dumps(dict(parent='R25 candidate; ki unchanged from R24',sha256=hashlib.sha256(p.read_bytes()).hexdigest(),cases=rows,scope='Actual close tail and typed Exception dispatch; Surface/Texture/EGL/Bitmap failures substituted. Camera reflection prefix and actual native resources never executed.',status='FOUR_DOWNSTREAM_CLEANUP_GAPS_REPRODUCED; NOT_FIXED'),ensure_ascii=False,indent=2),encoding='utf-8')
print('Camera close tail: normal path plus4 failure injections; release failure skips later resources, no hardware calls.')
