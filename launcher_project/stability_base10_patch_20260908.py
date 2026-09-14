"""BASE-10 first checkpoint: reject UI work after permanent controller disposal.
This does not yet bound existing worker threads or identify panel generations.
"""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods,sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base09_quick_dispose_r3'
DST=OUT/'worktrees/base10_owned_handler_r1'
TAG='base10_r1'
H='Lcom/byd/launcher/stability/QuickSettingsHandler;'

def main():
    assert not DST.exists(),'Refuse overwrite'
    def ignore(path,names):
        return [n for n in names if Path(path)==SRC and n in ('build','dist','.audit_decode_ok')]
    shutil.copytree(SRC,DST,ignore=ignore)
    rel='smali/o/ff.smali';p=DST/rel;old=p.read_text(encoding='utf-8')
    ctor=next(b for s,(b,_) in methods(p).items() if s.endswith('<init>(Landroid/content/Context;Landroid/view/WindowManager;)V'))
    assert ctor.count('new-instance v0, Landroid/os/Handler;')==2
    assert ctor.count('invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V')==2
    # Preserve the register layout and both final Handler-typed field bindings.
    new=ctor.replace('new-instance v0, Landroid/os/Handler;',f'new-instance v0, {H}')
    new=new.replace('invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;\n\n    move-result-object v1\n\n    ','')
    assert 'getMainLooper' not in new
    new=new.replace('invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V',f'invoke-direct {{v0, p0}}, {H}-><init>(Ljava/lang/Object;)V')
    updated=old.replace(ctor,new);p.write_text(updated,encoding='utf-8')
    helper='smali/com/byd/launcher/stability/QuickSettingsHandler.smali'
    src=OUT/'modules/quick_handler_r1/decoded'/helper
    assert src.exists();shutil.copyfile(src,DST/helper)
    changes=[dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(p)),dict(path=helper,before_sha='',after_sha=sha(DST/helper))]
    (OUT/f'{TAG}_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/f'{TAG}.patch').write_text(''.join(difflib.unified_diff(old.splitlines(True),updated.splitlines(True),fromfile='base09_r3/'+rel,tofile=TAG+'/'+rel)),encoding='utf-8')
    print('BASE-10 r1 independent worktree: two owned main-thread queues and one compiled helper; worker bounds remain open.')
if __name__=='__main__':main()
