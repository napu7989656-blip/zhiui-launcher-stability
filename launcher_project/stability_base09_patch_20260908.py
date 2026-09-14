"""Permanent quick-settings disposal with explicit captured-owner entry guards.
Keep every original callback body, including all unrelated shared selectors.
"""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods,sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
TAG='base09_r3'
SRC=OUT/'worktrees/base08_statusbar_rollback_r1';DST=OUT/'worktrees/base09_quick_dispose_r3'
LIFE='Lcom/byd/launcher/stability/QuickSettingsLifetime;'
RESOURCE='Lcom/byd/launcher/stability/QuickSettingsResources;'
STATUS='Lcom/byd/launcher/stability/StatusBarResources;'
FF='Lo/ff;';EDITOR='Lo/f4;';NAV='Lcom/byd/launcher/NavBarService;'

# Fields are from actual typed captures or checked Object casts, not guesses
# from an obfuscated class name. td/bg/widget capture we/re adapters indirectly.
OBJECT_OWNERS={'Ϙ':'ˏ','ϓ':'Ͳ','ΰ':'ˏ','Ϋ':'ͱ','x9':'Ͳ','we':'ˏ','ua':'ˏ','td':'ͱ','sj':'ͳ','re':'Ͱ','lb':'ͳ','h2':'Ͳ','bg':'Ͳ','ag':'ͱ','af':'ˏ'}

def guard(body,owner,field,service=False):
    m=re.search(r'    \.locals (\d+)\n',body);assert m
    n=int(m[1]);original=n
    instructions=[l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('.', '#'))]
    if instructions==['return-void']:return body,None
    if n==0:
        assert not any(re.search(r'\bv\d+\b',l) for l in instructions),'Cannot shift physical parameter aliases'
        body=body.replace('    .locals 0\n','    .locals 1\n',1)
    signature=body.splitlines()[0].split()[-1];return_type=signature.split(')')[1]
    if field:
        prefix=f'    move-object/from16 v0, p0\n    iget-object v0, v0, {owner}->{field}\n    invoke-static {{v0}}, {LIFE}->isDisposed(Ljava/lang/Object;)Z\n'
    else:prefix=f'    invoke-static/range {{p0 .. p0}}, {LIFE}->isDisposed(Ljava/lang/Object;)Z\n'
    if service:prefix=prefix.replace('isDisposed(Ljava/lang/Object;)Z','isServiceDestroyed(Lcom/byd/launcher/NavBarService;)Z')
    prefix+='    move-result v0\n    if-eqz v0, :stability_owner_alive\n'
    if return_type=='V':
        if owner=='Lo/ze;':prefix+='    invoke-virtual/range {p0 .. p0}, Lo/ze;->stabilityRelease()Z\n'
        prefix+='    return-void\n'
    elif return_type=='Z':prefix+='    const/4 v0, 0x0\n    return v0\n'
    elif return_type=='Ljava/lang/String;':prefix+='    const-string v0, ""\n    return-object v0\n'
    else:raise ValueError(signature)
    prefix+='    :stability_owner_alive\n'
    prefix='\n    # BASE-09: stop only callbacks owned by a disposed controller/editor.\n'+prefix
    body=re.sub(r'(    \.locals \d+\n)',lambda m:m[1]+prefix,body,count=1)
    return body,dict(signature=signature,prefix=prefix,locals_before=original,field=field,guard_kind='service' if service else 'controller')

LIFETIME=f'''.class public final {LIFE}
.super Ljava/lang/Object;
.source "QuickSettingsLifetime"

.method public static isDisposed(Ljava/lang/Object;)Z
    .locals 2
    instance-of v0, p0, Lo/we;
    if-eqz v0, :check_seek_adapter
    check-cast p0, Lo/we;
    iget-object p0, p0, Lo/we;->ˏ:Ljava/lang/Object;
    goto :check_controller
    :check_seek_adapter
    instance-of v0, p0, Lo/re;
    if-eqz v0, :check_controller
    check-cast p0, Lo/re;
    iget-object p0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    :check_controller
    instance-of v0, p0, Lo/ze;
    if-eqz v0, :direct_controller
    check-cast p0, Lo/ze;
    iget-object p0, p0, Lo/ze;->ˏ:Lo/ff;
    :direct_controller
    instance-of v0, p0, {FF}
    if-eqz v0, :check_editor
    check-cast p0, {FF}
    iget-boolean v0, p0, {FF}->stabilityDisposed:Z
    if-nez v0, :disposed
    iget-object p0, p0, {FF}->ˋ:Landroid/content/Context;
    goto :check_service
    :check_editor
    instance-of v0, p0, {EDITOR}
    if-eqz v0, :alive
    check-cast p0, {EDITOR}
    iget-boolean v0, p0, {EDITOR}->stabilityDisposed:Z
    if-nez v0, :disposed
    iget-object p0, p0, {EDITOR}->ˋ:Landroid/content/Context;
    :check_service
    instance-of v0, p0, {NAV}
    if-eqz v0, :alive
    check-cast p0, {NAV}
    iget-boolean v0, p0, {NAV}->ˋ:Z
    if-nez v0, :disposed
    :alive
    const/4 v0, 0x0
    return v0
    :disposed
    const/4 v0, 0x1
    return v0
.end method
'''

GLOBAL_RELEASE=f'''
.method public final stabilityRelease()Z
    .locals 3
    iget-object v0, p0, Lo/ze;->ˋ:Landroid/widget/GridLayout;
    iget-object v1, p0, Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;
    invoke-static {{v0, v1, p0}}, {RESOURCE}->removeLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z
    move-result v0
    if-eqz v0, :global_retained
    const/4 v1, 0x0
    iput-object v1, p0, Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lo/ze;->ˏ:Lo/ff;
    iget-object v2, v1, Lo/ff;->stabilityLayoutListener:Lo/ze;
    if-ne v2, p0, :global_retained
    const/4 v2, 0x0
    iput-object v2, v1, Lo/ff;->stabilityLayoutListener:Lo/ze;
    :global_retained
    return v0
.end method
'''

REGISTRATION_PREFLIGHT=f'''    iget-object v3, p0, {FF}->stabilityLayoutListener:Lo/ze;
    if-eqz v3, :stability_register_layout
    invoke-virtual {{v3}}, Lo/ze;->stabilityRelease()Z
    move-result v3
    if-nez v3, :stability_register_layout
    return-void
    :stability_register_layout
'''
REGISTRATION_CAPTURE=f'''    iput-object v1, v2, Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;
    iput-object v2, p0, {FF}->stabilityLayoutListener:Lo/ze;
'''

EDITOR_DISPOSE=f'''
.method public final stabilityDispose()Z
    .locals 4
    const/4 v0, 0x1
    iput-boolean v0, p0, {EDITOR}->stabilityDisposed:Z
    const/4 v0, 0x0
    iput-boolean v0, p0, {EDITOR}->Ͳ:Z
    iget-object v1, p0, {EDITOR}->ˏ:Landroid/view/WindowManager;
    iget-object v2, p0, {EDITOR}->Ͱ:Landroid/view/ViewGroup;
    iget-object v3, p0, {EDITOR}->ͱ:Landroid/view/View;
    invoke-static {{v1, v2, v3}}, {RESOURCE}->disposePanel(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :editor_retained
    iput-object v0, p0, {EDITOR}->ͱ:Landroid/view/View;
    iput-object v0, p0, {EDITOR}->Ͱ:Landroid/view/ViewGroup;
    :editor_retained
    return v1
.end method
'''

def controller_dispose():
    t=f'''
.method public final stabilityDispose()Z
    .locals 6
    const/4 v0, 0x1
    iput-boolean v0, p0, {FF}->stabilityDisposed:Z
    const/4 v1, 0x0
    iput-object v1, p0, {FF}->Ύ:Lo/cf;
'''
    for flag in ['ͷ','ͺ','ͻ','ΐ']:t+=f'    iput-boolean v1, p0, {FF}->{flag}:Z\n'
    for field in ['Ͱ','ͱ']:
        t+=f'''    iget-object v2, p0, {FF}->{field}:Landroid/os/Handler;
    invoke-static {{v2}}, {RESOURCE}->clearQueue(Landroid/os/Handler;)Z
    move-result v5
    and-int/2addr v0, v5
'''
    t+=f'''    iget-object v2, p0, {FF}->stabilityLayoutListener:Lo/ze;
    if-eqz v2, :global_layout_done
    invoke-virtual {{v2}}, Lo/ze;->stabilityRelease()Z
    move-result v5
    and-int/2addr v0, v5
    :global_layout_done
'''
    for index,(field,kind,helper,sig) in enumerate([
        ('Ή','Lo/af;',RESOURCE,'unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)Z'),
        ('Ί','Lo/qe;',STATUS,'unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z')]):
        t+=f'''    iget-object v2, p0, {FF}->{field}:{kind}
    iget-object v3, p0, {FF}->ˋ:Landroid/content/Context;
    invoke-static {{v3, v2}}, {helper}->{sig}
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :listener_{index}_retained
    iput-object v1, p0, {FF}->{field}:{kind}
    :listener_{index}_retained
'''
    t+=f'''    iget-object v2, p0, {FF}->Γ:Lo/f4;
    if-eqz v2, :editor_done
    invoke-virtual {{v2}}, Lo/f4;->stabilityDispose()Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :editor_done
    iput-object v1, p0, {FF}->Γ:Lo/f4;
    :editor_done
    iget-object v3, p0, {FF}->ˏ:Landroid/view/WindowManager;
    iget-object v4, p0, {FF}->Ͳ:Landroid/view/ViewGroup;
'''
    for i,field in enumerate(['ͳ','Ώ']):
        t+=f'''    iget-object v2, p0, {FF}->{field}:Landroid/view/View;
    invoke-static {{v3, v4, v2}}, {RESOURCE}->disposePanel(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/view/View;)Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :panel_{i}_retained
    iput-object v1, p0, {FF}->{field}:Landroid/view/View;
    :panel_{i}_retained
'''
    t+=f'''    iget-object v2, p0, {FF}->ͳ:Landroid/view/View;
    if-nez v2, :views_retained
    iget-object v2, p0, {FF}->Ώ:Landroid/view/View;
    if-nez v2, :views_retained
    iput-object v1, p0, {FF}->ʹ:Landroid/view/View;
    iput-object v1, p0, {FF}->Ͷ:Landroid/view/View;
    iput-object v1, p0, {FF}->Ͳ:Landroid/view/ViewGroup;
    iput-object v1, p0, {FF}->Δ:Lo/xe;
    :views_retained
    iget-object v2, p0, {FF}->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {{v2}}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    iget-object v2, p0, {FF}->Β:Ljava/util/ArrayList;
    invoke-virtual {{v2}}, Ljava/util/ArrayList;->clear()V
    if-nez v0, :dispose_done
    const-string v2, "QuickSettingsMgr"
    const-string v3, "Permanent disposal incomplete; stopped owner retains failed resources"
    invoke-static {{v2, v3}}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :dispose_done
    return v0
.end method
'''
    return t

def main():
    assert not DST.exists(),'Refuse overwriting worktree'
    assert not json.loads((OUT/'base08_r1_verification.json').read_text())['unexpected_final_business_changes']
    assert 'PASS:' in (OUT/'modules/quick_resources_r4/jvm_tests.txt').read_text(encoding='utf-8-sig')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    changes=[];guards=[];diff=[]
    def save(rel,t):
        p=DST/rel;before=p.read_text(encoding='utf-8') if p.exists() else ''
        assert t!=before,rel
        p.parent.mkdir(parents=True,exist_ok=True);p.write_text(t,encoding='utf-8',newline='\n')
        changes.append(dict(path=rel,before_sha=sha(SRC/rel) if (SRC/rel).exists() else '',after_sha=sha(p)))
        diff.extend(difflib.unified_diff(before.splitlines(True),t.splitlines(True),fromfile='base08_r1/'+rel,tofile='base09_r2/'+rel))
    rows=json.loads((OUT/'base09_lifecycle_audit.json').read_text())['holders']
    for row in rows:
        rel=row['path'].replace('\\','/')
        if rel.endswith('/NavBarService.smali'):continue
        p=DST/rel;t=p.read_text(encoding='utf-8');owner=re.search(r'(?m)^\.class .* (L[^;]+;)',t)[1]
        fields=[x.split()[-1] for x in row['fields'] if x.endswith(':Lo/ff;')]
        if fields:assert len(fields)==1;field=fields[0]
        elif p.stem in OBJECT_OWNERS:field=OBJECT_OWNERS[p.stem]+':Ljava/lang/Object;'
        elif p.stem=='SwipeDismissFrameLayout':field='ͳ:Lo/uh;'
        else:raise ValueError(rel)
        assert re.search(r'(?m)^\.field .* '+re.escape(field)+r'$',t),field
        for signature,(body,line) in methods(p).items():
            if '<init>' in signature or '<clinit>' in signature:continue
            if p.stem=='SwipeDismissFrameLayout' and not signature.endswith('dispatchTouchEvent(Landroid/view/MotionEvent;)Z'):continue
            changed,record=guard(body,owner,field)
            if record:t=t.replace(body,changed);record.update(path=rel,owner=owner);guards.append(record)
        if p.stem=='ze':
            t=t.replace('# instance fields','# instance fields\n.field public stabilityObserver:Landroid/view/ViewTreeObserver;',1)+GLOBAL_RELEASE
        save(rel,t)
    for name,field in [('k9','ˏ'),('zb','ͷ'),('m9','ͱ')]:
        rel='smali/o/'+name+'.smali';p=DST/rel;t=p.read_text(encoding='utf-8');owner='Lo/'+name+';'
        for signature,(body,line) in methods(p).items():
            if '<init>' in signature:continue
            changed,record=guard(body,owner,field+':'+NAV,service=True)
            if record:t=t.replace(body,changed);record.update(path=rel,owner=owner);guards.append(record)
        save(rel,t)
    for owner,rel,disposal in [(FF,'smali/o/ff.smali',controller_dispose()),(EDITOR,'smali/o/f4.smali',EDITOR_DISPOSE)]:
        p=DST/rel;t=p.read_text(encoding='utf-8');t=t.replace('# instance fields','# instance fields\n.field public volatile stabilityDisposed:Z',1)
        if owner==FF:t=t.replace('# instance fields','# instance fields\n.field public stabilityLayoutListener:Lo/ze;',1)
        for sig,(body,line) in methods(p).items():
            if ' static ' in ' '+sig+' ' or '<init>' in sig or not sig.endswith(')V'):continue
            changed,record=guard(body,owner,None)
            if record:
                if owner==FF and sig.endswith('Ί()V'):
                    anchor='    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;'
                    assert changed.count(anchor)==1
                    changed=changed.replace(anchor,REGISTRATION_PREFLIGHT+anchor)
                    anchor='    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V'
                    assert changed.count(anchor)==1
                    changed=changed.replace(anchor,REGISTRATION_CAPTURE+anchor)
                    record['body_insertions']=[REGISTRATION_PREFLIGHT,REGISTRATION_CAPTURE]
                t=t.replace(body,changed);record.update(path=rel,owner=owner);guards.append(record)
        save(rel,t+disposal)
    rel='smali/com/byd/launcher/NavBarService.smali';p=DST/rel;t=p.read_text(encoding='utf-8')
    b=methods(p)['public final onDestroy()V'][0]
    start=b.index(f'    iget-object v1, p0, {NAV}->Ή:Lo/ff;');end=b.index('    :cond_1\n',start)
    replacement=f'''    iget-object v1, p0, {NAV}->Ή:Lo/ff;
    const/4 v3, 0x0
    if-eqz v1, :cond_1
    invoke-virtual {{v1}}, Lo/ff;->stabilityDispose()Z
    move-result v4
    if-eqz v4, :cond_1
    iput-object v2, p0, {NAV}->Ή:Lo/ff;
'''
    save(rel,t.replace(b,b[:start]+replacement+b[end:]))
    save('smali/com/byd/launcher/stability/QuickSettingsLifetime.smali',LIFETIME+'\n.method public static isServiceDestroyed(Lcom/byd/launcher/NavBarService;)Z\n    .locals 1\n    if-eqz p0, :missing_service\n    iget-boolean v0, p0, Lcom/byd/launcher/NavBarService;->ˋ:Z\n    return v0\n    :missing_service\n    const/4 v0, 0x1\n    return v0\n.end method\n')
    rel='smali/com/byd/launcher/stability/QuickSettingsResources.smali'
    save(rel,(OUT/'modules/quick_resources_r4/decoded'/rel).read_text(encoding='utf-8'))
    (OUT/(TAG+'_changes.json')).write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/(TAG+'_guard_manifest.json')).write_text(json.dumps(guards,indent=2),encoding='utf-8')
    (OUT/(TAG+'.patch')).write_text(''.join(diff),encoding='utf-8')
    print(f'BASE-09 independent worktree: {len(changes)} files, {len(guards)} owner guards; original callback bodies retained, Service permanent dispose and editor child cleanup added.')
if __name__=='__main__':main()
