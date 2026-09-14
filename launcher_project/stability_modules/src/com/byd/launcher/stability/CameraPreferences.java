package com.byd.launcher.stability;

import android.content.SharedPreferences;

/** Read-only compatibility for malformed or differently typed saved camera UI
 * preferences. No writeback, coercion, geometry policy, hardware or activation.
 * Unrelated failures propagate rather than being disguised as a configuration.
 */
public final class CameraPreferences {
    public static int integer(SharedPreferences preferences,String key,int fallback) {
        if(preferences==null) return fallback;
        try { return preferences.getInt(key,fallback); }
        catch(ClassCastException wrongType) { return fallback; }
    }
    public static boolean flag(SharedPreferences preferences,String key,boolean fallback) {
        if(preferences==null) return fallback;
        try { return preferences.getBoolean(key,fallback); }
        catch(ClassCastException wrongType) { return fallback; }
    }
    private CameraPreferences() { }
}
