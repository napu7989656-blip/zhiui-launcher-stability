from pathlib import Path
import subprocess
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/blur_pipeline_prod_r1'
assert not out.exists();(out/'classes').mkdir(parents=True);(out/'dex').mkdir()
java='D:/Android/.jdk21/bin/java.exe'
def run(args,name):
 with (out/name).open('x',encoding='utf-8') as f:subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,check=True)
run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-d',str(out/'classes')]+[str(root/'stability_modules/src/com/byd/launcher/stability'/n) for n in ['LatestVisualWork.java','BlurPipeline.java']],'compile.txt')
run([java,'-cp','C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0/lib/d8.jar','com.android.tools.r8.D8','--release','--min-api','24','--lib','C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar','--output',str(out/'dex')]+[str(p) for p in (out/'classes').rglob('*.class')],'d8.txt')
run(['C:/Program Files/Python312/python.exe',str(root/'stability_decode_owned_module_20260906.py'),'blur_pipeline_prod_r1','zhiui-stability-local-base10-r14.apk'],'inspect.txt')
print('Blur production Java/D8/min24 and owned-class decode complete; integration not yet tested.')
