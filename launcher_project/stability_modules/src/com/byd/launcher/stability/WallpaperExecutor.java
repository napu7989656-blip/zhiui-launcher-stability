package com.byd.launcher.stability;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/** Bounded replacement for the original wallpaper-only fixed thread pool. */
public final class WallpaperExecutor implements ThreadFactory {
    private final ThreadFactory delegate = Executors.defaultThreadFactory();
    private final AtomicInteger sequence = new AtomicInteger();

    private WallpaperExecutor() {}

    public static ExecutorService create() {
        // Two existing decode slots, with at most four waiting nearby pages.
        // A fast swipe replaces the oldest waiting decode; it never decodes on
        // the UI thread. Existing placeholders stay visible until a valid result.
        // Only the main-thread Adapter bind path submits tasks. DiscardOldestPolicy
        // also ignores submissions after shutdown without throwing into RecyclerView.
        return new ThreadPoolExecutor(2, 2, 0L, TimeUnit.MILLISECONDS,
                new ArrayBlockingQueue<Runnable>(4), new WallpaperExecutor(),
                new ThreadPoolExecutor.DiscardOldestPolicy());
    }

    @Override public Thread newThread(Runnable task) {
        Thread thread = delegate.newThread(task);
        thread.setName("ZhiUI-Wallpaper-" + sequence.incrementAndGet());
        return thread;
    }
}
