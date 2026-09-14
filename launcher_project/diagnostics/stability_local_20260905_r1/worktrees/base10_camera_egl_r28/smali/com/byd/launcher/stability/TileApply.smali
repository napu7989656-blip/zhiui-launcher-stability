.class public final Lcom/byd/launcher/stability/TileApply;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final batch:Lcom/byd/launcher/stability/TileBatch;
.field private final tile:Lo/df;
.field private final delegate:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/byd/launcher/stability/TileBatch;Lo/df;Ljava/lang/Runnable;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/TileApply;->batch:Lcom/byd/launcher/stability/TileBatch;
    iput-object p2, p0, Lcom/byd/launcher/stability/TileApply;->tile:Lo/df;
    iput-object p3, p0, Lcom/byd/launcher/stability/TileApply;->delegate:Ljava/lang/Runnable;
    return-void
.end method
.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/byd/launcher/stability/TileApply;->batch:Lcom/byd/launcher/stability/TileBatch;
    iget-object v1, p0, Lcom/byd/launcher/stability/TileApply;->tile:Lo/df;
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/TileSnapshots;->accept(Lcom/byd/launcher/stability/TileBatch;Lo/df;)Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/TileApply;->delegate:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :done
    return-void
.end method
