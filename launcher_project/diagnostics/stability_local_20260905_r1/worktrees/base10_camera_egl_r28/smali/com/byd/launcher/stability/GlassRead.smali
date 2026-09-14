.class public final Lcom/byd/launcher/stability/GlassRead;
.super Ljava/lang/Object;
.field private final target:Landroid/view/View;
.field private final prepareTicket:Lcom/byd/launcher/stability/TileSlot$Ticket;
.field public final batch:Lcom/byd/launcher/stability/TileBatch;
.field public final ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
.method public constructor <init>(Lo/ff;Landroid/view/View;)V
    .locals 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p2, p0, Lcom/byd/launcher/stability/GlassRead;->target:Landroid/view/View;
    iget-object v0, p1, Lo/ff;->stabilityGlassPrepareSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->begin()Lcom/byd/launcher/stability/TileSlot$Ticket;
    move-result-object v0
    iput-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->prepareTicket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    new-instance v0, Lcom/byd/launcher/stability/TileBatch;
    move-object v1, p1
    iget-object v2, p1, Lo/ff;->ͳ:Landroid/view/View;
    iget-object v3, p1, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    new-instance v4, Lcom/byd/launcher/stability/TileSnapshots;
    invoke-direct {v4, p1}, Lcom/byd/launcher/stability/TileSnapshots;-><init>(Lo/ff;)V
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byd/launcher/stability/TileBatch;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/byd/launcher/stability/TileSlot$Queue;)V
    iput-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    iget-object v0, p1, Lo/ff;->stabilityGlassSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->begin()Lcom/byd/launcher/stability/TileSlot$Ticket;
    move-result-object v0
    iput-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    return-void
.end method
.method public current()Z
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v1
    if-eqz v1, :no
    iget-object v0, v0, Lcom/byd/launcher/stability/TileBatch;->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    iget-object v1, p0, Lcom/byd/launcher/stability/GlassRead;->target:Landroid/view/View;
    if-eqz v1, :no
    iget-object v0, v0, Lo/ff;->ʹ:Landroid/view/View;
    if-ne v0, v1, :no
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-nez v0, :no
    iget-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot$Ticket;->isCurrent()Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public post(Ljava/lang/Runnable;)V
    .locals 4
    invoke-virtual {p0}, Lcom/byd/launcher/stability/GlassRead;->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    iget-object v1, p0, Lcom/byd/launcher/stability/GlassRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    iget-object v1, v1, Lcom/byd/launcher/stability/TileBatch;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;
    new-instance v2, Lcom/byd/launcher/stability/GlassDeliver;
    invoke-direct {v2, p0, p1}, Lcom/byd/launcher/stability/GlassDeliver;-><init>(Lcom/byd/launcher/stability/GlassRead;Ljava/lang/Runnable;)V
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/stability/TileSlot$Ticket;->post(Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public prepare(Ljava/lang/Runnable;)V
    .locals 4
    invoke-virtual {p0}, Lcom/byd/launcher/stability/GlassRead;->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/GlassRead;->prepareTicket:Lcom/byd/launcher/stability/TileSlot$Ticket;
    iget-object v1, p0, Lcom/byd/launcher/stability/GlassRead;->batch:Lcom/byd/launcher/stability/TileBatch;
    iget-object v1, v1, Lcom/byd/launcher/stability/TileBatch;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;
    new-instance v2, Lcom/byd/launcher/stability/GlassDeliver;
    invoke-direct {v2, p0, p1}, Lcom/byd/launcher/stability/GlassDeliver;-><init>(Lcom/byd/launcher/stability/GlassRead;Ljava/lang/Runnable;)V
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/stability/TileSlot$Ticket;->post(Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)Z
    :done
    return-void
.end method
.method public static close(Lo/ff;)V
    .locals 1
    iget-object v0, p0, Lo/ff;->stabilityGlassSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilityGlassPrepareSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    return-void
.end method
