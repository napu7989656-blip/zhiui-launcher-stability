"""Execute actual BASE-08 smali ownership/cleanup branches with isolated calls.
Not ART or actual WindowManager; production helper Java has separate fault tests.
"""
import argparse,json,re
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
N='Lcom/byd/launcher/NavBarService;';H='Lcom/byd/launcher/stability/StatusBarResources;'
ROOT=N+'->ͱ:Landroid/view/View;';TOUCH=N+'->φ:Lo/yb;';FAILED=N+'->stabilityStatusBarFailed:Z';DEAD=N+'->ˋ:Z';CONTROLLER=N+'->Ή:Lo/ff;'
RES=[ROOT,TOUCH,N+'->μ:Lo/ta;',N+'->ι:Lo/za;',N+'->κ:Lo/va;',N+'->λ:Lo/bb;']
CHILD=[N+'->'+k+':Landroid/widget/'+('TextView' if k=='θ' else 'ImageView')+';' for k in 'βγδεζηθ']
class Obj:
 def __init__(self,**fields):self.f=fields
class Failure(Exception):pass
class VM:
 def __init__(self,tree):self.ms={s.split()[-1]:b for s,(b,_) in methods(tree/'smali/com/byd/launcher/NavBarService.smali').items()};self.fail=set();self.calls=[];self.inject=None;self.warm=0
 def execute(self,sig,args=None,initial=None,start=None,body=None,stop=None):
  raw=(body if body is not None else self.ms[sig]).splitlines()
  ls=[l.strip() for l in raw if l.strip() and not l.strip().startswith(('.', '#'))]
  labels={x:i for i,x in enumerate(ls) if x.startswith(':')}
  catches=re.findall(r'\.catch Ljava/lang/Exception; \{(:\w+) \.\. (:\w+)\} (:\w+)', '\n'.join(raw))
  r={f'p{i}':v for i,v in enumerate(args or [])};r.update(initial or {});result=0;error=None
  pc=labels[start] if start else 0
  for _ in range(1500):
   if pc>=len(ls):return 0
   line=ls[pc];at=pc;pc+=1
   if stop and stop(line):return 'BOUNDARY'
   if line.startswith(':'):continue
   op,_,rest=line.partition(' ');p=rest.split(', ')
   try:
    if op=='const-string':r[p[0]]=rest.split(', ',1)[1]
    elif op.startswith('const'):r[p[0]]=int(p[1].split(' ')[0],0)
    elif op.startswith('move-result'):r[rest]=result
    elif op=='move-exception':r[rest]=error
    elif op.startswith('move'):r[p[0]]=r[p[1]]
    elif op.startswith('iget'):r[p[0]]=r[p[1]].f.get(p[2],0)
    elif op.startswith('iput'):r[p[1]].f[p[2]]=r[p[0]]
    elif op=='and-int/2addr':r[p[0]] &= r[p[1]]
    elif op.startswith('if-'):
     a=r[p[0]];b=0 if op.endswith('z') else r[p[1]]
     if op in ('if-eqz','if-eq'):take=a==b
     elif op in ('if-nez','if-ne'):take=a!=b
     else:raise ValueError(line)
     if take:pc=labels[p[-1]]
    elif op.startswith('goto'):pc=labels[rest]
    elif op=='new-instance':r[p[0]]=Obj(kind=p[1])
    elif op.startswith('invoke'):
     rs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
     if '..' in rs:
      first,last=rs.split(' .. ');rs=', '.join(first[0]+str(i) for i in range(int(first[1:]),int(last[1:])+1))
     vals=[r[x] for x in rs.split(', ')] if rs else [];self.calls.append(target)
     if target.startswith(N+'->stabilityCreateStatusBar') and self.inject:
      self.inject(vals[0]);raise Failure('injected initialization error')
     elif target.startswith(N+'->stabilityRelease') or target==N+'->stabilityCreateStatusBar(I)V':result=self.execute(target.split('->')[1],vals)
     elif target.startswith(H+'->'):
      resource=vals[-1]
      if not resource:result=1
      elif resource in self.fail:result=0
      else:resource.f['released']=True;resource.f['attached']=False;resource.f['parent']=0;result=1
     elif target.startswith('Lo/q3;->'):result=0
     elif target=='Landroid/view/View;->isAttachedToWindow()Z':result=int(vals[0].f.get('attached',False))
     elif target=='Landroid/view/View;->getParent()Landroid/view/ViewParent;':result=vals[0].f.get('parent',0)
     elif target.startswith(('Lo/ff;-><init>','Lo/ia;-><init>')):result=0
     elif target=='Lo/ff;->ͻ()V':self.warm+=1;result=0
     else:raise ValueError('Unimplemented call '+target)
    elif op=='throw':raise r[rest]
    elif op=='return-void':return 0
    elif op in ('return','return-object'):return r[rest]
    else:raise ValueError('Unimplemented instruction '+line)
   except Failure as e:
    target=next((c for a,b,c in catches if labels[a]<=at<labels[b]),None)
    if target is None:raise
    error=e;pc=labels[target]
  raise AssertionError('Nonterminating smali')
def owner():
 s=Obj();s.f.update({k:Obj(attached=True,parent=Obj()) for k in RES+CHILD});s.f.update({N+'->ˏ:Landroid/view/WindowManager;':Obj(),N+'->Ͷ:Landroid/os/Handler;':Obj(),CONTROLLER:Obj(),N+'->Ͱ:Landroid/view/View;':Obj()});return s

def check(tree):
 vm=VM(tree);cases=[]
 for failed_key in [None]+RES:
  s=owner();old=dict(s.f);vm.fail={old[failed_key]} if failed_key else set()
  result=vm.execute('stabilityReleaseStatusBar()Z',[s]);assert result==int(failed_key is None)
  for key in RES:assert s.f[key] is old[key] if key==failed_key else s.f[key]==0,(failed_key,key)
  assert s.f[FAILED]==1 and s.f[CONTROLLER] is old[CONTROLLER] and s.f[N+'->Ͱ:Landroid/view/View;'] is old[N+'->Ͱ:Landroid/view/View;']
  for key in CHILD:assert s.f[key] is old[key] if failed_key==ROOT else s.f[key]==0
  before=len(vm.calls)
  outcome=vm.execute('stabilityCreateStatusBar(I)V',[s,2038],stop=lambda x:x=='new-instance v0, Landroid/view/ContextThemeWrapper;')
  assert outcome==(0 if failed_key else 'BOUNDARY')
  vm.fail=set()
  outcome=vm.execute('stabilityCreateStatusBar(I)V',[s,2038],stop=lambda x:x=='new-instance v0, Landroid/view/ContextThemeWrapper;')
  assert outcome=='BOUNDARY' and s.f[FAILED]==0
  vm.execute('stabilityReleaseStatusBar()Z',[s]);assert vm.execute('stabilityReleaseStatusBar()Z',[s])==1
  cases.append('cleanup_retry_'+str(failed_key))
 for attached,parent in [(True,0),(False,Obj())]:
  s=owner();s.f[ROOT].f.update(attached=attached,parent=parent);before=len(vm.calls)
  assert vm.execute('stabilityCreateStatusBar(I)V',[s,2038],stop=lambda x:x=='new-instance v0, Landroid/view/ContextThemeWrapper;')==0
  assert not any(x.startswith(H) for x in vm.calls[before:]);cases.append('healthy_or_pending_root_reused')
 s=owner();s.f[DEAD]=1;before=len(vm.calls);vm.execute('Ϡ(I)V',[s,2038]);assert len(vm.calls)==before;cases.append('destroyed_create_blocked')
 for dead,failed in [(1,0),(0,1),(0,0)]:
  s=owner();s.f.update({DEAD:dead,FAILED:failed})
  result=vm.execute('Ϫ()V',[s],stop=lambda x:x=='iget-object v0, p0, '+ROOT)
  assert result==(0 if dead or failed else 'BOUNDARY');cases.append('late_refresh_guard_'+str((dead,failed)))
 for stage in ['inflate','bind','before_add','after_add','preferences']:
  s=owner()
  def fail(s):
   if stage in ('inflate','bind','before_add'):
    for key in [ROOT,TOUCH]:s.f[key].f.update(attached=False,parent=0)
  vm.inject=fail;vm.execute('Ϡ(I)V',[s,2038]);assert all(s.f[k]==0 for k in RES+CHILD);assert s.f[FAILED]==1
  cases.append('outer_exception_'+stage)
 vm.inject=None
 create=vm.ms['stabilityCreateStatusBar(I)V']
 start=create.index('    iput v8, v1, '+N+'->ν:I')
 target=re.search(r'if-nez v0, (:\w+)',create[start:]).group(1)
 end=create.index('    '+target+'\n',start)+len('    '+target)
 body=create[start:end]
 s=owner();s.f[CONTROLLER]=0;vm.warm=0
 vm.execute('',initial={'v1':s,'v8':2038,'v13':6},body=body);first=s.f[CONTROLLER]
 vm.execute('',initial={'v1':s,'v8':2038,'v13':6},body=body)
 assert s.f[CONTROLLER] is first and vm.warm==1;cases.append('controller_single_owner_single_warmup')
 destroy=vm.ms['onDestroy()V']
 assert destroy.count(N+'->stabilityReleaseStatusBar()Z')==1
 assert not re.search(r'iput-object \w+, p0, '+re.escape(ROOT),destroy)
 assert not re.search(r'iput-object \w+, p0, '+re.escape(TOUCH),destroy)
 assert create.count('    throw v0')==2;cases.append('destroy_and_exception_hooks')
 return dict(tree=str(tree),cases=cases,status='PASS; scoped actual-smali branches and explicit call doubles; not ART')

def parent_failure():
 vm=VM(OUT/'worktrees/base06_policy_readonly_r1');s=owner();root=s.f[ROOT]
 vm.execute('Ϡ(I)V',initial={'v0':Failure(),'v9':'tag','v1':s,'v10':0},start=':catch_4')
 assert s.f[ROOT]==0 and root.f['attached'] and not root.f.get('released')
 create=vm.ms['Ϡ(I)V'];start=create.index('    new-instance v0, Lo/ff;');end=create.index('    invoke-virtual {v0}, Lo/ff;->ͻ()V',start)+len('    invoke-virtual {v0}, Lo/ff;->ͻ()V')
 block=create[start:end];s=owner();vm.warm=0
 vm.execute('',initial={'v1':s,'v8':2038,'v13':6},body=block);first=s.f[CONTROLLER]
 vm.execute('',initial={'v1':s,'v8':2038,'v13':6},body=block)
 assert s.f[CONTROLLER] is not first and vm.warm==2
 return 'Original catch discards an attached root; repeated original controller block overwrites the owner and posts warmup twice (actual instructions).'
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 result={'parent_reproduction':parent_failure(),'artifacts':[check(OUT/'worktrees/base08_statusbar_rollback_r1')]}
 if a.final:result['artifacts'].append(check(OUT/'final_redecode/base08_r1'))
 (OUT/('base08_r1_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(result,indent=2),encoding='utf-8')
 print('PASS: original orphan reproduced; '+str(len(result['artifacts'][0]['cases']))+' cleanup, failed retry, pending attach, late callback, exception and controller cases per artifact. Helpers tested separately in JVM; no Android runtime.')
