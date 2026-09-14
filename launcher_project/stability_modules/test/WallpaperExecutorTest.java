import com.byd.launcher.stability.WallpaperExecutor;
import java.util.*;
import java.util.concurrent.*;

/** Real JVM threads and bounded deadlines; no Android, network or vehicle calls. */
public final class WallpaperExecutorTest {
    private static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    private static void await(CountDownLatch latch) throws Exception {
        check(latch.await(5, TimeUnit.SECONDS), "latch timed out");
    }
    private static Runnable blocked(final CountDownLatch entered,
            final CountDownLatch release, final CountDownLatch interrupted) {
        return new Runnable() { public void run() {
            entered.countDown();
            try { release.await(); }
            catch (InterruptedException expected) { interrupted.countDown(); Thread.currentThread().interrupt(); }
        }};
    }
    private static void burst() throws Exception {
        ThreadPoolExecutor pool = (ThreadPoolExecutor) WallpaperExecutor.create();
        CountDownLatch entered = new CountDownLatch(2), release = new CountDownLatch(1);
        Set<Integer> completed = Collections.synchronizedSet(new HashSet<Integer>());
        Set<String> workers = Collections.synchronizedSet(new HashSet<String>());
        try {
            for (int n=0;n<2;n++) pool.execute(blocked(entered, release, new CountDownLatch(2)));
            await(entered);
            for (int n=0;n<10000;n++) {
                final int id=n;
                pool.execute(new Runnable() { public void run() {
                    completed.add(id); workers.add(Thread.currentThread().getName());
                }});
                check(pool.getQueue().size()<=4, "queue grew beyond four");
            }
            check(pool.getPoolSize()==2, "worker count changed");
            check(completed.isEmpty(), "rejected work ran on submitter/UI thread");
            release.countDown(); pool.shutdown();
            check(pool.awaitTermination(5, TimeUnit.SECONDS), "burst workers remained live");
            check(completed.equals(new HashSet<Integer>(Arrays.asList(9996,9997,9998,9999))), "newest four were not retained: "+completed);
            for (String worker:workers) check(worker.startsWith("ZhiUI-Wallpaper-"), "unexpected worker");
        } finally { release.countDown(); pool.shutdownNow(); }
    }
    private static void destroy() throws Exception {
        ThreadPoolExecutor pool = (ThreadPoolExecutor) WallpaperExecutor.create();
        CountDownLatch entered=new CountDownLatch(2), release=new CountDownLatch(1), interrupted=new CountDownLatch(2);
        try {
            for (int n=0;n<2;n++) pool.execute(blocked(entered,release,interrupted));
            await(entered);
            Runnable forbidden=new Runnable() { public void run() { throw new AssertionError("queued work ran after destroy"); }};
            for (int n=0;n<4;n++) pool.execute(forbidden);
            check(pool.shutdownNow().size()==4, "queued tasks were retained");
            await(interrupted);
            check(pool.awaitTermination(5,TimeUnit.SECONDS), "interrupted workers remained live");
            pool.execute(forbidden); // late bind cannot throw RejectedExecutionException
            check(pool.getQueue().isEmpty(), "late bind revived queue");
        } finally { release.countDown(); pool.shutdownNow(); }
    }
    private static void baseline() throws Exception {
        ThreadPoolExecutor pool=(ThreadPoolExecutor)Executors.newFixedThreadPool(2);
        CountDownLatch entered=new CountDownLatch(2),release=new CountDownLatch(1);
        try {
            for(int n=0;n<2;n++)pool.execute(blocked(entered,release,new CountDownLatch(2)));
            await(entered);
            for(int n=0;n<100;n++)pool.execute(new Runnable(){public void run(){}});
            check(pool.getQueue().size()==100,"original unbounded queue was not reproduced");
        } finally {pool.shutdownNow();release.countDown();check(pool.awaitTermination(5,TimeUnit.SECONDS),"baseline cleanup failed");}
    }
    public static void main(String[] args) throws Exception {
        baseline(); burst(); destroy();
        System.out.println("PASS: original backlog reproduced; 10000 submissions bounded to 2 workers/4 newest waiting tasks; no caller-thread decode; shutdown clears and interrupts; late submit harmless. Real JVM execution, not Android/native runtime.");
    }
}
