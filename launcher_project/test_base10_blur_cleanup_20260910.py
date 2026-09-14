"""Execute actual smali cleanup/catch blocks with typed injected bitmap failures."""
import argparse,json,re
from stability_base10_blur_cleanup_patch_20260910 import OUT,SRC,DST,C
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm
from test_base10_blur_pipeline_20260910 import check as inherited
class Fault(Exception):
 def __init__(self,kind):self.kind=kind
class Bitmap:
 def __init__(self,fail=None):self.recycled=False;self.fail=fail;self.releases=0
def body(tree,sig):return next(b for s,(b,_) in methods(tree/'smali/o/a2.smali').items() if s.split()[-1]==sig)
def handler_at(b,needle,kind):
 at=b.index(needle)
 # Typed catch before catchall, in original table order.
 for m in re.finditer(r'\.catch(?:(all)| (L[^;]+;)) \{(:\w+) \.\. (:\w+)\} (:\w+)',b):
  all_,typ,start,end,target=m.groups()
  if b.index('    '+start+'\n')<=at<b.index('    '+end+'\n') and (all_ or kind=='Exception' and typ=='Ljava/lang/Exception;'):return target
 raise AssertionError(('missing handler',needle,kind))
class VM:
 def __init__(self,tree):self.helper=(tree/'smali/com/byd/launcher/stability/BitmapCleanup.smali').read_text(encoding='utf-8');self.staged=[]
 def run(self,b,args=(),initial=None,entry=None,error=None):
  lines=[s.strip() for s in b.splitlines() if s.strip() and not s.strip().startswith(('.','#'))]
  labels={s:i for i,s in enumerate(lines) if s.startswith(':')};r={f'p{i}':x for i,x in enumerate(args)};r.update(initial or {});pc=labels[entry] if entry else 0;result=None
  catches=[]
  for m in re.finditer(r'\.catch(?:(all)| (L[^;]+;)) \{(:\w+) \.\. (:\w+)\} (:\w+)',b):
   all_,typ,start,end,target=m.groups();catches.append((all_,typ,labels[start],labels[end],labels[target]))
  for _ in range(250):
   s=lines[pc];point=pc;pc+=1
   if s.startswith(':'):continue
   op,_,rest=s.partition(' ');parts=rest.split(', ')
   try:
    if op=='move-exception':r[rest]=error
    elif op.startswith('move-result'):r[rest]=result
    elif op.startswith('move'):r[parts[0]]=r[parts[1]]
    elif op.startswith('const'):r[parts[0]]=int(parts[1],0)
    elif op=='check-cast':pass
    elif op.startswith('if-'):
     x=r[parts[0]];y=r[parts[1]] if len(parts)==3 else None
     take=(not x if op=='if-eqz' else bool(x) if op=='if-nez' else x is y if op=='if-eq' else x is not y)
     if take:pc=labels[parts[-1]]
    elif op.startswith('invoke'):
     regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups();a=[r[k] for k in regs.split(', ')]
     if target==C:result=self.run(self.helper,a)
     elif target=='Lcom/byd/launcher/stability/BlurPipeline;->blurred(Ljava/lang/Object;)V':self.staged.append(a[0])
     elif target=='Landroid/graphics/Bitmap;->isRecycled()Z':
      if a[0].fail=='check':raise Fault('Error')
      result=int(a[0].recycled)
     elif target=='Landroid/graphics/Bitmap;->recycle()V':
      a[0].releases+=1
      if a[0].fail=='release':raise Fault('Error')
      assert not a[0].recycled;a[0].recycled=True
     else:raise AssertionError(target)
    elif op=='throw':raise r[rest]
    elif op=='return-void':return
    elif op in ('return-object','return'):return r[rest]
    elif op.startswith('goto'):pc=labels[rest]
    else:raise AssertionError(s)
   except Fault as fault:
    for all_,typ,start,end,target in catches:
     if start<=point<end and (all_ or fault.kind=='Exception' and typ=='Ljava/lang/Exception;'):error=fault;pc=target;break
    else:raise
  raise AssertionError('execution limit')
def check(tree):
 vm=VM(tree);cases=[]
 for state in ['null','borrowed','owned','already_recycled','check_failure','release_failure']:
  src=Bitmap();image=0 if state=='null' else src if state=='borrowed' else Bitmap('check' if state=='check_failure' else 'release' if state=='release_failure' else None)
  if state=='already_recycled':image.recycled=True
  vm.run(vm.helper,[image,src]);assert not src.recycled
  if state=='owned':assert image.recycled and image.releases==1
  cases.append(state)
 crop=body(tree,'ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;')
 for kind in ['Exception','Error']:
  for stage in ['before_crop','crop_only','scaled','blurred','all_alias','cleanup_fails']:
   src=Bitmap();values=[0,0,0]
   if stage!='before_crop':values[0]=Bitmap('release' if stage=='cleanup_fails' else None)
   if stage in ('scaled','blurred','cleanup_fails'):values[1]=Bitmap()
   if stage in ('blurred','cleanup_fails'):values[2]=Bitmap()
   if stage=='all_alias':values=[src]*3
   fault=Fault(kind);target=handler_at(crop,'Landroid/graphics/Bitmap;->createScaledBitmap(',kind)
   try:
    result=vm.run(crop,initial={'v6':src,'v7':values[0],'v8':values[1],'v9':values[2]},entry=target,error=fault)
    assert kind=='Exception' and result==0
   except Fault as thrown:assert kind=='Error' and thrown is fault
   assert not src.recycled
   for image in values:
    if image and image is not src:assert image.recycled or image.fail=='release'
   cases.append('crop_'+kind+'_'+stage)
 blur=body(tree,'Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;')
 assert '.locals 38' in blur and blur.count('v37')==2
 for kind in ['Exception','Error']:
  for state in ['owned','borrowed','release_failure']:
   src=Bitmap();image=src if state=='borrowed' else Bitmap('release' if state=='release_failure' else None);fault=Fault(kind)
   target=handler_at(blur,'Landroid/graphics/Bitmap;->getPixels(',kind)
   try:vm.run(blur,[src,1],initial={'v37':image},entry=target,error=fault);raise AssertionError('error swallowed')
   except Fault as thrown:assert thrown is fault
   assert not src.recycled
   if state=='owned':assert image.recycled
   cases.append('blur_'+kind+'_'+state)
 return dict(cases=cases,inherited=inherited(tree),limits='Actual typed catch dispatch and cleanup instructions execute with Bitmap failures injected; allocation state supplied at selected fault points. Math/loops preserved exactly by inverse patch. Not native bitmap or ART execution.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();records=json.loads((OUT/'base10_r16_blur_cleanup_manifest.json').read_text(encoding='utf-8'))
 text=(DST/'smali/o/a2.smali').read_text(encoding='utf-8')
 for r in reversed(records):assert text.count(r['after'])==1;text=text.replace(r['after'],r['before'])
 assert text==(SRC/'smali/o/a2.smali').read_text(encoding='utf-8')
 results=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r16'
  for rel in json.loads((OUT/'base10_r16_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
  results.append(check(final))
 (OUT/('base10_r16_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=results,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(results[0]['cases']),'allocation cleanup cases + 260 inherited per artifact.')
if __name__=='__main__':main()
