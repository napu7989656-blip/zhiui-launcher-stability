package android.os;
public class Handler {
    public RuntimeException failure;
    public int removals;
    public void removeCallbacks(Runnable task) { removals++; if(failure!=null) throw failure; }
}
