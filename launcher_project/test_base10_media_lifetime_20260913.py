import argparse,json,re,inspect,textwrap
from unittest.mock import patch
from stability_base10_media_lifetime_patch_20260913 import ROOT,OUT,SRC,DST,A,N,START
from test_base10_media_artwork_20260912 import ArtworkVM
import test_base10_media_artwork_20260912 as r21
import test_base10_media_uri_20260913 as r22
from test_base09_smali_20260908 import Obj
from test_base10_nav_smali_20260908 import NavVM
from stability_verify_patch_20260906 import norm
# Extend exception dispatch using the actual invocation position and typed catch ranges.
source=textwrap.dedent(inspect.getsource(NavVM.execute))
needle='elif self.extra_call is not None:result=self.extra_call(target,a)'
replacement='''elif self.extra_call is not None:
                try:result=self.extra_call(target,a)
                except Fault:
                    matches=re.findall(r'\\.catch Ljava/lang/(?:RuntimeException|Exception); \\{(:\\w+) \\.\\. (:\\w+)\\} (:\\w+)',b)
                    found=next((label for first,last,label in matches if labels[first]<=pc-1<labels[last]),None)
                    if found is None:raise
                    pc=labels[found]'''
assert source.count(needle)==1;source=source.replace(needle,replacement)
class Fault(RuntimeError):pass
ns=dict(NavVM.execute.__globals__,Fault=Fault);exec(source,ns)
class LifetimeVM(ArtworkVM):
 execute=ns['execute']
 def __init__(self,tree):
  super().__init__(tree);self.extra_call=self.lifecycle;self.ops=[];self.fault=None;self.system=Obj('session_manager');self.starts=[]
 def lifecycle(self,target,args):
  cls,sig=target.split('->')
  if cls==START:return self.execute(cls,sig,args)
  if cls==A and sig.startswith(('stabilityDispose','stabilityStart')):return self.execute(cls,sig,args)
  names={'cancel':'cancel','removeCallbacksAndMessages':'handler','unregisterCallback':'controller','removeOnActiveSessionsChangedListener':'listener','addOnActiveSessionsChangedListener':'register'}
  key=next((v for k,v in names.items() if sig.startswith(k+'(')),None)
  if key:
   self.ops.append(key)
   if key=='controller':assert not self.manager.f[A+'->ͳ:Landroid/media/session/MediaController;'] and not self.manager.f[A+'->ͼ:Lo/y8;']
   if key=='listener':assert not self.manager.f[A+'->Ͳ:Landroid/media/session/MediaSessionManager;']
   if self.fault==key:raise Fault(key)
   return True
  if cls==r21.P:
   self.ops.append(sig)
   if self.fault=='art' and sig=='close()V':raise Fault('art')
   return self.artcall(target,args)
  if target=='Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;':self.ops.append('lookup');return self.system
  if cls=='Lo/c8;' and sig.startswith('<init>'):args[0].f['Lo/c8;->Ͱ:I']=args[1];args[0].f['Lo/c8;->ͱ:Ljava/lang/Object;']=args[2];return
  if target=='Ljava/lang/Object;->getClass()Ljava/lang/Class;':return Obj('class')
  if cls=='Lo/q3;':self.logs.append(args);return
  if cls=='Lo/v1;':self.logs.append(args);return
  if cls=='Ljava/lang/StringBuilder;' and sig.startswith('<init>'):return
  if target=='Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z':
   if self.accept:self.posts.append(args[1])
   return self.accept
  return self.artcall(target,args)
 def setup_life(self):
  m,h=self.setup_art();m.f[A+'->ͱ:Ljava/util/concurrent/Future;']=Obj('future');m.f[A+'->Ͳ:Landroid/media/session/MediaSessionManager;']=self.system;m.f[A+'->ͷ:Lo/x8;']=Obj('listener');m.f[A+'->ͻ:Z']=1;m.f[A+'->ͽ:Landroid/graphics/Bitmap;']=Obj('borrowed');return m
def inherited(tree):
 # Replace precisely the two R21 lifecycle assertions superseded by the R23
 # integrated disposal/owner-bound startup tests below. All other groups run.
 code=textwrap.dedent(inspect.getsource(r21.check));start=code.index(" b=vm.life.body(NAV,'onDestroy()V')");end=code.index(' # Existing session tests',start)
 code=code[:start]+code[end:];scope=dict(r21.check.__globals__);exec(code,scope)
 with patch.object(r22,'inherited',scope['check']):return r22.check(tree)
def check(tree):
 cases=[]
 for fault in [None,'cancel','art','handler','controller','listener']:
  vm=LifetimeVM(tree);m=vm.setup_life();vm.fault=fault;vm.execute(A,'stabilityDispose()V',[m])
  assert m.f[A+'->ͺ:Z']==1 and m.f[A+'->stabilityDisposed:Z']==1
  for field in ['ʹ:Lo/ia;','ͽ:Landroid/graphics/Bitmap;','ΐ:Landroid/graphics/Bitmap;','Ώ:Ljava/lang/String;','Γ:Ljava/lang/Runnable;','ͱ:Ljava/util/concurrent/Future;','ͳ:Landroid/media/session/MediaController;','ͼ:Lo/y8;','Ͳ:Landroid/media/session/MediaSessionManager;','ͻ:Z','stabilitySessionToken:Ljava/lang/Object;']:assert not m.f.get(A+'->'+field),field
  assert vm.ops==['cancel','close()V','handler','controller','listener'],vm.ops
  before=list(vm.ops);vm.execute(A,'stabilityDispose()V',[m]);assert vm.ops==before
  cases.append('dispose_isolated_'+str(fault))
 for state in ['current','destroyed','service_replaced','manager_replaced','started']:
  vm=LifetimeVM(tree);m=vm.setup_life()
  if state=='destroyed':m.f[A+'->ͺ:Z']=1
  if state=='service_replaced':vm.current=Obj(N)
  if state=='manager_replaced':vm.current.f[N+'->ͼ:'+A]=Obj(A)
  if state=='started':m.f[A+'->stabilityStarted:Z']=1
  vm.execute(A,'stabilityStart()V',[m]);assert len(vm.posts)==int(state=='current')
  if state=='current':
   assert vm.ops==[] # existing manager+registered listener reused
   vm.execute(A,'stabilityStart()V',[m]);assert len(vm.posts)==1
  if state=='destroyed':assert m.f[A+'->ͺ:Z']==1
  cases.append('startup_'+state)
 vm=LifetimeVM(tree);m=vm.setup_life();m.f[A+'->Ͳ:Landroid/media/session/MediaSessionManager;']=0;m.f[A+'->ͻ:Z']=0
 vm.execute(A,'stabilityStart()V',[m]);assert vm.ops==['lookup','register'] and len(vm.posts)==1;cases.append('fresh_start_single_listener_single_poll')
 vm=LifetimeVM(tree);m=vm.setup_life();m.f[A+'->Ͳ:Landroid/media/session/MediaSessionManager;']=0;vm.system=0
 vm.execute(A,'stabilityStart()V',[m]);assert not m.f[A+'->stabilityStarted:Z'] and not vm.posts
 vm.system=Obj('session_manager');m.f[A+'->ͻ:Z']=0;vm.execute(A,'stabilityStart()V',[m]);assert len(vm.posts)==1;cases.append('missing_system_service_allows_later_retry')
 vm=LifetimeVM(tree);m=vm.setup_life();vm.accept=False;vm.execute(A,'stabilityStart()V',[m]);assert not vm.posts and not m.f[A+'->stabilityStarted:Z'];vm.accept=True;vm.execute(A,'stabilityStart()V',[m]);assert len(vm.posts)==1;cases.append('rejected_poll_post_allows_retry')
 vm=LifetimeVM(tree);m=vm.setup_life();m.f[A+'->ͻ:Z']=0;vm.fault='register';vm.execute(A,'stabilityStart()V',[m]);assert not m.f[A+'->stabilityStarted:Z'] and not vm.posts;vm.fault=None;vm.execute(A,'stabilityStart()V',[m]);assert len(vm.posts)==1;cases.append('registration_failure_allows_retry')
 vm=LifetimeVM(tree);m=vm.setup_life();task=Obj(START);vm.execute(START,'<init>('+A+')V',[task,m]);vm.current.f[N+'->ͼ:'+A]=Obj(A);vm.execute(START,'run()V',[task]);assert not vm.posts and not vm.ops;cases.append('delayed_start_captures_old_manager_does_not_start_replacement')
 # Actual periodic-refresh admission block, before original query/control code.
 for current in [True,False]:
  vm=LifetimeVM(tree);m=vm.setup_life();task=Obj('Lo/c8;');task.f['Lo/c8;->ͱ:Ljava/lang/Object;']=m
  if not current:vm.current=Obj(N)
  b=vm.life.body('Lo/c8;','run()V');part=b[b.index('    :pswitch_0\n'):b.index('    :cond_0\n')]
  part=part.replace('    goto :goto_1','    return-void')+'    :cond_0\n    const/4 v0, 0x1\n    return v0\n'
  assert vm.execute('Lo/c8;','run()V',[task],body=part)==(1 if current else None)
 cases.append('poll_rejects_replaced_service')
 vm=LifetimeVM(tree);m=vm.setup_life();b=vm.life.body(N,'onDestroy()V');needle='    invoke-virtual {v1}, Lo/a9;->stabilityDispose()V';at=b.index(needle);last='    iput-object v2, p0, '+N+'->ͼ:'+A;end=b.index(last,at)+len(last)
 vm.execute(N,'onDestroy()V',[vm.current],body=b[at:end],initial={'v1':m,'v2':0});assert not vm.current.f[N+'->ͼ:'+A] and vm.ops[-1]=='listener';cases.append('actual_destroy_disposes_then_clears_service_field')
 b=vm.life.body('Lo/llI;','run()V');at=b.index('    iget-object v2, v0, '+N+'->ͼ:'+A);end=b.index('    new-instance v2, Lo/a9;',at)
 vm=LifetimeVM(tree);m=vm.setup_life();vm.execute('Lo/llI;','run()V',[Obj('llI')],body=b[at:end],initial={'v0':vm.current});assert vm.ops[-1]=='listener';cases.append('actual_reconnect_disposes_old_before_new')
 assert 'new-instance v3, '+START in b and '-><init>(Lo/a9;)V' in b
 tail=b[b.index('    new-instance v2, Lo/a9;'):];at=tail.index('    new-instance v3, '+START)
 assert 'iget-object v2, v2, Lo/a9;->ˏ:Landroid/os/Handler;' in tail[:at]
 cases.append('initial_delayed_start_owned_by_disposable_manager_handler')
 for current in [True,False]:
  vm=LifetimeVM(tree);m=vm.setup_life();service=vm.current;task=Obj('Lo/llI;');task.f['Lo/llI;->ͱ:'+N]=service
  if not current:vm.current=Obj(N)
  begin=b.index('    :pswitch_d\n');label=re.search(r'if-eq v0, v2, (:\w+)',b[begin:])[1]
  part=b[begin:b.index('    '+label+'\n',begin)]+'    '+label+'\n    const/4 v0, 0x1\n    return v0\n'
  assert vm.execute('Lo/llI;','run()V',[task],body=part,initial={'v1':task})==(1 if current else None)
 cases.append('reconnect_rejects_stale_service_before_manager_allocation')
 return dict(cases=cases,inherited=inherited(tree),superseded_r21_groups=2,limits='Actual smali with scoped typed RuntimeException dispatch and Android/IO substitutes. Startup framework registration, periodic refresh queries and UI remain doubled; not ART.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 r=json.loads((OUT/'base10_r23_lifetime_manifest.json').read_text(encoding='utf-8'))
 for rel in {x['path'] for x in r['edits']}:
  s=(DST/rel).read_text(encoding='utf-8')
  for x in reversed(r['edits']):
   if x['path']==rel:assert s.count(x['after'])==1;s=s.replace(x['after'],x['before'])
  assert s==(SRC/rel).read_text(encoding='utf-8')
 rows=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r23'
  for rel in json.loads((OUT/'base10_r23_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
  rows.append(check(final))
 (OUT/('base10_r23_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_inverse=True),indent=2),encoding='utf-8')
 print('PASS',len(rows[0]['cases']),'lifetime groups +369 retained; 2 old lifecycle probes replaced; artifacts',len(rows))
if __name__=='__main__':main()
