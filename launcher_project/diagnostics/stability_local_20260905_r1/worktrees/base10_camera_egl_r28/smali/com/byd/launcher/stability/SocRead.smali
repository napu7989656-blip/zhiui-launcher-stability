.class public final Lcom/byd/launcher/stability/SocRead;
.super Ljava/lang/Object;
.field public final batch:Lcom/byd/launcher/stability/TileBatch;
.field public final ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
.method public constructor <init>(Lo/ff;)V
    .locals 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Lcom/byd/launcher/stability/TileBatch;
    move-object v1, p1
    iget-object v2, p1, Lo/ff;->ͳ:Landroid/view/View;
    iget-object v3, p1, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    new-instance v4, Lcom/byd/launcher/stability/TileSnapshots;
    invoke-direct {v4, p1}, Lcom/byd/launcher/stability/TileSnapshots;-><init>(Lo/ff;)V
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byd/launcher/stability/TileBatch;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/byd/launcher/stability/TileSlot$Queue;)V
    iput-object v0, p0, Lcom/byd/launcher/stability/SocRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    iget-object v0, p1, Lo/ff;->stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->begin()Lcom/byd/launcher/stability/TileSlot$Ticket;
    move-result-object v0
    iput-object v0, p0, Lcom/byd/launcher/stability/SocRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    return-void
.end method
.method public current()Z
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/stability/SocRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v1
    if-eqz v1, :no
    iget-object v0, v0, Lcom/byd/launcher/stability/TileBatch;->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    iget-boolean v1, v0, Lo/ff;->stabilitySocTracking:Z
    if-nez v1, :no
    iget-object v0, v0, Lo/ff;->stabilitySocActionGate:Lcom/byd/launcher/stability/ReadAfterAction;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/stability/ReadAfterAction;->blocked(J)Z
    move-result v0
    if-nez v0, :no
    iget-object v0, p0, Lcom/byd/launcher/stability/SocRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot$Ticket;->isCurrent()Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public post(Ljava/lang/Runnable;)V
    .locals 4
    invoke-virtual {p0}, Lcom/byd/launcher/stability/SocRead;->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/SocRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    iget-object v1, p0, Lcom/byd/launcher/stability/SocRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    iget-object v1, v1, Lcom/byd/launcher/stability/TileBatch;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;
    new-instance v2, Lcom/byd/launcher/stability/SocApply;
    invoke-direct {v2, p0, p1}, Lcom/byd/launcher/stability/SocApply;-><init>(Lcom/byd/launcher/stability/SocRead;Ljava/lang/Runnable;)V
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/stability/TileSlot$Ticket;->post(Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public static tracking(Lo/ff;Z)V
    .locals 1
    iput-boolean p1, p0, Lo/ff;->stabilitySocTracking:Z
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    return-void
.end method
.method public static changed(Lo/ff;)V
    .locals 1
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    return-void
.end method
.method public static close(Lo/ff;)V
    .locals 1
    const/4 v0, 0x0
    invoke-static {p0, v0}, Lcom/byd/launcher/stability/SocRead;->tracking(Lo/ff;Z)V
    iget-object v0, p0, Lo/ff;->stabilitySocActionGate:Lcom/byd/launcher/stability/ReadAfterAction;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/ReadAfterAction;->reset()V
    return-void
.end method
