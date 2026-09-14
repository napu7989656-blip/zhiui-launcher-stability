import csv,json,re,zipfile
from pathlib import Path
from stability_static_checks_20260905 import classfile
from stability_local_audit_20260905 import methods,csvwrite
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');BASE=Path('D:/apk/launcher_project/apktool')
db={};cache={}
with zipfile.ZipFile('C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar') as z:
    for name in z.namelist():
        if name.endswith('.class'):
            c,info=classfile(z.read(name));db[c]=info
def lookup(owner,key,seen=None):
    seen=set() if seen is None else seen
    if owner in seen:return ''
    seen.add(owner)
    if owner in db:
        data=db[owner]
        if key in data['methods']:return owner
        return lookup(data['parent'],key,seen) if data['parent'] else ''
    if owner not in cache:
        path=BASE/('smali/'+owner[1:-1]+'.smali')
        if not path.exists():return ''
        text=path.read_text(encoding='utf-8');parent=re.search(r'^\.super (\S+)',text,re.M)
        cache[owner]=(parent.group(1) if parent else '',{k.split()[-1] for k in methods(path)})
    parent,ms=cache[owner]
    if key in ms:return owner
    return lookup(parent,key,seen) if parent else ''
rows=list(csv.DictReader((OUT/'signature_findings.csv').open(encoding='utf-8-sig')))
for row in rows:
    owner,key=row['target'].split('->',1);declaring=lookup(owner,key) if key.startswith('<init>') else ''
    row['inherited_constructor_declaration']=declaring
    if row['present_in_original']=='False':row['triage']='CONFIRMED_BAD_REFERENCE_IN_FAILED_BINDING_PATH; reachability distinct from runtime crash'
    elif declaring:row['triage']='BASELINE_SUPERCLASS_CONSTRUCTOR_PATTERN; not a confirmed missing method; ART semantics require separate validation'
    elif row['target']=='Landroid/os/Environment;->isExternalStorageManager()Z':row['triage']='GUARDED_SDK_GE_30_IN_MAINACTIVITY_ONCREATE; Android29 does not execute this branch'
    else:row['triage']='BASELINE_PLATFORM_API_WRAPPER; caller SDK guard review pending'
csvwrite(OUT/'signature_findings_triaged.csv',rows,list(rows[0]))
counts={}
for row in rows:
    if row['version']=='original':counts[row['triage']]=counts.get(row['triage'],0)+1
print(json.dumps(counts,ensure_ascii=True))
