package com.byd.launcher.stability;

import android.util.Log;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/** Process-wide bounded pool for audited, replaceable status reads only. */
public final class QuickSettingsReadExecutor {
    private static final Object LOCK = new Object();
    private static final AtomicInteger IDS = new AtomicInteger();
    private static final ThreadPoolExecutor POOL = new ThreadPoolExecutor(
            2, 2, 30, TimeUnit.SECONDS, new ArrayBlockingQueue<Runnable>(8),
            new ThreadFactory() {
                @Override public Thread newThread(Runnable task) {
                    Thread worker = new Thread(task, "QSRead-" + IDS.incrementAndGet());
                    worker.setDaemon(true);
                    return worker;
                }
            }, new ThreadPoolExecutor.AbortPolicy());
    static { POOL.allowCoreThreadTimeOut(true); }

    private QuickSettingsReadExecutor() {}

    public static boolean execute(Object owner, int key, Runnable read) {
        return execute(owner, key, null, read);
    }

    public static boolean execute(Object owner, int key, Object subkey, Runnable read) {
        if (read == null) return false;
        synchronized (LOCK) {
            if (QuickSettingsLifetime.isDisposed(owner)) return false;
            // Replace only queued reads of the same category and controller.
            // Already executing reads remain bounded by the two global workers.
            for (Runnable queued : POOL.getQueue()) {
                Read task = (Read) queued;
                if (task.owner == owner && task.key == key && task.subkey == subkey) POOL.remove(task);
            }
            if (POOL.getQueue().remainingCapacity() == 0) POOL.getQueue().poll();
            try {
                POOL.execute(new Read(owner, key, subkey, read));
                return true;
            } catch (RejectedExecutionException rejected) {
                return false;
            }
        }
    }

    public static void cancelQueued(Object owner) {
        synchronized (LOCK) {
            for (Runnable queued : POOL.getQueue()) {
                Read task = (Read) queued;
                if (task.owner == owner) POOL.remove(task);
            }
        }
    }

    private static final class Read implements Runnable {
        private final Object owner;
        private final int key;
        private final Object subkey;
        private final Runnable delegate;
        Read(Object owner, int key, Object subkey, Runnable delegate) {
            this.owner = owner;
            this.key = key;
            this.subkey = subkey;
            this.delegate = delegate;
        }
        @Override public void run() {
            if (QuickSettingsLifetime.isDisposed(owner)) return;
            try {
                delegate.run();
            } catch (RuntimeException failure) {
                Log.w("QuickSettingsMgr", "Background status read failed", failure);
            }
        }
    }
}
