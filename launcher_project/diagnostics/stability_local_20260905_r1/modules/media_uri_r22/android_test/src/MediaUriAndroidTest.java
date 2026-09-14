import com.byd.launcher.stability.*;
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
}