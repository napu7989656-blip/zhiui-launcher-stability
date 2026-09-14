package android.content;
public abstract class Context {
    public abstract void unregisterReceiver(BroadcastReceiver receiver);
    public abstract Object getSystemService(String name);
}
