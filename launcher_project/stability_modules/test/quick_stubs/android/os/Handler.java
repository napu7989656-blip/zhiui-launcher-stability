package android.os;
public class Handler { public RuntimeException failure;public int removals;public Object lastToken;
 public void removeCallbacks(Runnable task) { removals++;if(failure!=null)throw failure; }
 public void removeCallbacksAndMessages(Object token) { removals++;lastToken=token;if(failure!=null)throw failure; }
}