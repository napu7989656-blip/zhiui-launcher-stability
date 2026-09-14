import argparse,json
from stability_base10_camera_egl_patch_20260914 import OUT,SRC,DST,REL,Q
from test_base10_camera_handoff_20260914 import HandoffVM,Obj,check as inherited
from test_base10_media_lifetime_20260913 import Fault
from stability_verify_patch_20260906 import norm
OPS=['eglMakeCurrent','eglDestroySurface','eglDestroyContext','eglTerminate'];FIELDS=[Q+'->\u038f:Landroid/opengl/EGLDisplay;',Q+'->\u0391:Landroid/opengl/EGLSurface;',Q+'->\u0390:Landroid/opengl/EGLContext;']
class EGLVM(HandoffVM):
 def __init__(self,tree):
  super().__init__(tree);self.fail=set();self.calls=[];self.log_count=0;self.fail_log=False;self.return_false=False
  self.static_fields.update({'Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;':Obj('no_surface'),'Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;':Obj('no_context')})
 def lifecycle(self,target,args):
  if target.startswith('Landroid/opengl/EGL14;->'):
   op=target.split('->')[1].split('(')[0];self.calls.append(op)
   if op in self.fail:raise Fault(op)
   return not self.return_false
  if target in [Q+'->\u037a()V',Q+'->stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V']:return self.execute(Q,target.split('->')[1],args)
  if target=='Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I':
   self.log_count+=1
   if self.fail_log:raise Fault('logger')
   return 0
  return super().lifecycle(target,args)
def owner(mask=7):
 o=Obj(Q);o.f.update({k:Obj(k) if mask&(1<<i) else 0 for i,k in enumerate(FIELDS)});return o
def check(tree):
 rows=[]
 for mask in range(16):
  vm=EGLVM(tree);o=owner();vm.fail={x for i,x in enumerate(OPS) if mask&(1<<i)};vm.execute(Q,'\u037a()V',[o]);assert vm.calls==OPS and vm.log_count==len(vm.fail) and not any(o.f.values());rows.append('exceptions_'+str(mask))
 for op in OPS:
  vm=EGLVM(tree);o=owner();vm.fail={op};vm.fail_log=True;vm.execute(Q,'\u037a()V',[o]);assert vm.calls==OPS and vm.log_count==1 and not any(o.f.values());rows.append('logger_failure_'+op)
 for mask in range(8):
  vm=EGLVM(tree);o=owner(mask);before=o.f.copy();vm.execute(Q,'\u037a()V',[o]);expected=[] if not(mask&1) else [OPS[0]]+([OPS[1]] if mask&2 else [])+([OPS[2]] if mask&4 else [])+[OPS[3]]
  assert vm.calls==expected
  assert o.f==before if not(mask&1) else not any(o.f.values())
  rows.append('presence_'+str(mask))
 vm=EGLVM(tree);o=owner();vm.return_false=True;vm.execute(Q,'\u037a()V',[o]);assert vm.calls==OPS and not vm.log_count and not any(o.f.values());rows.append('false_return_original_semantics')
 for op in OPS:
  vm=EGLVM(tree);o=owner();o.f.update({Q+'->\u0388:Ljava/lang/Object;':Obj('lock'),Q+'->\u0396:Landroid/graphics/Bitmap;':Obj('bitmap'),Q+'->\u0397:Landroid/graphics/Bitmap;':Obj('published'),Q+'->\u0394:[I':[1]});vm.owner=o;vm.fail={op};vm.close();assert vm.calls==OPS and not o.f[Q+'->\u0396:Landroid/graphics/Bitmap;'] and not o.f[Q+'->\u0397:Landroid/graphics/Bitmap;'] and not o.f[Q+'->\u0394:[I'];rows.append('close_continues_'+op)
 return dict(cases=rows,inherited=inherited(tree),limits='33 actual smali exception/order/presence/close-tail groups with EGL/log substitutes. No native resource release, concurrent field ownership or EGL false-return recovery guarantee. Null-display guards and false-return behavior retained.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();m=json.loads((OUT/'base10_r28_egl_manifest.json').read_text(encoding='utf-8'));s=(DST/REL).read_text(encoding='utf-8');assert s.count(m['after'])==1 and s.endswith('\n\n'+m['helper']);assert s.removesuffix('\n\n'+m['helper']).replace(m['after'],m['before'])==(SRC/REL).read_text(encoding='utf-8')
 for op in OPS:
  vm=EGLVM(SRC);vm.fail={op};o=owner()
  try:vm.execute(Q,'\u037a()V',[o]);raise AssertionError('parent must propagate')
  except Fault:assert vm.calls==OPS[:OPS.index(op)+1] and o.f[FIELDS[0]]
 rows=[check(DST)]
 if a.final:
  f=OUT/'final_redecode/base10_r28';assert norm(DST/REL)==norm(f/REL);rows.append(check(f))
 (OUT/('base10_r28_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,parent_four_failures_reproduced=True,exact_inverse=True),indent=2),encoding='utf-8');print('PASS33 EGL groups +440 inherited; artifacts',len(rows))
if __name__=='__main__':main()
