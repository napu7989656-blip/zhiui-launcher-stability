package com.byd.launcher.stability;

/** Validated snapshot, usable only after an authoritative successful read. */
public final class ListenerList {
    private static final int MAX_LENGTH = 8192;
    public final boolean known;
    private final String raw;
    private final String[] components;
    private ListenerList(boolean valid, String text, String[] values) {
        known=valid; raw=text; components=values;
    }
    private static ListenerList unknown() { return new ListenerList(false,"",new String[0]); }
    public static ListenerList parse(String text, boolean readSucceeded) {
        if (!readSucceeded) return unknown();
        if (text == null) text="";
        if (text.length() > MAX_LENGTH) return unknown();
        text=text.trim();
        if (text.isEmpty() || text.equals("null")) return new ListenerList(true,"",new String[0]);
        String[] parts=text.split(":",-1);
        if (parts.length > 256) return unknown();
        String[] normalized=new String[parts.length];
        for (int i=0;i<parts.length;i++) {
            normalized[i]=component(parts[i]);
            if (normalized[i]==null) return unknown();
        }
        return new ListenerList(true,text,normalized);
    }
    private static String component(String value) {
        if (value==null || value.length()>MAX_LENGTH) return null;
        int slash=value.indexOf('/');
        if (slash<=0 || slash!=value.lastIndexOf('/') || slash==value.length()-1) return null;
        String pkg=value.substring(0,slash), cls=value.substring(slash+1);
        if (!pkg.matches("[A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)*")) return null;
        if (cls.startsWith(".")) cls=pkg+cls;
        if (!cls.matches("[A-Za-z_$][A-Za-z0-9_$]*(\\.[A-Za-z_$][A-Za-z0-9_$]*)*")) return null;
        return pkg+"/"+cls;
    }
    public boolean contains(String value) {
        if (!known) return false;
        String normalized=component(value);
        if (normalized==null) return false;
        for (String entry:components) if (entry.equals(normalized)) return true;
        return false;
    }
    /** null means do not write: unknown list, invalid component, or size limit. */
    public String adding(String value) {
        if (!known || component(value)==null) return null;
        if (contains(value)) return raw;
        String next=raw.isEmpty()?value:raw+":"+value;
        return next.length()<=MAX_LENGTH?next:null;
    }
}
