package android.view;
public class View {
    public boolean attached;
    public ViewParent parent;
    public boolean queryFails;
    public boolean isAttachedToWindow() { if(queryFails) throw new IllegalStateException(); return attached; }
    public ViewParent getParent() { if(queryFails) throw new IllegalStateException(); return parent; }
}
