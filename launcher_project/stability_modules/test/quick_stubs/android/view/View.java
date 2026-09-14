package android.view;
public class View {
 public boolean attached,queryFails,animationCleared,clearFails;
 public ViewParent parent;
 public final ViewPropertyAnimator animator=new ViewPropertyAnimator();
 public ViewTreeObserver observer=new ViewTreeObserver();
 public ViewTreeObserver getViewTreeObserver() { return observer; }
 public boolean isAttachedToWindow() { if(queryFails)throw new IllegalStateException();return attached; }
 public ViewParent getParent() { if(queryFails)throw new IllegalStateException();return parent; }
 public ViewPropertyAnimator animate() { return animator; }
 public void clearAnimation() { if(clearFails)throw new IllegalStateException();animationCleared=true; }
}
