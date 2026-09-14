package android.view;
import java.util.ArrayList;
public class ViewGroup extends View implements ViewParent {
 public final ArrayList<View> children=new ArrayList<>();public boolean removeFails;public int removes;
 public int getChildCount() { return children.size(); }
 public View getChildAt(int i) { return children.get(i); }
 public void add(View v) { children.add(v);v.parent=this;v.attached=attached; }
 public void removeView(View v) { removes++;if(removeFails)throw new IllegalStateException();children.remove(v);v.parent=null;v.attached=false; }
}