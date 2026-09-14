package android.util;
import java.util.concurrent.atomic.AtomicInteger;
public final class Log {
    public static final AtomicInteger WARNINGS = new AtomicInteger();
    public static int w(String tag, String message, Throwable failure) {
        WARNINGS.incrementAndGet(); return 0;
    }
}
