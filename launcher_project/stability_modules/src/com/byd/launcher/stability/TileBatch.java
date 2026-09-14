package com.byd.launcher.stability;
import java.util.IdentityHashMap;

/** Published once at read construction; per-item tickets avoid unrelated tile cancellation. */
public final class TileBatch {
    public final Object owner, root, epoch;
    public final TileSlot.Queue queue;
    private final IdentityHashMap<Object, Entry> entries = new IdentityHashMap<Object, Entry>();
    public TileBatch(Object owner, Object root, Object epoch, TileSlot.Queue queue) {
        this.owner = owner; this.root = root; this.epoch = epoch; this.queue = queue;
    }
    public void capture(Object item, TileSlot slot, Object frame, Object action) {
        if (item != null && slot != null) entries.put(item, new Entry(slot.begin(), frame, action));
    }
    public Entry entry(Object item) { return entries.get(item); }
    public boolean current(Object item) { Entry entry=entries.get(item); return entry != null && entry.ticket.isCurrent(); }
    public boolean post(Object item, Runnable callback) {
        Entry entry=entries.get(item);return entry != null && entry.ticket.post(queue, callback);
    }
    public static final class Entry {
        public final TileSlot.Ticket ticket;
        public final Object frame, action;
        private Entry(TileSlot.Ticket ticket, Object frame, Object action) {
            this.ticket = ticket; this.frame = frame; this.action = action;
        }
    }
}
