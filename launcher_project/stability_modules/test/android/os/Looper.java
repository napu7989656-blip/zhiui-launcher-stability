package android.os;

/** JVM-only framework double. Never included in D8 input or a Launcher APK. */
public final class Looper {
    private static final Thread main = Thread.currentThread();
    private static final Looper instance = new Looper();
    public static Looper getMainLooper() { return instance; }
    public static Looper myLooper() { return Thread.currentThread() == main ? instance : null; }
}
