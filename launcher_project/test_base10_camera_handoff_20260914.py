import argparse,json
from stability_base10_camera_handoff_patch_20260914 import ROOT,OUT,SRC,DST,REL
from test_base10_camera_bitmap_20260913 import VM,Obj,Q
from test_base10_camera_destroy_bitmap_20260913 import check as inherited
from stability_verify_patch_20260906 import norm
N='Lcom/byd/launcher/NavBarService;';W='Lo/\u02cf;';FIELD=Q+'->\u0372:'+W
class ProbeStop(Exception):pass
class HandoffVM(VM):
 def __init__(self,tree):super().__init__(tree);self.threads=[];self.detached=[];self.stop_on_detach=False
 def lifecycle(self,target,args):
  if target=='Lo/ki;-><init>(Lo/qi;I)V':args[0].f.update({'Lo/ki;->\u0371:Lo/qi;':args[1],'Lo/ki;->\u0370:I':args[2]});return
  if target=='Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V':args[0].f['task']=args[1];return
  if target=='Ljava/lang/Thread;->start()V':self.threads.append(args[0].f['task']);return
  if target=='Ljava/lang/Object;->getClass()Ljava/lang/Class;':assert args[0];return Obj('Class')
  if target==W+'->\u0371(Lo/v5;)V':
   self.detached.append(args[0]);assert not args[1]
   if self.stop_on_detach:raise ProbeStop()
   return
  return super().lifecycle(target,args)
def drop_service(vm,owner,service):
 b=vm.life.body(N,'onDestroy()V');at=b.index('    iput-object v2, v0, Lo/qi;->\u0394:[I');last='    iput-object v2, p0, '+N+'->\u038c:Lo/qi;';end=b.index(last,at)+len(last)
 vm.execute(N,'onDestroy()V',[service],body=b[at:end],initial={'v0':owner,'v2':0})
def check(tree):
 rows=[]
 for mode in ['late_empty_wrapper','late_live_wrapper','null_wrapper','repeated_drop','worker_before_drop']:
  vm=HandoffVM(tree);owner=Obj(Q);service=Obj(N);wrapper=0 if mode=='null_wrapper' else Obj(W)
  if mode=='late_live_wrapper':wrapper.f[W+'->\u0370:Ljava/lang/Object;']=Obj('native');vm.stop_on_detach=True
  owner.f.update({FIELD:wrapper,Q+'->\u0388:Ljava/lang/Object;':Obj('lock')});service.f[N+'->\u038c:Lo/qi;']=owner;vm.owner=owner
  vm.execute(Q,'\u02cb()V',[owner]);assert len(vm.threads)==1
  if mode=='worker_before_drop':vm.execute('Lo/ki;','run()V',[vm.threads[0]])
  drop_service(vm,owner,service)
  if mode=='repeated_drop':drop_service(vm,owner,service)
  assert owner.f[FIELD] is wrapper and not service.f[N+'->\u038c:Lo/qi;']
  if mode!='worker_before_drop':
   try:vm.execute('Lo/ki;','run()V',[vm.threads[0]]);assert not vm.stop_on_detach
   except ProbeStop:assert vm.stop_on_detach
  assert vm.detached==([wrapper] if wrapper else [])
  rows.append(mode)
 return dict(cases=rows,inherited=inherited(tree),limits='Actual close scheduling and service field-release tail. Null/empty wrapper full close uses substitutes; live wrapper stops on first detach invocation before native reflection. No actual camera release guarantee, GC bound or full destroy/ART/OEM validation.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 for x in json.loads((OUT/'base10_r27_handoff_manifest.json').read_text(encoding='utf-8'))['edits']:
  s=(DST/x['path']).read_text(encoding='utf-8');assert s.count(x['after'])==1 and s.replace(x['after'],x['before'])==(SRC/x['path']).read_text(encoding='utf-8')
 vm=HandoffVM(SRC);owner=Obj(Q);service=Obj(N);old=Obj(W);owner.f.update({FIELD:old,Q+'->\u0388:Ljava/lang/Object;':Obj('lock')});vm.execute(Q,'\u02cb()V',[owner]);drop_service(vm,owner,service);vm.execute('Lo/ki;','run()V',[vm.threads[0]]);assert not vm.detached and not owner.f[FIELD]
 rows=[check(DST)]
 if a.final:
  f=OUT/'final_redecode/base10_r27';assert norm(DST/REL)==norm(f/REL);rows.append(check(f))
 (OUT/('base10_r27_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,parent_lost_wrapper_reproduced=True,exact_inverse=True),indent=2),encoding='utf-8')
 print('PASS5 handoff groups +435 inherited; artifacts',len(rows))
if __name__=='__main__':main()
