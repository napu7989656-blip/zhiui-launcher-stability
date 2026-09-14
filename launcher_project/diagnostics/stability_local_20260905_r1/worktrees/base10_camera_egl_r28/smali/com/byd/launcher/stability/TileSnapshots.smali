.class public final Lcom/byd/launcher/stability/TileSnapshots;
.super Ljava/lang/Object;
.implements Lcom/byd/launcher/stability/TileSlot$Queue;
.field private final owner:Lo/ff;
.method public constructor <init>(Lo/ff;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/TileSnapshots;->owner:Lo/ff;
    return-void
.end method
.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/TileSnapshots;->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    move-result v0
    return v0
.end method
.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/TileSnapshots;->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
.end method
.method public failed(Ljava/lang/RuntimeException;)V
    .locals 2
    const-string v0, "QuickSettingsMgr"
    const-string v1, "Tile result delivery failed"
    invoke-static {v0, v1, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method
.method public static capture(Lo/ff;Lo/df;)Lcom/byd/launcher/stability/TileBatch;
    .locals 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/byd/launcher/stability/TileSnapshots;->capture(Lo/ff;Ljava/util/List;)Lcom/byd/launcher/stability/TileBatch;
    move-result-object v0
    return-object v0
.end method
.method public static capture(Lo/ff;Ljava/util/List;)Lcom/byd/launcher/stability/TileBatch;
    .locals 6
    new-instance v0, Lcom/byd/launcher/stability/TileBatch;
    move-object v1, p0
    iget-object v2, p0, Lo/ff;->ͳ:Landroid/view/View;
    iget-object v3, p0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    new-instance v4, Lcom/byd/launcher/stability/TileSnapshots;
    invoke-direct {v4, p0}, Lcom/byd/launcher/stability/TileSnapshots;-><init>(Lo/ff;)V
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byd/launcher/stability/TileBatch;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/byd/launcher/stability/TileSlot$Queue;)V
    if-eqz p1, :done
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v5
    :loop
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :done
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lo/df;
    if-eqz v1, :loop
    iget-object v2, v1, Lo/df;->stabilityTileSlot:Lcom/byd/launcher/stability/TileSlot;
    iget-object v3, v1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;
    iget-object v4, v1, Lo/df;->stabilityTileAction:Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byd/launcher/stability/TileBatch;->capture(Ljava/lang/Object;Lcom/byd/launcher/stability/TileSlot;Ljava/lang/Object;Ljava/lang/Object;)V
    goto :loop
    :done
    return-object v0
.end method
.method public static usable(Lcom/byd/launcher/stability/TileBatch;)Z
    .locals 4
    if-eqz p0, :no
    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v1, v2, :no
    iget-object v1, p0, Lcom/byd/launcher/stability/TileBatch;->epoch:Ljava/lang/Object;
    iget-object v2, v0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    if-ne v1, v2, :no
    iget-object v1, p0, Lcom/byd/launcher/stability/TileBatch;->root:Ljava/lang/Object;
    if-eqz v1, :no
    iget-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;
    if-eq v1, v2, :yes
    if-nez v2, :no
    iget-object v2, v0, Lo/ff;->Ώ:Landroid/view/View;
    if-ne v1, v2, :no
    :yes
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public static accept(Lcom/byd/launcher/stability/TileBatch;Lo/df;)Z
    .locals 4
    invoke-static {p0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v0
    if-eqz v0, :no
    if-eqz p1, :no
    invoke-virtual {p0, p1}, Lcom/byd/launcher/stability/TileBatch;->current(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :no
    invoke-virtual {p0, p1}, Lcom/byd/launcher/stability/TileBatch;->entry(Ljava/lang/Object;)Lcom/byd/launcher/stability/TileBatch$Entry;
    move-result-object v0
    iget-object v1, v0, Lcom/byd/launcher/stability/TileBatch$Entry;->frame:Ljava/lang/Object;
    if-eqz v1, :no
    iget-object v2, p1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;
    if-ne v1, v2, :no
    iget-object v1, v0, Lcom/byd/launcher/stability/TileBatch$Entry;->action:Ljava/lang/Object;
    iget-object v2, p1, Lo/df;->stabilityTileAction:Ljava/lang/Object;
    if-ne v1, v2, :no
    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->owner:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    iget-object v0, v0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public static read(Lcom/byd/launcher/stability/TileBatch;Lo/df;Lo/ef;)Z
    .locals 1
    invoke-static {p0, p1}, Lcom/byd/launcher/stability/TileSnapshots;->accept(Lcom/byd/launcher/stability/TileBatch;Lo/df;)Z
    move-result v0
    if-eqz v0, :no
    invoke-static {p2}, Lcom/byd/launcher/stability/TileState;->read(Lo/ef;)Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
.method public static action(Lo/df;)V
    .locals 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lo/df;->stabilityTileAction:Ljava/lang/Object;
    iget-object v0, p0, Lo/df;->stabilityTileSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    return-void
.end method
.method public static invalidate(Lo/ff;)V
    .locals 3
    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;
    iget-object v0, p0, Lo/ff;->Β:Ljava/util/ArrayList;
    if-eqz v0, :done
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :done
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lo/df;
    if-eqz v1, :loop
    iget-object v1, v1, Lo/df;->stabilityTileSlot:Lcom/byd/launcher/stability/TileSlot;
    invoke-virtual {v1}, Lcom/byd/launcher/stability/TileSlot;->invalidate()V
    goto :loop
    :done
    return-void
.end method
.method private static row(Lcom/byd/launcher/stability/TileBatch;Lo/df;Ljava/lang/Runnable;)V
    .locals 1
    new-instance v0, Lcom/byd/launcher/stability/TileApply;
    invoke-direct {v0, p0, p1, p2}, Lcom/byd/launcher/stability/TileApply;-><init>(Lcom/byd/launcher/stability/TileBatch;Lo/df;Ljava/lang/Runnable;)V
    invoke-virtual {p0, p1, v0}, Lcom/byd/launcher/stability/TileBatch;->post(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    return-void
.end method
.method public static post(Lcom/byd/launcher/stability/TileBatch;Ljava/lang/Runnable;)Z
    .locals 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-eqz v0, :wait_post_allowed
    const/4 v0, 0x0
    return v0
    :wait_post_allowed

    invoke-static {p0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v0
    if-eqz v0, :done
    instance-of v0, p1, Lo/fe;
    if-eqz v0, :subtitle
    move-object v0, p1
    check-cast v0, Lo/fe;
    iget-object v0, v0, Lo/fe;->Ͳ:Lo/df;
    invoke-static {p0, v0, p1}, Lcom/byd/launcher/stability/TileSnapshots;->row(Lcom/byd/launcher/stability/TileBatch;Lo/df;Ljava/lang/Runnable;)V
    goto :done
    :subtitle
    instance-of v0, p1, Lo/Ϋ;
    if-eqz v0, :batch
    move-object v0, p1
    check-cast v0, Lo/Ϋ;
    iget v1, v0, Lo/Ϋ;->Ͱ:I
    const/4 v2, 0x7
    if-ne v1, v2, :done
    iget-object v0, v0, Lo/Ϋ;->ͳ:Ljava/lang/Object;
    check-cast v0, Lo/df;
    invoke-static {p0, v0, p1}, Lcom/byd/launcher/stability/TileSnapshots;->row(Lcom/byd/launcher/stability/TileBatch;Lo/df;Ljava/lang/Runnable;)V
    goto :done
    :batch
    instance-of v0, p1, Lo/sj;
    if-eqz v0, :done
    check-cast p1, Lo/sj;
    iget v0, p1, Lo/sj;->Ͱ:I
    const/4 v1, 0x4
    if-ne v0, v1, :done
    iget-object v0, p1, Lo/sj;->ͱ:Ljava/lang/Object;
    check-cast v0, Ljava/util/List;
    iget-object v1, p1, Lo/sj;->Ͳ:Ljava/lang/Object;
    check-cast v1, [Z
    iget-object v2, p1, Lo/sj;->ʹ:Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;
    const/4 v3, 0x0
    :loop
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v10
    if-ge v3, v10, :done
    new-instance v4, Lo/fe;
    iget-object v5, p0, Lcom/byd/launcher/stability/TileBatch;->owner:Ljava/lang/Object;
    check-cast v5, Lo/ff;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lo/df;
    aget-boolean v7, v1, v3
    aget-object v8, v2, v3
    const/4 v9, 0x0
    invoke-direct/range {v4 .. v9}, Lo/fe;-><init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V
    invoke-static {p0, v6, v4}, Lcom/byd/launcher/stability/TileSnapshots;->row(Lcom/byd/launcher/stability/TileBatch;Lo/df;Ljava/lang/Runnable;)V
    add-int/lit8 v3, v3, 0x1
    goto :loop
    :done
    const/4 v0, 0x0
    return v0
.end method
