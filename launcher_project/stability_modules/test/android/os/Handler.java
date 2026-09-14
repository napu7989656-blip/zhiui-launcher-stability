package android.os;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/** Recording queue; only tests decide when the UI processes callbacks. */
public class Handler {
    private final LinkedBlockingQueue<Runnable> queue = new LinkedBlockingQueue<Runnable>();
    public volatile boolean reject;
    public volatile boolean interruptOnPost;
    public final AtomicInteger maximum = new AtomicInteger();

    public boolean post(Runnable task) {
        if (reject) return false;
        queue.add(task);
        synchronized (maximum) { maximum.set(Math.max(maximum.get(), queue.size())); }
        if (interruptOnPost) Thread.currentThread().interrupt();
        return true;
    }
    public void removeCallbacks(Runnable task) { queue.remove(task); }
    public int size() { return queue.size(); }
    public void clear() { queue.clear(); }
    public Runnable next() throws InterruptedException { return queue.poll(5, TimeUnit.SECONDS); }
}
