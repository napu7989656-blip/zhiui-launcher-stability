import json,csv,re
from pathlib import Path
from stability_local_audit_20260905 import treehash,sha,methods,csvwrite
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
parent=OUT/'references/Launcher_Rebuild_Test';work=OUT/'worktrees/base01_wallpaper_callback_r2';final=OUT/'final_redecode/base01_r2'
allow={'smali/com/byd/launcher/MainActivity.smali','smali/o/ak.smali'}
hp,hw,hf=map(treehash,(parent,work,final))
diff=[p for p in hp.keys()|hw.keys() if hp.get(p)!=hw.get(p)]
assert set(diff)==allow,diff
business=lambda p:not p.startswith('original/') and p!='apktool.yml'
roundtrip=[]
for p in hw.keys()|hf.keys():
    if not business(p) or hw.get(p)==hf.get(p):continue
    if p.endswith('.smali'):
        # apktool discards comments/normalizes offsets; compare instructions after removing debug directives.
        def norm(path):
            text=path.read_text(encoding='utf-8')
            result=[]
            for sig,(body,_) in methods(path).items():
                labels={}
                def label(match):
                    value=match.group(0)
                    if value not in labels:labels[value]=':label_'+str(len(labels))
                    return labels[value]
                clean='\n'.join(l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('#','.line ')))
                clean=re.sub(r'(?<!\S):[\w]+',label,clean)
                result.append((sig,clean))
            fields='\n'.join(l.strip() for l in text.splitlines() if l.strip().startswith(('.class ','.super ','.implements ','.field ')))
            return fields,json.dumps(result,ensure_ascii=False)
        if norm(work/p)==norm(final/p):continue
    roundtrip.append(p)
# For changed methods, branch-level tests already execute the final normalized APK.
assert not roundtrip,roundtrip
rows=[]
for item in csv.DictReader((OUT/'inventory.csv').open(encoding='utf-8-sig')):
    actual=sha(Path(item['path']));assert actual==item['sha256'],item['apk'];rows.append(dict(apk=item['apk'],sha256=actual,unchanged=True))
result=dict(candidate='D:/apk/zhiui-stability-local-base01-r2.apk',sha256=sha(Path('D:/apk/zhiui-stability-local-base01-r2.apk')),
    source_file_count=len(hw),source_changed_files=sorted(diff),unexpected_source_changes=[],unexpected_final_business_changes=roundtrip,
    manifest_and_resource_hashes_unchanged=all(hw.get(p)==hf.get(p)==hp.get(p) for p in hp if p=='AndroidManifest.xml' or p.startswith(('res/','lib/','assets/'))),
    status='LOCAL_SINGLE_PATCH_PASS; NOT_FULL_PLAN_PASS; NOT_VEHICLE_TESTED')
(OUT/'base01_r2_verification.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
csvwrite(OUT/'protected_apks_postcheck.csv',rows,['apk','sha256','unchanged'])
print(json.dumps(result,ensure_ascii=True))
