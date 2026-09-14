.class public final Lcom/byd/launcher/stability/NavAction;
.super Ljava/lang/Object;
.method public static begin(Lo/ff;)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    .locals 4
    iget-object v0, p0, Lo/ff;->stabilityNavSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilityNavActionGate:Lcom/byd/launcher/stability/ReadAfterAction;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/stability/ReadAfterAction;->begin(J)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    move-result-object v0
    return-object v0
.end method
.method public static finishJob(Lo/de;)V
    .locals 2
    iget-object v0, p0, Lo/de;->stabilityNavActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcom/byd/launcher/stability/ReadAfterAction$Token;->finish()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lo/de;->ͱ:Lo/ff;
    iget-object v0, v0, Lo/ff;->stabilityNavSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    :done
    return-void
.end method
