package com.byd.launcher.stability;

/** One replaceable status read and one pending UI result per logical tile. */
public final class TileSlot {
    public interface Queue {
        boolean post(Runnable task);
        void remove(Runnable task);
        void failed(RuntimeException error);
    }
    private Ticket current;
    private Pending pending;
    public synchronized Ticket begin() {
        cancel(); current = new Ticket(this); return current;
    }
    public synchronized void invalidate() { current = null; cancel(); }
    private void cancel() {
        Pending old = pending; pending = null;
        if (old != null) try { old.queue.remove(old); }
        catch (RuntimeException error) { old.queue.failed(error); }
    }
    public static final class Ticket {
        private final TileSlot slot;
        private Ticket(TileSlot slot) { this.slot = slot; }
        public boolean isCurrent() { synchronized (slot) { return slot.current == this; } }
        public boolean post(Queue queue, Runnable callback) {
            synchronized (slot) {
                if (slot.current != this || callback == null || queue == null) return false;
                slot.cancel();
                Pending task = new Pending(this, queue, callback); slot.pending = task;
                try {
                    if (queue.post(task)) return true;
                } catch (RuntimeException error) { queue.failed(error); }
                if (slot.pending == task) slot.pending = null;
                return false;
            }
        }
    }
    private static final class Pending implements Runnable {
        final Ticket ticket;
        final Queue queue;
        final Runnable callback;
        Pending(Ticket ticket, Queue queue, Runnable callback) {
            this.ticket = ticket; this.queue = queue; this.callback = callback;
        }
        public void run() {
            synchronized (ticket.slot) {
                if (ticket.slot.current != ticket || ticket.slot.pending != this) return;
                ticket.slot.pending = null;
                try { callback.run(); } catch (RuntimeException error) { queue.failed(error); }
            }
        }
    }
}
