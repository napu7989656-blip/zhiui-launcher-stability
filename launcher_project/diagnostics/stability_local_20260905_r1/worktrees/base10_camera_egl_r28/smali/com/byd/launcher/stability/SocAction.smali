.class public final Lcom/byd/launcher/stability/SocAction;
.super Ljava/lang/Object;
.method public static begin(Lo/ff;)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    .locals 4
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilitySocActionGate:Lcom/byd/launcher/stability/ReadAfterAction;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/stability/ReadAfterAction;->begin(J)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    move-result-object v0
    return-object v0
.end method
.method public static finish(Lo/ff;Lcom/byd/launcher/stability/ReadAfterAction$Token;)V
    .locals 1
    if-eqz p1, :done
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ReadAfterAction$Token;->finish()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lo/ff;->stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    :done
    return-void
.end method
.method public static finishJob(Lo/bg;)V
    .locals 2
    iget-object v1, p0, Lo/bg;->stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    if-eqz v1, :done
    iget-object v0, p0, Lo/bg;->Ͳ:Ljava/lang/Object;
    check-cast v0, Lo/re;
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/SocAction;->finish(Lo/ff;Lcom/byd/launcher/stability/ReadAfterAction$Token;)V
    :done
    return-void
.end method
.method public static finishCallback(Lo/oa;)V
    .locals 2
    iget-object v1, p0, Lo/oa;->stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    if-eqz v1, :done
    iget-object v0, p0, Lo/oa;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/re;
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/SocAction;->finish(Lo/ff;Lcom/byd/launcher/stability/ReadAfterAction$Token;)V
    :done
    return-void
.end method
