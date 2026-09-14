from pathlib import Path
import subprocess,json,hashlib
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/media_artwork_pipeline_r1'
assert not out.exists();out.mkdir()
files=[root/'stability_modules/src/com/byd/launcher/stability'/name for name in ['MediaArtworkWork.java','MediaArtworkPipeline.java']]+[root/'stability_modules/test/MediaArtworkPipelineTest.java']
with (out/'compile.txt').open('x',encoding='utf-8') as f:p=subprocess.run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-d',str(out)]+list(map(str,files)),stdout=f,stderr=subprocess.STDOUT)
assert p.returncode==0,'compile failure'
p=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp',str(out),'MediaArtworkPipelineTest'],capture_output=True,text=True,timeout=45)
(out/'run.txt').write_text(p.stdout+p.stderr,encoding='utf-8');assert p.returncode==0,p.stderr
(out/'result.json').write_text(json.dumps(dict(output=p.stdout.strip(),source_sha256={str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in files},apk_integration=False,limits='Actual Java scheduling/pipeline with IO/UI/bitmap doubles. Android adapter, metadata extraction, URI ownership and APK integration still required. Interruption test proves retry stops, not flag restoration after executor clears it.'),indent=2),encoding='utf-8')
print(p.stdout)
