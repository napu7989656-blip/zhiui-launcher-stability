package com.byd.launcher.stability;

import android.provider.Settings;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;

/** Isolates the existing generated policy commands in the local stability branch.
 * This recognizes settings invocations produced by this APK; it is not a shell
 * sandbox. The producer inventory must be rechecked for every later integration.
 */
public final class PolicyControlReadOnly {
    private PolicyControlReadOnly() {}

    public static boolean isWrite(String command) {
        if (command == null) return false;
        String[] words = command.trim().split("\\s+", 7);
        if (words.length < 4) return false;
        if (!"settings".equals(words[0]) && !"/system/bin/settings".equals(words[0])) return false;
        int operation = 1;
        if ("--user".equals(words[operation])) operation += 2;
        if (words.length <= operation + 2) return false;
        return ("put".equals(words[operation]) || "delete".equals(words[operation]))
                && "global".equals(words[operation + 1])
                && "policy_control".equals(words[operation + 2]);
    }

    public static String describe(String value, boolean readable) {
        if (!readable) return "系统栏策略（只读）：无法读取，未作修改";
        if (value == null) return "系统栏策略（只读）：未设置，未作修改";
        if (value.isEmpty()) return "系统栏策略（只读）：存在空值，未作修改";
        if ("null".equals(value.trim())) return "系统栏策略（只读）：检测到旧空值策略，未作修改";
        String compact = value.replace('\n', ' ').replace('\r', ' ');
        if (compact.length() > 96) compact = compact.substring(0, 96) + "…";
        return "系统栏策略（只读）：" + compact + "；未作修改";
    }

    public static void configure(View root) {
        if (root == null) return;
        // Existing public resource IDs; checked against final decoded public.xml.
        lock(root.findViewById(0x7f08026f)); // switch_oem_statusbar
        lock(root.findViewById(0x7f08026d)); // switch_oem_navbar
        String value = null;
        boolean readable = false;
        try {
            value = Settings.Global.getString(root.getContext().getContentResolver(), "policy_control");
            readable = true;
        } catch (RuntimeException unavailable) {
            // A read failure is displayed as unknown, never as "no policy".
        }
        label(root.findViewById(0x7f0802df), describe(value, readable));
        label(root.findViewById(0x7f0802de), "原车导航栏（只读，保留已保存设置）");
    }

    private static void lock(View view) {
        if (view instanceof CompoundButton) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
            view.setEnabled(false);
            // Preserve the checked state and all persisted preferences.
        }
    }

    private static void label(View view, String text) {
        if (view instanceof TextView) ((TextView) view).setText(text);
    }
}
