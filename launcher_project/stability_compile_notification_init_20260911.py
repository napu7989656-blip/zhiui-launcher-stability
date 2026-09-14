from pathlib import Path
import subprocess,json,hashlib
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/notification_init_prod_r1'
assert not out.exists();(out/'classes').mkdir(parents=True);(out/'dex').mkdir()
java='D:/Android/.jdk21/bin/java.exe'
def run(args,name):
 with (out/name).open('x',encoding='utf-8') as f:subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,check=True)
files=[root/'stability_modules/src/com/byd/launcher/stability'/n for n in ['InitProcess.java','ListenerList.java','NotificationInit.java']]
run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-d',str(out/'classes')]+list(map(str,files)),'compile.txt')
run([java,'-cp','C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0/lib/d8.jar','com.android.tools.r8.D8','--release','--min-api','24','--lib','C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar','--output',str(out/'dex')]+[str(p) for p in (out/'classes').rglob('*.class')],'d8.txt')
run(['C:/Program Files/Python312/python.exe','-B',str(root/'stability_decode_owned_module_20260906.py'),'notification_init_prod_r1','zhiui-stability-local-base10-r17.apk'],'inspect.txt')
classes=list((out/'classes').rglob('*.class'))
for f in classes:
 name=f.name.split('$')[0].split('.')[0]
 module='init_process_r1' if name=='InitProcess' else 'notification_init_r1'
 tested=out.parent/module/f.relative_to(out/'classes')
 assert tested.read_bytes()==f.read_bytes(),f
(out/'result.json').write_text(json.dumps(dict(classes=len(classes),test_class_bytes_identical=True,apk_integration=False)),encoding='utf-8')
print('Production Java/D8/min24 and owned smali decode passed; tested class bytes identical. APK not integrated.')
