import subprocess,json
from pathlib import Path
out=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');dest=out/'base10_r15_a8_noinline.java';log=out/'logs/base10_r15_a8_noinline.txt'
assert not dest.exists() and not log.exists()
with log.open('x',encoding='utf-8') as f:r=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp','D:/Android/apk_analysis_dd/jadx/lib/jadx-1.5.5-all.jar','jadx.cli.JadxCLI','--no-inline-anonymous','--log-level','DEBUG','--single-class','o.a8','--single-class-output',str(dest),'D:/apk/zhiui-stability-local-base10-r15.apk'],stdout=f,stderr=subprocess.STDOUT)
(out/'base10_r15_a8_noinline_status.json').write_text(json.dumps(dict(exit_code=r.returncode,output_exists=dest.exists(),log=log.name,reason='Default jadx marked a8 DONT_GENERATE after anonymous inlining; explicit no-inline review preserves the original failed log.'),indent=2),encoding='utf-8')
print(r.returncode,dest.exists())
