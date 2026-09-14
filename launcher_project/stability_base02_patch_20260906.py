"""Connect Activity destruction to the existing wallpaper Adapter teardown."""
import json,shutil,difflib
from pathlib import Path
from stability_base01_patch_20260905 import replace_once
from stability_local_audit_20260905 import sha,methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base01_wallpaper_callback_r2';DST=OUT/'worktrees/base02_adapter_detach_r1'
def main():
    assert json.loads((OUT/'base01_r2_verification.json').read_text())['unexpected_source_changes']==[]
    if DST.exists():raise ValueError('Refuse overwrite')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    changes=[]
    rel='smali/com/byd/launcher/MainActivity.smali';p=DST/rel;a=p.read_text(encoding='utf-8')
    old='''    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V'''
    new='''    :cond_1
    # BASE-02: setAdapter(null) runs Adapter.onDetachedFromRecyclerView and recycles holders.
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;
    if-eqz v0, :base02_adapter_done
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;
    :base02_adapter_done
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V'''
    b=replace_once(a,old,new);p.write_text(b,encoding='utf-8',newline='\n');changes.append((rel,a,b))
    rel='smali/o/ak.smali';p=DST/rel;a=p.read_text(encoding='utf-8')
    key='public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V';body=methods(p)[key][0]
    fixed=replace_once(body,'    .locals 0','    .locals 1')
    fixed=replace_once(fixed,'    return-void','''    iget-object v0, p0, Lo/ak;->ͱ:Landroid/os/Handler;
    const/4 p1, 0x0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    return-void''')
    b=replace_once(a,body,fixed);p.write_text(b,encoding='utf-8',newline='\n');changes.append((rel,a,b))
    (OUT/'base02_r1.patch').write_text(''.join(''.join(difflib.unified_diff(a.splitlines(True),b.splitlines(True),fromfile='base01_r2/'+r,tofile='base02_r1/'+r)) for r,a,b in changes),encoding='utf-8')
    (OUT/'base02_r1_changes.json').write_text(json.dumps([dict(path=r,before_sha=sha(SRC/r),after_sha=sha(DST/r)) for r,a,b in changes],indent=2),encoding='utf-8')
    print('BASE-02 created; two files changed, adapter shutdown/queued callbacks only.')
if __name__=='__main__':main()
