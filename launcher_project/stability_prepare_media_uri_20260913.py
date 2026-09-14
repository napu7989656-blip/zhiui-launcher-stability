from pathlib import Path
import subprocess,shutil,json
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
MOD=OUT/'modules/media_uri_r22'
def main():
 assert not MOD.exists(),'Refuse overwrite'
 for n in ('src','classes','tests','test_classes','dex'):(MOD/n).mkdir(parents=True)
 src=ROOT/'stability_modules/src/com/byd/launcher/stability'
 for name in ('MediaArtworkWork','MediaArtworkPipeline','ArtworkInput','MediaUriReader'):
  text=(src/(name+'.java')).read_text(encoding='utf-8')
  if name=='MediaArtworkPipeline':
   text=text.replace('Object load(String uri);','Object load(String uri, MediaArtworkWork.Request request);')
   text=text.replace('host.load(snapshot.uri)','host.load(snapshot.uri,request)').replace('host.load(snapshot.fallbackUri)','host.load(snapshot.fallbackUri,request)')
  (MOD/'src'/(name+'.java')).write_text(text,encoding='utf-8')
 def run(args,name):
  with (MOD/name).open('x',encoding='utf-8') as f:subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,check=True)
 sdk='C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar'
 java='D:/Android/.jdk21/bin/java.exe';javac='D:/Android/.jdk21/bin/javac.exe'
 run([javac,'--release','8','-encoding','UTF-8','-cp',sdk,'-d',str(MOD/'classes')]+list(map(str,(MOD/'src').glob('*.java'))),'compile.txt')
 for name in ('MediaArtworkWorkTest','MediaArtworkPipelineTest'):
  text=(ROOT/'stability_modules/test'/(name+'.java')).read_text(encoding='utf-8')
  text=text.replace('Object load(String uri)','Object load(String uri, MediaArtworkWork.Request request)')
  (MOD/'tests'/(name+'.java')).write_text(text,encoding='utf-8')
 shutil.copy2(ROOT/'stability_modules/tests/ArtworkInputTest.java',MOD/'tests/ArtworkInputTest.java')
 run([javac,'--release','8','-encoding','UTF-8','-cp',str(MOD/'classes'),'-d',str(MOD/'test_classes'),str(src/'LatestVisualWork.java')]+list(map(str,(MOD/'tests').glob('*.java'))),'test_compile.txt')
 for cls in ('MediaArtworkWorkTest','MediaArtworkPipelineTest','com.byd.launcher.stability.ArtworkInputTest'):
  run([java,'-cp',str(MOD/'test_classes')+';'+str(MOD/'classes'),cls],cls.rsplit('.',1)[-1]+'.txt')
 classes=list((MOD/'classes').rglob('*.class'))
 run([java,'-cp','C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0/lib/d8.jar','com.android.tools.r8.D8','--release','--min-api','24','--lib',sdk,'--output',str(MOD/'dex')]+list(map(str,classes)),'d8.txt')
 run(['C:/Program Files/Python312/python.exe','-B',str(ROOT/'stability_decode_owned_module_20260906.py'),'media_uri_r22','zhiui-stability-local-base10-r21.apk'],'inspect.txt')
 print('URI module compiled/tested/decoded; production classes directly used by JVM tests and D8.')
if __name__=='__main__':main()
