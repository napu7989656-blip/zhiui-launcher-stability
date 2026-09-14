import argparse,json,re
from stability_base10_camera_preferences_patch_20260913 import OUT,SRC,DST,HELP
from test_base10_media_lifetime_20260913 import source,Fault
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj
from test_base10_media_retry_20260913 import check as inherited
from stability_verify_patch_20260906 import norm
ns=dict(NavVM.execute.__globals__,Fault=Fault);exec(source.replace('RuntimeException|Exception','ClassCastException'),ns)
class PrefVM(NavVM):
 execute=ns['execute']
 def __init__(self,tree):super().__init__(tree);self.extra_call=self.call;self.reads=[]
 def call(self,target,args):
  cls,sig=target.split('->')
  if cls==HELP:return self.execute(cls,sig,args)
  if cls=='Landroid/content/SharedPreferences;':
   pref,key,fallback=args;self.reads.append((key,fallback));value=pref.f['data'].get(key,fallback)
   if type(value) is not (bool if sig.startswith('getBoolean') else int):raise Fault('ClassCastException substitute')
   return value
  raise AssertionError('No native/camera/UI calls in preference test: '+target)
Q='Lo/qi;';CTOR='<init>(Landroid/content/Context;Landroid/view/WindowManager;)V'
KEYS=[('turn_signal_camera_enabled',False,'ʹ:Z',True),('turn_signal_overlay_w',420,'ͻ:I',777),('turn_signal_overlay_h',560,'ͼ:I',888),('turn_signal_overlay_x',8,'ͽ:I',-9),('turn_signal_overlay_y',40,'Ά:I',99)]
def check(tree):
 cases=[]
 for key,fallback,field,valid in KEYS:
  for mode in ['valid','missing','wrong_type']:
   vm=PrefVM(tree);owner=Obj(Q);data={} if mode=='missing' else {key:valid if mode=='valid' else 'bad'};pref=Obj('prefs',data=data.copy())
   b=vm.life.body(Q,CTOR);at=b.index('    const-string p2, "'+key+'"');end=b.index(';->'+field,at)+len(';->'+field);block=b[at:end]
   vm.execute(Q,CTOR,[owner],body=block,initial={'p1':pref,'v0':False})
   assert owner.f[Q+'->'+field]==(valid if mode=='valid' else fallback)
   assert vm.reads==[(key,fallback)] and pref.f['data']==data
   cases.append(key+'_'+mode)
 for mode in ['valid','missing','wrong_type']:
  vm=PrefVM(tree);data={'turn_signal_camera_enabled':True} if mode=='valid' else {} if mode=='missing' else {'turn_signal_camera_enabled':'true'};pref=Obj('prefs',data=data.copy())
  b=(tree/'smali/o/tk.smali').read_text(encoding='utf-8');at=b.index('    const-string v6, "turn_signal_camera_enabled"');end=b.index('    move-result v4',at)+len('    move-result v4')
  result=vm.execute('Lo/tk;','run()V',[],body=b[at:end]+'\nreturn v4\n',initial={'v4':pref,'v5':False})
  assert result==(mode=='valid') and pref.f['data']==data;cases.append('settings_flag_'+mode)
 return dict(cases=cases,inherited=inherited(tree),limits='Six actual constructor/settings read bindings and helper catch paths executed with SharedPreferences type substitute. Production class separately tested99 assertions. Constructor native clinit, camera and UI not executed; geometry range/config refresh still open.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();r=json.loads((OUT/'base10_r25_preferences_manifest.json').read_text(encoding='utf-8'))
 for x in r['edits']:
  s=(DST/x['path']).read_text(encoding='utf-8');assert s.count(x['after'])==1 and s.replace(x['after'],x['before'])==(SRC/x['path']).read_text(encoding='utf-8')
 rows=[check(DST)]
 # Exact original getter binding fails with a wrong saved type; helper failure
 # tests above exercise the same arguments and original fallback values.
 vm=PrefVM(SRC);b=vm.life.body(Q,CTOR);at=b.index('    const-string p2, "turn_signal_camera_enabled"');end=b.index(';->ʹ:Z',at)+len(';->ʹ:Z')
 try:vm.execute(Q,CTOR,[Obj(Q)],body=b[at:end],initial={'p1':Obj('prefs',data={'turn_signal_camera_enabled':'true'}),'v0':False});raise AssertionError('parent must fail')
 except Fault:pass
 if a.final:
  f=OUT/'final_redecode/base10_r25'
  for rel in json.loads((OUT/'base10_r25_changes.json').read_text()):assert norm(DST/rel)==norm(f/rel),rel
  rows.append(check(f))
 (OUT/('base10_r25_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_inverse=True,parent_type_failure_reproduced=True),indent=2),encoding='utf-8')
 print('PASS18 preference binding/type groups +400 inherited; exact R24 type failure reproduced; artifacts',len(rows))
if __name__=='__main__':main()
