package android.view;
public class ViewTreeObserver {
 public interface OnGlobalLayoutListener {}
 public boolean alive=true,fail;
 public int removes;
 public boolean isAlive(){return alive;}
 public void removeOnGlobalLayoutListener(OnGlobalLayoutListener listener){removes++;if(fail)throw new IllegalStateException();}
}
