from pathlib import Path
import subprocess,json
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/listener_list_r1'
assert not out.exists();out.mkdir()
files=[root/'stability_modules/src/com/byd/launcher/stability/ListenerList.java',root/'stability_modules/test/ListenerListTest.java']
with (out/'compile.txt').open('x',encoding='utf-8') as f:subprocess.run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-d',str(out)]+list(map(str,files)),stdout=f,stderr=subprocess.STDOUT,check=True)
p=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp',str(out),'ListenerListTest'],capture_output=True,text=True,timeout=30)
(out/'run.txt').write_text(p.stdout+p.stderr,encoding='utf-8');assert p.returncode==0,p.stderr
(out/'result.json').write_text(json.dumps(dict(output=p.stdout.strip(),apk_integration=False,limits='Actual Java snapshot parser; trusted read status supplied by test, Android read bridge not yet integrated.')),encoding='utf-8');print(p.stdout)
