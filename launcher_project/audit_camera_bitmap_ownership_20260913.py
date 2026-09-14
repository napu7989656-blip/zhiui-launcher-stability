from pathlib import Path
import json,hashlib
from test_base10_media_lifetime_20260913 import LifetimeVM,Obj
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_camera_preferences_r25';Q='Lo/qi;'
class VM(LifetimeVM):
 def __init__(self):super().__init__(TREE);self.operations=[];self.interleave=False;self.owner=None
 def lifecycle(self,target,args):
  if target=='Landroid/graphics/Bitmap;->isRecycled()Z':
   value=args[0].f.get('recycled',False)
   if self.interleave:
    self.interleave=False;self.operations.append('after_ui_isRecycled_false');self.close()
   return value
  if target=='Landroid/graphics/Bitmap;->recycle()V':args[0].f['recycled']=True;self.operations.append('recycle');return
  if target=='Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V':args[0].f['displayed']=args[1];self.operations.append('setImageBitmap_recycled='+str(args[1].f.get('recycled',False)));return
  if target.startswith(('Lo/v1;','Lo/q3;')):return
  if target=='Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V':return
  if target==Q+'->ͺ()V':self.operations.append('egl_cleanup_substitute');return
  raise AssertionError('Native/camera calls prohibited: '+target)
 def close(self):
  b=self.life.body('Lo/ki;','run()V');a=b.index('    :try_start_b\n');end=b.index('    :pswitch_3\n',a)
  self.execute('Lo/ki;','run()V',[],body=b[a:end],initial={'v0':Obj('wrapper'),'v2':self.owner,'v3':0})
 def display(self):
  b=self.life.body('Lo/ki;','run()V');a=b.index('    :pswitch_4\n');end=b.index('    return-void',a)+len('    return-void')
  self.execute('Lo/ki;','run()V',[],body=b[a:end],initial={'v1':Obj('Lo/ki;',**{'Lo/ki;->ͱ:Lo/qi;':self.owner}),'v5':0})
rows=[]
for mode in ['display_then_close','close_between_check_and_display']:
 vm=VM();bitmap=Obj('bitmap');view=Obj('view');owner=Obj(Q);vm.owner=owner
 owner.f.update({Q+'->Ζ:Landroid/graphics/Bitmap;':bitmap,Q+'->Η:Landroid/graphics/Bitmap;':bitmap,Q+'->Έ:Ljava/lang/Object;':Obj('lock'),Q+'->ͺ:Landroid/widget/ImageView;':view,Q+'->Ͷ:Z':True,Q+'->Ύ:Z':False})
 if mode=='display_then_close':vm.display();vm.close()
 else:vm.interleave=True;vm.display()
 assert view.f['displayed'] is bitmap and bitmap.f['recycled']
 assert not owner.f[Q+'->Ζ:Landroid/graphics/Bitmap;'] and not owner.f[Q+'->Η:Landroid/graphics/Bitmap;']
 rows.append(dict(mode=mode,operations=vm.operations,view_retains_recycled_bitmap=True,owner_bitmap_fields_cleared=True))
qi=(TREE/'smali/o/qi.smali').read_text(encoding='utf-8');assert 'iget-object v0, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;\n\n    iput-object v0, v1, Lo/qi;->Η:Landroid/graphics/Bitmap;' in qi
(OUT/'camera_bitmap_ownership_r25_audit.json').write_text(json.dumps(dict(status='TWO_CONDITIONAL_OWNERSHIP_GAPS_REPRODUCED_NOT_FIXED',cases=rows,source_hashes={n:hashlib.sha256((TREE/'smali/o'/n).read_bytes()).hexdigest() for n in ['ki.smali','qi.smali']},scope='Actual UI selector and close-tail instructions. Injected sequential/interleaved schedule with visible view and shared published bitmap; no actual threads, Android renderer, native camera or vehicle calls. Does not prove OEM scheduling frequency or every close caller. Validates consequence if an old close overlaps visible/new frame; reconnect/open-close reachability still under audit.'),ensure_ascii=False,indent=2),encoding='utf-8')
print('Two actual-smali conditional ownership gaps: ImageView retains recycled bitmap; close can invalidate bitmap after UI check. No native calls.')
