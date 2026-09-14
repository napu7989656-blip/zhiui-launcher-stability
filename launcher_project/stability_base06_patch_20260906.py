"""Isolate automatic global policy writes, retaining all settings and other commands."""
import json,re,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import sha
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base07_wallpaper_delivery_r1';DST=OUT/'worktrees/base06_policy_readonly_r1'
HELPER='Lcom/byd/launcher/stability/PolicyControlReadOnly;'
def method(text,sig,fn):
    pattern=r'(?ms)^\.method [^\n]*'+re.escape(sig)+r'\n.*?^\.end method'
    found=re.findall(pattern,text);assert len(found)==1,sig
    return text.replace(found[0],fn(found[0]))
def main():
    assert json.loads((OUT/'base07_r1_verification.json').read_text())['unexpected_final_business_changes']==[]
    assert 'PASS:' in (OUT/'modules/policy_readonly_r1/jvm_tests.txt').read_text(encoding='utf-8-sig')
    if DST.exists():raise ValueError('Refuse overwrite')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    patches=[];records=[]
    def save(rel,t):
        p=DST/rel;old=p.read_text(encoding='utf-8') if p.exists() else ''
        assert old!=t,rel
        p.parent.mkdir(parents=True,exist_ok=True);p.write_text(t,encoding='utf-8',newline='\n')
        patches.extend(difflib.unified_diff(old.splitlines(True),t.splitlines(True),fromfile='base07_r1/'+rel,tofile='base06_r1/'+rel))
        records.append(dict(path=rel,before_sha=sha(SRC/rel) if (SRC/rel).exists() else '',after_sha=sha(p)))
    rel='smali/o/c0.smali';t=(DST/rel).read_text(encoding='utf-8')
    def guard(b,reg):
        block=f'''\n    # BASE-06: return before any UI wait, connection, or shell side effect.
    invoke-static/range {{{reg} .. {reg}}}, {HELPER}->isWrite(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :stability_other_command
    const/4 v0, 0x0
    return-object v0
    :stability_other_command
'''
        return re.sub(r'(    \.locals \d+\n)',lambda m:m.group(1)+block,b,count=1)
    t=method(t,'execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;',lambda b:guard(b,'p0'))
    t=method(t,'ˋ(ILjava/lang/String;)Ljava/lang/String;',lambda b:guard(b,'p1'))
    save(rel,t)
    rel='smali/o/zk.smali';t=(DST/rel).read_text(encoding='utf-8')
    def settings_guard(b):
        block='''
    # BASE-06: original selector 0 and default selector are system-policy options.
    iget v0, p0, Lo/zk;->ˋ:I
    if-eqz v0, :stability_policy_readonly
    if-ltz v0, :stability_policy_readonly
    const/16 v1, 0x9
    if-lt v0, v1, :stability_other_setting
    :stability_policy_readonly
    return-void
    :stability_other_setting
'''
        return re.sub(r'(    \.locals \d+\n)',lambda m:m.group(1)+block,b,count=1)
    save(rel,method(t,'onCheckedChanged(Landroid/widget/CompoundButton;Z)V',settings_guard))
    rel='smali/o/vl.smali';t=(DST/rel).read_text(encoding='utf-8')
    def bind(b):
        anchor='    :cond_2d\n    iget-object v0, v1, Lo/vl;->ΐ:Landroid/view/View;'
        assert b.count(anchor)==1
        return b.replace(anchor,anchor+f'\n    invoke-static {{v0}}, {HELPER}->configure(Landroid/view/View;)V')
    save(rel,method(t,'Χ()V',bind))
    replacements={
        'smali/o/lII.smali':{'Set policy_control to hide status bar for launcher':'Policy write skipped: hide request; current system policy retained','Cleared policy_control to show system status bar':'Policy write skipped: clear request; current system policy retained'},
        'smali/o/llI.smali':{'Startup ADB settings applied, policy_control set':'Startup ADB ready; policy write skipped, current system policy retained','Startup ADB: OEM status bar enabled, policy_control cleared':'Startup ADB ready; policy clear skipped, current system policy retained'},
        'smali/o/ea.smali':{'initCmdTools: ADB OK, policy_control set, IME enabled':'initCmdTools: ADB OK, policy write skipped, IME initialization unchanged'}}
    for rel,pairs in replacements.items():
        t=(DST/rel).read_text(encoding='utf-8')
        for old,new in pairs.items():assert t.count(old)==1,old;t=t.replace(old,new)
        save(rel,t)
    rel='smali/com/byd/launcher/stability/PolicyControlReadOnly.smali'
    save(rel,(OUT/'modules/policy_readonly_r1/decoded'/rel).read_text(encoding='utf-8'))
    (OUT/'base06_r1.patch').write_text(''.join(patches),encoding='utf-8')
    (OUT/'base06_r1_changes.json').write_text(json.dumps(records,indent=2),encoding='utf-8')
    print('BASE-06: two command gates, two read-only setting selectors/UI, corrected success logs, one compiled helper; 7 files.')
if __name__=='__main__':main()
