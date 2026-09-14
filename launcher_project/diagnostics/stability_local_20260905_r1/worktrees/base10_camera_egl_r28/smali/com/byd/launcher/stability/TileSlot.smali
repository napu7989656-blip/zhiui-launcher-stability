.class public final Lcom/byd/launcher/stability/TileSlot;
.super Ljava/lang/Object;
.source "TileSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/TileSlot$Pending;,
        Lcom/byd/launcher/stability/TileSlot$Ticket;,
        Lcom/byd/launcher/stability/TileSlot$Queue;
    }
.end annotation


# instance fields
.field private current:Lcom/byd/launcher/stability/TileSlot$Ticket;

.field private pending:Lcom/byd/launcher/stability/TileSlot$Pending;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Ticket;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/TileSlot;->current:Lcom/byd/launcher/stability/TileSlot$Ticket;

    return-object p0
.end method

.method static synthetic access$200(Lcom/byd/launcher/stability/TileSlot;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/byd/launcher/stability/TileSlot;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Pending;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/TileSlot;->pending:Lcom/byd/launcher/stability/TileSlot$Pending;

    return-object p0
.end method

.method static synthetic access$302(Lcom/byd/launcher/stability/TileSlot;Lcom/byd/launcher/stability/TileSlot$Pending;)Lcom/byd/launcher/stability/TileSlot$Pending;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byd/launcher/stability/TileSlot;->pending:Lcom/byd/launcher/stability/TileSlot$Pending;

    return-object p1
.end method

.method private cancel()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/byd/launcher/stability/TileSlot;->pending:Lcom/byd/launcher/stability/TileSlot$Pending;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/byd/launcher/stability/TileSlot;->pending:Lcom/byd/launcher/stability/TileSlot$Pending;

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    iget-object v1, v0, Lcom/byd/launcher/stability/TileSlot$Pending;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;

    invoke-interface {v1, v0}, Lcom/byd/launcher/stability/TileSlot$Queue;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 19
    iget-object v0, v0, Lcom/byd/launcher/stability/TileSlot$Pending;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;

    invoke-interface {v0, v1}, Lcom/byd/launcher/stability/TileSlot$Queue;->failed(Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized begin()Lcom/byd/launcher/stability/TileSlot$Ticket;
    .locals 2

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/byd/launcher/stability/TileSlot;->cancel()V

    new-instance v0, Lcom/byd/launcher/stability/TileSlot$Ticket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byd/launcher/stability/TileSlot$Ticket;-><init>(Lcom/byd/launcher/stability/TileSlot;Lcom/byd/launcher/stability/TileSlot$1;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/TileSlot;->current:Lcom/byd/launcher/stability/TileSlot$Ticket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 15
    :try_start_0
    iput-object v0, p0, Lcom/byd/launcher/stability/TileSlot;->current:Lcom/byd/launcher/stability/TileSlot$Ticket;

    invoke-direct {p0}, Lcom/byd/launcher/stability/TileSlot;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
