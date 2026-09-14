import android.content.*;
import android.database.ContentObserver;
import android.os.Handler;
import android.view.*;
import com.byd.launcher.stability.QuickSettingsResources;

public class QuickSettingsResourcesTest {
    static int assertions;
    static void check(boolean value) { assertions++;if(!value)throw new AssertionError("case "+assertions); }
    static class Windows implements WindowManager {
        int calls; boolean fail,registered=true,defer;
        public void removeViewImmediate(View view) {
            calls++;
            if(fail)throw new SecurityException();
            if(!registered)throw new IllegalArgumentException();
            if(!defer){registered=false;view.parent=null;view.attached=false;}
        }
    }
    static class Owner extends Context {
        ContentResolver resolver=new ContentResolver();
        public ContentResolver getContentResolver(){return resolver;}
        public void unregisterReceiver(BroadcastReceiver r){}
        public Object getSystemService(String name){return null;}
    }
    public static void main(String[] args) {
        check(QuickSettingsResources.disposePanel(null,null,null));
        Windows wm=new Windows();ViewGroup root=new ViewGroup();root.attached=true;root.parent=new ViewParent(){};
        View a=new View(),b=new View();root.add(a);root.add(b);
        int[] callbacks={0};a.animator.endAction=()->callbacks[0]++;
        check(QuickSettingsResources.disposePanel(wm,null,root));check(wm.calls==1 && !root.attached);
        check(root.animator.cancelled && a.animator.cancelled && b.animator.cancelled);
        check(callbacks[0]==0 && a.animator.listenerCleared && a.animator.startCleared && a.animator.endCleared);
        check(QuickSettingsResources.disposePanel(wm,null,root));
        ViewGroup host=new ViewGroup();host.attached=true;View own=new View(),sibling=new View();host.add(own);host.add(sibling);
        int before=wm.calls;
        check(QuickSettingsResources.disposePanel(wm,host,own));check(wm.calls==before);
        check(host.children.size()==1 && host.children.get(0)==sibling && host.attached);
        host.add(own);host.removeFails=true;
        check(!QuickSettingsResources.disposePanel(wm,host,own));check(own.parent==host);
        host.removeFails=false;check(QuickSettingsResources.disposePanel(wm,host,own));
        wm=new Windows();root=new ViewGroup();a=new View();b=new View();root.add(a);root.add(b);a.animator.fail=true;
        check(!QuickSettingsResources.disposePanel(wm,null,root));check(wm.calls==1 && !wm.registered);
        check(b.animator.cancelled && a.animationCleared);
        a.animator.fail=false;check(QuickSettingsResources.disposePanel(wm,null,root));
        wm=new Windows();wm.fail=true;View view=new View();view.attached=true;
        check(!QuickSettingsResources.disposePanel(wm,null,view));check(view.attached && view.animator.cancelled);
        wm.fail=false;wm.defer=true;check(!QuickSettingsResources.disposePanel(wm,null,view));
        wm.defer=false;check(QuickSettingsResources.disposePanel(wm,null,view));
        view=new View();view.clearFails=true;wm=new Windows();check(!QuickSettingsResources.disposePanel(wm,null,view));check(wm.calls==1);
        check(!QuickSettingsResources.disposePanel(null,null,new View()));
        Handler h=new Handler();check(QuickSettingsResources.clearQueue(h));check(h.removals==1 && h.lastToken==null);
        h.failure=new IllegalStateException();check(!QuickSettingsResources.clearQueue(h));check(QuickSettingsResources.clearQueue(null));
        Owner owner=new Owner();ContentObserver observer=new ContentObserver();
        check(QuickSettingsResources.unregisterObserver(owner,observer));check(owner.resolver.calls==1);
        owner.resolver.failure=new IllegalStateException();check(!QuickSettingsResources.unregisterObserver(owner,observer));
        owner.resolver.failure=new IllegalArgumentException();check(!QuickSettingsResources.unregisterObserver(owner,observer));
        owner.resolver=null;check(!QuickSettingsResources.unregisterObserver(owner,observer));
        check(QuickSettingsResources.unregisterObserver(null,null));check(!QuickSettingsResources.unregisterObserver(null,observer));
        View layout=new View();ViewTreeObserver registered=layout.observer;
        ViewTreeObserver.OnGlobalLayoutListener listener=new ViewTreeObserver.OnGlobalLayoutListener(){};
        check(QuickSettingsResources.removeLayoutListener(layout,registered,listener));check(registered.removes==1);
        layout.observer=new ViewTreeObserver();registered.alive=false;
        check(QuickSettingsResources.removeLayoutListener(layout,registered,listener));check(layout.observer.removes==1 && registered.removes==1);
        registered.alive=true;registered.fail=true;
        check(!QuickSettingsResources.removeLayoutListener(layout,registered,listener));check(layout.observer.removes==2);
        registered.fail=false;layout.observer.fail=true;check(!QuickSettingsResources.removeLayoutListener(layout,registered,listener));
        layout.observer.fail=false;check(QuickSettingsResources.removeLayoutListener(layout,registered,listener));
        check(QuickSettingsResources.removeLayoutListener(layout,null,listener));
        System.out.println("PASS: "+assertions+" assertions: independent animation/window cleanup, sibling preservation, failures/retry, queue and observer cancellation. Android doubles, not ART.");
    }
}
