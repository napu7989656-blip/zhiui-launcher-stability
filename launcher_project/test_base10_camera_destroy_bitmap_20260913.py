import argparse,json,re
from stability_base10_camera_destroy_bitmap_patch_20260913 import OUT,SRC,DST,REL
from test_base10_camera_bitmap_20260913 import VM,Q,Obj,check as inherited
from stability_verify_patch_20260906 import norm
N='Lcom/byd/launcher/NavBarService;'
def destroy_fragment(vm,owner):
 b=vm.life.body(N,'onDestroy()V')
 at=b.index('Lo/qi;->Έ:Ljava/lang/Object;');at=b.index('    monitor-enter ',at)
 end=b.index('Lo/qi;->Δ:[I',at)+len('Lo/qi;->Δ:[I')
 vm.execute(N,'onDestroy()V',[],body=b[at:end],initial={'v0':owner,'v1':Obj('lock'),'v2':0})
def check(tree):
 cases=[]
 for mode in ['visible_alias','already_recycled','null','repeated']:
  vm=VM(tree);bitmap=Obj('bitmap',recycled=mode=='already_recycled') if mode!='null' else 0;owner=Obj(Q);view=Obj('view',displayed=bitmap)
  owner.f.update({Q+'->Ζ:Landroid/graphics/Bitmap;':bitmap,Q+'->Η:Landroid/graphics/Bitmap;':bitmap,Q+'->Δ:[I':[1]})
  destroy_fragment(vm,owner)
  if mode=='repeated':destroy_fragment(vm,owner)
  assert not any(owner.f.values()) and 'recycle' not in vm.operations
  assert view.f['displayed'] is bitmap
  if bitmap and mode!='already_recycled':assert not bitmap.f['recycled']
  cases.append(mode)
 # Exhaustive file inventory of direct accesses to the owned reusable field.
 holders=sorted(p.relative_to(tree).as_posix() for p in (tree/'smali').rglob('*.smali') if 'Lo/qi;->Ζ:Landroid/graphics/Bitmap;' in p.read_text(encoding='utf-8'))
 assert holders==sorted([REL,'smali/o/qi.smali','smali/o/ki.smali','smali/o/ˋ.smali'])
 return dict(cases=cases,camera_bitmap_holders=holders,inherited=inherited(tree),limits='Actual destroy bitmap fragment, four cases, no whole onDestroy/native/renderer execution. Other service destruction logic preserved by inverse. Same frame mutation and camera resources pending.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 for x in json.loads((OUT/'base10_r26b_bitmap_manifest.json').read_text(encoding='utf-8'))['edits']:
  s=(DST/x['path']).read_text(encoding='utf-8');assert s.count(x['after'])==1 and s.replace(x['after'],x['before'])==(SRC/x['path']).read_text(encoding='utf-8')
 vm=VM(SRC);old=Obj('bitmap');owner=Obj(Q);owner.f.update({Q+'->Ζ:Landroid/graphics/Bitmap;':old,Q+'->Η:Landroid/graphics/Bitmap;':old,Q+'->Δ:[I':[1]});destroy_fragment(vm,owner);assert old.f['recycled']
 rows=[check(DST)]
 if a.final:
  f=OUT/'final_redecode/base10_r26b';assert norm(DST/REL)==norm(f/REL);rows.append(check(f))
 (OUT/('base10_r26b_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,parent_recycle_reproduced=True,exact_inverse=True),ensure_ascii=False,indent=2),encoding='utf-8')
 print('PASS4 destroy retirement groups +431 inherited; all4 holder classes inventoried; artifacts',len(rows))
if __name__=='__main__':main()
