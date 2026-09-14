from pathlib import Path
import subprocess,json,hashlib
root=Path('D:/apk/launcher_project');out=root/'diagnostics/stability_local_20260905_r1/modules/media_artwork_prod_r1';assert not out.exists();(out/'classes').mkdir(parents=True);(out/'dex').mkdir()
sdk='C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar'
def run(args,name):
 with (out/name).open('x',encoding='utf-8') as f:subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,check=True)
files=[root/'stability_modules/src/com/byd/launcher/stability'/n for n in ['MediaArtworkWork.java','MediaArtworkPipeline.java','MediaArtworkMetadata.java']]
run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-cp',sdk,'-d',str(out/'classes')]+list(map(str,files)),'compile.txt')
classes=list((out/'classes').rglob('*.class'))
for f in classes:
 if f.name.startswith(('MediaArtworkWork','MediaArtworkPipeline')):
  assert f.read_bytes()==(out.parent/'media_artwork_pipeline_r1'/f.relative_to(out/'classes')).read_bytes(),f
run(['D:/Android/.jdk21/bin/java.exe','-cp','C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0/lib/d8.jar','com.android.tools.r8.D8','--release','--min-api','24','--lib',sdk,'--output',str(out/'dex')]+list(map(str,classes)),'d8.txt')
run(['C:/Program Files/Python312/python.exe','-B',str(root/'stability_decode_owned_module_20260906.py'),'media_artwork_prod_r1','zhiui-stability-local-base10-r20b.apk'],'inspect.txt')
(out/'result.json').write_text(json.dumps(dict(classes=len(classes),work_pipeline_tested_bytes_identical=True,metadata_android_bridge_tests_pending=True,apk_integration=False),indent=2),encoding='utf-8')
print('Production media modules Java8/D8 min24 complete; metadata bridge awaits actual-smali tests.')
