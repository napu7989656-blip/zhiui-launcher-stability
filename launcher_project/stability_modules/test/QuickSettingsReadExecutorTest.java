import android.util.Log;
import com.byd.launcher.stability.QuickSettingsReadExecutor;
import com.byd.launcher.stability.QuickSettingsLifetime.Owner;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class QuickSettingsReadExecutorTest {
    private static int assertions;
    private static void check(boolean value) { assertions++; if (!value) throw new AssertionError(assertions); }
    private static void await(CountDownLatch latch) {
        try { if (!latch.await(5, TimeUnit.SECONDS)) throw new AssertionError("latch timeout"); }
        catch (InterruptedException ex) { Thread.currentThread().interrupt(); throw new AssertionError(ex); }
    }
    private static int key(Runnable task) throws Exception {
        Field field = task.getClass().getDeclaredField("key");field.setAccessible(true);return field.getInt(task);
    }
    private static Object owner(Runnable task) throws Exception {
        Field field=task.getClass().getDeclaredField("owner");field.setAccessible(true);return field.get(task);
    }
    public static void main(String[] args) throws Exception {
        Field field=QuickSettingsReadExecutor.class.getDeclaredField("POOL");field.setAccessible(true);
        ThreadPoolExecutor pool=(ThreadPoolExecutor)field.get(null);
        final CountDownLatch entered=new CountDownLatch(2), release=new CountDownLatch(1);
        final AtomicInteger running=new AtomicInteger(), maximum=new AtomicInteger();
        final Thread caller=Thread.currentThread();final AtomicInteger callerRuns=new AtomicInteger();
        Runnable blocker=() -> {
            if(Thread.currentThread()==caller)callerRuns.incrementAndGet();
            int n=running.incrementAndGet();maximum.accumulateAndGet(n,Math::max);entered.countDown();
            try {await(release);} finally {running.decrementAndGet();}
        };
        Owner first=new Owner(), second=new Owner();
        check(QuickSettingsReadExecutor.execute(first,-1,blocker));
        check(QuickSettingsReadExecutor.execute(second,-1,blocker));await(entered);
        final List<Integer> seen=new ArrayList<Integer>();
        Runnable noop=() -> {};
        try {
            for(int i=0;i<10000;i++){
                final int value=i;
                check(QuickSettingsReadExecutor.execute(first,i,() -> {synchronized(seen){seen.add(value);}}));
                check(pool.getQueue().size()<=8);check(pool.getPoolSize()<=2);
            }
            check(pool.getQueue().size()==8);
            int expected=9992;for(Runnable task:pool.getQueue())check(key(task)==expected++);
            // Replacement preserves only the latest queued work for that owner/key.
            check(QuickSettingsReadExecutor.execute(first,9999,noop));
            check(pool.getQueue().size()==8);
            int same=0;for(Runnable task:pool.getQueue())if(key(task)==9999)same++;check(same==1);
            QuickSettingsReadExecutor.cancelQueued(first);check(pool.getQueue().isEmpty());
            check(QuickSettingsReadExecutor.execute(first,7,noop));
            check(QuickSettingsReadExecutor.execute(second,7,noop));check(pool.getQueue().size()==2);
            QuickSettingsReadExecutor.cancelQueued(first);check(pool.getQueue().size()==1);
            check(owner(pool.getQueue().peek())==second);
            QuickSettingsReadExecutor.cancelQueued(second);
            // Two tiles with equal values remain independent; only identical tile keys coalesce.
            Object tileA=new String("tile"), tileB=new String("tile");
            AtomicInteger tileResult=new AtomicInteger();
            check(QuickSettingsReadExecutor.execute(first,7,tileA,() -> tileResult.addAndGet(100)));
            check(QuickSettingsReadExecutor.execute(first,7,tileB,() -> tileResult.addAndGet(10)));
            check(QuickSettingsReadExecutor.execute(first,7,tileA,() -> tileResult.addAndGet(1)));
            check(pool.getQueue().size()==2);
            for(Runnable task:new ArrayList<Runnable>(pool.getQueue())) {check(pool.remove(task));task.run();}
            check(tileResult.get()==11);
            check(QuickSettingsReadExecutor.execute(first,7,tileA,noop));
            check(QuickSettingsReadExecutor.execute(first,7,tileB,noop));
            check(QuickSettingsReadExecutor.execute(first,7,noop));
            check(pool.getQueue().size()==3);
            QuickSettingsReadExecutor.cancelQueued(first);check(pool.getQueue().isEmpty());
            // Service replacement cannot create another pair of worker threads.
            for(int i=0;i<1000;i++)check(QuickSettingsReadExecutor.execute(new Owner(),i,noop));
            check(pool.getPoolSize()==2 && pool.getQueue().size()==8);
            for(Runnable task:new ArrayList<Runnable>(pool.getQueue()))QuickSettingsReadExecutor.cancelQueued(owner(task));
            Owner disposed=new Owner();disposed.disposed=true;
            check(!QuickSettingsReadExecutor.execute(disposed,0,noop));
            Owner dead=new Owner();dead.serviceDestroyed=true;
            check(!QuickSettingsReadExecutor.execute(dead,0,noop));
            check(!QuickSettingsReadExecutor.execute(first,0,null));
            // A queued task becomes stale before the worker fetches it.
            final AtomicInteger staleRuns=new AtomicInteger();Owner stale=new Owner();
            check(QuickSettingsReadExecutor.execute(stale,1,() -> staleRuns.incrementAndGet()));stale.disposed=true;
            CountDownLatch healthy=new CountDownLatch(1);
            check(QuickSettingsReadExecutor.execute(first,2,() -> {throw new IllegalStateException("injected");}));
            check(QuickSettingsReadExecutor.execute(first,3,healthy::countDown));
            release.countDown();await(healthy);
            pool.shutdown();check(pool.awaitTermination(5,TimeUnit.SECONDS));
            check(staleRuns.get()==0);check(Log.WARNINGS.get()==1);
            check(maximum.get()==2 && callerRuns.get()==0);
            check(!QuickSettingsReadExecutor.execute(first,4,noop));
        } finally {release.countDown();pool.shutdownNow();}
        System.out.println("PASS: "+assertions+" assertions; 10000 submissions, global 2-worker/8-waiting bound, newest queued replacement, owner cancellation/isolation, repeated owners, dead owner/service, stale dequeue, task exception and rejected submission. Real JVM threads; lifetime/Log doubles; not ART.");
    }
}
