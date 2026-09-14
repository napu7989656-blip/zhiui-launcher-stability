package android.provider;
import android.content.ContentResolver;
public final class Settings {
    public static final class Global {
        public static String getString(ContentResolver resolver, String key) {
            if (!"policy_control".equals(key)) throw new AssertionError("unexpected setting read");
            resolver.reads++;
            if (resolver.denied) throw new SecurityException("injected");
            return resolver.value;
        }
        // No write method: a future accidental dependency cannot silently pass.
    }
}
