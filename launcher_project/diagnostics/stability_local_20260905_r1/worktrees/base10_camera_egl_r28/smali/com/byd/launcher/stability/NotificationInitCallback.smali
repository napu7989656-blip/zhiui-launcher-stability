.class public final Lcom/byd/launcher/stability/NotificationInitCallback;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final host:Lcom/byd/launcher/stability/NotificationInitHost;
.field private final task:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/byd/launcher/stability/NotificationInitHost;Ljava/lang/Runnable;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/NotificationInitCallback;->host:Lcom/byd/launcher/stability/NotificationInitHost;
    iput-object p2, p0, Lcom/byd/launcher/stability/NotificationInitCallback;->task:Ljava/lang/Runnable;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/NotificationInitCallback;->host:Lcom/byd/launcher/stability/NotificationInitHost;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/NotificationInitHost;->current()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/byd/launcher/stability/NotificationInitCallback;->task:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :done
    return-void
.end method
