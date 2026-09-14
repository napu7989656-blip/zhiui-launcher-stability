.class public final Lcom/byd/launcher/stability/BitmapCleanup;
.super Ljava/lang/Object;
.method public static release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    if-eqz p0, :done
    if-eq p0, p1, :done
    :try_start
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v0
    if-nez v0, :done
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end
    .catchall {:try_start .. :try_end} :failed
    :done
    return-void
    :failed
    move-exception v0
    return-void
.end method
