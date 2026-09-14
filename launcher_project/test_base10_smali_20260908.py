"""Execute compiled handler's actual smali against the actual lifetime helper.
Only Handler/Looper operations are recording doubles; never execute Android/IPC.
"""
import argparse,json,re
from stability_base10_patch_20260908 import OUT,SRC,DST,TAG,H
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import norm
from test_base09_smali_20260908 import VM,Obj,LIFE,FF,NAV,controller,guard_checks,disposal_checks

class QueueVM:
    def __init__(self,tree):
        self.life=VM(tree);self.ms={s.split()[-1]:b for s,(b,_) in methods(tree/'smali/com/byd/launcher/stability/QuickSettingsHandler.smali').items()}
        self.pending=[];self.dispatched=[];self.sends=0;self.clears=0;self.accept=True;self.mid_enqueue=None
    def execute(self,sig,args):
        lines=[s.strip() for s in self.ms[sig].splitlines() if s.strip() and not s.strip().startswith(('.','#'))]
        labels={l:i for i,l in enumerate(lines) if l.startswith(':')};r={f'p{i}':a for i,a in enumerate(args)};pc=0;result=None
        for _ in range(120):
            l=lines[pc];pc+=1
            if l.startswith(':'):continue
            op,_,rest=l.partition(' ');p=rest.split(', ')
            if op.startswith('iget'):r[p[0]]=r[p[1]].f[p[2]]
            elif op.startswith('iput'):r[p[1]].f[p[2]]=r[p[0]]
            elif op.startswith('move-result'):r[rest]=result
            elif op.startswith('const'):r[p[0]]=int(p[1],0)
            elif op in ('if-eqz','if-nez'):
                if (not r[p[0]]) if op=='if-eqz' else bool(r[p[0]]):pc=labels[p[1]]
            elif op.startswith('invoke'):
                regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups();a=[r[k] for k in regs.split(', ')] if regs else []
                if target==LIFE+'->isDisposed(Ljava/lang/Object;)Z':result=self.life.execute(LIFE,'isDisposed(Ljava/lang/Object;)Z',a)
                elif target=='Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;':result='MAIN'
                elif target=='Landroid/os/Handler;-><init>(Landroid/os/Looper;)V':assert a[1]=='MAIN';a[0].f['looper']=a[1]
                elif target=='Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z':
                    assert op=='invoke-super';self.sends+=1
                    if self.mid_enqueue:self.mid_enqueue()
                    if self.accept:self.pending.append(a[1])
                    result=int(self.accept)
                elif target==H+'->removeCallbacksAndMessages(Ljava/lang/Object;)V':
                    assert a[1]==0;self.clears+=1;self.pending.clear()
                elif target=='Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V':
                    assert op=='invoke-super';self.dispatched.append(a[1])
                else:raise AssertionError('Unmodelled external call: '+target)
            elif op=='return-void':return None
            elif op=='return':return r[rest]
            else:raise AssertionError(l)
        raise AssertionError('Loop budget')

def check(tree,allowed_controller_changes=()):
    vm=QueueVM(tree);cases=[];msg=Obj('ViewOnlyMessage');send='sendMessageAtTime(Landroid/os/Message;J)Z';dispatch='dispatchMessage(Landroid/os/Message;)V'
    for state in ['alive','controller_disposed','service_destroyed']:
        c=controller();c.f[FF+'->stabilityDisposed:Z']=int(state=='controller_disposed')
        if state=='service_destroyed':c.f[FF+'->ˋ:Landroid/content/Context;'].f[NAV+'->ˋ:Z']=1
        h=Obj(H);vm.execute('<init>(Ljava/lang/Object;)V',[h,c]);assert h.f['looper']=='MAIN'
        before=(vm.sends,len(vm.dispatched));result=vm.execute(send,[h,msg,8000,0]);vm.execute(dispatch,[h,msg])
        assert result==int(state=='alive')
        assert vm.sends-before[0]==int(state=='alive') and len(vm.dispatched)-before[1]==int(state=='alive');cases.append(state)
    c=controller();h=Obj(H);vm.execute('<init>(Ljava/lang/Object;)V',[h,c]);vm.accept=False
    assert vm.execute(send,[h,msg,0,0])==0;cases.append('platform_rejection_preserved');vm.accept=True
    def destroy_before_enqueue():
        c.f[FF+'->stabilityDisposed:Z']=1;vm.pending.clear()
    vm.mid_enqueue=destroy_before_enqueue
    assert vm.execute(send,[h,msg,0,0])==0 and not vm.pending and vm.clears==1
    cases.append('destroy_clear_before_enqueue_recheck_removes_late_message');vm.mid_enqueue=None
    before=len(vm.dispatched);vm.execute(dispatch,[h,msg]);assert len(vm.dispatched)==before;cases.append('dequeued_or_front_message_stopped')
    # Wiring: both ff handlers use this constructor; all its other methods are identical.
    before=methods(SRC/'smali/o/ff.smali');after=methods(tree/'smali/o/ff.smali')
    ctor=next(b for s,(b,_) in after.items() if '<init>' in s)
    assert ctor.count(H+'-><init>(Ljava/lang/Object;)V')==2
    assert 'Ljava/lang/Object;-><init>()V' in ctor and 'Landroid/os/Handler;-><init>' not in ctor
    a=dict(norm(SRC/'smali/o/ff.smali')[1]);b=dict(norm(tree/'smali/o/ff.smali')[1])
    assert a.keys()==b.keys()
    unchanged=[s for s in a if '<init>' not in s and s.split()[-1] not in allowed_controller_changes]
    assert all(a[s]==b[s] for s in unchanged)
    guards=guard_checks(tree);disposals=disposal_checks(tree)
    return dict(tree=str(tree),handler_cases=cases,other_controller_methods_preserved=len(unchanged),inherited_guards=guards,inherited_disposal_cases=len(disposals),status='PASS; actual smali with Handler/Looper doubles; not ART')

def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');args=p.parse_args()
    rows=[check(DST)]
    if args.final:rows.append(check(OUT/'final_redecode'/TAG))
    (OUT/(TAG+'_branch_tests'+('_final' if args.final else '')+'.json')).write_text(json.dumps(rows,indent=2),encoding='utf-8')
    print('PASS: actual compiled handler/lifetime integration, constructor ownership, 6 queue branches and all inherited 60 guards/15 disposal cases per artifact.')
if __name__=='__main__':main()
