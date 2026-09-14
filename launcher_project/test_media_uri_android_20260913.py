"""Run the exact production class bytes with controllable Android API substitutes."""
from stability_prepare_media_uri_20260913 import ROOT,OUT,MOD
import subprocess,json
T=MOD/'android_test';assert not T.exists();(T/'src').mkdir(parents=True);(T/'classes').mkdir()
files={
'android/content/Context.java':'''package android.content; public class Context { public ContentResolver resolver=new ContentResolver(); public ContentResolver getContentResolver(){return resolver;} }''',
'android/content/ContentResolver.java':'''package android.content; import java.io.*; public class ContentResolver { public InputStream stream; public RuntimeException failure; public int opens; public InputStream openInputStream(android.net.Uri uri) throws FileNotFoundException {opens++;if(failure!=null)throw failure;return stream;} }''',
'android/net/Uri.java':'''package android.net; public class Uri {String value; public static Uri parse(String value){Uri u=new Uri();u.value=value;return u;}public String getScheme(){int i=value.indexOf(':');return i<0?null:value.substring(0,i);} }''',
'android/os/SystemClock.java':'''package android.os; public class SystemClock {public static long now;public static long elapsedRealtime(){return now;} }''',
'android/graphics/Bitmap.java':'''package android.graphics; public class Bitmap {public int width=200,height=200,recycles;public boolean failSize;public int getWidth(){if(failSize)throw new IllegalStateException();return width;}public int getHeight(){return height;}public void recycle(){recycles++;} }''',
'android/graphics/BitmapFactory.java':'''package android.graphics; public class BitmapFactory {public static class Options {public boolean inJustDecodeBounds,inScaled;public int outWidth,outHeight,inSampleSize;} public static Bitmap output;public static int width=200,height=200,calls,sample;public static boolean failure;public static Runnable after;public static Bitmap decodeByteArray(byte[] b,int o,int l,Options options){calls++;if(failure)throw new IllegalArgumentException();if(options.inJustDecodeBounds){options.outWidth=width;options.outHeight=height;return null;}sample=options.inSampleSize;if(after!=null)after.run();return output;} }''',
'MediaUriAndroidTest.java':r'''import com.byd.launcher.stability.*;
import android.content.*;import android.graphics.*;import android.os.*;import java.io.*;
public class MediaUriAndroidTest {
 static int n;static void ok(boolean b){n++;if(!b)throw new AssertionError(n);}
 static class Stream extends ByteArrayInputStream {int closes;boolean readFail,closeFail;Runnable afterRead;Stream(){super(new byte[]{1,2,3});}public synchronized int read(byte[] b,int o,int l){if(readFail)throw new IllegalStateException();int n=super.read(b,o,l);if(afterRead!=null)afterRead.run();return n;}public void close(){closes++;if(closeFail)throw new AssertionError("close");}}
 static Context setup(){SystemClock.now=0;BitmapFactory.calls=0;BitmapFactory.width=200;BitmapFactory.height=200;BitmapFactory.failure=false;BitmapFactory.after=null;BitmapFactory.output=new Bitmap();Context c=new Context();c.resolver.stream=new Stream();return c;}
 static class Host implements MediaArtworkWork.Host {Object session=new Object();public boolean current(Object token){return session==token;}public boolean post(Runnable r){return true;}public void remove(Runnable r){}public void failed(RuntimeException e){throw e;}}
 public static void main(String[] args){
  for(String uri:new String[]{"content://music/art","file:///art.png","android.resource://app/1"}){Context c=setup();Bitmap b=MediaUriReader.load(c,uri,null);ok(b==BitmapFactory.output&&b.recycles==0);ok(((Stream)c.resolver.stream).closes==1);ok(BitmapFactory.calls==2);}
  Context c=setup();((Stream)c.resolver.stream).closeFail=true;ok(MediaUriReader.load(c,"content://a",null)!=null);ok(((Stream)c.resolver.stream).closes==1);
  c=setup();((Stream)c.resolver.stream).readFail=true;ok(MediaUriReader.load(c,"content://a",null)==null);ok(((Stream)c.resolver.stream).closes==1&&BitmapFactory.calls==0);
  c=setup();c.resolver.failure=new SecurityException();ok(MediaUriReader.load(c,"content://a",null)==null);
  c=setup();c.resolver.stream=null;ok(MediaUriReader.load(c,"content://a",null)==null);
  c=setup();BitmapFactory.failure=true;ok(MediaUriReader.load(c,"content://a",null)==null);ok(((Stream)c.resolver.stream).closes==1);
  c=setup();BitmapFactory.width=32769;ok(MediaUriReader.load(c,"content://a",null)==null&&BitmapFactory.calls==1);
  c=setup();BitmapFactory.width=4097;BitmapFactory.height=4097;ok(MediaUriReader.load(c,"content://a",null)!=null&&BitmapFactory.sample==8);
  c=setup();Bitmap b=BitmapFactory.output;b.width=1025;ok(MediaUriReader.load(c,"content://a",null)==null&&b.recycles==1);
  c=setup();b=BitmapFactory.output;b.failSize=true;ok(MediaUriReader.load(c,"content://a",null)==null&&b.recycles==1);
  c=setup();BitmapFactory.output=null;ok(MediaUriReader.load(c,"content://a",null)==null);
  c=setup();b=BitmapFactory.output;BitmapFactory.after=()->SystemClock.now=6000;ok(MediaUriReader.load(c,"content://a",null)==null&&b.recycles==1);
  c=setup();Stream s=(Stream)c.resolver.stream;s.afterRead=()->SystemClock.now=6000;ok(MediaUriReader.load(c,"content://a",null)==null&&s.closes==1&&BitmapFactory.calls==0);
  Host h=new Host();MediaArtworkWork work=new MediaArtworkWork(h);MediaArtworkWork.Request request=work.begin(h.session);work.invalidate();c=setup();ok(MediaUriReader.load(c,"content://a",request)==null&&c.resolver.opens==0);
  request=work.begin(h.session);c=setup();s=(Stream)c.resolver.stream;s.afterRead=work::invalidate;ok(MediaUriReader.load(c,"content://a",request)==null&&s.closes==1&&BitmapFactory.calls==0);
  request=work.begin(h.session);c=setup();b=BitmapFactory.output;BitmapFactory.after=work::invalidate;ok(MediaUriReader.load(c,"content://a",request)==null&&b.recycles==1);work.close();
  c=setup();Thread.currentThread().interrupt();ok(MediaUriReader.load(c,"content://a",null)==null&&Thread.currentThread().isInterrupted()&&c.resolver.opens==0);Thread.interrupted();
  ok(MediaUriReader.load(null,"content://a",null)==null);ok(MediaUriReader.load(c,null,null)==null);ok(MediaUriReader.load(c,"",null)==null);ok(MediaUriReader.load(c,new String(new char[8193]),null)==null);
  System.out.println("MediaUriReader exact production JVM class assertions="+n+"; Android IO/decoder substitutes, not ART");
 }
}'''}
for rel,body in files.items():
 p=T/'src'/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(body,encoding='utf-8')
def run(args,name):
 with (T/name).open('x',encoding='utf-8') as f:subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,check=True)
run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-cp',str(MOD/'classes'),'-d',str(T/'classes')]+list(map(str,(T/'src').rglob('*.java'))),'compile.txt')
run(['D:/Android/.jdk21/bin/java.exe','-cp',str(T/'classes')+';'+str(MOD/'classes'),'MediaUriAndroidTest'],'result.txt')
print((T/'result.txt').read_text())
