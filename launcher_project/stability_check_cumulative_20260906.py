"""Cumulative API/signature and protected baseline checks, with explicit limits."""
import argparse,csv,json,zipfile
from pathlib import Path
from stability_local_audit_20260905 import sha
from stability_static_checks_20260905 import classfile,scan,SDK,OUT

def main():
    p=argparse.ArgumentParser();p.add_argument('tag');args=p.parse_args()
    final=OUT/'final_redecode'/args.tag
    assert (OUT/f'{args.tag}_verification.json').exists(),'Require completed final content verification'
    framework={}
    with zipfile.ZipFile(SDK) as z:
        for n in z.namelist():
            if n.endswith('.class'):
                name,info=classfile(z.read(n));framework[name]=info
    baseline=scan(OUT/'references/Launcher_Rebuild_Test',framework)
    candidate=scan(final,framework)
    key=lambda r:(r['path'],r['method'],r['target'],r['issue'])
    old={key(r) for r in baseline};new=[r for r in candidate if key(r) not in old]
    result=dict(tag=args.tag,baseline_candidates=len(baseline),candidate_candidates=len(candidate),new_signature_findings=new,
        limitations='Public Android 29 declarations; inherited baseline findings remain under caller/ART review. Not access-control/register/ART or vendor API verification.')
    (OUT/f'{args.tag}_cumulative_signature_check.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    assert not new,new
    print(json.dumps(result))
if __name__=='__main__':main()
