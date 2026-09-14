package com.byd.launcher.stability;
/** Compile-only API and isolated lifetime double. Actual DEX helper is smali-tested. */
public final class QuickSettingsLifetime {
    public static final class Owner {
        public volatile boolean disposed, serviceDestroyed;
    }
    public static boolean isDisposed(Object owner) {
        Owner state = (Owner) owner;
        return state.disposed || state.serviceDestroyed;
    }
}
