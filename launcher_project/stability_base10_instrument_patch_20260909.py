"""Integrate instrument-owned publication/retries, preserving original queries/actions."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_read_keys_r6';DST=OUT/'worktrees/base10_instrument_reads_r7';TAG='base10_r7'
S='Lcom/byd/launcher/stability/InstrumentReads;';Q='Lcom/byd/launcher/stability/InstrumentReads$Request;';H='Lcom/byd/launcher/stability/InstrumentReadHost;'

def host():
    result=f'.class public final {H}\n.super Ljava/lang/Object;\n.implements Lcom/byd/launcher/stability/InstrumentReads$Host;\n.field private final owner:Lo/ff;\n'
    def method(sig,locals,code):
        nonlocal result
        result+=f'\n.method public {sig}\n    .locals {locals}\n'+code+'\n.end method\n'
    load=f'    iget-object v0, p0, {H}->owner:Lo/ff;\n'
    method('constructor <init>(Lo/ff;)V',0,f'    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V\n    iput-object p1, p0, {H}->owner:Lo/ff;\n    return-void')
    for sig,field in [('root()Ljava/lang/Object;','ͳ:Landroid/view/View;'),('cached()I','Ι:I'),('delays()[I','Τ:[I')]:
        code=('    sget-object v0, Lo/ff;->'+field+'\n') if sig.startswith('delays') else load+('    iget v0' if sig.startswith('cached') else '    iget-object v0')+', v0, Lo/ff;->'+field+'\n'
        method(sig,1,code+('    return v0' if sig.startswith('cached') else '    return-object v0'))
    method('commit(I)V',1,load+'    iput p1, v0, Lo/ff;->Ι:I\n    return-void')
    method('retryState(IZ)V',1,load+'    iput p1, v0, Lo/ff;->Κ:I\n    iput-boolean p2, v0, Lo/ff;->Θ:Z\n    return-void')
    method('refresh()V',1,load+'    invoke-virtual {v0}, Lo/ff;->ͽ()V\n    return-void')
    method('post(Ljava/lang/Runnable;J)Z',1,load+'    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;\n    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z\n    move-result v0\n    return v0')
    method('remove(Ljava/lang/Runnable;)V',1,load+'    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;\n    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V\n    return-void')
    method('failed(Ljava/lang/RuntimeException;)V',2,'    const-string v0, "QuickSettingsMgr"\n    const-string v1, "Instrument result or retry failed"\n    invoke-static {v0, v1, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V\n    return-void')
    method('usable(Ljava/lang/Object;)Z',3,load+'''    if-eqz p1, :no
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v1, v2, :no
    iget-object v1, v0, Lo/ff;->ͳ:Landroid/view/View;
    if-eq p1, v1, :yes
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->Ώ:Landroid/view/View;
    if-ne p1, v1, :no
    :yes
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0''')
    return result

def main():
    assert (OUT/'base10_r6_cumulative_content.json').exists();assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before[:100])
        p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    def body(cls,sig):return next(b for s,(b,_) in methods(DST/f'smali/o/{cls}.smali').items() if s.split()[-1]==sig)
    f='smali/o/ff.smali';ie='smali/o/ie.smali';je='smali/o/je.smali';se='smali/o/se.smali'
    replace(f,'# instance fields\n','# instance fields\n.field public final stabilityInstrumentReads:'+S+'\n')
    ctor=next(b for s,(b,_) in methods(DST/f).items() if '<init>' in s)
    needle='    iput-object v0, p0, Lo/ff;->ͱ:Landroid/os/Handler;\n'
    init=f'\n    new-instance v0, {H}\n    invoke-direct {{v0, p0}}, {H}-><init>(Lo/ff;)V\n    new-instance v1, {S}\n    invoke-direct {{v1, v0}}, {S}-><init>(Lcom/byd/launcher/stability/InstrumentReads$Host;)V\n    iput-object v1, p0, Lo/ff;->stabilityInstrumentReads:{S}\n'
    replace(f,ctor,ctor.replace(needle,needle+init))
    for sig in ['ʹ()V','Ά()V','stabilityDispose()Z']:
        b=body('ff',sig);reg='v2' if sig=='stabilityDispose()Z' else 'v0'
        needle=f'    invoke-virtual {{{reg}}}, Lcom/byd/launcher/stability/LatestRead;->invalidate()V\n'
        extra=f'    iget-object {reg}, p0, Lo/ff;->stabilityInstrumentReads:{S}\n    invoke-virtual {{{reg}}}, {S}->invalidate()V\n'
        replace(f,b,b.replace(needle,needle+extra))
    b=body('ff','ͽ()V');new=b.replace('    iget-object v1, p0, Lo/ff;->Ͱ:Landroid/os/Handler;',f'    iget-object v1, p0, Lo/ff;->stabilityInstrumentReads:{S}').replace('    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z',f'    invoke-virtual {{v1, v2}}, {S}->applyCached(Ljava/lang/Runnable;)V');replace(f,b,new)
    for rel,cls in [(ie,'ie'),(je,'je')]:
        replace(rel,'# instance fields\n','# instance fields\n.field public final stabilityInstrumentRequest:'+Q+'\n')
        ctor=next(b for s,(b,_) in methods(DST/rel).items() if '<init>' in s)
        if cls=='ie':
            extra=f'''\n    const/16 v0, 0x1c
    if-ne p2, v0, :instrument_capture_done
    iget-object v0, p1, Lo/ff;->stabilityInstrumentReads:{S}
    const/4 v1, 0x1
    invoke-virtual {{v0, v1}}, {S}->begin(Z){Q}
    move-result-object v0
    iput-object v0, p0, Lo/ie;->stabilityInstrumentRequest:{Q}
    :instrument_capture_done
'''
            new=ctor.replace('.locals 0','.locals 2').replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+extra)
        else:
            extra=f'''\n    const/4 v0, 0x1
    if-ne p4, v0, :instrument_capture_done
    iget-object v0, p1, Lo/ff;->stabilityInstrumentReads:{S}
    const/4 p4, 0x0
    invoke-virtual {{v0, p4}}, {S}->begin(Z){Q}
    move-result-object v0
    iput-object v0, p0, Lo/je;->stabilityInstrumentRequest:{Q}
    :instrument_capture_done
'''
            new=ctor.replace('    :nav_capture_done\n','    :nav_capture_done\n'+extra)
        replace(rel,ctor,new)
    b=body('ie','run()V');a=b.index('    :pswitch_0\n');end=b.index('    :pswitch_1\n',a);old=b[a:end];new=old
    for line in ['    iput v1, v0, Lo/ff;->Ι:I','    iput v13, v0, Lo/ff;->Κ:I']:new=new.replace(line,'    # Instrument cache/retry state commits with accepted main-thread result.')
    new=new.replace('    iget-object v2, v0, Lo/ff;->Ͱ:Landroid/os/Handler;',f'    iget-object v2, p0, Lo/ie;->stabilityInstrumentRequest:{Q}',1)
    new=new.replace('    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z',f'    invoke-virtual {{v2, v1, v3}}, {Q}->complete(ILjava/lang/Runnable;)V')
    x=new.index('    iget-boolean v1, v0, Lo/ff;->Θ:Z');y=new.index('    :try_end_0',x)
    new=new[:x]+f'    iget-object v1, p0, Lo/ie;->stabilityInstrumentRequest:{Q}\n    invoke-virtual {{v1}}, {Q}->invalid()V\n'+new[y:]
    replace(ie,old,new)
    b=body('je','run()V');a=b.index('    :pswitch_0\n');end=b.index('    :pswitch_1\n',a);old=b[a:end]
    new=old.replace('    iget-object v1, v3, Lo/ff;->Ͱ:Landroid/os/Handler;',f'    iget-object v1, p0, Lo/je;->stabilityInstrumentRequest:{Q}').replace('    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z',f'    invoke-virtual {{v1, v5, v3}}, {Q}->complete(ILjava/lang/Runnable;)V')
    replace(je,old,new)
    old=body('se','onStartTrackingTouch(Landroid/widget/SeekBar;)V')
    new=f'''.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    iget v0, p0, Lo/se;->ˋ:I
    const/4 v1, 0x1
    if-ne v0, v1, :done
    iget-object v0, p0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {{v0}}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :done
    iget-object v0, v0, Lo/ff;->stabilityInstrumentReads:{S}
    const/4 v1, 0x1
    invoke-virtual {{v0, v1}}, {S}->tracking(Z)V
    :done
    return-void
.end method'''
    replace(se,old,new)
    b=body('se','onStopTrackingTouch(Landroid/widget/SeekBar;)V');needle='    :pswitch_0\n'
    hook=f'    iget-object v3, p0, Lo/se;->Ͱ:Lo/ff;\n    iget-object v3, v3, Lo/ff;->stabilityInstrumentReads:{S}\n    const/4 v4, 0x0\n    invoke-virtual {{v3, v4}}, {S}->tracking(Z)V\n'
    replace(se,b,b.replace(needle,needle+hook,1))
    module=OUT/'modules/instrument_reads_r1/decoded/smali/com/byd/launcher/stability';files=sorted(module.glob('*.smali'));assert files
    for p in files:shutil.copy2(p,DST/'smali/com/byd/launcher/stability'/p.name)
    (DST/'smali/com/byd/launcher/stability/InstrumentReadHost.smali').write_text(host(),encoding='utf-8')
    (OUT/f'{TAG}_instrument_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    changed=[f,ie,je,se]+['smali/com/byd/launcher/stability/'+p.name for p in files]+['smali/com/byd/launcher/stability/InstrumentReadHost.smali']
    (OUT/f'{TAG}_changes.json').write_text(json.dumps(changed,indent=2),encoding='utf-8')
    diff=[]
    for rel in changed:
        old=(SRC/rel).read_text(encoding='utf-8') if (SRC/rel).exists() else ''
        diff.extend(difflib.unified_diff(old.splitlines(True),(DST/rel).read_text(encoding='utf-8').splitlines(True),fromfile='base10_r6/'+rel,tofile=TAG+'/'+rel))
    (OUT/f'{TAG}.patch').write_text(''.join(diff),encoding='utf-8')
    print('Instrument initial/refresh share owned state; cache/UI/retries guarded, close and tracking invalidate; original query/action blocks retained.')
if __name__=='__main__':main()
