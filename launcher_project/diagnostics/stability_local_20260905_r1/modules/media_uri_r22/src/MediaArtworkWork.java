package com.byd.launcher.stability;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.RejectedExecutionException;

/** Dedicated media scheduling: one process-wide media worker, one waiting job,
 * and at most one pending UI result per owner. Does not share the blur pool.
 * A session identity is captured at begin; the host must cheaply check manager,
 * service and session validity without blocking. UI state changes and deliveries
 * must run on the same Android main thread. Work captures borrowed inputs only;
 * work must clean up partial owned resources if it throws. Result.discard must
 * never recycle borrowed metadata/cache images. This class has no Bitmap API.
 * Running native/provider work is invalidated, not forcibly terminated.
 */
public final class MediaArtworkWork {
    public interface Host {
        boolean current(Object session);
        boolean post(Runnable delivery);
        void remove(Runnable delivery);
        void failed(RuntimeException error);
    }
    public interface Result {
        void deliver();
        void discard();
    }
    private static final Object LOCK = new Object();
    private static final ThreadPoolExecutor POOL = new ThreadPoolExecutor(
            1, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue<Runnable>(1),
            task -> { Thread t = new Thread(task, "LauncherMediaArt"); t.setDaemon(true); return t; },
            new ThreadPoolExecutor.AbortPolicy());
    static { POOL.allowCoreThreadTimeOut(true); }
    private final Host host;
    private boolean closed;
    private Request current;
    private Delivery pending;
    public MediaArtworkWork(Host host) {
        if (host == null) throw new NullPointerException("host");
        this.host = host;
    }
    public Request begin(Object session) {
        synchronized (LOCK) {
            cancelQueued(); clearPending();
            current = closed || session == null ? null : new Request(this, session);
            if (current != null && !current.current()) current = null;
            return current;
        }
    }
    public void invalidate() {
        synchronized (LOCK) { current = null; cancelQueued(); clearPending(); }
    }
    public void close() {
        synchronized (LOCK) { closed = true; current = null; cancelQueued(); clearPending(); }
    }
    private void cancelQueued() {
        for (Runnable queued : POOL.getQueue()) {
            Job job = (Job)queued;
            if (job.request.owner == this) POOL.remove(job);
        }
    }
    private void clearPending() {
        Delivery old = pending; pending = null;
        if (old != null) {
            try { host.remove(old); } catch (RuntimeException error) { report(error); }
            old.discard();
        }
    }
    private void report(RuntimeException error) {
        // Diagnostic failures must not prevent disposal of image resources.
        try { host.failed(error); } catch (RuntimeException ignored) { }
    }
    public static final class Request {
        private final MediaArtworkWork owner;
        private boolean started;
        private final Object session;
        private Request(MediaArtworkWork owner, Object session) {
            this.owner = owner; this.session = session;
        }
        public boolean current() {
            synchronized (LOCK) {
                if (owner.closed || owner.current != this) return false;
                try { return owner.host.current(session); }
                catch (RuntimeException error) { owner.report(error); return false; }
            }
        }
        public boolean execute(Runnable work) {
            synchronized (LOCK) {
                if (work == null || started || !current()) return false;
                started = true;
                Runnable evicted = POOL.getQueue().poll();
                if (evicted != null) {
                    Request old = ((Job)evicted).request;
                    if (old.owner.current == old) {
                        old.owner.current = null;
                        old.owner.clearPending();
                    }
                }
                try { POOL.execute(new Job(this, work)); return true; }
                catch (RejectedExecutionException rejected) {
                    if (owner.current == this) owner.current = null;
                    return false;
                }
            }
        }
        public boolean post(Result result) {
            if (result == null) return false;
            synchronized (LOCK) {
                Delivery next = new Delivery(this, result);
                if (!current()) { next.discard(); return false; }
                owner.clearPending(); owner.pending = next;
                try { if (owner.host.post(next)) return true; }
                catch (RuntimeException error) { owner.report(error); }
                if (owner.pending == next) owner.pending = null;
                next.discard(); return false;
            }
        }
    }
    private static final class Job implements Runnable {
        final Request request; final Runnable work;
        Job(Request request, Runnable work) { this.request=request; this.work=work; }
        public void run() {
            if (!request.current()) return;
            try { work.run(); } catch (RuntimeException error) { request.owner.report(error); }
        }
    }
    private static final class Delivery implements Runnable {
        final Request request; Result result;
        Delivery(Request request, Result result) { this.request=request; this.result=result; }
        void discard() {
            Result old=result; result=null;
            if (old!=null) try { old.discard(); } catch (RuntimeException error) { request.owner.report(error); }
        }
        public void run() {
            synchronized (LOCK) {
                MediaArtworkWork owner=request.owner;
                if (owner.pending != this || !request.current()) { discard(); return; }
                owner.pending=null; Result accepted=result; result=null;
                // Ownership transfers to the bridge before deliver; the bridge
                // must release any uninstalled images if delivery throws.
                if (accepted!=null) try { accepted.deliver(); } catch (RuntimeException error) { owner.report(error); }
            }
        }
    }
}
