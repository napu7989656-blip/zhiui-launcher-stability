.class public final Lcom/byd/launcher/stability/MediaArtworkHost;
.super Ljava/lang/Object;
.implements Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;
.field private final owner:Lo/a9;
.method public constructor <init>(Lo/a9;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    return-void
.end method

.method public current(Ljava/lang/Object;)Z
    .locals 2
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    if-eqz p1, :invalid
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v1
    if-eqz v1, :invalid
    iget-object v0, v0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-ne v0, p1, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    iget-object v0, v0, Lo/a9;->ˏ:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    move-result v0
    return v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    iget-object v0, v0, Lo/a9;->ˏ:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
.end method

.method public failed(Ljava/lang/RuntimeException;)V
    .locals 2
    const-string v0, "MusicCtrlMgr"
    const-string v1, "Artwork work failed"
    invoke-static {v0, v1, p1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method public small(Ljava/lang/Object;)Z
    .locals 3
    if-eqz p1, :no
    check-cast p1, Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v1
    const/16 v2, 0x100
    if-gt v0, v2, :no
    if-gt v1, v2, :no
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method

.method public cached()Ljava/lang/Object;
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    iget-object v0, v0, Lo/a9;->ͽ:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    invoke-virtual {v0, p1}, Lo/a9;->ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    iget-object v0, v0, Lo/a9;->ˋ:Landroid/content/Context;
    invoke-static {v0, p1, p2}, Lcom/byd/launcher/stability/MediaUriReader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public scale(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    check-cast p1, Landroid/graphics/Bitmap;
    invoke-static {p1}, Lo/a9;->ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public pause(J)V
    .locals 0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    return-void
.end method

.method public commit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkHost;->owner:Lo/a9;
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v1
    if-eqz v1, :done
    check-cast p1, Landroid/graphics/Bitmap;
    if-eqz p4, :keep_cache
    iput-object p1, v0, Lo/a9;->ͽ:Landroid/graphics/Bitmap;
    :keep_cache
    iget-object v0, v0, Lo/a9;->ʹ:Lo/ia;
    if-eqz v0, :done
    invoke-virtual {v0, p1, p2, p3}, Lo/ia;->ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :done
    return-void
.end method
