from pathlib import Path
import subprocess,json
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/blur_pipeline_r1'
assert not out.exists();out.mkdir()
files=[root/'stability_modules/src/com/byd/launcher/stability'/n for n in ['LatestVisualWork.java','BlurPipeline.java']]+[root/'stability_modules/test/BlurPipelineTest.java']
with (out/'compile.txt').open('x',encoding='utf-8') as f:subprocess.run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-d',str(out)]+list(map(str,files)),stdout=f,stderr=subprocess.STDOUT,check=True)
p=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp',str(out),'BlurPipelineTest'],capture_output=True,text=True)
(out/'run.txt').write_text(p.stdout+p.stderr,encoding='utf-8');assert p.returncode==0,p.stderr
(out/'result.json').write_text(json.dumps(dict(output=p.stdout.strip(),apk_integration=False),indent=2),encoding='utf-8');print(p.stdout)
