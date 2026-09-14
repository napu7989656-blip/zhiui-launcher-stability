.class public final Lcom/byd/launcher/stability/NavDeliver;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final read:Lcom/byd/launcher/stability/NavRead;
.field private final delegate:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/byd/launcher/stability/NavRead;Ljava/lang/Runnable;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/NavDeliver;->read:Lcom/byd/launcher/stability/NavRead;
    iput-object p2, p0, Lcom/byd/launcher/stability/NavDeliver;->delegate:Ljava/lang/Runnable;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/NavDeliver;->read:Lcom/byd/launcher/stability/NavRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/NavRead;->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/NavDeliver;->delegate:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :done
    return-void
.end method
