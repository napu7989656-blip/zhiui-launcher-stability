"""Draft tile checkpoint: pure reads and main-thread cache commit; identity stage follows."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base10_instrument_reads_r7';DST=OUT/'worktrees/base10_tile_reads_r8';TAG='base10_r8'
T='Lcom/byd/launcher/stability/TileState;'
HELPER=f'''.class public final {T}
.super Ljava/lang/Object;
.method public static read(Lo/ef;)Z
    .locals 1
    if-eqz p0, :no
    instance-of v0, p0, Lo/ke;
    if-eqz v0, :other
    check-cast p0, Lo/ke;
    invoke-virtual {{p0}}, Lo/ke;->stabilityRead()Z
    move-result v0
    return v0
    :other
    invoke-interface {{p0}}, Lo/ef;->get()Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method

.method public static commit(Lo/ff;Lo/df;Z)V
    .locals 2
    if-eqz p1, :done
    iget-object v0, p1, Lo/df;->ͳ:Lo/ef;
    instance-of v1, v0, Lo/ke;
    if-eqz v1, :done
    check-cast v0, Lo/ke;
    iget-object v1, v0, Lo/ke;->ˏ:Lo/ff;
    if-ne p0, v1, :done
    invoke-virtual {{v0, p2}}, Lo/ke;->stabilityCommit(Z)V
    :done
    return-void
.end method
'''
COMMIT='''.method public final stabilityCommit(Z)V
    .locals 3
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :done
    iget v1, p0, Lo/ke;->ˋ:I
    const/16 v2, 0xb
    if-ge v1, v2, :mobile
    if-ltz v1, :mobile
    sparse-switch v1, :fields
    :done
    return-void
    :voice
    iput-boolean p1, v0, Lo/ff;->Ο:Z
    return-void
    :energy
    iput-boolean p1, v0, Lo/ff;->Ν:Z
    return-void
    :soc
    iput-boolean p1, v0, Lo/ff;->Ξ:Z
    return-void
    :hdc
    iput-boolean p1, v0, Lo/ff;->Π:Z
    return-void
    :mobile
    iput-boolean p1, v0, Lo/ff;->Μ:Z
    return-void
    :fields
    .sparse-switch
        0x2 -> :voice
        0x3 -> :energy
        0x6 -> :soc
        0x8 -> :hdc
    .end sparse-switch
.end method
'''
def main():
    assert (OUT/'base10_r7_manual_audit.json').exists();assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    records=[]
    def replace(rel,before,after):
        p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before[:100])
        p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
    p=DST/'smali/o/ke.smali';old=p.read_text(encoding='utf-8');b=next(b for s,(b,_) in methods(p).items() if s.split()[-1]=='get()Z')
    writes=re.findall(r'^    iput-boolean v3, v0, Lo/ff;->([ΠΞΝΟΜ]):Z$',b,re.M);assert sorted(writes)==sorted('ΠΞΝΟΜ')
    pure=b.replace('public final get()Z','public final stabilityRead()Z',1)
    for field in writes:pure=pure.replace(f'    iput-boolean v3, v0, Lo/ff;->{field}:Z',f'    # Return the computed {field} state; commit it only with its UI result.\n    return v3')
    extra='\n\n'+pure+'\n\n'+COMMIT
    p.write_text(old+extra,encoding='utf-8');records.append(dict(path='smali/o/ke.smali',before='',after=extra,append_only=True))
    for cls,reg in [('ag','v7'),('ie','v2'),('ce','v0')]:
        replace(f'smali/o/{cls}.smali',f'    invoke-interface {{{reg}}}, Lo/ef;->get()Z',f'    invoke-static {{{reg}}}, {T}->read(Lo/ef;)Z')
    p=DST/'smali/o/fe.smali';b=next(b for s,(b,_) in methods(p).items() if s.split()[-1]=='run()V')
    needle='    iget-object v4, p0, Lo/fe;->ͱ:Lo/ff;\n';hook=f'\n    invoke-static {{v4, v3, v2}}, {T}->commit(Lo/ff;Lo/df;Z)V\n'
    replace('smali/o/fe.smali',b,b.replace(needle,needle+hook,1))
    needle='    invoke-virtual {v0, v5, v6, v7}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V'
    hook=f'    invoke-static {{v0, v5, v6}}, {T}->commit(Lo/ff;Lo/df;Z)V\n'
    replace('smali/o/sj.smali',needle,hook+needle)
    (DST/'smali/com/byd/launcher/stability/TileState.smali').write_text(HELPER,encoding='utf-8')
    (OUT/f'{TAG}_tile_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    (OUT/f'{TAG}_draft_status.json').write_text(json.dumps(dict(status='DRAFT_NOT_BUILT_IDENTITY_STAGE_PENDING',pure_getter_fields=writes,read_callers=['ag16','ie22','ce3'],remaining=['Panel/query/action identity','Bound delayed post-click reads','Source/final tests and all build gates']),indent=2),encoding='utf-8')
    print('Draft r8 created: three read workers use no-cache getter; fe/sj UI paths commit matching owner cache. Identity/bounded follow-up stage still required before build.')
if __name__=='__main__':main()
