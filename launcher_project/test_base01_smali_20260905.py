"""Execute the actual three small smali methods in a restricted branch interpreter.
This tests ownership/null/late-callback logic, NOT Android ART, windows, or concurrency timing.
Unsupported instructions fail loudly. Android calls are isolated recording doubles.
"""
import json,re
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
MAIN='Lcom/byd/launcher/MainActivity;';AK='Lo/ak;';CB=AK+'->ͻ:Ljava/lang/Runnable;'

class Obj:
    def __init__(self,kind,**fields):self.kind=kind;self.fields=fields

class VM:
    def __init__(self,tree):self.tree=tree;self.static={};self.calls=[];self.after_read=None
    def execute(self,owner,sig,args):
        file=self.tree/('smali/'+owner[1:-1]+'.smali')
        body=next(v[0] for k,v in methods(file).items() if k.split()[-1]==sig)
        lines=[l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('.', '#'))]
        labels={line:i for i,line in enumerate(lines) if line.startswith(':')};r={f'p{i}':v for i,v in enumerate(args)};result=None;pc=0
        while pc<len(lines):
            line=lines[pc];pc+=1
            if line.startswith(':'):continue
            op,_,rest=line.partition(' ')
            parts=rest.split(', ')
            if op.startswith('const'):
                n=int(parts[1],0)
                if op.endswith('/high16'):n=n if abs(n)>65535 else n<<16
                r[parts[0]]=n
            elif op.startswith('sget'):
                r[parts[0]]=self.static.get(parts[1],0)
                if self.after_read:self.after_read(parts[1])
            elif op.startswith('sput'):self.static[parts[1]]=r[parts[0]]
            elif op.startswith('iget'):
                if not r[parts[1]]:raise RuntimeError('null field read')
                r[parts[0]]=r[parts[1]].fields.get(parts[2],0)
            elif op.startswith('iput'):
                if not r[parts[1]]:raise RuntimeError('null field write')
                r[parts[1]].fields[parts[2]]=r[parts[0]]
            elif op=='instance-of':r[parts[0]]=int(bool(r[parts[1]]) and r[parts[1]].kind==parts[2])
            elif op=='check-cast':
                if r[parts[0]] and r[parts[0]].kind!=parts[1]:raise RuntimeError('bad cast')
            elif op.startswith('if-'):
                a=r[parts[0]];b=0 if op.endswith('z') else r[parts[1]]
                test={'if-eqz':a==b,'if-nez':a!=b,'if-eq':a==b,'if-ne':a!=b}.get(op)
                if op=='if-lt':test=a<b
                if test is None:raise ValueError(op)
                if test:pc=labels[parts[-1]]
            elif op.startswith('goto'):pc=labels[rest]
            elif op.startswith('invoke'):
                match=re.fullmatch(r'\{([^}]*)\}, (.+)',rest);regs,target=match.groups();vals=[r[x] for x in regs.split(', ')] if regs else []
                if not op.startswith('invoke-static') and not vals[0]:raise RuntimeError('null invoke')
                self.calls.append(target)
                if target=='Ljava/lang/ref/Reference;->get()Ljava/lang/Object;':result=vals[0].fields['value']
                elif target=='Landroid/app/Activity;->getWindow()Landroid/view/Window;':result=Obj('window')
                elif target=='Landroid/view/Window;->getDecorView()Landroid/view/View;':result=Obj('view')
                elif target=='Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V':
                    old=vals[0].fields.get('adapter')
                    if old:self.execute(AK,'onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V',[old,Obj('recycler')])
                    vals[0].fields['adapter']=vals[1];result=None
                elif target in [
                    'Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V',
                    'Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V',
                    'Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V',
                    'Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V',
                    'Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;',
                    'Landroid/view/Window;->addFlags(I)V','Landroid/view/Window;->clearFlags(I)V',
                    'Landroid/view/Window;->setStatusBarColor(I)V','Landroid/view/Window;->setNavigationBarColor(I)V',
                    'Landroid/view/View;->setSystemUiVisibility(I)V','Ljava/lang/Runnable;->run()V']:result=None
                else:raise ValueError('Unsupported call '+target)
            elif op.startswith('move-result'):r[rest]=result
            elif op=='return-void':return
            else:raise ValueError('Unsupported instruction '+line)

def activity():return Obj(MAIN,**{MAIN+'->ˋ:Landroid/os/Handler;':Obj('handler')})

def run_case(tree,name):
    vm=VM(tree);a=activity();b=activity();callback=Obj('Lo/y7;',**{'Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;':a})
    vm.static[MAIN+'->Λ:Ljava/lang/ref/WeakReference;']=Obj('weak',value=a)
    vm.static[CB]=callback
    if name=='own_callback_released':
        vm.execute(MAIN,'onDestroy()V',[a]);return vm.static[CB]==0
    if name=='new_activity_callback_preserved':
        callback.fields['Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;']=b
        vm.execute(MAIN,'onDestroy()V',[a]);return vm.static[CB] is callback
    if name=='missing_callback_safe':
        vm.static[CB]=0;vm.execute(MAIN,'onDestroy()V',[a]);return vm.static[CB]==0
    if name in ('destroyed_window_untouched','live_window_unchanged'):
        a.fields[MAIN+'->ͺ:Z']=int(name=='destroyed_window_untouched');vm.static['Landroid/os/Build$VERSION;->SDK_INT:I']=29
        vm.execute(MAIN,'ͱ()V',[a]);touched='Landroid/app/Activity;->getWindow()Landroid/view/Window;' in vm.calls
        return not touched if name=='destroyed_window_untouched' else touched and vm.calls[-1]=='Landroid/view/View;->setSystemUiVisibility(I)V'
    if name=='callback_cleared_after_read':
        def clear(key):
            if key==CB:vm.static[CB]=0
        vm.after_read=clear
        vm.execute(AK,'ͳ(Landroid/graphics/Bitmap;)V',[Obj('bitmap')])
        return 'Ljava/lang/Runnable;->run()V' in vm.calls
    raise ValueError(name)

if __name__=='__main__':
    cases=['own_callback_released','new_activity_callback_preserved','missing_callback_safe','destroyed_window_untouched','live_window_unchanged','callback_cleared_after_read'];rows=[]
    for name,tree in [('baseline',OUT/'references/Launcher_Rebuild_Test'),('patched',OUT/'worktrees/base01_wallpaper_callback_r2'),('final_apk',OUT/'final_redecode/base01_r2')]:
        if not tree.exists():raise RuntimeError('Required actual artifact is missing: '+str(tree))
        for case in cases:
            try:ok=run_case(tree,case);error=''
            except RuntimeError as e:ok=False;error=str(e)
            rows.append(dict(artifact=name,case=case,passed=ok,error=error))
    (OUT/'base01_r2_branch_tests.json').write_text(json.dumps(rows,indent=2),encoding='utf-8')
    bad=[r for r in rows if r['artifact']!='baseline' and not r['passed']]
    assert not bad,bad
    assert {r['case'] for r in rows if r['artifact']=='baseline' and not r['passed']}=={'own_callback_released','destroyed_window_untouched','callback_cleared_after_read'}
    print('Baseline: 3/6 expected failures; patched source and final APK: 6/6 pass each. Restricted branch semantics only; not an ART/runtime test.')
