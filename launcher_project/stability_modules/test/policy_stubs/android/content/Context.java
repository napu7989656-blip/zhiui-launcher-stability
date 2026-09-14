package android.content;
public final class Context {
    public final ContentResolver resolver = new ContentResolver();
    public ContentResolver getContentResolver() { return resolver; }
}
