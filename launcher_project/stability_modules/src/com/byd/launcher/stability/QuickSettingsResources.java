package com.byd.launcher.stability;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.WindowManager;

/** Operations for permanent disposal; never schedules a restore or a warmup. */
public final class QuickSettingsResources {
    private QuickSettingsResources() {}

    public static boolean clearQueue(Handler handler) {
        if (handler == null) return true;
        try {
            handler.removeCallbacksAndMessages(null);
            return true;
        } catch (RuntimeException failure) {
            return false;
        }
    }

    public static boolean unregisterObserver(Context context, ContentObserver observer) {
        if (observer == null) return true;
        if (context == null) return false;
        try {
            context.getContentResolver().unregisterContentObserver(observer);
            return true;
        } catch (RuntimeException failure) {
            return false;
        }
    }

    public static boolean disposePanel(WindowManager manager, ViewGroup host, View root) {
        if (root == null) return true;
        boolean animations = stopAnimations(root);
        boolean removed = false;
        try {
            if (host != null && root.getParent() == host) {
                // Remove only our child, never all children or the host itself.
                host.removeView(root);
                removed = !root.isAttachedToWindow() && root.getParent() == null;
            } else {
                removed = StatusBarResources.removeWindow(manager, root);
            }
        } catch (RuntimeException failure) {
            removed = false;
        }
        // Retain the root for retry if either independent operation failed.
        return animations & removed;
    }

    public static boolean removeLayoutListener(View view, ViewTreeObserver registered,
            ViewTreeObserver.OnGlobalLayoutListener listener) {
        boolean result = true;
        try {
            if (registered != null && registered.isAlive()) {
                registered.removeOnGlobalLayoutListener(listener);
            }
        } catch (RuntimeException failure) {
            result = false;
        }
        try {
            // An unattached view's observer may be merged into its host on attach.
            if (view != null) {
                ViewTreeObserver current = view.getViewTreeObserver();
                if (current != registered && current.isAlive()) {
                    current.removeOnGlobalLayoutListener(listener);
                }
            }
        } catch (RuntimeException failure) {
            result = false;
        }
        return result;
    }

    private static boolean stopAnimations(View view) {
        boolean result = true;
        try {
            ViewPropertyAnimator animator = view.animate();
            animator.setListener(null);
            animator.withStartAction(null);
            animator.withEndAction(null);
            animator.cancel();
        } catch (RuntimeException failure) {
            result = false;
        }
        try {
            view.clearAnimation();
        } catch (RuntimeException failure) {
            result = false;
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            try {
                for (int i = 0; i < group.getChildCount(); i++) {
                    // No short-circuit: failure on one child must not skip others.
                    result = stopAnimations(group.getChildAt(i)) & result;
                }
            } catch (RuntimeException failure) {
                result = false;
            }
        }
        return result;
    }
}
