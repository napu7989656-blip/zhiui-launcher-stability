package com.byd.launcher.stability;
import java.io.*;
import java.net.*;
import java.util.*;

public final class ArtworkInputTest {
    static int assertions;
    static void ok(boolean value) { assertions++; if(!value) throw new AssertionError(assertions); }
    interface Attempt { void run() throws Exception; }
    static void fails(Attempt attempt) throws Exception {
        try { attempt.run(); throw new AssertionError("expected IOException"); } catch(IOException expected) { assertions++; }
    }
    static final class Time implements ArtworkInput.Clock, ArtworkInput.Gate {
        long now; boolean active=true;
        public long millis(){return now;}
        public boolean current(){return active;}
        ArtworkInput.Budget budget(){return new ArtworkInput.Budget(this,this);}
    }
    static final class Stream extends InputStream {
        int left,closes; boolean failRead,failClose,zero,error; Time time; int step;
        Stream(int n){left=n;}
        public int read(){throw new AssertionError("bulk read required");}
        public int read(byte[] b,int offset,int length) throws IOException {
            if(time!=null) time.now+=step;
            if(error) throw new AssertionError("read Error");
            if(failRead) throw new IOException("read");
            if(zero) return 0;
            if(left==0) return -1;
            int n=Math.min(length,left);Arrays.fill(b,offset,offset+n,(byte)7);left-=n;return n;
        }
        public void close() throws IOException {closes++;if(failClose) throw new IOException("close");}
    }
    static final class Connection extends HttpURLConnection {
        Stream stream=new Stream(20); int disconnects,connects,code=200; long size=-1;
        boolean connectFail,inputFail,responseFail,disconnectFail; String location; Time time; int connectStep;
        Connection() throws Exception {super(new URL("http://example.invalid/art"));}
        public void connect() throws IOException {connects++;if(time!=null)time.now+=connectStep;if(connectFail)throw new IOException("connect");}
        public int getResponseCode() throws IOException {if(responseFail)throw new IOException("response");return code;}
        public long getContentLengthLong(){return size;}
        public String getHeaderField(String key){return location;}
        public InputStream getInputStream() throws IOException {if(inputFail)throw new IOException("open");return stream;}
        public void disconnect(){disconnects++;if(disconnectFail)throw new AssertionError("disconnect");}
        public boolean usingProxy(){return false;}
    }
    static byte[] fetch(Connection c,Time t) throws Exception {
        return ArtworkInput.http(new URL("http://example.invalid/art"),t.budget(),url->c);
    }
    public static void main(String[] args) throws Exception {
        Time t=new Time();Connection c=new Connection();ok(fetch(c,t).length==20);ok(c.stream.closes==1&&c.disconnects==1);ok(!c.getInstanceFollowRedirects()&&!c.getUseCaches());
        for(String fault:new String[]{"connect","response","open","read","close","disconnect","length","status","error"}) {
            Connection x=new Connection();
            x.connectFail=fault.equals("connect");x.responseFail=fault.equals("response");x.inputFail=fault.equals("open");x.stream.failRead=fault.equals("read");x.stream.failClose=fault.equals("close");x.disconnectFail=fault.equals("disconnect");x.stream.error=fault.equals("error");
            if(fault.equals("length"))x.size=ArtworkInput.MAX_BYTES+1L;
            if(fault.equals("status"))x.code=500;
            if(fault.equals("close")||fault.equals("disconnect"))ok(fetch(x,new Time()).length==20);
            else if(fault.equals("error")){try{fetch(x,new Time());throw new IllegalStateException();}catch(AssertionError expected){ok(true);}}
            else fails(()->fetch(x,new Time()));
            ok(x.disconnects==1);
            ok(x.stream.closes==((fault.equals("read")||fault.equals("close")||fault.equals("disconnect")||fault.equals("error"))?1:0));
        }
        for(int size:new int[]{0,1,8192,ArtworkInput.MAX_BYTES,ArtworkInput.MAX_BYTES+1}) {
            Connection x=new Connection();x.stream=new Stream(size);
            if(size>ArtworkInput.MAX_BYTES)fails(()->fetch(x,new Time()));else ok(fetch(x,new Time()).length==size);
            ok(x.stream.closes==1&&x.disconnects==1);
        }
        Connection slow=new Connection();Time tick=new Time();slow.stream=new Stream(100000);slow.stream.time=tick;slow.stream.step=1900;
        fails(()->fetch(slow,tick));ok(tick.now==7600&&slow.stream.closes==1&&slow.disconnects==1); // fake ignores timeout; boundary still rejects
        Connection delayed=new Connection();Time elapsed=new Time();delayed.time=elapsed;delayed.connectStep=5900;
        ok(fetch(delayed,elapsed).length==20);ok(delayed.getReadTimeout()==100);
        Time expired=new Time();expired.active=false;Connection unused=new Connection();fails(()->fetch(unused,expired));ok(unused.connects==0);
        Thread.currentThread().interrupt();fails(()->fetch(unused,new Time()));ok(Thread.currentThread().isInterrupted());Thread.interrupted();
        Connection noProgress=new Connection();noProgress.stream.zero=true;fails(()->fetch(noProgress,new Time()));ok(noProgress.stream.closes==1);
        List<Connection> chain=new ArrayList<>();
        fails(()->ArtworkInput.http(new URL("http://example.invalid/a"),new Time().budget(),url->{try{Connection x=new Connection();x.code=302;x.location="/again";chain.add(x);return x;}catch(Exception e){throw new IOException(e);}}));
        ok(chain.size()==4);for(Connection x:chain)ok(x.disconnects==1);
        Connection redirect=new Connection();redirect.code=307;redirect.location="file:///private";fails(()->fetch(redirect,new Time()));ok(redirect.disconnects==1);
        Connection missing=new Connection();missing.code=308;fails(()->fetch(missing,new Time()));ok(missing.disconnects==1);
        for(int[] dimensions:new int[][]{{0,1},{1,-1},{32769,1},{8001,8000},{Integer.MAX_VALUE,Integer.MAX_VALUE}})
            fails(()->ArtworkInput.sample(dimensions[0],dimensions[1]));
        for(int w:new int[]{1,256,1024,1025,4096,8000,32768})for(int h:new int[]{1,256,1024,1025,4096}) {
            if((long)w*h>64000000L)continue;
            int n=ArtworkInput.sample(w,h);ok((w+n-1)/n<=1024&&(h+n-1)/n<=1024);ok((n&(n-1))==0);
        }
        System.out.println("ArtworkInput production JVM assertions="+assertions+"; fake IO/clock, no external network or Android decoder");
    }
}
