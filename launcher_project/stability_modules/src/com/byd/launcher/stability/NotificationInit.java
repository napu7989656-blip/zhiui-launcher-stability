package com.byd.launcher.stability;

/** Initialization only. A command returning normally is never proof of grant. */
public final class NotificationInit {
    public interface Host {
        boolean current();
        ListenerList read() throws Exception;
        void adb(String command) throws Exception;
        void process(String[] command) throws Exception;
    }
    private NotificationInit() {}
    private static boolean current(Host host) throws InterruptedException {
        if (Thread.currentThread().isInterrupted()) throw new InterruptedException();
        return host.current();
    }
    private static ListenerList read(Host host) throws InterruptedException {
        if (!current(host)) return ListenerList.parse(null,false);
        try {
            ListenerList result=host.read();
            return current(host) && result!=null ? result : ListenerList.parse(null,false);
        } catch (InterruptedException interrupted) { throw interrupted; }
        catch (Exception unavailable) { return ListenerList.parse(null,false); }
    }
    private static void adb(Host host,String command) throws InterruptedException {
        if (!current(host)) return;
        try { host.adb(command); }
        catch (InterruptedException interrupted) { throw interrupted; }
        catch (Exception failed) { /* Readback decides whether the operation took effect. */ }
    }
    private static void process(Host host,String[] command) throws InterruptedException {
        if (!current(host)) return;
        try { host.process(command); }
        catch (InterruptedException interrupted) { throw interrupted; }
        catch (Exception failed) { /* Readback is authoritative. */ }
    }
    public static boolean ensure(Host host,String component) {
        if (host==null || ListenerList.parse("",true).adding(component)==null) return false;
        try {
            ListenerList state=read(host);
            if (!current(host)) return false;
            if (state.contains(component)) return true;
            // Do not revoke an existing listener merely to initialize the launcher.
            // Validated component/list values contain no quote; quote $ in class names.
            adb(host,"cmd notification allow_listener '"+component+"'");
            state=read(host);
            if (!current(host)) return false;
            if (state.contains(component)) return true;
            process(host,new String[]{"cmd","notification","allow_listener",component});
            state=read(host);
            if (!current(host)) return false;
            if (state.contains(component)) return true;
            String merged=state.adding(component);
            if (merged==null) return false;
            adb(host,"settings put secure enabled_notification_listeners '"+merged+"'");
            state=read(host);
            if (!current(host)) return false;
            if (state.contains(component)) return true;
            // Use the latest snapshot; never reuse the list from before a write.
            merged=state.adding(component);
            if (merged==null) return false;
            process(host,new String[]{"settings","put","secure","enabled_notification_listeners",merged});
            state=read(host);
            return current(host) && state.contains(component);
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            return false;
        }
    }
}
