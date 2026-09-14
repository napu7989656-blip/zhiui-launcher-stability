"""Execute actual recycle decision blocks with identity-preserving bitmap doubles."""
import argparse,json,re
from stability_base10_bitmap_alias_patch_20260910 import OUT,SRC,DST
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm
from test_base10_nav_smali_20260908 import NavVM,Obj
from test_base10_glass_smali_20260910 import check as inherited
def body(tree,cls,sig):return next(b for s,(b,_) in methods(tree/('smali/o/'+cls+'.smali')).items() if s.split()[-1]==sig)
def snippets(tree):
 crop=body(tree,'a2','ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;')
 full=body(tree,'h2','run()V')
 out=[]
 for name,b,first in [('crop',crop,'if-eq p1, p0,'),('blur',crop,'if-eq p0, p1,'),('full',full,'if-eq v2, v1,')]:
  start=b.index('    '+first);label=b[start:].splitlines()[0].split(', ')[-1]
  end=b.index('    '+label+'\n',start)+len('    '+label+'\n')
  out.append((name,b[start:end]+'    return-void\n'))
 return out
def check(tree):
 crop=body(tree,'a2','ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;')
 assert int(re.search(r'\.locals (\d+)',crop).group(1))>=7 and 'move-object v6, p0' in crop
 assert re.findall(r'^\s*(\S+\s+v6(?:,.*)?)$',crop,re.M)==['move-object v6, p0'] # only assignment to saved input; later cleanup may read it
 assert crop.count('if-eq p0, v6,')==1 and crop.count('if-eq p1, v6,')==1
 cases=[];regression=0
 for name,snippet in snippets(tree):
  for state in ['source_alias_new_output','owned_new_output','owned_same_output','source_same_output','source_alias_null_output']:
   source=Obj('source');owned=source if state.startswith('source') else Obj('owned')
   output=owned if 'same' in state else 0 if 'null' in state else Obj('output')
   values=({'p0':owned,'p1':output,'v6':source} if name=='crop' else {'p0':output,'p1':owned,'v6':source} if name=='blur' else {'v1':owned,'v2':output,'v11':source})
   vm=NavVM(tree);recycled=[]
   def invoke(target,args):
    assert target=='Landroid/graphics/Bitmap;->recycle()V';recycled.append(args[0])
   vm.extra_call=invoke;vm.execute('unused','unused',[],body=snippet,initial=values)
   assert recycled==([owned] if owned is not source and owned is not output else []),(name,state)
   assert source not in recycled
   if state=='source_alias_new_output':
    old=dict(snippets(SRC))[name];recycled.clear();vm.execute('unused','unused',[],body=old,initial=values)
    assert recycled==[source];regression+=1
   cases.append(name+'_'+state)
 return dict(cases=cases,parent_regressions_reproduced=regression,inherited=inherited(tree),limits='Three actual recycle blocks executed with injected bitmap identities; original crop/blur math and unrelated methods preserved by inverse patch. Not an Android bitmap execution or full allocation cleanup test.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 records=json.loads((OUT/'base10_r14_bitmap_alias_manifest.json').read_text(encoding='utf-8'))
 for r in records:
  text=(DST/r['path']).read_text(encoding='utf-8');assert text.count(r['after'])==1
  assert text.replace(r['after'],r['before'])==(SRC/r['path']).read_text(encoding='utf-8')
 results=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r14'
  for r in records:assert norm(DST/r['path'])==norm(final/r['path'])
  results.append(check(final))
 (OUT/('base10_r14_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=results,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS 15 bitmap identity cases + 223 inherited per artifact; three parent source-recycle regressions reproduced.')
if __name__=='__main__':main()
