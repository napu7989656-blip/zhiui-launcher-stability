.class public final Lcom/byd/launcher/stability/MainBlurHost;
.super Ljava/lang/Object;
.implements Lcom/byd/launcher/stability/BlurPipeline$Host;
.field private final owner:Lcom/byd/launcher/MainActivity;

.method public constructor <init>(Lcom/byd/launcher/MainActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/MainBlurHost;->owner:Lcom/byd/launcher/MainActivity;
    return-void
.end method
.method public current()Z
    .locals 2
    iget-object v0, p0, Lcom/byd/launcher/stability/MainBlurHost;->owner:Lcom/byd/launcher/MainActivity;
    iget-boolean v1, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z
    if-nez v1, :no
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;
    move-result-object v1
    if-ne v0, v1, :no
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-eqz v0, :yes
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v0, :no
    :yes
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public service()Ljava/lang/Object;
    .locals 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    return-object v0
.end method
.method public post(Ljava/lang/Runnable;J)Z
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MainBlurHost;->owner:Lcom/byd/launcher/MainActivity;
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    move-result v0
    return v0
.end method
.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MainBlurHost;->owner:Lcom/byd/launcher/MainActivity;
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
.end method
.method public postChild(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 1
    instance-of v0, p1, Landroid/os/Handler;
    if-eqz v0, :view
    check-cast p1, Landroid/os/Handler;
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    move-result v0
    return v0
    :view
    instance-of v0, p1, Landroid/view/View;
    if-eqz v0, :no
    check-cast p1, Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public removeChild(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1
    instance-of v0, p1, Landroid/os/Handler;
    if-eqz v0, :view
    check-cast p1, Landroid/os/Handler;
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
    :view
    instance-of v0, p1, Landroid/view/View;
    if-eqz v0, :done
    check-cast p1, Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public commit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MainBlurHost;->owner:Lcom/byd/launcher/MainActivity;
    check-cast p1, Landroid/graphics/Bitmap;
    check-cast p2, Landroid/graphics/Bitmap;
    iput-object p1, v0, Lcom/byd/launcher/MainActivity;->Κ:Landroid/graphics/Bitmap;
    sput-object p2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    return-void
.end method
.method public retry()Z
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/stability/MainBlurHost;->owner:Lcom/byd/launcher/MainActivity;
    iget v1, v0, Lcom/byd/launcher/MainActivity;->Ι:I
    const/4 v2, 0x5
    if-ge v1, v2, :no
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcom/byd/launcher/MainActivity;->Ι:I
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public release(Ljava/lang/Object;)V
    .locals 1
    check-cast p1, Landroid/graphics/Bitmap;
    if-eqz p1, :done
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v0
    if-nez v0, :done
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :done
    return-void
.end method
.method public failed(Ljava/lang/RuntimeException;)V
    .locals 2
    const-string v0, "MainBlur"
    const-string v1, "Blur task or delivery failed"
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
