package com.byd.launcher.stability;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;

/** Backpressure only for wallpaper decoders; never blocks the UI thread. */
public final class WallpaperDelivery {
    private WallpaperDelivery() {}

    public static void deliver(Handler handler, Runnable result) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            result.run();
            return;
        }
        Pending pending = new Pending(result);
        if (!handler.post(pending)) return;
        try {
            // Each of the two decoder workers can own at most one queued result.
            // Adapter shutdownNow interrupts this wait, including when teardown
            // already removed the callback before it had a chance to run.
            pending.finished.await();
        } catch (InterruptedException cancelled) {
            handler.removeCallbacks(pending);
            Thread.currentThread().interrupt();
        }
    }

    private static final class Pending implements Runnable {
        private final Runnable result;
        private final CountDownLatch finished = new CountDownLatch(1);

        Pending(Runnable result) { this.result = result; }

        @Override public void run() {
            try { result.run(); }
            finally { finished.countDown(); }
        }
    }
}
