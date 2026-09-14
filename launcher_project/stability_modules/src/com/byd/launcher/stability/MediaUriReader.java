package com.byd.launcher.stability;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/** Worker-only URI bridge. Does not publish or cache. Provider/native calls cannot
 * be forcibly preempted; deadline and request are checked at every IO boundary.
 * Returned image is new, but downstream scaling/UI may borrow it: no recycling
 * after handoff. Only a rejected, never-published decode is recycled here.
 */
public final class MediaUriReader {
    public static Bitmap load(Context context,String value,MediaArtworkWork.Request request) {
        if(context==null || value==null || value.length()==0 || value.length()>8192) return null;
        ArtworkInput.Budget budget=new ArtworkInput.Budget(
            new ArtworkInput.Clock() { public long millis() { return SystemClock.elapsedRealtime(); } },
            new ArtworkInput.Gate() { public boolean current() { return request==null || request.current(); } });
        Bitmap bitmap=null;
        try {
            budget.remaining();
            Uri uri=Uri.parse(value);
            String scheme=uri.getScheme();
            byte[] bytes;
            if("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                bytes=ArtworkInput.http(new URL(value),budget,new ArtworkInput.Connections() {
                    public HttpURLConnection open(URL url) throws IOException {
                        return (HttpURLConnection)url.openConnection();
                    }
                });
            } else {
                // ContentResolver supports content, file and android.resource URIs.
                InputStream stream=null;
                try {
                    stream=context.getContentResolver().openInputStream(uri);
                    bytes=ArtworkInput.read(stream,budget,null);
                } finally { ArtworkInput.close(stream); }
            }
            budget.remaining();
            BitmapFactory.Options options=new BitmapFactory.Options();
            options.inJustDecodeBounds=true;
            BitmapFactory.decodeByteArray(bytes,0,bytes.length,options);
            budget.remaining();
            options.inSampleSize=ArtworkInput.sample(options.outWidth,options.outHeight);
            options.inJustDecodeBounds=false;
            options.inScaled=false;
            bitmap=BitmapFactory.decodeByteArray(bytes,0,bytes.length,options);
            budget.remaining();
            if(bitmap!=null && (bitmap.getWidth()>1024 || bitmap.getHeight()>1024 ||
                    bitmap.getWidth()<=0 || bitmap.getHeight()<=0)) throw new IOException("Oversized artwork decode");
            Bitmap accepted=bitmap; bitmap=null;
            return accepted;
        } catch(IOException | RuntimeException failed) {
            return null;
        } finally {
            if(bitmap!=null) try { bitmap.recycle(); } catch(Throwable ignored) { }
        }
    }
    private MediaUriReader() { }
}
