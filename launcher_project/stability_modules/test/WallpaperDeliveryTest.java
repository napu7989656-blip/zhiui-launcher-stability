import android.os.Handler;
import android.os.Looper;
import com.byd.launcher.stability.WallpaperDelivery;
import com.byd.launcher.stability.WallpaperExecutor;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

public final class WallpaperDeliveryTest {
    private static void check(boolean ok,String message) { if(!ok)throw new AssertionError(message); }
    private static void join(Thread thread) throws Exception {thread.join(5000);check(!thread.isAlive(),"worker stuck");}
    private static Runnable next(Handler handler) throws Exception {Runnable r=handler.next();check(r!=null,"no UI result");return r;}
    private static void pausedUi() throws Exception {
        final Handler handler=new Handler();
        final AtomicInteger shown=new AtomicInteger();
        ThreadPoolExecutor pool=(ThreadPoolExecutor)WallpaperExecutor.create();
        try {
            Runnable decode=new Runnable(){public void run(){WallpaperDelivery.deliver(handler,new Runnable(){public void run(){shown.incrementAndGet();}});}};
            // Explicitly wait for two pending results; leave UI processing paused.
            pool.execute(decode);pool.execute(decode);
            Runnable first=next(handler),second=next(handler); // held by simulated UI, not run yet
            for(int n=0;n<10000;n++)pool.execute(decode);
            check(pool.getActiveCount()==2&&pool.getQueue().size()==4,"backpressure/queue limit failed");
            check(handler.size()==0&&shown.get()==0,"workers published more than one result each");
            first.run();second.run();
            for(int n=0;n<4;n++)next(handler).run();
            pool.shutdown();check(pool.awaitTermination(5,TimeUnit.SECONDS),"resumed workers remained stuck");
            check(shown.get()==6&&handler.maximum.get()<=2,"unexpected result count/queue growth");
        } finally {pool.shutdownNow();handler.clear();}
    }
    private static void destroyAfterClear() throws Exception {
        final Handler handler=new Handler();final AtomicInteger shown=new AtomicInteger();
        ThreadPoolExecutor pool=(ThreadPoolExecutor)WallpaperExecutor.create();
        try {
            Runnable decode=new Runnable(){public void run(){WallpaperDelivery.deliver(handler,new Runnable(){public void run(){shown.incrementAndGet();}});}};
            pool.execute(decode);pool.execute(decode);
            next(handler);next(handler); // discarded UI callbacks; neither can count down
            handler.clear();pool.shutdownNow();
            check(pool.awaitTermination(5,TimeUnit.SECONDS),"clear+interrupt deadlocked");
            check(handler.size()==0&&shown.get()==0,"destroy revived a result");
        } finally {pool.shutdownNow();handler.clear();}
    }
    private static void rejectionAndInterruption() throws Exception {
        for(final int mode:new int[]{0,1,2}) {
            final Handler handler=new Handler();handler.reject=mode==0;handler.interruptOnPost=mode==2;
            final AtomicBoolean returned=new AtomicBoolean(),interrupted=new AtomicBoolean();
            Thread worker=new Thread(new Runnable(){public void run(){
                if(mode==1)Thread.currentThread().interrupt();
                WallpaperDelivery.deliver(handler,new Runnable(){public void run(){throw new AssertionError("cancelled result ran");}});
                returned.set(true);interrupted.set(Thread.currentThread().isInterrupted());
            }});
            worker.start();join(worker);
            check(returned.get()&&handler.size()==0,"rejection/interruption left a queued result");
            check(interrupted.get()==(mode!=0),"interrupted status lost");
        }
    }
    private static void exceptionAndUiCaller() throws Exception {
        final Handler handler=new Handler();final AtomicBoolean returned=new AtomicBoolean();
        Thread worker=new Thread(new Runnable(){public void run(){
            WallpaperDelivery.deliver(handler,new Runnable(){public void run(){throw new IllegalStateException("injected");}});
            returned.set(true);
        }});
        worker.start();boolean threw=false;
        try{next(handler).run();}catch(IllegalStateException expected){threw=true;}
        join(worker);check(threw&&returned.get(),"failure did not release worker or was swallowed");
        final AtomicBoolean inline=new AtomicBoolean();
        WallpaperDelivery.deliver(handler,new Runnable(){public void run(){inline.set(true);}});
        check(inline.get()&&handler.size()==0,"UI caller waited on its own queue");
    }
    public static void main(String[] args) throws Exception {
        Looper.getMainLooper(); // initialize the double on the test UI thread
        pausedUi();destroyAfterClear();rejectionAndInterruption();exceptionAndUiCaller();
        System.out.println("PASS: 10000 submissions with UI paused keep 2 pending results/4 waiting decodes; resume drains latest work; clear+shutdown unblocks; post rejection and before/during-post interrupt remove callbacks; interrupt restored; UI call inline; callback failure releases worker. Actual module/JVM concurrency, Android Handler/Looper doubles.");
    }
}
