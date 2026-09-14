"""Single-purpose reversible patch: release the original static wallpaper UI callback."""
import difflib, json, shutil
from pathlib import Path
from stability_local_audit_20260905 import sha, methods

OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'references/Launcher_Rebuild_Test'
DST=OUT/'worktrees/base01_wallpaper_callback_r2'

def replace_once(text,old,new):
    if text.count(old)!=1:raise ValueError(f'Expected one anchor, found {text.count(old)}')
    return text.replace(old,new,1)

def main():
    if DST.exists():raise ValueError('Never overwrite a worktree; use a new patch revision')
    if (SRC/'.audit_decode_ok').read_text()!='FF06F8215156DC6CDA888C699B42FD5706A7E5E44E97227A0340A4EEA24DAAE9':raise ValueError('Wrong baseline')
    # Exclude only root build artifacts; nested unknown/META-INF/com/android/build is real input.
    shutil.copytree(SRC,DST,ignore=lambda directory,names:[n for n in names if Path(directory)==SRC and n in ('build','dist','.audit_decode_ok')])
    rel='smali/com/byd/launcher/MainActivity.smali';p=DST/rel;before=p.read_text(encoding='utf-8')
    anchor='    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z\n\n    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;'
    new='''    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    # BASE-01: clear only this Activity's static wallpaper callback.
    sget-object v0, Lo/ak;->ͻ:Ljava/lang/Runnable;
    instance-of v1, v0, Lo/y7;
    if-eqz v1, :base01_callback_done
    check-cast v0, Lo/y7;
    iget-object v1, v0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;
    if-ne v1, p0, :base01_callback_done
    const/4 v1, 0x0
    sput-object v1, Lo/ak;->ͻ:Ljava/lang/Runnable;
    :base01_callback_done

    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;'''
    after=replace_once(before,anchor,new)
    anchor='.method public final ͱ()V\n    .locals 3\n'
    after=replace_once(after,anchor,anchor+'''
    # A callback already read by another thread must not update a destroyed window.
    iget-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z
    if-eqz v0, :base01_window_alive
    return-void
    :base01_window_alive
''')
    p.write_text(after,encoding='utf-8',newline='\n')
    changes=[(rel,before,after)]
    rel='smali/o/ak.smali';p=DST/rel;before=p.read_text(encoding='utf-8')
    anchor='''    sget-object p0, Lo/ak;->ͻ:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    sget-object p0, Lo/ak;->ͻ:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V'''
    after=replace_once(before,anchor,'''    # Read the volatile callback once; onDestroy may clear it between reads.
    sget-object p0, Lo/ak;->ͻ:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V''')
    p.write_text(after,encoding='utf-8',newline='\n');changes.append((rel,before,after))
    patch=''.join(''.join(difflib.unified_diff(a.splitlines(True),b.splitlines(True),fromfile='baseline/'+rel,tofile='base01/'+rel)) for rel,a,b in changes)
    (OUT/'base01_r2.patch').write_text(patch,encoding='utf-8')
    record=[]
    for rel,a,b in changes:
        ma,mb=methods(SRC/rel),methods(DST/rel)
        changed=[k for k in ma.keys()|mb.keys() if ma.get(k,('',0))[0]!=mb.get(k,('',0))[0]]
        record.append(dict(path=rel,before_sha=sha(SRC/rel),after_sha=sha(DST/rel),methods=changed))
    (OUT/'base01_r2_changes.json').write_text(json.dumps(record,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps(record,ensure_ascii=True))
if __name__=='__main__':main()
