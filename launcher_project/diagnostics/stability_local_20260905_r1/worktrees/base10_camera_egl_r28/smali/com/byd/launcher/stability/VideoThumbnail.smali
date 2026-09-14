.class public final Lcom/byd/launcher/stability/VideoThumbnail;
.super Ljava/lang/Object;

# Small owned module: release native retrievers on success and all read failures.
.method public static read(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Landroid/media/MediaMetadataRetriever;
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_read
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    const-wide/16 v2, 0x0
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    move-result-object v1
    :try_end_read
    .catch Ljava/lang/Exception; {:try_start_read .. :try_end_read} :read_failed
    .catchall {:try_start_read .. :try_end_read} :read_fatal

    invoke-static {v0}, Lcom/byd/launcher/stability/VideoThumbnail;->releaseQuietly(Landroid/media/MediaMetadataRetriever;)V
    return-object v1

    :read_failed
    move-exception v1
    invoke-static {v0}, Lcom/byd/launcher/stability/VideoThumbnail;->releaseQuietly(Landroid/media/MediaMetadataRetriever;)V
    const/4 v1, 0x0
    return-object v1

    :read_fatal
    move-exception v1
    invoke-static {v0}, Lcom/byd/launcher/stability/VideoThumbnail;->releaseQuietly(Landroid/media/MediaMetadataRetriever;)V
    throw v1
.end method

.method private static releaseQuietly(Landroid/media/MediaMetadataRetriever;)V
    .locals 1
    if-eqz p0, :release_done
    :try_start_release
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_release
    .catch Ljava/lang/Exception; {:try_start_release .. :try_end_release} :release_failed
    return-void
    :release_failed
    move-exception v0
    :release_done
    return-void
.end method
