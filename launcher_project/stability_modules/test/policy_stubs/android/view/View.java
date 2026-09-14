package android.view;
import java.util.HashMap;
import android.content.Context;
public class View {
    public final Context context = new Context();
    public final HashMap<Integer,View> children = new HashMap<Integer,View>();
    public boolean enabled = true;
    public Context getContext() { return context; }
    @SuppressWarnings("unchecked") public <T extends View> T findViewById(int id) { return (T)children.get(id); }
    public void setEnabled(boolean value) { enabled=value; }
}
