"""Read-only APK audit; only creates files below a new, explicit audit directory."""
import argparse, csv, hashlib, json, re, subprocess, zipfile
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor

ROOT = Path('D:/apk')
JAVA = Path('D:/Android/.jdk21/bin/java.exe')
JAR = ROOT / 'apktool_3.0.2.jar'
BT = Path('C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0')

def sha(path):
    with path.open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest().upper()

def csvwrite(path, rows, fields):
    with path.open('w', encoding='utf-8-sig', newline='') as f:
        w = csv.DictWriter(f, fieldnames=fields); w.writeheader(); w.writerows(rows)

def run(args, log):
    p = subprocess.run([str(x) for x in args], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    text = p.stdout.decode('utf-8', errors='replace')
    log.write_text(text, encoding='utf-8')
    return p.returncode, text

def apks():
    return [ROOT/n for n in ['ORIGINAL_BASELINE.apk', 'original.apk', '智UI_V0.4.2.apk',
        'Launcher_Rebuild_Test.apk', 'zhiui-final-v2.apk']] + sorted(ROOT.glob('zhiui-final-v3*.apk')) + [ROOT/'zhiui-stability-s1-systembars-r1.apk']

def inventory(out):
    rows=[]; entries=[]
    for i,p in enumerate(apks()):
        digest=sha(p); stem=f'{i:02d}_{p.stem}'
        sigcode,sig=run([JAVA,'-jar',BT/'lib/apksigner.jar','verify','--verbose','--print-certs',p],out/'logs'/f'{stem}_signature.txt')
        pkgcode,pkg=run([BT/'aapt.exe','dump','badging',p],out/'logs'/f'{stem}_badging.txt')
        cert=re.search(r'Signer #1 certificate SHA-256 digest: (\w+)',sig)
        package=re.search(r"package: name='([^']+)' versionCode='([^']+)' versionName='([^']+)'",pkg)
        with zipfile.ZipFile(p) as z:
            for e in z.infolist():
                if not e.is_dir():
                    entries.append(dict(apk=p.name,entry=e.filename,size=e.file_size,sha256=hashlib.sha256(z.read(e)).hexdigest().upper()))
        rows.append(dict(apk=p.name,path=str(p),size=p.stat().st_size,sha256=digest,signature_exit=sigcode,
            cert_sha256=cert.group(1).upper() if cert else '',badging_exit=pkgcode,
            package=package.group(1) if package else '',version_code=package.group(2) if package else '',version_name=package.group(3) if package else ''))
        print('inventory',p.name,'signature',sigcode,'badging',pkgcode,flush=True)
    csvwrite(out/'inventory.csv',rows,list(rows[0]));csvwrite(out/'apk_entries.csv',entries,list(entries[0]))

def decode(out):
    rows=list(csv.DictReader((out/'inventory.csv').open(encoding='utf-8-sig')))
    seen={};mapping={}
    for row in rows:
        key=row['sha256']; name=row['apk']
        if key in seen: mapping[name]=seen[key];continue
        tree=out/'references'/Path(name).stem
        if not tree.exists():
            code,_=run([JAVA,'-jar',JAR,'d','--frame-path',ROOT/'apktool-framework','--output',tree,ROOT/name],out/'logs'/f'{Path(name).stem}_decode.txt')
            if code: raise RuntimeError(f'Decode failed ({code}): {name}; see log')
            (tree/'.audit_decode_ok').write_text(key,encoding='ascii')
        if not (tree/'.audit_decode_ok').exists() or (tree/'.audit_decode_ok').read_text()!=key:
            raise RuntimeError(f'Incomplete or mismatched existing tree: {tree}')
        seen[key]=str(tree);mapping[name]=str(tree)
        print('decoded',name,flush=True)
        (out/'reference_map.json').write_text(json.dumps(mapping,ensure_ascii=False,indent=2),encoding='utf-8')

def treehash(tree):
    paths=[p for p in tree.rglob('*') if p.is_file()
        and p.relative_to(tree).parts[0] not in ('build','dist') and p.name!='.audit_decode_ok']
    with ThreadPoolExecutor(max_workers=8) as pool:
        return dict(pool.map(lambda p:(p.relative_to(tree).as_posix(),sha(p)),paths))

def methods(path):
    if not path.exists(): return {}
    text=path.read_text(encoding='utf-8'); result={}
    for m in re.finditer(r'^\.method (.+?)\n(.*?)^\.end method',text,re.M|re.S):
        result[m.group(1)]=(m.group(0),text.count('\n',0,m.start())+1)
    return result

def compare(out):
    mapping=json.loads((out/'reference_map.json').read_text(encoding='utf-8'))
    names=list(mapping); hashes={}; diffs=[]; coverage=[]
    for name,tree in mapping.items():
        if tree not in hashes: hashes[tree]=treehash(Path(tree))
    # Endpoints + complete chronological chain, including alternate/failed packages.
    v3=sorted([n for n in names if n.startswith('zhiui-final-v3')],key=lambda n:([int(x) for x in re.findall(r'\d+',n.split('-',3)[2])],1 if '-r1.apk' in n else 0))
    chain=['zhiui-final-v2.apk']+v3
    pairs=[('ORIGINAL_BASELINE.apk','zhiui-final-v2.apk'),('zhiui-final-v2.apk','zhiui-final-v3.11-lyrics-click-music-app-r1.apk'),
        ('ORIGINAL_BASELINE.apk','zhiui-stability-s1-systembars-r1.apk'),('Launcher_Rebuild_Test.apk','zhiui-stability-s1-systembars-r1.apk')]+list(zip(chain,chain[1:]))
    for a,b in dict.fromkeys(pairs):
        ha,hb=hashes[mapping[a]],hashes[mapping[b]]; count=0
        for rel in sorted(ha.keys()|hb.keys()):
            if ha.get(rel)==hb.get(rel):continue
            status='added' if rel not in ha else 'removed' if rel not in hb else 'modified'
            category='smali' if rel.startswith('smali') else rel.split('/')[0]
            diffs.append(dict(parent=a,candidate=b,path=rel,change=status,category=category,before_sha=ha.get(rel,''),after_sha=hb.get(rel,'')))
            count+=1
            if rel.endswith('.smali'):
                ma,mb=methods(Path(mapping[a])/rel),methods(Path(mapping[b])/rel)
                for method in sorted(ma.keys()|mb.keys()):
                    if ma.get(method,('',0))[0]==mb.get(method,('',0))[0]:continue
                    coverage.append(dict(parent=a,candidate=b,path=rel,method=method,before_line=ma.get(method,('',0))[1],after_line=mb.get(method,('',0))[1],
                        status='PENDING_REVIEW',evidence='',disposition=''))
        print('diff',a,'->',b,count,flush=True)
    csvwrite(out/'file_diff.csv',diffs,list(diffs[0]));csvwrite(out/'method_coverage.csv',coverage,list(coverage[0]))
    summary={name:len(hashes[tree]) for name,tree in mapping.items()}
    (out/'tree_counts.json').write_text(json.dumps(summary,indent=2,ensure_ascii=False),encoding='utf-8')

def main():
    parser=argparse.ArgumentParser();parser.add_argument('phase',choices=['init','inventory','decode','compare']);parser.add_argument('output');a=parser.parse_args()
    out=Path(a.output).resolve(); allowed=(ROOT/'launcher_project/diagnostics').resolve()
    if not out.is_relative_to(allowed) or out==allowed:raise ValueError('Output must be a dedicated diagnostics directory')
    if a.phase=='init':
        out.mkdir(exist_ok=False);(out/'logs').mkdir();(out/'references').mkdir();print(out)
    elif not out.is_dir():raise ValueError('Initialize a new audit directory first')
    else:globals()[a.phase](out)
if __name__=='__main__':main()
