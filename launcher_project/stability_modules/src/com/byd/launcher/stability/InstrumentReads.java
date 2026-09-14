package com.byd.launcher.stability;

/** Owns instrument read publication and retry state. Host UI methods run on its queue. */
public final class InstrumentReads {
    public interface Host {
        Object root();
        boolean usable(Object root);
        int cached();
        void commit(int step);
        void retryState(int count, boolean pending);
        int[] delays();
        boolean post(Runnable task, long delay);
        void remove(Runnable task);
        void refresh();
        void failed(RuntimeException error);
    }
    private final Host host;
    private Object epoch = new Object();
    private Request latest;
    private Runnable result, cachedResult, retry;
    private int retryCount;
    private boolean tracking;

    public InstrumentReads(Host host) { this.host = host; }

    /** Called at original read construction on the owner/UI thread. */
    public synchronized Request begin(boolean allowRetry) {
        remove(result); result = null;
        cancelRetry();
        latest = new Request(this, epoch, host.root(), allowRetry);
        return latest;
    }
    public synchronized void invalidate() {
        epoch = new Object(); latest = null;
        remove(result); result = null;
        remove(cachedResult); cachedResult = null;
        cancelRetry(); retryCount = 0; tracking = false;
        host.retryState(0, false);
    }
    public synchronized void tracking(boolean active) {
        invalidate(); tracking = active;
    }
    /** Prefill remains eligible across begin(), but not across cache/lifecycle changes. */
    public synchronized void applyCached(final Runnable delegate) {
        remove(cachedResult);
        final Object capturedEpoch = epoch, root = host.root();
        final int value = host.cached();
        cachedResult = new Runnable() {
            public void run() {
                synchronized (InstrumentReads.this) {
                    if (cachedResult != this) return;
                    cachedResult = null;
                    try {
                        if (epoch == capturedEpoch && !tracking && value == host.cached()
                                && host.usable(root) && delegate != null) delegate.run();
                    } catch (RuntimeException ex) { host.failed(ex); }
                }
            }
        };
        if (!post(cachedResult, 0)) cachedResult = null;
    }
    private boolean current(Request request) {
        return latest == request && epoch == request.epoch && !tracking;
    }
    /** Safe from worker threads: only queue state is touched before UI dispatch. */
    private synchronized void publish(final Request request, final int step, final Runnable delegate) {
        if (!current(request) || request.completed) return;
        request.completed = true;
        result = new Runnable() {
            public void run() {
                synchronized (InstrumentReads.this) {
                    if (result != this) return;
                    result = null;
                    try {
                        if (!current(request) || !host.usable(request.root)) return;
                        if (step >= 0 && step <= 10 && delegate != null) {
                            cancelRetry(); retryCount = 0; host.retryState(0, false);
                            host.commit(step);
                            delegate.run();
                        } else if (request.allowRetry) scheduleRetry(request);
                    } catch (RuntimeException ex) { host.failed(ex); }
                }
            }
        };
        if (!post(result, 0)) result = null;
    }
    private void scheduleRetry(final Request request) {
        int[] delays = host.delays();
        if (retry != null || delays == null || retryCount >= delays.length) return;
        final int next = retryCount + 1;
        Runnable task = new Runnable() {
            public void run() {
                synchronized (InstrumentReads.this) {
                    if (retry != this) return;
                    retry = null; host.retryState(retryCount, false);
                    try { if (current(request) && host.usable(request.root)) host.refresh(); }
                    catch (RuntimeException ex) { host.failed(ex); }
                }
            }
        };
        retry = task;
        if (post(task, Math.max(0, delays[retryCount]))) {
            retryCount = next; host.retryState(retryCount, true);
        } else {
            retry = null; host.retryState(retryCount, false);
        }
    }
    private void cancelRetry() {
        remove(retry); retry = null; host.retryState(retryCount, false);
    }
    private void remove(Runnable task) {
        if (task != null) try { host.remove(task); } catch (RuntimeException ex) { host.failed(ex); }
    }
    private boolean post(Runnable task, long delay) {
        try { return host.post(task, delay); }
        catch (RuntimeException ex) { host.failed(ex); return false; }
    }
    public static final class Request {
        private final InstrumentReads state;
        private final Object epoch, root;
        private final boolean allowRetry;
        private boolean completed;
        private Request(InstrumentReads state, Object epoch, Object root, boolean allowRetry) {
            this.state = state; this.epoch = epoch; this.root = root; this.allowRetry = allowRetry;
        }
        public void complete(int step, Runnable delegate) { state.publish(this, step, delegate); }
        public void invalid() { state.publish(this, -1, null); }
    }
}
