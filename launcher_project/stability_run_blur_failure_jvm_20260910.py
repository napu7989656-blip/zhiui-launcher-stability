from pathlib import Path
import subprocess,json
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/blur_failure_ownership_r1';prod=root/'diagnostics/stability_local_20260905_r1/modules/blur_pipeline_prod_r1/classes'
assert not out.exists();out.mkdir()
with (out/'compile.txt').open('x',encoding='utf-8') as f:subprocess.run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-cp',str(prod),'-d',str(out),str(root/'stability_modules/test/BlurFailureOwnershipTest.java')],stdout=f,stderr=subprocess.STDOUT,check=True)
p=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp',str(out)+';'+str(prod),'BlurFailureOwnershipTest'],capture_output=True,text=True)
(out/'run.txt').write_text(p.stdout+p.stderr,encoding='utf-8');assert p.returncode==0,p.stderr
(out/'result.json').write_text(json.dumps(dict(output=p.stdout.strip(),production_classes=str(prod),limits='Original production classes used; algorithm/bitmap/Android host are doubles.'),indent=2),encoding='utf-8');print(p.stdout)
