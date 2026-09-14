package android.content;
import android.database.ContentObserver;
public class ContentResolver { public int calls;public RuntimeException failure;public void unregisterContentObserver(ContentObserver o) { calls++;if(failure!=null)throw failure; } }