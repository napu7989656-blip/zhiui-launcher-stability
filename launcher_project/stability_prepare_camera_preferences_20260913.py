from pathlib import Path
import subprocess,shutil,json,hashlib
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1';MOD=OUT/'modules/camera_preferences_r25'
def main():
 assert not MOD.exists()
 for d in ('src','classes','test_src/android/content','test_classes','dex'):(MOD/d).mkdir(parents=True)
 source=ROOT/'stability_modules/src/com/byd/launcher/stability/CameraPreferences.java';shutil.copy2(source,MOD/'src'/source.name)
 sdk='C:/Users/L/AppData/Local/Android/Sdk/platforms/android-29/android.jar';java='D:/Android/.jdk21/bin/java.exe';javac='D:/Android/.jdk21/bin/javac.exe'
 def run(args,name):
  with (MOD/name).open('x',encoding='utf-8') as log:subprocess.run(args,stdout=log,stderr=subprocess.STDOUT,check=True)
 run([javac,'--release','8','-encoding','UTF-8','-cp',sdk,'-d',str(MOD/'classes'),str(MOD/'src'/source.name)],'compile.txt')
 (MOD/'test_src/android/content/SharedPreferences.java').write_text('package android.content; public interface SharedPreferences {int getInt(String key,int fallback);boolean getBoolean(String key,boolean fallback);}',encoding='utf-8')
 (MOD/'test_src/CameraPreferencesTest.java').write_text('''import com.byd.launcher.stability.CameraPreferences;
import android.content.SharedPreferences;
import java.util.*;
public final class CameraPreferencesTest {
 static int count;static void ok(boolean b){count++;if(!b)throw new AssertionError(count);}
 static class Prefs implements SharedPreferences {
  Map<String,Object> data=new HashMap<>();RuntimeException fault;int reads;
  Object get(String key,Object fallback){reads++;if(fault!=null)throw fault;return data.containsKey(key)?data.get(key):fallback;}
  public int getInt(String key,int fallback){return (Integer)get(key,fallback);}
  public boolean getBoolean(String key,boolean fallback){return (Boolean)get(key,fallback);}
 }
 public static void main(String[] args){
  String[] keys={"turn_signal_overlay_w","turn_signal_overlay_h","turn_signal_overlay_x","turn_signal_overlay_y"};int[] defaults={420,560,8,40};
  for(int i=0;i<keys.length;i++){
   Prefs p=new Prefs();String key=keys[i];int fallback=defaults[i];ok(CameraPreferences.integer(p,key,fallback)==fallback);
   for(int value:new int[]{0,-1,1,420,560,Integer.MIN_VALUE,Integer.MAX_VALUE}){p.data.put(key,value);ok(CameraPreferences.integer(p,key,fallback)==value);}
   for(Object value:new Object[]{"420",true,1L,1.5f,new HashSet<String>()}){p.data.put(key,value);ok(CameraPreferences.integer(p,key,fallback)==fallback);ok(p.data.get(key)==value);}
   ok(CameraPreferences.integer(null,key,fallback)==fallback);
  }
  String key="turn_signal_camera_enabled";Prefs p=new Prefs();ok(!CameraPreferences.flag(p,key,false));
  p.data.put(key,true);ok(CameraPreferences.flag(p,key,false));p.data.put(key,false);ok(!CameraPreferences.flag(p,key,true));
  for(Object value:new Object[]{"true",1,0,1L,1.5f,new HashSet<String>()}){p.data.put(key,value);ok(!CameraPreferences.flag(p,key,false));ok(p.data.get(key)==value);}
  ok(!CameraPreferences.flag(null,key,false));ok(CameraPreferences.flag(null,key,true));
  for(RuntimeException error:new RuntimeException[]{new SecurityException(),new IllegalStateException()}){
   p.fault=error;try{CameraPreferences.flag(p,key,false);throw new AssertionError();}catch(RuntimeException got){ok(got==error);}
   try{CameraPreferences.integer(p,key,8);throw new AssertionError();}catch(RuntimeException got){ok(got==error);}
  }
  p.fault=null;p.data.put(key,"true");try{p.getBoolean(key,false);throw new AssertionError();}catch(ClassCastException expected){ok(true);}
  p.data.put("turn_signal_overlay_w",true);try{p.getInt("turn_signal_overlay_w",420);throw new AssertionError();}catch(ClassCastException expected){ok(true);}
  System.out.println("PASS "+count+" CameraPreferences assertions; exact production class, SharedPreferences substitute, no writes/hardware");
 }
}''',encoding='utf-8')
 run([javac,'--release','8','-encoding','UTF-8','-cp',str(MOD/'classes'),'-d',str(MOD/'test_classes')]+list(map(str,(MOD/'test_src').rglob('*.java'))),'test_compile.txt')
 run([java,'-cp',str(MOD/'test_classes')+';'+str(MOD/'classes'),'CameraPreferencesTest'],'test_result.txt')
 classes=list((MOD/'classes').rglob('*.class'))
 run([java,'-cp','C:/Users/L/AppData/Local/Android/Sdk/build-tools/35.0.0/lib/d8.jar','com.android.tools.r8.D8','--release','--min-api','24','--lib',sdk,'--output',str(MOD/'dex')]+list(map(str,classes)),'d8.txt')
 run(['C:/Program Files/Python312/python.exe','-B',str(ROOT/'stability_decode_owned_module_20260906.py'),'camera_preferences_r25','zhiui-stability-local-base10-r24.apk'],'inspect.txt')
 (MOD/'production_manifest.json').write_text(json.dumps(dict(classes={p.relative_to(MOD/'classes').as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in classes},test_and_d8_classes_same=True,no_test_classes_in_dex=True),indent=2),encoding='utf-8')
 print((MOD/'test_result.txt').read_text())
if __name__=='__main__':main()
