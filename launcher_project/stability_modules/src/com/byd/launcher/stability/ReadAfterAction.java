package com.byd.launcher.stability;

/** Suppress status reads until the latest existing action replies or its UI wait expires.
 * This class never sends, cancels, retries or changes an action.
 */
public final class ReadAfterAction {
    private Token current;
    public synchronized Token begin(long uptimeMillis) {
        current = new Token(this, uptimeMillis); return current;
    }
    public synchronized boolean blocked(long uptimeMillis) {
        if (current == null) return false;
        // Match the existing CoreService callback timeout; monotonic Android uptime.
        if (uptimeMillis - current.started < 15000L) return true;
        current = null; return false;
    }
    public synchronized void reset() { current = null; }
    public static final class Token {
        private final ReadAfterAction gate;
        private final long started;
        private Token(ReadAfterAction gate, long started) { this.gate=gate;this.started=started; }
        public boolean finish() {
            synchronized (gate) {
                if (gate.current != this) return false;
                gate.current = null;return true;
            }
        }
    }
}
