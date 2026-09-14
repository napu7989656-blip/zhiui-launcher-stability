import com.byd.launcher.stability.CameraPreferences;
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
}