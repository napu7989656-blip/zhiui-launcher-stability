package com.byd.launcher.stability;

import android.media.MediaMetadata;
import android.media.MediaDescription;
import android.graphics.Bitmap;
import android.net.Uri;

/** Snapshots only the accepted metadata, never a later live controller. */
public final class MediaArtworkMetadata {
    private MediaArtworkMetadata() { }
    public static MediaArtworkPipeline.Input from(MediaMetadata metadata) {
        if(metadata==null) return new MediaArtworkPipeline.Input(null,null,null,null);
        Bitmap bitmap=metadata.getBitmap("android.media.metadata.ALBUM_ART");
        if(bitmap==null) bitmap=metadata.getBitmap("android.media.metadata.ART");
        if(bitmap==null) bitmap=metadata.getBitmap("android.media.metadata.DISPLAY_ICON");
        if(bitmap!=null) return new MediaArtworkPipeline.Input(bitmap,null,null,null);
        String uri=metadata.getString("android.media.metadata.ALBUM_ART_URI");
        if(uri==null) uri=metadata.getString("android.media.metadata.ART_URI");
        if(uri==null) uri=metadata.getString("android.media.metadata.DISPLAY_ICON_URI");
        MediaDescription description=metadata.getDescription();
        Bitmap fallback=description==null ? null : description.getIconBitmap();
        Uri fallbackUri=description==null ? null : description.getIconUri();
        return new MediaArtworkPipeline.Input(null,uri,fallback,fallbackUri==null ? null : fallbackUri.toString());
    }
}
