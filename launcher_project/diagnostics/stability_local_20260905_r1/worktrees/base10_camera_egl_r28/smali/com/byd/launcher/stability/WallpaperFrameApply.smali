.class public final Lcom/byd/launcher/stability/WallpaperFrameApply;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

# Immutable result; Android Handler publishes it to the UI thread. Weak UI owners
# prevent a queued result from keeping a destroyed Activity alive.
.field private final owner:Ljava/lang/ref/WeakReference;
.field private final view:Ljava/lang/ref/WeakReference;
.field private final key:Ljava/lang/String;
.field private final bitmap:Landroid/graphics/Bitmap;

.method public constructor <init>(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->owner:Ljava/lang/ref/WeakReference;
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->view:Ljava/lang/ref/WeakReference;
    iput-object p2, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->key:Ljava/lang/String;
    iput-object p3, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->bitmap:Landroid/graphics/Bitmap;
    return-void
.end method

.method public static submit(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 2
    if-eqz p2, :done
    iget-boolean v0, p0, Lo/ak;->Ͳ:Z
    if-nez v0, :done
    new-instance v0, Lcom/byd/launcher/stability/WallpaperFrameApply;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byd/launcher/stability/WallpaperFrameApply;-><init>(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    iget-object v1, p0, Lo/ak;->ͱ:Landroid/os/Handler;
    invoke-static {v1, v0}, Lcom/byd/launcher/stability/WallpaperDelivery;->deliver(Landroid/os/Handler;Ljava/lang/Runnable;)V
    # Teardown can race with submit. run() must recheck ownership, even after
    # onDetachedFromRecyclerView already removed queued callbacks.
    :done
    return-void
.end method

.method public final run()V
    .locals 7
    iget-object v0, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->owner:Ljava/lang/ref/WeakReference;
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lo/ak;
    if-eqz v0, :done
    iget-boolean v1, v0, Lo/ak;->Ͳ:Z
    if-nez v1, :done
    sget-object v1, Lo/ak;->ͼ:Ljava/lang/ref/WeakReference;
    if-eqz v1, :done
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    move-result-object v1
    if-ne v0, v1, :done
    iget-object v1, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->key:Ljava/lang/String;
    if-eqz v1, :done
    iget-object v2, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :done
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v3
    if-nez v3, :done
    # Publish cache and indexed thumbnails on the same UI thread as detach and
    # selection, instead of mutating their array from decoder workers.
    iget-object v3, v0, Lo/ak;->ˋ:Ljava/util/List;
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    move-result v3
    if-ltz v3, :done
    iget-object v4, v0, Lo/ak;->ͳ:Lo/uj;
    invoke-virtual {v4, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v4, v0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;
    if-eqz v4, :check_selected
    array-length v5, v4
    if-ge v3, v5, :check_selected
    aput-object v2, v4, v3
    :check_selected
    invoke-static {v1}, Lo/ak;->ˏ(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :check_view
    invoke-static {v2}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V
    :check_view
    iget-object v3, p0, Lcom/byd/launcher/stability/WallpaperFrameApply;->view:Ljava/lang/ref/WeakReference;
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/widget/ImageView;
    if-eqz v3, :done
    # R.id.stability_wallpaper_binding. Preserve the ordinary "video_poster"
    # lookup tag and image path tag used by the existing ViewHolder code.
    const v4, 0x7f08032e
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :done
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :done
    return-void
.end method
