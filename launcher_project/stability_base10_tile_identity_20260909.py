"""Second, reviewable stage of r8. No vehicle calls are executed by this script."""
import json, shutil, re
from pathlib import Path
from stability_local_audit_20260905 import methods
from stability_base10_tile_patch_20260909 import OUT,SRC,DST
P='Lcom/byd/launcher/stability/'
S=P+'TileSnapshots;'; B=P+'TileBatch;'; E=P+'TileBatch$Entry;'
SLOT=P+'TileSlot;'; Q=P+'TileSlot$Queue;'; A=P+'TileApply;'
records=[]
def replace(rel,before,after):
    p=DST/rel;s=p.read_text(encoding='utf-8');assert s.count(before)==1,(rel,before[:160],s.count(before))
    p.write_text(s.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
def method(cls,name,fn):
    rel=f'smali/o/{cls}.smali';b=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]==name)
    replace(rel,b,fn(b))
def addfields(cls,txt):replace(f'smali/o/{cls}.smali','# instance fields','# instance fields\n'+txt)
def constructor(cls,fn):
    sig=next(s.split()[-1] for s in methods(DST/f'smali/o/{cls}.smali') if 'constructor <init>' in s);method(cls,sig,fn)

HELPER=f'''.class public final {S}
.super Ljava/lang/Object;
.implements {Q}
.field private final owner:Lo/ff;
.method public constructor <init>(Lo/ff;)V
    .locals 0
    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, {S}->owner:Lo/ff;
    return-void
.end method
.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    iget-object v0, p0, {S}->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {{v0, p1}}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    move-result v0
    return v0
.end method
.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    iget-object v0, p0, {S}->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {{v0, p1}}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
.end method
.method public failed(Ljava/lang/RuntimeException;)V
    .locals 2
    const-string v0, "QuickSettingsMgr"
    const-string v1, "Tile result delivery failed"
    invoke-static {{v0, v1, p1}}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method
.method public static capture(Lo/ff;Lo/df;){B}
    .locals 1
    invoke-static {{p1}}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-static {{p0, v0}}, {S}->capture(Lo/ff;Ljava/util/List;){B}
    move-result-object v0
    return-object v0
.end method
.method public static capture(Lo/ff;Ljava/util/List;){B}
    .locals 6
    new-instance v0, {B}
    move-object v1, p0
    iget-object v2, p0, Lo/ff;->ͳ:Landroid/view/View;
    iget-object v3, p0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    new-instance v4, {S}
    invoke-direct {{v4, p0}}, {S}-><init>(Lo/ff;)V
    invoke-direct {{v0, v1, v2, v3, v4}}, {B}-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;{Q})V
    if-eqz p1, :done
    invoke-interface {{p1}}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v5
    :loop
    invoke-interface {{v5}}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :done
    invoke-interface {{v5}}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lo/df;
    if-eqz v1, :loop
    iget-object v2, v1, Lo/df;->stabilityTileSlot:{SLOT}
    iget-object v3, v1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;
    iget-object v4, v1, Lo/df;->stabilityTileAction:Ljava/lang/Object;
    invoke-virtual {{v0, v1, v2, v3, v4}}, {B}->capture(Ljava/lang/Object;{SLOT}Ljava/lang/Object;Ljava/lang/Object;)V
    goto :loop
    :done
    return-object v0
.end method
.method public static usable({B})Z
    .locals 4
    if-eqz p0, :no
    iget-object v0, p0, {B}->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {{v0}}, {P}QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v1, v2, :no
    iget-object v1, p0, {B}->epoch:Ljava/lang/Object;
    iget-object v2, v0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    if-ne v1, v2, :no
    iget-object v1, p0, {B}->root:Ljava/lang/Object;
    if-eqz v1, :no
    iget-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;
    if-eq v1, v2, :yes
    if-nez v2, :no
    iget-object v2, v0, Lo/ff;->Ώ:Landroid/view/View;
    if-ne v1, v2, :no
    :yes
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public static accept({B}Lo/df;)Z
    .locals 4
    invoke-static {{p0}}, {S}->usable({B})Z
    move-result v0
    if-eqz v0, :no
    if-eqz p1, :no
    invoke-virtual {{p0, p1}}, {B}->current(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :no
    invoke-virtual {{p0, p1}}, {B}->entry(Ljava/lang/Object;){E}
    move-result-object v0
    iget-object v1, v0, {E}->frame:Ljava/lang/Object;
    if-eqz v1, :no
    iget-object v2, p1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;
    if-ne v1, v2, :no
    iget-object v1, v0, {E}->action:Ljava/lang/Object;
    iget-object v2, p1, Lo/df;->stabilityTileAction:Ljava/lang/Object;
    if-ne v1, v2, :no
    iget-object v0, p0, {B}->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    iget-object v0, v0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {{v0, p1}}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public static read({B}Lo/df;Lo/ef;)Z
    .locals 1
    invoke-static {{p0, p1}}, {S}->accept({B}Lo/df;)Z
    move-result v0
    if-eqz v0, :no
    invoke-static {{p2}}, {P}TileState;->read(Lo/ef;)Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public static action(Lo/df;)V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {{v0}}, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lo/df;->stabilityTileAction:Ljava/lang/Object;
    iget-object v0, p0, Lo/df;->stabilityTileSlot:{SLOT}
    invoke-virtual {{v0}}, {SLOT}->invalidate()V
    return-void
.end method
.method public static invalidate(Lo/ff;)V
    .locals 3
    new-instance v0, Ljava/lang/Object;
    invoke-direct {{v0}}, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    iget-object v0, p0, Lo/ff;->Β:Ljava/util/ArrayList;
    if-eqz v0, :done
    invoke-virtual {{v0}}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :loop
    invoke-interface {{v0}}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :done
    invoke-interface {{v0}}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lo/df;
    if-eqz v1, :loop
    iget-object v1, v1, Lo/df;->stabilityTileSlot:{SLOT}
    invoke-virtual {{v1}}, {SLOT}->invalidate()V
    goto :loop
    :done
    return-void
.end method
.method private static row({B}Lo/df;Ljava/lang/Runnable;)V
    .locals 1
    new-instance v0, {A}
    invoke-direct {{v0, p0, p1, p2}}, {A}-><init>({B}Lo/df;Ljava/lang/Runnable;)V
    invoke-virtual {{p0, p1, v0}}, {B}->post(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    return-void
.end method
.method public static post({B}Ljava/lang/Runnable;)Z
    .locals 11
    invoke-static {{p0}}, {S}->usable({B})Z
    move-result v0
    if-eqz v0, :done
    instance-of v0, p1, Lo/fe;
    if-eqz v0, :subtitle
    move-object v0, p1
    check-cast v0, Lo/fe;
    iget-object v0, v0, Lo/fe;->Ͳ:Lo/df;
    invoke-static {{p0, v0, p1}}, {S}->row({B}Lo/df;Ljava/lang/Runnable;)V
    goto :done
    :subtitle
    instance-of v0, p1, Lo/Ϋ;
    if-eqz v0, :batch
    move-object v0, p1
    check-cast v0, Lo/Ϋ;
    iget v1, v0, Lo/Ϋ;->Ͱ:I
    const/4 v2, 0x7
    if-ne v1, v2, :done
    iget-object v0, v0, Lo/Ϋ;->ͳ:Ljava/lang/Object;
    check-cast v0, Lo/df;
    invoke-static {{p0, v0, p1}}, {S}->row({B}Lo/df;Ljava/lang/Runnable;)V
    goto :done
    :batch
    instance-of v0, p1, Lo/sj;
    if-eqz v0, :done
    check-cast p1, Lo/sj;
    iget v0, p1, Lo/sj;->Ͱ:I
    const/4 v1, 0x4
    if-ne v0, v1, :done
    iget-object v0, p1, Lo/sj;->ͱ:Ljava/lang/Object;
    check-cast v0, Ljava/util/List;
    iget-object v1, p1, Lo/sj;->Ͳ:Ljava/lang/Object;
    check-cast v1, [Z
    iget-object v2, p1, Lo/sj;->ʹ:Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;
    const/4 v3, 0x0
    :loop
    invoke-interface {{v0}}, Ljava/util/List;->size()I
    move-result v10
    if-ge v3, v10, :done
    new-instance v4, Lo/fe;
    iget-object v5, p0, {B}->owner:Ljava/lang/Object;
    check-cast v5, Lo/ff;
    invoke-interface {{v0, v3}}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lo/df;
    aget-boolean v7, v1, v3
    aget-object v8, v2, v3
    const/4 v9, 0x0
    invoke-direct/range {{v4 .. v9}}, Lo/fe;-><init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V
    invoke-static {{p0, v6, v4}}, {S}->row({B}Lo/df;Ljava/lang/Runnable;)V
    add-int/lit8 v3, v3, 0x1
    goto :loop
    :done
    const/4 v0, 0x0
    return v0
.end method
'''
APPLY=f'''.class public final {A}
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final batch:{B}
.field private final tile:Lo/df;
.field private final delegate:Ljava/lang/Runnable;
.method public constructor <init>({B}Lo/df;Ljava/lang/Runnable;)V
    .locals 0
    invoke-direct {{p0}}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, {A}->batch:{B}
    iput-object p2, p0, {A}->tile:Lo/df;
    iput-object p3, p0, {A}->delegate:Ljava/lang/Runnable;
    return-void
.end method
.method public run()V
    .locals 2
    iget-object v0, p0, {A}->batch:{B}
    iget-object v1, p0, {A}->tile:Lo/df;
    invoke-static {{v0, v1}}, {S}->accept({B}Lo/df;)Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, {A}->delegate:Ljava/lang/Runnable;
    invoke-interface {{v0}}, Ljava/lang/Runnable;->run()V
    :done
    return-void
.end method
'''

def main():
    assert not (OUT/'base10_r8_identity_manifest.json').exists()
    addfields('df',f'.field public final stabilityTileSlot:{SLOT}\n.field public volatile stabilityTileAction:Ljava/lang/Object;')
    init=f'''    new-instance v0, {SLOT}
    invoke-direct {{v0}}, {SLOT}-><init>()V
    iput-object v0, p0, Lo/df;->stabilityTileSlot:{SLOT}
    invoke-static {{p0}}, {S}->action(Lo/df;)V
'''
    constructor('df',lambda b:b.replace('    return-void',init+'    return-void'))
    addfields('ff','.field public volatile stabilityTileEpoch:Ljava/lang/Object;')
    init='''    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
'''
    constructor('ff',lambda b:b.replace('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V','    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n'+init,1))
    rel='smali/o/ff.smali';txt=(DST/rel).read_text(encoding='utf-8')
    pattern=r'    invoke-virtual \{v[02]\}, '+re.escape(P)+r'InstrumentReads;->invalidate\(\)V'
    assert len(re.findall(pattern,txt))==3
    replace(rel,txt,re.sub(pattern,lambda m:m[0]+f'\n    invoke-static/range {{p0 .. p0}}, {S}->invalidate(Lo/ff;)V',txt))
    method('ff','Ό()V',lambda b:b.replace('    invoke-virtual {p0}, Lo/ff;->Ͳ()V',f'    invoke-static {{p0}}, {S}->invalidate(Lo/ff;)V\n    invoke-virtual {{p0}}, Lo/ff;->Ͳ()V',1))
    needle='    iput-wide v1, v0, Lo/df;->ͼ:J'
    replace('smali/o/Ϙ.smali',needle,needle+f'\n    invoke-static {{v0}}, {S}->action(Lo/df;)V')
    hooks={
      'ag':f'''    const/16 v0, 0x10
    if-ne p1, v0, :tile_capture_done
    move-object v0, p2
    check-cast v0, Lo/ff;
    move-object v1, p3
    check-cast v1, Ljava/util/List;
    invoke-static {{v0, v1}}, {S}->capture(Lo/ff;Ljava/util/List;){B}
''',
      'ie':f'''    const/16 v0, 0x16
    if-ne p2, v0, :tile_capture_done
    iget-object v0, p1, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {{p1, v0}}, {S}->capture(Lo/ff;Ljava/util/List;){B}
''',
      'ce':f'''    const/4 v0, 0x3
    if-ne p3, v0, :tile_capture_done
    invoke-static {{p1, p2}}, {S}->capture(Lo/ff;Lo/df;){B}
'''}
    for cls,hook in hooks.items():
        addfields(cls,f'.field public final stabilityTileBatch:{B}')
        tail=f'    move-result-object v0\n    iput-object v0, p0, Lo/{cls};->stabilityTileBatch:{B}\n    :tile_capture_done\n'
        constructor(cls,lambda b,h=hook,t=tail:b.replace('.locals 0','.locals 2',1).replace('    return-void',h+t+'    return-void',1))
    for cls,job,reg,temp,tile in [('ag','v1','v7','v8','v0'),('ie','p0','v2','v3','v6'),('ce','p0','v0','v3','v6')]:
        needle=f'    invoke-static {{{reg}}}, {P}TileState;->read(Lo/ef;)Z'
        replace(f'smali/o/{cls}.smali',needle,f'    iget-object {temp}, {job}, Lo/{cls};->stabilityTileBatch:{B}\n    invoke-static {{{temp}, {tile}, {reg}}}, {S}->read({B}Lo/df;Lo/ef;)Z')
    # Limit replacements to the audited branches, preserving shared lambda selectors.
    for cls,start,end,hreg,oreg,job,cb in [('ag',':pswitch_c\n',':pswitch_d\n','v0','v3','v1','v8'),('ie',':pswitch_6\n',':pswitch_7\n','v2','v0','p0','v3'),('ce',':goto_1\n',':pswitch_data_0\n','v0','v5','p0','v2')]:
        def edit(b):
            # Anchor labels at definitions, never switch payload references.
            i=b.index('    '+start);j=b.index('    '+end,i);part=b[i:j]
            load=f'    iget-object {hreg}, {oreg}, Lo/ff;->Ͱ:Landroid/os/Handler;'
            assert part.count(load)==(2 if cls=='ce' else 1),(cls,part[:100])
            part=part.replace(load,f'    iget-object {hreg}, {job}, Lo/{cls};->stabilityTileBatch:{B}')
            old=f'    invoke-virtual {{{hreg}, {cb}}}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z'
            assert part.count(old)==1
            part=part.replace(old,f'    invoke-static {{{hreg}, {cb}}}, {S}->post({B}Ljava/lang/Runnable;)Z')
            guard=f'''    iget-object v0, {job}, Lo/{cls};->stabilityTileBatch:{B}
    invoke-static {{v0}}, {S}->usable({B})Z
    move-result v0
    if-nez v0, :tile_worker_usable
    return-void
    :tile_worker_usable
'''
            part=part.replace('    '+start,'    '+start+guard,1)
            return b[:i]+part+b[j:]
        method(cls,'run()V',edit)
    # sj remains byte-for-byte identical to r7: its tile rows are split into original fe callbacks.
    needle=f'    invoke-static {{v0, v5, v6}}, {P}TileState;->commit(Lo/ff;Lo/df;Z)V\n'
    replace('smali/o/sj.smali',needle,'')
    shutil.copyfile(SRC/'smali/o/sj.smali',DST/'smali/o/sj.smali')
    def bound(b):
        for needle in ['    new-instance v3, Ljava/lang/Thread;','    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V','    invoke-virtual {v3}, Ljava/lang/Thread;->start()V']:
            assert b.count(needle)==2
            b=b.replace(needle,'' if 'start()' not in needle else f'    const/4 v3, 0x7\n    invoke-static {{v0, v3, v2, v4}}, {P}QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)Z')
        return b
    method('ce','run()V',bound)
    target=DST/'smali/com/byd/launcher/stability'
    (target/'TileSnapshots.smali').write_text(HELPER,encoding='utf-8')
    (target/'TileApply.smali').write_text(APPLY,encoding='utf-8')
    for module in ['tile_slots_r1','quick_read_executor_r2']:
        for p in (OUT/f'modules/{module}/decoded/smali/com/byd/launcher/stability').glob('*.smali'):shutil.copyfile(p,target/p.name)
    (OUT/'base10_r8_identity_manifest.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    print('r8 identity and bounded follow-up integration drafted. Verification required.')
if __name__=='__main__':main()
