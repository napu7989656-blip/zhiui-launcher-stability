import json
from test_base01_smali_20260905 import VM,Obj,activity,MAIN,AK,run_case,OUT
cases=['own_callback_released','new_activity_callback_preserved','missing_callback_safe','destroyed_window_untouched','live_window_unchanged','callback_cleared_after_read']
def dispose(tree,callback):
    vm=VM(tree);a=activity();adapter=Obj(AK,**{AK+'->Ͱ:Ljava/util/concurrent/ExecutorService;':Obj('executor'),AK+'->ͱ:Landroid/os/Handler;':Obj('handler')})
    pager=Obj('pager',adapter=adapter);a.fields[MAIN+'->Ͳ:Landroidx/viewpager2/widget/ViewPager2;']=pager
    a.fields[MAIN+'->ͳ:Lo/e8;']=Obj('page-callback') if callback else 0
    vm.execute(MAIN,'onDestroy()V',[a])
    assert pager.fields['adapter']==0,'Adapter is still attached'
    assert a.fields[MAIN+'->Ͳ:Landroidx/viewpager2/widget/ViewPager2;']==0,'Activity still owns pager'
    assert adapter.fields[AK+'->Ͳ:Z']==1,'Adapter closed flag not set'
    assert 'Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;' in vm.calls
    assert vm.calls.count('Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V')==2
    vm.execute(MAIN,'onDestroy()V',[a]) # repeat destroy must not detach twice
    assert vm.calls.count('Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;')==1
if __name__=='__main__':
    results=[]
    for name,tree in [('parent',OUT/'worktrees/base01_wallpaper_callback_r2'),('patched',OUT/'worktrees/base02_adapter_detach_r1'),('final_apk',OUT/'final_redecode/base02_r1')]:
        if not tree.exists():raise RuntimeError('Missing completed artifact: '+str(tree))
        for cb in [False,True]:
            try:dispose(tree,cb);passed=True;error=''
            except AssertionError as e:passed=False;error=str(e)
            results.append(dict(artifact=name,page_callback_present=cb,passed=passed,error=error))
        for case in cases:assert run_case(tree,case),(name,case)
    assert all(r['passed'] for r in results if r['artifact']!='parent')
    assert all(not r['passed'] for r in results if r['artifact']=='parent')
    (OUT/'base02_r1_branch_tests.json').write_text(json.dumps(results,indent=2),encoding='utf-8')
    print('BASE-02: both teardown cases pass in source/final, both fail in parent; repeat-destroy and 6 BASE-01 regressions pass. Branch doubles, not Android runtime.')
