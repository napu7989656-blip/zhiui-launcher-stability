package android.os;
public final class Message {
    public final Runnable callback;
    public Message(Runnable callback) { this.callback = callback; }
}
