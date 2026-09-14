from stability_prepare_media_uri_20260913 import ROOT,OUT,MOD
import subprocess
def run(args,name):
 with (MOD/name).open('x',encoding='utf-8') as f:subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,check=True)
java='D:/Android/.jdk21/bin/java.exe';javac='D:/Android/.jdk21/bin/javac.exe'
sdk='C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar'
run([javac,'--release','8','-encoding','UTF-8','-cp',str(MOD/'classes'),'-d',str(MOD/'test_classes'),str(ROOT/'stability_modules/src/com/byd/launcher/stability/LatestVisualWork.java')]+list(map(str,(MOD/'tests').glob('*.java'))),'test_compile_resume1.txt')
for cls in ('MediaArtworkWorkTest','MediaArtworkPipelineTest','com.byd.launcher.stability.ArtworkInputTest'):
 run([java,'-cp',str(MOD/'test_classes')+';'+str(MOD/'classes'),cls],cls.rsplit('.',1)[-1]+'.txt')
run([java,'-cp','C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0/lib/d8.jar','com.android.tools.r8.D8','--release','--min-api','24','--lib',sdk,'--output',str(MOD/'dex')]+list(map(str,(MOD/'classes').rglob('*.class'))),'d8.txt')
run(['C:/Program Files/Python312/python.exe','-B',str(ROOT/'stability_decode_owned_module_20260906.py'),'media_uri_r22','zhiui-stability-local-base10-r21.apk'],'inspect.txt')
print('Production JVM tests and DEX completed, compile failure retained.')
