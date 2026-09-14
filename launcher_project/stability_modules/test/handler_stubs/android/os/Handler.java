package android.os;
import java.util.ArrayList;
import java.util.List;
/** Recording queue double; no Android runtime or device commands. */
public class Handler {
    public final Looper looper;
    public final List<Message> messages = new ArrayList<Message>();
    public Runnable beforeEnqueue, afterEnqueue;
    public boolean accepting = true;
    public int sends, removals;
    public long lastTime;
    public Handler(Looper looper) { this.looper = looper; }
    public boolean sendMessageAtTime(Message m, long at) {
        sends++;
        lastTime = at;
        if (beforeEnqueue != null) beforeEnqueue.run();
        if (!accepting) return false;
        messages.add(m);
        if (afterEnqueue != null) afterEnqueue.run();
        return true;
    }
    public final boolean post(Runnable callback) {
        return sendMessageAtTime(new Message(callback), 0);
    }
    public final boolean postDelayed(Runnable callback, long delay) {
        return sendMessageAtTime(new Message(callback), delay);
    }
    public final boolean postAtFrontOfQueue(Runnable callback) {
        messages.add(0, new Message(callback)); return true;
    }
    public void removeCallbacksAndMessages(Object token) {
        if (token != null) throw new AssertionError("Expected only owned whole-queue cleanup");
        removals++; messages.clear();
    }
    public void dispatchMessage(Message m) { m.callback.run(); }
    public void drain() {
        while (!messages.isEmpty()) dispatchMessage(messages.remove(0));
    }
}
