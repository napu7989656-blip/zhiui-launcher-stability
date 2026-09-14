.class final Lcom/byd/launcher/stability/TileSlot$Pending;
.super Ljava/lang/Object;
.source "TileSlot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/TileSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pending"
.end annotation


# instance fields
.field final callback:Ljava/lang/Runnable;

.field final queue:Lcom/byd/launcher/stability/TileSlot$Queue;

.field final ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/TileSlot$Ticket;Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    iput-object p2, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;

    iput-object p3, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    invoke-static {v0}, Lcom/byd/launcher/stability/TileSlot$Ticket;->access$400(Lcom/byd/launcher/stability/TileSlot$Ticket;)Lcom/byd/launcher/stability/TileSlot;

    move-result-object v0

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot$Ticket;->access$400(Lcom/byd/launcher/stability/TileSlot$Ticket;)Lcom/byd/launcher/stability/TileSlot;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot;->access$100(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Ticket;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    if-ne v1, v2, :cond_1

    invoke-static {v2}, Lcom/byd/launcher/stability/TileSlot$Ticket;->access$400(Lcom/byd/launcher/stability/TileSlot$Ticket;)Lcom/byd/launcher/stability/TileSlot;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot;->access$300(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Pending;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot$Ticket;->access$400(Lcom/byd/launcher/stability/TileSlot$Ticket;)Lcom/byd/launcher/stability/TileSlot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/TileSlot;->access$302(Lcom/byd/launcher/stability/TileSlot;Lcom/byd/launcher/stability/TileSlot$Pending;)Lcom/byd/launcher/stability/TileSlot$Pending;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/byd/launcher/stability/TileSlot$Pending;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;

    invoke-interface {v2, v1}, Lcom/byd/launcher/stability/TileSlot$Queue;->failed(Ljava/lang/RuntimeException;)V

    .line 50
    :goto_0
    monitor-exit v0

    return-void

    .line 47
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
