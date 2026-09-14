import android.content.*;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.view.*;
import com.byd.launcher.stability.StatusBarResources;

public final class StatusBarResourcesTest {
    static int assertions;
    static void check(boolean condition) { assertions++; if(!condition) throw new AssertionError("case " + assertions); }
    static final ViewParent PARENT = new ViewParent() {};
    static final class Windows implements WindowManager {
        int calls; boolean registered=true, defer; RuntimeException failure; Error fatal;
        public void removeViewImmediate(View view) {
            calls++;
            if(fatal!=null) throw fatal;
            if(failure!=null) throw failure;
            if(!registered) throw new IllegalArgumentException();
            if(!defer) { registered=false; view.attached=false; view.parent=null; }
        }
    }
    static final class Owner extends Context {
        int calls; RuntimeException failure; Object network=new ConnectivityManager();
        public void unregisterReceiver(BroadcastReceiver receiver) { calls++; if(failure!=null) throw failure; }
        public Object getSystemService(String name) { check(name.equals("connectivity")); return network; }
    }
    public static void main(String[] args) {
        check(StatusBarResources.removeWindow(null,null));
        check(!StatusBarResources.removeWindow(null,new View()));
        for(boolean attached:new boolean[]{false,true}) {
            Windows wm=new Windows(); View view=new View(); view.attached=attached; view.parent=PARENT;
            check(StatusBarResources.removeWindow(wm,view)); check(wm.calls==1 && !wm.registered);
            check(StatusBarResources.removeWindow(wm,view)); check(wm.calls==2);
        }
        Windows wm=new Windows(); View v=new View();
        wm.failure=new IllegalStateException(); check(!StatusBarResources.removeWindow(wm,v));
        wm.failure=new SecurityException(); check(!StatusBarResources.removeWindow(wm,v));
        wm.failure=new IllegalArgumentException(); v.parent=PARENT; check(!StatusBarResources.removeWindow(wm,v));
        v.parent=null; v.attached=true; check(!StatusBarResources.removeWindow(wm,v));
        v.attached=false; check(StatusBarResources.removeWindow(wm,v));
        v.queryFails=true; check(!StatusBarResources.removeWindow(wm,v));
        v.queryFails=false; wm.failure=null; wm.defer=true; v.parent=PARENT;
        check(!StatusBarResources.removeWindow(wm,v)); check(wm.registered);
        wm.defer=false; check(StatusBarResources.removeWindow(wm,v));
        wm.fatal=new AssertionError("fatal");
        try { StatusBarResources.removeWindow(wm,v); throw new RuntimeException("fatal swallowed"); }
        catch(AssertionError expected) { check(expected==wm.fatal); }
        Owner owner=new Owner(); BroadcastReceiver receiver=new BroadcastReceiver() {};
        check(StatusBarResources.unregisterReceiver(owner,receiver)); check(owner.calls==1);
        owner.failure=new IllegalArgumentException(); check(StatusBarResources.unregisterReceiver(owner,receiver));
        owner.failure=new SecurityException(); check(!StatusBarResources.unregisterReceiver(owner,receiver));
        check(StatusBarResources.unregisterReceiver(null,null)); check(!StatusBarResources.unregisterReceiver(null,receiver));
        ConnectivityManager cm=(ConnectivityManager)owner.network;
        ConnectivityManager.NetworkCallback callback=new ConnectivityManager.NetworkCallback();
        check(StatusBarResources.unregisterNetwork(owner,callback)); check(cm.removals==1);
        cm.failure=new IllegalArgumentException(); check(StatusBarResources.unregisterNetwork(owner,callback));
        cm.failure=new SecurityException(); check(!StatusBarResources.unregisterNetwork(owner,callback));
        owner.network=null; check(!StatusBarResources.unregisterNetwork(owner,callback));
        owner.network=new Object(); check(!StatusBarResources.unregisterNetwork(owner,callback));
        check(StatusBarResources.unregisterNetwork(null,null)); check(!StatusBarResources.unregisterNetwork(null,callback));
        Handler h=new Handler(); Runnable task=()->{};
        check(StatusBarResources.cancel(h,task)); check(h.removals==1);
        h.failure=new IllegalStateException(); check(!StatusBarResources.cancel(h,task));
        check(StatusBarResources.cancel(null,null)); check(!StatusBarResources.cancel(null,task));
        System.out.println("PASS: "+assertions+" assertions; pending attach, remove failure/defer/retry, missing owner, observer cancellation, repeat and fatal propagation. Android doubles, not ART/real WindowManager.");
    }
}
