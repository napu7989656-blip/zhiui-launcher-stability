package android.view;
import android.animation.Animator;
public class ViewPropertyAnimator {
 public boolean listenerCleared,startCleared,endCleared,cancelled,fail;
 public Runnable endAction;
 public ViewPropertyAnimator setListener(Animator.AnimatorListener l) { listenerCleared=l==null; return this; }
 public ViewPropertyAnimator withStartAction(Runnable r) { startCleared=r==null; return this; }
 public ViewPropertyAnimator withEndAction(Runnable r) { endAction=r;endCleared=r==null;return this; }
 public void cancel() { if(fail)throw new IllegalStateException();cancelled=true;if(endAction!=null)endAction.run(); }
}