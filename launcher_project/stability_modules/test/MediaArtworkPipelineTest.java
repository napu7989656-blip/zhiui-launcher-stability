import com.byd.launcher.stability.MediaArtworkPipeline;
import com.byd.launcher.stability.MediaArtworkWork;
import java.util.*;
import java.util.concurrent.*;

public final class MediaArtworkPipelineTest {
    static int checks;
    static void check(boolean condition) { checks++;if(!condition)throw new AssertionError("check "+checks); }
    static void await(CountDownLatch l) {try{if(!l.await(5,TimeUnit.SECONDS))throw new AssertionError("timeout");}catch(InterruptedException e){throw new AssertionError(e);}}
    static final class Bitmap { final String name;final boolean small;Bitmap(String name,boolean small){this.name=name;this.small=small;} }
    static final class Host implements MediaArtworkPipeline.Host {
        volatile Object session=new Object();volatile boolean alive=true;
        Object cache=new Bitmap("cache",true),scaled=new Bitmap("scaled",true);
        final List<Runnable> queue=new ArrayList<>();final List<String> loads=new ArrayList<>();final List<Object[]> commits=new ArrayList<>();
        final Map<String,Object> images=new HashMap<>();
        final CountDownLatch entered=new CountDownLatch(1),failed=new CountDownLatch(1),readTwice=new CountDownLatch(1),paused=new CountDownLatch(1);
        CountDownLatch release;boolean blockScale,interruptPause,failScale;int posts,scales,pauses;String initialUri;
        public boolean current(Object observed){return alive && session==observed;}
        public synchronized boolean post(Runnable r){queue.add(r);posts++;notifyAll();return true;}
        public synchronized void remove(Runnable r){queue.remove(r);}
        public void failed(RuntimeException e){failed.countDown();}
        public boolean small(Object b){return ((Bitmap)b).small;}
        public Object cached(){return cache;}
        public Object load(String uri){
            synchronized(this){loads.add(uri);if(loads.size()==2)readTwice.countDown();}
            entered.countDown();if(release!=null && !blockScale)await(release);return images.get(uri);
        }
        public Object scale(Object b){scales++;entered.countDown();if(release!=null && blockScale)await(release);if(failScale)throw new IllegalStateException("scale");return scaled;}
        public void pause(long ms)throws InterruptedException{check(ms==150);pauses++;paused.countDown();if(interruptPause)throw new InterruptedException("test");}
        public void commit(Object b,String t,String a,boolean replace){if(replace)cache=b;commits.add(new Object[]{b,t,a,replace});}
        synchronized void waitPosts(int count){long deadline=System.nanoTime()+TimeUnit.SECONDS.toNanos(5);while(posts<count){long left=deadline-System.nanoTime();if(left<=0)throw new AssertionError("post timeout");try{wait(Math.max(1,TimeUnit.NANOSECONDS.toMillis(left)));}catch(InterruptedException e){throw new AssertionError(e);}}}
        void flush(){List<Runnable> rs;synchronized(this){rs=new ArrayList<>(queue);queue.clear();}for(Runnable r:rs)r.run();}
    }
    // Call only after the current pipeline worker has entered a host operation.
    static void drainStartedWorker(){Host h=new Host();MediaArtworkWork barrier=new MediaArtworkWork(h);CountDownLatch done=new CountDownLatch(1);check(barrier.begin(h.session).execute(done::countDown));await(done);barrier.close();}
    static void direct(){Host h=new Host();MediaArtworkPipeline p=new MediaArtworkPipeline(h);Bitmap b=new Bitmap("small",true);p.update(h.session,new MediaArtworkPipeline.Input(b,null,null,null),null,null);h.flush();check(h.cache==b);check(h.scales==0 && h.loads.isEmpty());check(h.commits.get(0)[1].equals("") && h.commits.get(0)[2].equals(""));p.close();}
    static void slowScaleThenDirect(){Host h=new Host();h.blockScale=true;h.release=new CountDownLatch(1);MediaArtworkPipeline p=new MediaArtworkPipeline(h);p.update(h.session,new MediaArtworkPipeline.Input(new Bitmap("old large",false),null,null,null),"old title","old artist");await(h.entered);Bitmap latest=new Bitmap("new small",true);p.update(h.session,new MediaArtworkPipeline.Input(latest,null,null,null),"new title","new artist");h.flush();check(h.cache==latest);h.release.countDown();drainStartedWorker();h.flush();check(h.commits.size()==1 && h.commits.get(0)[1].equals("new title") && h.cache==latest);p.close();}
    static void sourcePaths(){
        for(int source=0;source<4;source++){
            Host h=new Host();MediaArtworkPipeline p=new MediaArtworkPipeline(h);Bitmap input=new Bitmap("source",false);
            MediaArtworkPipeline.Input snapshot;
            if(source==0){h.images.put("primary",input);snapshot=new MediaArtworkPipeline.Input(null,"primary",null,null);}
            else if(source==1){snapshot=new MediaArtworkPipeline.Input(null,"missing",input,null);}
            else if(source==2){h.images.put("description",input);snapshot=new MediaArtworkPipeline.Input(null,null,null,"description");}
            else snapshot=new MediaArtworkPipeline.Input(input,null,null,null);
            p.update(h.session,snapshot,"title","artist");h.waitPosts(2);h.flush();check(h.cache==h.scaled && h.scales==1);check(h.commits.size()==1);check(h.commits.get(0)[1].equals("title") && h.commits.get(0)[2].equals("artist"));check(h.pauses==0);p.close();
        }
    }
    static void uriFailureRetry(){Host h=new Host();MediaArtworkPipeline p=new MediaArtworkPipeline(h);Object cache=h.cache;p.update(h.session,new MediaArtworkPipeline.Input(null,"missing",null,null),"title","artist");await(h.readTwice);drainStartedWorker();h.flush();check(h.loads.equals(Arrays.asList("missing","missing")) && h.pauses==1);check(h.cache==cache && h.scales==0);check(h.commits.size()==1 && !(Boolean)h.commits.get(0)[3]);p.close();}
    static void interruption(){Host h=new Host();h.interruptPause=true;MediaArtworkPipeline p=new MediaArtworkPipeline(h);p.update(h.session,new MediaArtworkPipeline.Input(null,"missing",null,null),"title","artist");await(h.paused);drainStartedWorker();check(h.loads.size()==1 && h.scales==0);p.close();}
    static void changedWhileReading(){for(int mode=0;mode<3;mode++){Host h=new Host();h.release=new CountDownLatch(1);h.images.put("uri",new Bitmap("image",false));MediaArtworkPipeline p=new MediaArtworkPipeline(h);p.update(h.session,new MediaArtworkPipeline.Input(null,"uri",null,null),"old","artist");await(h.entered);if(mode==0)h.session=new Object();else if(mode==1)h.alive=false;else p.close();h.release.countDown();drainStartedWorker();h.flush();check(h.commits.isEmpty() && h.scales==0);p.close();}}
    static void scalingFailure(){Host h=new Host();h.failScale=true;MediaArtworkPipeline p=new MediaArtworkPipeline(h);Object before=h.cache;p.update(h.session,new MediaArtworkPipeline.Input(new Bitmap("large",false),null,null,null),"title","artist");await(h.failed);drainStartedWorker();h.flush();check(h.cache==before);p.close();}
    public static void main(String[] args){direct();slowScaleThenDirect();sourcePaths();uriFailureRetry();interruption();changedWhileReading();scalingFailure();System.out.println("PASS "+checks+" pipeline assertions; actual asynchronous production classes with borrowed-image/IO/UI doubles; no Android bridge");}
}
