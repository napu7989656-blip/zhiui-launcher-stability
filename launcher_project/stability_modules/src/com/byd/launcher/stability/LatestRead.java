package com.byd.launcher.stability;

/** Per-controller, per-category read identity. No owner references or global map. */
public final class LatestRead {
    private volatile Object current = new Object();

    public synchronized Ticket issue() {
        Object identity = new Object();
        current = identity;
        return new Ticket(this, identity);
    }

    public synchronized void invalidate() { current = new Object(); }

    public static final class Ticket {
        private final LatestRead state;
        private final Object identity;
        private Ticket(LatestRead state, Object identity) {
            this.state = state;
            this.identity = identity;
        }
        public boolean isCurrent() { return state.current == identity; }
    }
}
