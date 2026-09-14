"""UI read suppression during existing SOC actions; never alter or send an action."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
from stability_base10_soc_patch_20260909 import OUT,P,S,SLOT
SRC=OUT/'worktrees/base10_soc_reads_r9';DST=OUT/'worktrees/base10_soc_action_reads_r9b'
G=P+'ReadAfterAction;';T=P+'ReadAfterAction$Token;';A=P+'SocAction;'
HELPER=f'''.class public final {A}
.super Ljava/lang/Object;
.method public static begin(Lo/ff;){T}
    .locals 4
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilitySocActionGate:{G}
    invoke-static {{}}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    invoke-virtual {{v0, v1, v2}}, {G}->begin(J){T}
    move-result-object v0
    return-object v0
.end method
.method public static finish(Lo/ff;{T})V
    .locals 1
    if-eqz p1, :done
    invoke-virtual {{p1}}, {T}->finish()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    :done
    return-void
.end method
.method public static finishJob(Lo/bg;)V
    .locals 2
    iget-object v1, p0, Lo/bg;->stabilitySocActionToken:{T}
    if-eqz v1, :done
    iget-object v0, p0, Lo/bg;->Ͳ:Ljava/lang/Object;
    check-cast v0, Lo/re;
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {{v0, v1}}, {A}->finish(Lo/ff;{T})V
    :done
    return-void
.end method
.method public static finishCallback(Lo/oa;)V
    .locals 2
    iget-object v1, p0, Lo/oa;->stabilitySocActionToken:{T}
    if-eqz v1, :done
    iget-object v0, p0, Lo/oa;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/re;
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {{v0, v1}}, {A}->finish(Lo/ff;{T})V
    :done
    return-void
.end method
'''
def main():
    assert (OUT/'base10_r9_verification.json').exists();assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before[:100]);p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    def method(rel,sig,fn):
        b=next(b for s,(b,n) in methods(DST/rel).items() if s.split()[-1]==sig);replace(rel,b,fn(b))
    replace('smali/o/ff.smali','# instance fields',f'# instance fields\n.field public final stabilitySocActionGate:{G}')
    init=f'''    new-instance v0, {G}
    invoke-direct {{v0}}, {G}-><init>()V
    iput-object v0, p0, Lo/ff;->stabilitySocActionGate:{G}
'''
    method('smali/o/ff.smali','<init>(Landroid/content/Context;Landroid/view/WindowManager;)V',lambda b:b.replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+init,1))
    rel='smali/com/byd/launcher/stability/SocRead.smali'
    needle='    if-nez v1, :no\n'
    hook=f'''    iget-object v0, v0, Lo/ff;->stabilitySocActionGate:{G}
    invoke-static {{}}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    invoke-virtual {{v0, v1, v2}}, {G}->blocked(J)Z
    move-result v0
    if-nez v0, :no
'''
    method(rel,'current()Z',lambda b:b.replace(needle,needle+hook,1))
    hook=f'''    iget-object v0, p0, Lo/ff;->stabilitySocActionGate:{G}
    invoke-virtual {{v0}}, {G}->reset()V
'''
    method(rel,'close(Lo/ff;)V',lambda b:b.replace('    return-void',hook+'    return-void',1))
    replace('smali/o/bg.smali','# instance fields',f'# instance fields\n.field public final stabilitySocActionToken:{T}')
    hook=f'''    const/4 v0, 0x3
    if-ne p3, v0, :soc_action_capture_done
    move-object v0, p1
    check-cast v0, Lo/re;
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {{v0}}, {A}->begin(Lo/ff;){T}
    move-result-object v0
    iput-object v0, p0, Lo/bg;->stabilitySocActionToken:{T}
    :soc_action_capture_done
'''
    method('smali/o/bg.smali','<init>(Ljava/lang/Object;II)V',lambda b:b.replace('.locals 0','.locals 1',1).replace('    return-void',hook+'    return-void',1))
    replace('smali/o/oa.smali','# instance fields',f'# instance fields\n.field public stabilitySocActionToken:{T}')
    def edit(b):
        start=b.index('    :pswitch_2\n');end=b.index('    :pswitch_3\n',start);part=b[start:end]
        needle='    invoke-direct {v6, v3, v2, v7}, Lo/oa;-><init>(Ljava/lang/Object;II)V'
        assert part.count(needle)==1
        part=part.replace(needle,needle+f'\n    iget-object v7, p0, Lo/bg;->stabilitySocActionToken:{T}\n    iput-object v7, v6, Lo/oa;->stabilitySocActionToken:{T}')
        part=part.replace('    :cond_2\n','    :cond_2\n'+f'    invoke-static {{p0}}, {A}->finishJob(Lo/bg;)V\n',1)
        needle='    :catch_1\n    move-exception v0';assert part.count(needle)==1
        part=part.replace(needle,needle+f'\n    invoke-static {{p0}}, {A}->finishJob(Lo/bg;)V')
        return b[:start]+part+b[end:]
    method('smali/o/bg.smali','run()V',edit)
    for sig,label,job in [('onSuccess(Lorg/json/JSONObject;)V',':goto_6','v6'),('onError(Ljava/lang/String;)V',':goto_0','p0')]:
        method('smali/o/oa.smali',sig,lambda b,l=label,j=job:b.replace('    '+l+'\n','    '+l+'\n'+f'    invoke-static {{{j}}}, {A}->finishCallback(Lo/oa;)V\n',1))
    target=DST/'smali/com/byd/launcher/stability';(target/'SocAction.smali').write_text(HELPER,encoding='utf-8')
    for p in (OUT/'modules/read_after_action_r1/decoded/smali/com/byd/launcher/stability').glob('*.smali'):shutil.copyfile(p,target/p.name)
    changes=['smali/o/'+c+'.smali' for c in ['ff','bg','oa']]+['smali/com/byd/launcher/stability/'+c+'.smali' for c in ['SocRead','SocAction','ReadAfterAction','ReadAfterAction$1','ReadAfterAction$Token']]
    (OUT/'base10_r9b_changes.json').write_text(json.dumps(sorted(changes),indent=2),encoding='utf-8')
    (OUT/'base10_r9b_action_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r9/'+r,tofile='r9b/'+r)) for r in changes)
    (OUT/'base10_r9b.patch').write_text(patch,encoding='utf-8')
    (OUT/'base10_r9b_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT',remaining=['source/final action hook tests','build and cumulative gates'],scope='Suppress reads until existing latest SOC action callback or original 15000ms callback timeout. No command cancellation, retry, query or action execution.'),indent=2),encoding='utf-8')
    print('SOC action read gate drafted; existing request body/ordering unchanged. Not yet tested or built.')
if __name__=='__main__':main()
