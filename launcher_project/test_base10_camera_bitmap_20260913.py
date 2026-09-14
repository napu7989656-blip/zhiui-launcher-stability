import argparse,json
from pathlib import Path
from stability_base10_camera_bitmap_patch_20260913 import ROOT,OUT,SRC,DST
from test_base10_media_lifetime_20260913 import LifetimeVM,Obj
from test_base10_camera_preferences_20260913 import check as inherited
from stability_verify_patch_20260906 import norm
Q='Lo/qi;'
# Reuse only the audited VM definition; do not run or overwrite historical evidence.
ns={};exec((ROOT/'audit_camera_bitmap_ownership_20260913.py').read_text(encoding='utf-8').split('rows=[]')[0],ns)
Base=ns['VM']
class VM(Base):
 def __init__(self,tree):
  LifetimeVM.__init__(self,tree);self.operations=[];self.interleave=False;self.owner=None;self.fail_allocate=False
  for config in ['ARGB_8888','RGB_565']:self.static_fields['Landroid/graphics/Bitmap$Config;->'+config+':Landroid/graphics/Bitmap$Config;']=config
 def lifecycle(self,target,args):
  if target=='Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;':
   if self.fail_allocate:raise MemoryError('allocation substitute')
   return Obj('bitmap',width=args[0],height=args[1],config=args[2])
  return super().lifecycle(target,args)
def check(tree):
 cases=[]
 for mode in ['display_then_close','close_between_check_and_display','repeated_close','already_recycled','null_bitmap']:
  vm=VM(tree);bitmap=Obj('bitmap',recycled=mode=='already_recycled') if mode!='null_bitmap' else 0;view=Obj('view');owner=Obj(Q);vm.owner=owner
  owner.f.update({Q+'->Ζ:Landroid/graphics/Bitmap;':bitmap,Q+'->Η:Landroid/graphics/Bitmap;':bitmap,Q+'->Έ:Ljava/lang/Object;':Obj('lock'),Q+'->ͺ:Landroid/widget/ImageView;':view,Q+'->Ͷ:Z':True,Q+'->Ύ:Z':False})
  if mode=='close_between_check_and_display':vm.interleave=True;vm.display()
  elif mode in ['already_recycled','null_bitmap']:vm.close()
  else:vm.display();vm.close()
  if mode=='repeated_close':vm.close()
  assert 'recycle' not in vm.operations
  assert not owner.f[Q+'->Ζ:Landroid/graphics/Bitmap;'] and not owner.f[Q+'->Η:Landroid/graphics/Bitmap;']
  if mode not in ['already_recycled','null_bitmap']:assert view.f['displayed'] is bitmap and not bitmap.f['recycled']
  cases.append(mode)
 for cls,label,finish,reg in [(Q,':cond_22',':cond_24','v1'),('Lo/ˋ;',':cond_e',':cond_10','v0')]:
  for mode in ['live','recycled','null','allocation_failure']:
   vm=VM(tree);old=Obj('bitmap',recycled=mode=='recycled') if mode!='null' else 0;owner=Obj(Q);owner.f[Q+'->Ζ:Landroid/graphics/Bitmap;']=old;owner.f[Q+'->Η:Landroid/graphics/Bitmap;']=old
   path=tree/('smali/'+cls[1:-1]+'.smali');s=path.read_text(encoding='utf-8')
   assert 'Landroid/graphics/Bitmap;->recycle()V' not in s
   call=s.index('Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;')
   a=s.rfind('    sget-object ',0,call)
   b=s.index('Lo/qi;->Ζ:Landroid/graphics/Bitmap;',call)+len('Lo/qi;->Ζ:Landroid/graphics/Bitmap;')
   # apktool renumbers/coalesces labels after removing retired branches.
   # Select actual allocation instructions, never historical numeric labels.
   vm.fail_allocate=mode=='allocation_failure'
   try:
    vm.execute(cls,'replacement',[],body=s[a:b],initial={reg:owner,'v4':640,'v5':480})
    assert not vm.fail_allocate
    fresh=owner.f[Q+'->Ζ:Landroid/graphics/Bitmap;'];assert fresh is not old and fresh.f['width']==480 and fresh.f['height']==640
   except MemoryError:assert vm.fail_allocate and owner.f[Q+'->Ζ:Landroid/graphics/Bitmap;'] is old
   assert owner.f[Q+'->Η:Landroid/graphics/Bitmap;'] is old and 'recycle' not in vm.operations
   if old and mode!='recycled':assert not old.f['recycled']
   cases.append(cls+'_'+mode)
 return dict(cases=cases,inherited=inherited(tree),limits='13 actual-smali retirement/interleaving groups. No GC timing, renderer/native/ART or open-close reachability claim. Shared mutable frame reuse and resource concurrency remain open.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 for x in json.loads((OUT/'base10_r26_bitmap_manifest.json').read_text(encoding='utf-8'))['edits']:
  s=(DST/x['path']).read_text(encoding='utf-8');assert s.count(x['after'])==1 and s.replace(x['after'],x['before'])==(SRC/x['path']).read_text(encoding='utf-8')
 rows=[check(DST)]
 if a.final:
  f=OUT/'final_redecode/base10_r26'
  for rel in json.loads((OUT/'base10_r26_changes.json').read_text(encoding='utf-8')):assert norm(DST/rel)==norm(f/rel)
  rows.append(check(f))
 (OUT/('base10_r26_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_inverse=True),ensure_ascii=False,indent=2),encoding='utf-8')
 print('PASS13 bitmap retirement groups +418 inherited; artifacts',len(rows))
if __name__=='__main__':main()
