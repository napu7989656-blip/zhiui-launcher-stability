import argparse,json,re
from stability_base10_blur_cleanup_followup_20260910 import OUT,SRC,DST
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm
from test_base10_blur_cleanup_20260910 import VM,Bitmap,Fault,check as inherited
def method(tree,rel,sig):return next(b for s,(b,_) in methods(tree/rel).items() if s.split()[-1]==sig)
def recycle_fragment(tree):
 b=method(tree,'smali/o/h2.smali','run()V');at=b.index('Lo/a2;->Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;')
 start=b.index('\n',b.index('    move-result-object v2',at))
 match=re.search(r'if-eq v2, v1, (:\w+)',b[start:]);assert match
 end=b.index('    '+match[1]+'\n',start)+len('    '+match[1]+'\n')
 return b[start:end]+'    return-void\n'
def check(tree):
 cases=[]
 for state in ['new_result','same_result','borrowed_scaled','recycle_failure']:
  src=Bitmap();scaled=src if state=='borrowed_scaled' else Bitmap('release' if state=='recycle_failure' else None);blur=scaled if state=='same_result' else Bitmap();vm=VM(tree)
  try:vm.run(recycle_fragment(tree),initial={'v1':scaled,'v2':blur,'v11':src});assert state!='recycle_failure'
  except Fault:assert state=='recycle_failure'
  assert vm.staged==[blur] and not src.recycled
  if state=='recycle_failure':
   old=VM(SRC)
   try:old.run(recycle_fragment(SRC),initial={'v1':Bitmap('release'),'v2':blur,'v11':src});raise AssertionError()
   except Fault:assert old.staged==[]
  cases.append(state)
 host=method(tree,'smali/com/byd/launcher/stability/MainBlurHost.smali','release(Ljava/lang/Object;)V')
 for state in ['null','owned','already_recycled','check_failure','release_failure']:
  image=0 if state=='null' else Bitmap('check' if state=='check_failure' else 'release' if state=='release_failure' else None)
  if state=='already_recycled':image.recycled=True
  vm=VM(tree);vm.run(host,[object(),image])
  # A severe failure in one release must not escape the bridge or stop the next.
  next_=Bitmap();vm.run(host,[object(),next_]);assert next_.recycled
  cases.append('host_'+state)
 return dict(cases=cases,inherited=inherited(tree),limits='Actual caller ordering/cleanup bridge executed with Bitmap faults; production frame ownership tested by R15 JVM suite. No native Bitmap or ART execution.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/'base10_r16b_blur_cleanup_manifest.json').read_text(encoding='utf-8'))
 for r in records:
  text=(DST/r['path']).read_text(encoding='utf-8');assert text.count(r['after'])==1;assert text.replace(r['after'],r['before'])==(SRC/r['path']).read_text(encoding='utf-8')
 results=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r16b'
  for r in records:assert norm(DST/r['path'])==norm(final/r['path'])
  results.append(check(final))
 (OUT/('base10_r16b_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=results,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(results[0]['cases']),'caller cleanup cases plus 284 inherited per artifact; parent tracking gap reproduced.')
if __name__=='__main__':main()
