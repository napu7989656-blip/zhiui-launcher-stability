import argparse,json,re
from stability_base10_media_retry_patch_20260913 import OUT,SRC,DST,A
from test_base10_media_lifetime_20260913 import LifetimeVM,Obj,N,check as inherited
from stability_verify_patch_20260906 import norm
def check(tree):
 cases=[]
 for name in ['u8','z8']:
  cls='Lo/'+name+';'
  for state in ['current','destroyed','service_replaced','manager_replaced','missing_callback']:
   vm=LifetimeVM(tree);m=vm.setup_life();task=Obj(cls);task.f[cls+'->ͱ:'+A]=m
   if state=='destroyed':m.f[A+'->ͺ:Z']=1
   if state=='service_replaced':vm.current=Obj(N)
   if state=='manager_replaced':vm.current.f[N+'->ͼ:'+A]=Obj(A)
   if state=='missing_callback':m.f[A+'->ʹ:Lo/ia;']=0
   b=vm.life.body(cls,'run()V');label=re.search(r'if-nez v0, (:\w+)',b)[1];prefix=b[:b.index('    '+label+'\n')]+'    '+label+'\n    const/4 v0, 0x1\n    return v0\n'
   assert vm.execute(cls,'run()V',[task],body=prefix)==(1 if state=='current' else None)
   if state!='current':
    vm.execute(cls,'run()V',[task]);assert not vm.posts and not vm.ops and not vm.events
   cases.append(name+'_'+state+'_admission')
 return dict(cases=cases,inherited=inherited(tree),limits='Actual guards/all invalid-owner returns executed; current-owner playback body not executed, preserved by exact inverse. No transport or vehicle calls.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 r=json.loads((OUT/'base10_r24_retry_manifest.json').read_text(encoding='utf-8'))
 for x in r['edits']:
  text=(DST/x['path']).read_text(encoding='utf-8');assert text.count(x['after'])==1 and text.replace(x['after'],x['before'])==(SRC/x['path']).read_text(encoding='utf-8')
 rows=[check(DST)]
 if a.final:
  f=OUT/'final_redecode/base10_r24'
  for x in r['edits']:assert norm(DST/x['path'])==norm(f/x['path'])
  rows.append(check(f))
 (OUT/('base10_r24_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_inverse=True),indent=2),encoding='utf-8')
 print('PASS 10 late-retry guard groups +390 inherited; artifacts',len(rows))
if __name__=='__main__':main()
