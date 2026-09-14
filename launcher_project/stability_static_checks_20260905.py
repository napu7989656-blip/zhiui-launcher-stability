"""Offline signature/contract checks against decoded APK and installed Android 29 stubs.
Findings are candidates for reachability review, not an ART verifier or runtime test.
"""
import csv, json, re, struct, zipfile
from pathlib import Path
from stability_local_audit_20260905 import csvwrite, methods

OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SDK=Path('C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar')

def classfile(data):
    pos=8
    def u(n):
        nonlocal pos
        b=data[pos:pos+n];pos+=n;return int.from_bytes(b,'big')
    cp=[None]*u(2);i=1
    while i<len(cp):
        tag=u(1)
        if tag==1:
            n=u(2);cp[i]=data[pos:pos+n].decode('utf-8',errors='replace');pos+=n
        elif tag in (7,8,16,19,20):cp[i]=u(2)
        elif tag in (3,4,9,10,11,12,17,18):pos+=4
        elif tag in (5,6):pos+=8;i+=1
        elif tag==15:pos+=3
        else:raise ValueError(tag)
        i+=1
    def cls(n):return 'L'+cp[cp[n]]+';' if n else ''
    access=u(2);name=cls(u(2));parent=cls(u(2));interfaces=[cls(u(2)) for _ in range(u(2))]
    groups=[]
    for _ in range(2):
        members={}
        for _ in range(u(2)):
            flags=u(2);nm=cp[u(2)];desc=cp[u(2)];members[nm+(':' if not desc.startswith('(') else '')+desc]=flags
            for _ in range(u(2)):
                u(2);length=u(4);pos+=length
        groups.append(members)
    return name,dict(parent=parent,interfaces=interfaces,fields=groups[0],methods=groups[1],interface=bool(access&0x200),source='android-29')

def load_app(tree):
    result={};files={}
    for p in tree.glob('smali*/**/*.smali'):
        txt=p.read_text(encoding='utf-8');nm=re.search(r'^\.class .* (L[^\n]+;)',txt,re.M)
        if not nm:continue
        parent=re.search(r'^\.super (\S+)',txt,re.M)
        ms={sig.split()[-1]:8 if 'static ' in sig else 0 for sig in methods(p)}
        # Access flags are optional: D8 emits package-private mutable fields as
        # `.field name:Type`, with no extra token between `.field` and the name.
        fs={m.group(2):8 if 'static' in m.group(1).split() else 0 for m in re.finditer(r'^\.field[ \t]+((?:[^\s:]+[ \t]+)*)([^\s:]+:[^\s=]+)(?:[ \t]+=.*)?[ \t]*$',txt,re.M)}
        result[nm.group(1)]=dict(parent=parent.group(1) if parent else '',interfaces=re.findall(r'^\.implements (\S+)',txt,re.M),fields=fs,methods=ms,interface=' interface ' in nm.group(0),source=str(p))
        files[nm.group(1)]=(p,txt)
    return result,files

def resolve(db,owner,key,kind,seen=None):
    seen=set() if seen is None else seen
    if owner in seen or owner not in db:return None
    seen.add(owner);c=db[owner]
    if key in c[kind]:return c[kind][key]
    if key.startswith('<init>'):return None
    for base in [c['parent']]+c['interfaces']:
        found=resolve(db,base,key,kind,seen)
        if found is not None:return found
    return None

def scan(tree,framework):
    app,files=load_app(tree);db=framework|app;results=[]
    for owner,(p,txt) in files.items():
        # Business and integration packages; library internals remain inventory scope.
        if not (owner.startswith('Lo/') or owner.startswith('Lcom/byd/launcher/')):continue
        for sig,(body,start) in methods(p).items():
            for i,line in enumerate(body.splitlines()):
                m=re.search(r'\b(invoke-\S+) \{[^}]*\}, (L[^;]+;)->([^\s]+)',line)
                f=re.search(r'\b([is](?:get|put)\S*) .*?, (L[^;]+;)->([^\s]+)',line)
                hit=m or f
                if not hit:continue
                op,target,key=hit.groups();kind='methods' if m else 'fields'
                if target not in db:continue # vendor/unavailable class: separate dependency scope
                flags=resolve(db,target,key,kind)
                issue=''
                if flags is None:issue='unresolved_signature'
                elif (op.startswith('invoke-static') if m else op.startswith('s')) != bool(flags&8):issue='static_instance_mismatch'
                elif op.startswith('invoke-interface') and not db[target]['interface']:issue='invoke_interface_on_class'
                if issue:results.append(dict(path=p.relative_to(tree).as_posix(),method=sig,line=start+i,target=target+'->'+key,issue=issue,source=db[target]['source']))
    return results

def main():
    framework={}
    with zipfile.ZipFile(SDK) as z:
        for n in z.namelist():
            if n.endswith('.class'):
                name,info=classfile(z.read(n));framework[name]=info
    (OUT/'api_reference.json').write_text(json.dumps(dict(path=str(SDK),classes=len(framework),scope='Android 29 public stub signature resolution; vendor hidden APIs and reachability need review'),indent=2),encoding='utf-8')
    base=Path('D:/apk/launcher_project/apktool'); orig=scan(base,framework)
    keys={(r['path'],r['method'],r['target'],r['issue']) for r in orig}; rows=[]
    trees={'original':base,'v2':Path('D:/apk/launcher_project/diagnostics/zhiui_final_v2'),'v311':Path('D:/apk/launcher_project/diagnostics/zhiui_final_v3_11_lyrics-click-music-app')}
    for label,tree in trees.items():
        found=orig if label=='original' else scan(tree,framework)
        for r in found:r['version']=label;r['present_in_original']=(r['path'],r['method'],r['target'],r['issue']) in keys;rows.append(r)
        print(label,len(found),sum(not r['present_in_original'] for r in found),flush=True)
    csvwrite(OUT/'signature_findings.csv',rows,list(rows[0]))
if __name__=='__main__':main()
