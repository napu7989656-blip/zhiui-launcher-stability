"""Build traceable local audit indexes without printing log contents or credentials."""
import csv,json,re,xml.etree.ElementTree as ET
from pathlib import Path
from stability_local_audit_20260905 import csvwrite,sha
ROOT=Path('D:/apk');OUT=ROOT/'launcher_project/diagnostics/stability_local_20260905_r1'

def logs():
    files=[];hits=[]
    pattern=re.compile(r'FATAL EXCEPTION|NoSuchMethodError|VerifyError|ANR in com\.byd\.launcher|WindowLeaked|BadTokenException|inflate failed|rapidmode.*Force stopping',re.I)
    for p in sorted(ROOT.glob('*.txt')):
        if not p.name.startswith(('Launcher_Rebuild_Test','zhiui')):continue
        text=p.read_text(encoding='utf-8',errors='replace');count=0
        for line_no,line in enumerate(text.splitlines(),1):
            match=pattern.search(line)
            if match:
                hits.append(dict(path=str(p),line=line_no,category=match.group(0),apk_association='filename-only; correlate with PROJECT_MAP and time before attribution'))
                count+=1
        files.append(dict(path=str(p),size=p.stat().st_size,sha256=sha(p),candidate_hits=count,association='rebuild test period; exact installed package requires chronological correlation'))
    csvwrite(OUT/'historical_log_index.csv',files,['path','size','sha256','candidate_hits','association'])
    csvwrite(OUT/'historical_log_hits.csv',hits,['path','line','category','apk_association'])
    print('historical logs',len(files),'candidate hits',len(hits))

def resources():
    mapping=json.loads((OUT/'reference_map.json').read_text(encoding='utf-8'));rows=[];ns='{http://schemas.android.com/apk/res/android}'
    base=Path(mapping['ORIGINAL_BASELINE.apk'])
    for name in ['zhiui-final-v2.apk','zhiui-final-v3.11-lyrics-click-music-app-r1.apk','zhiui-stability-s1-systembars-r1.apk']:
        tree=Path(mapping[name])
        # Scan all layout variants for IDs deleted/changed from original contract.
        texts={str(p.relative_to(tree)):p.read_text(encoding='utf-8') for p in tree.glob('smali*/**/*.smali')}
        for p in base.glob('res/layout*/*.xml'):
            rel=p.relative_to(base);other=tree/rel
            def ids(file):
                if not file.exists():return {}
                return {el.attrib[ns+'id'].split('/')[-1]:el.tag for el in ET.parse(file).iter() if ns+'id' in el.attrib}
            a,b=ids(p),ids(other)
            for key,tag in a.items():
                if b.get(key)==tag:continue
                users=[path for path,txt in texts.items() if re.search(r'->'+re.escape(key)+r':I\b',txt)]
                rows.append(dict(apk=name,layout=str(rel),id=key,original_type=tag,candidate_type=b.get(key,'MISSING'),smali_users=';'.join(users),status='REVIEW_LAYOUT_CONTEXT'))
    csvwrite(OUT/'layout_contract_findings.csv',rows,['apk','layout','id','original_type','candidate_type','smali_users','status'])
    print('layout contract candidates',len(rows))

def warnings():
    rows=[]
    for p in (OUT/'logs').glob('*_decode.txt'):
        text=p.read_text(encoding='utf-8')
        for line_no,line in enumerate(text.splitlines(),1):
            if re.search(r'^(W:|E:)|warning|error|collision',line,re.I):rows.append(dict(log=p.name,line=line_no,message=line))
    csvwrite(OUT/'decode_warnings.csv',rows,['log','line','message'])
    print('decode warnings',len(rows))

if __name__=='__main__':logs();warnings();resources()
