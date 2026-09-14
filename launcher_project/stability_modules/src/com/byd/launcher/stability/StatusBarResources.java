package com.byd.launcher.stability;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;

/** Release one resource without discarding its owner's reference on failure. */
public final class StatusBarResources {
    private StatusBarResources() {}

    public static boolean removeWindow(WindowManager manager, View view) {
        if (view == null) return true;
        if (manager == null) return false;
        try {
            // addView may have registered the root before the first traversal.
            // Never decide that removal is unnecessary from isAttached alone.
            manager.removeViewImmediate(view);
        } catch (IllegalArgumentException notRegistered) {
            // Android 29 WindowManagerGlobal.findViewLocked reports this for
            // an unregistered non-null root. Still check for another owner.
            return detached(view);
        } catch (RuntimeException failure) {
            return false;
        }
        // Even immediate removal can defer while a traversal is running.
        return detached(view);
    }

    private static boolean detached(View view) {
        try {
            return !view.isAttachedToWindow() && view.getParent() == null;
        } catch (RuntimeException failure) {
            return false;
        }
    }

    public static boolean cancel(Handler handler, Runnable task) {
        if (task == null) return true;
        if (handler == null) return false;
        try {
            handler.removeCallbacks(task);
            return true;
        } catch (RuntimeException failure) {
            return false;
        }
    }

    public static boolean unregisterReceiver(Context context, BroadcastReceiver receiver) {
        if (receiver == null) return true;
        if (context == null) return false;
        try {
            context.unregisterReceiver(receiver);
            return true;
        } catch (IllegalArgumentException notRegistered) {
            return true;
        } catch (RuntimeException failure) {
            return false;
        }
    }

    public static boolean unregisterNetwork(Context context, ConnectivityManager.NetworkCallback callback) {
        if (callback == null) return true;
        if (context == null) return false;
        try {
            ConnectivityManager manager = (ConnectivityManager) context.getSystemService("connectivity");
            if (manager == null) return false;
            manager.unregisterNetworkCallback(callback);
            return true;
        } catch (IllegalArgumentException notRegistered) {
            return true;
        } catch (RuntimeException failure) {
            return false;
        }
    }
}
