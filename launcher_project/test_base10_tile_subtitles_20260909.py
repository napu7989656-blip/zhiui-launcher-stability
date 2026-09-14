import json,argparse
from stability_base10_tile_subtitles_20260909 import OUT,SRC,DST,T,EXTRA
from test_base10_tile_identity_20260909 import TileVM,check as tile_check,DF,KE,FF,Obj
from stability_verify_patch_20260906 import norm
from test_base09_smali_20260908 import VM
def check(tree,shared_sj_parent=None):
    cases=[]
    for selector,field,sub,words in [(3,'Ν',4,['标准','较大']),(6,'Ξ',7,['智能保电','强制保电'])]:
        for value in [0,1]:
            for cbselector in [0,1]:
                vm=TileVM(tree);c,d,g=vm.fixture();g.f[KE+'->ˋ:I']=selector;c.f[FF+'->'+field+':Z']=1-value
                subtitle=Obj(KE,**{KE+'->ˏ:Lo/ff;':c,KE+'->ˋ:I':sub});d.f[DF+'->ʹ:Lo/bf;']=subtitle
                cb=Obj('Lo/fe;');vm.execute(cb.kind,'<init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V',[cb,c,d,value,words[1-value],cbselector]);vm.execute(cb.kind,'run()V',[cb])
                assert vm.callbacks[-1]==[c,d,value,words[value]],vm.callbacks
                assert vm.reads==0
                cases.append(f'{selector}_{value}_{cbselector}')
    for selector in [-1,0,1,2,3,5,6,8,9,10,11]:
        vm=TileVM(tree);c,d,g=vm.fixture();g.f[KE+'->ˋ:I']=selector;d.f[DF+'->ʹ:Lo/bf;']=g
        assert vm.execute(T,'subtitle(Lo/ff;Lo/df;Ljava/lang/String;)Ljava/lang/String;',[c,d,'preserved'])=='preserved'
        assert vm.reads==0;cases.append('no_main_query_'+str(selector))
    vm=TileVM(tree);c,d,g=vm.fixture();d.f[DF+'->ʹ:Lo/bf;']=Obj(KE,**{KE+'->ˏ:Lo/ff;':Obj(FF),KE+'->ˋ:I':4})
    assert vm.execute(T,'subtitle(Lo/ff;Lo/df;Ljava/lang/String;)Ljava/lang/String;',[c,d,'preserved'])=='preserved'
    cases.append('other_owner_preserved')
    # Extract original subtitle targets: both branches contain only cache read, condition, constants and return.
    b=VM(tree).body(KE,'ˏ()Ljava/lang/String;');payload=b[b.index('    :sswitch_data_0\n'):]
    import re
    m=re.search(r'\.sparse-switch\n(.*?)\.end sparse-switch',payload,re.S);labels={int(x.split(' -> ')[0].strip(),0):x.split(' -> ')[1].strip() for x in m[1].splitlines() if x.strip()}
    for selector in [4,7]:
        label=labels[selector];start=b.index('    '+label+'\n');nextswitch=b.find('    :sswitch_',start+len(label)+5)
        block=b[start:nextswitch if nextswitch>=0 else len(b)]
        assert 'invoke-' not in block and ('Lo/ff;->'+('Ν' if selector==4 else 'Ξ')+':Z') in block
    return dict(cases=cases,inherited=tile_check(tree,shared_sj_parent),limits='Actual local-cache subtitle branches and fe callback executed with UI doubles; no system or vehicle query. Not ART.')
def main():
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
    manifest=json.loads((OUT/'base10_r8b_subtitle_manifest.json').read_text())
    after=(DST/'smali/o/fe.smali').read_text(encoding='utf-8');assert after.count(manifest['after'])==1
    assert after.replace(manifest['after'],manifest['before'])==(SRC/'smali/o/fe.smali').read_text(encoding='utf-8')
    after=(DST/'smali/com/byd/launcher/stability/TileState.smali').read_text(encoding='utf-8');assert after.endswith(EXTRA)
    assert after[:-len(EXTRA)]==(SRC/'smali/com/byd/launcher/stability/TileState.smali').read_text(encoding='utf-8')
    rows=[check(DST)]
    if a.final:
        final=OUT/'final_redecode/base10_r8b'
        for rel in json.loads((OUT/'base10_r8b_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel)
        rows.append(check(final))
    (OUT/('base10_r8b_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
    print('PASS: 21 subtitle/owner/no-main-query cases plus 74 inherited r8 cases per artifact.')
if __name__=='__main__':main()
