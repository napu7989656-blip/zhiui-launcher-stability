package android.widget;
public class CompoundButton extends TextView {
    public interface OnCheckedChangeListener { void onCheckedChanged(CompoundButton view,boolean value); }
    public OnCheckedChangeListener listener;
    public boolean checked;
    public void setOnCheckedChangeListener(OnCheckedChangeListener value) {listener=value;}
}
