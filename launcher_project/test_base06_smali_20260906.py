"""Exercise actual gate instructions, stopping before any original external call.
Policy recognition/UI behavior is separately tested from the compiled Java source.
"""
import argparse,json,re,xml.etree.ElementTree as ET
from stability_local_audit_20260905 import methods
from stability_verify_patch_20260906 import OUT
HELPER='Lcom/byd/launcher/stability/PolicyControlReadOnly;'

def gate(tree,owner,sig,args,blocked,expected_command=None):
    body=next(b for s,(b,_) in methods(tree/('smali/'+owner[1:-1]+'.smali')).items() if s.split()[-1]==sig)
    ls=[l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('.', '#'))]
    labels={}
    for i,l in enumerate(ls):
        if l.startswith(':'):labels.setdefault(l,i)
    regs={f'p{i}':v for i,v in enumerate(args)};pc=0;result=None;tested=False
    for _ in range(100):
        l=ls[pc];pc+=1
        if l.startswith(':'):continue
        op,_,rest=l.partition(' ');p=rest.split(', ')
        if op.startswith('const-string'):regs[p[0]]=p[1]
        elif op.startswith('const'):regs[p[0]]=int(p[1],0)
        elif op.startswith('sget'):regs[p[0]]=0
        elif op=='iget':regs[p[0]]=regs[p[1]][p[2]]
        elif op.startswith('move-result'):regs[rest]=result
        elif op.startswith('if-'):
            a=regs[p[0]];b=0 if op.endswith('z') else regs[p[1]]
            if op=='if-eqz':take=a==b
            elif op=='if-nez':take=a!=b
            elif op in ('if-lt','if-ltz'):take=a<b
            else:raise ValueError(l)
            if take:pc=labels[p[-1]]
        elif op.startswith('goto'):pc=labels[rest]
        elif op=='packed-switch':return 'ORIGINAL_DISPATCH'
        elif op.startswith('invoke'):
            rs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
            if target==HELPER+'->isWrite(Ljava/lang/String;)Z':
                names=rs.split(' .. ') if '..' in rs else rs.split(', ')
                assert len(set(names))==1 and regs[names[0]]==expected_command,'wrong command parameter'
                result=int(blocked);tested=True
            else:return 'ORIGINAL_EXTERNAL_PATH'
        elif op in ('return-object','return-void'):
            if op=='return-object':assert regs[rest]==0 and tested,'non-null or unguarded return'
            return 'BLOCKED'
        else:raise ValueError('Unimplemented prefix instruction: '+l)
    raise AssertionError('Gate did not terminate')

def check(tree,parent=False):
    commands=(OUT/'base06_policy_commands.txt').read_text(encoding='utf-8').splitlines()
    for command in commands:
        for sig,args in [('execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;',[command,2000]),('ˋ(ILjava/lang/String;)Ljava/lang/String;',[2000,command])]:
            outcome=gate(tree,'Lo/c0;',sig,args,True,command)
            assert outcome==('ORIGINAL_EXTERNAL_PATH' if parent else 'BLOCKED'),(sig,outcome)
    for command in [None,'settings get global policy_control','settings put global other_key x']:
        for sig,args in [('execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;',[command,2000]),('ˋ(ILjava/lang/String;)Ljava/lang/String;',[2000,command])]:
            assert gate(tree,'Lo/c0;',sig,args,False,command)=='ORIGINAL_EXTERNAL_PATH'
    for selector in [-1,0,1,2,3,4,5,6,7,8,9,42]:
        expected='BLOCKED' if not parent and (selector<=0 or selector>=9) else 'ORIGINAL_DISPATCH'
        assert gate(tree,'Lo/zk;','onCheckedChanged(Landroid/widget/CompoundButton;Z)V',[{'Lo/zk;->ˋ:I':selector},None,True],False)==expected
    if not parent:
        public={c.attrib.get('name'):c.attrib.get('id') for c in ET.parse(tree/'res/values/public.xml').getroot() if c.attrib.get('type')=='id'}
        for name,value in {'switch_oem_statusbar':'0x7f08026f','switch_oem_navbar':'0x7f08026d','tv_oem_statusbar_label':'0x7f0802df','tv_oem_navbar_label':'0x7f0802de'}.items():assert public[name]==value
        ui=next(b for s,(b,_) in methods(tree/'smali/o/vl.smali').items() if s.endswith('Χ()V'))
        assert ui.count(HELPER+'->configure(Landroid/view/View;)V')==1
        assert ui.index(HELPER+'->configure')>ui.rindex('setOnCheckedChangeListener'),'must lock after all setup listeners'
    return dict(tree=str(tree),status='PASS',evidence='Actual smali prefix gates and preserved dispatch; compiled Java tested separately; no external calls executed')
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    rows=[check(OUT/'worktrees/base07_wallpaper_delivery_r1',True),check(OUT/'worktrees/base06_policy_readonly_r1')]
    if a.final:rows.append(check(OUT/'final_redecode/base06_r1'))
    (OUT/('base06_r1_gate_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(rows,indent=2),encoding='utf-8')
    print('PASS: both actual command gates stop existing writes before any wait/connection; reads/other commands pass through; policy selectors disabled and 8 other selectors preserved; final resource/UI hooks match. Parent behavior reproduced without executing commands.')
