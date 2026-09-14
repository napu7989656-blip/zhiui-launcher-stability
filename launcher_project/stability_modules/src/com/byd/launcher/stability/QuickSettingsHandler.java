package com.byd.launcher.stability;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/** Main-thread queue owned by one quick-settings controller. */
public final class QuickSettingsHandler extends Handler {
    private final Object owner;

    public QuickSettingsHandler(Object owner) {
        super(Looper.getMainLooper());
        this.owner = owner;
    }

    @Override public boolean sendMessageAtTime(Message message, long uptimeMillis) {
        if (QuickSettingsLifetime.isDisposed(owner)) return false;
        boolean accepted = super.sendMessageAtTime(message, uptimeMillis);
        // A worker may pass the first check just before onDestroy clears this
        // queue, then enqueue afterwards. Recheck to remove that late message.
        if (QuickSettingsLifetime.isDisposed(owner)) {
            removeCallbacksAndMessages(null);
            return false;
        }
        return accepted;
    }

    @Override public void dispatchMessage(Message message) {
        // Includes callbacks holding only a View and front-of-queue messages.
        // Service destruction and dispatch both run on the main Looper.
        if (!QuickSettingsLifetime.isDisposed(owner)) super.dispatchMessage(message);
    }
}
