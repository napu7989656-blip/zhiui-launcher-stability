.class public final Lcom/byd/launcher/stability/TileSlot$Ticket;
.super Ljava/lang/Object;
.source "TileSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/TileSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ticket"
.end annotation


# instance fields
.field private final slot:Lcom/byd/launcher/stability/TileSlot;


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/TileSlot;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/TileSlot;Lcom/byd/launcher/stability/TileSlot$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/TileSlot$Ticket;-><init>(Lcom/byd/launcher/stability/TileSlot;)V

    return-void
.end method

.method static synthetic access$400(Lcom/byd/launcher/stability/TileSlot$Ticket;)Lcom/byd/launcher/stability/TileSlot;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    return-object p0
.end method


# virtual methods
.method public isCurrent()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot;->access$100(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Ticket;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public post(Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)Z
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot;->access$100(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Ticket;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_3

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    invoke-static {v1}, Lcom/byd/launcher/stability/TileSlot;->access$200(Lcom/byd/launcher/stability/TileSlot;)V

    .line 29
    new-instance v1, Lcom/byd/launcher/stability/TileSlot$Pending;

    invoke-direct {v1, p0, p1, p2}, Lcom/byd/launcher/stability/TileSlot$Pending;-><init>(Lcom/byd/launcher/stability/TileSlot$Ticket;Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    invoke-static {p2, v1}, Lcom/byd/launcher/stability/TileSlot;->access$302(Lcom/byd/launcher/stability/TileSlot;Lcom/byd/launcher/stability/TileSlot$Pending;)Lcom/byd/launcher/stability/TileSlot$Pending;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-interface {p1, v1}, Lcom/byd/launcher/stability/TileSlot$Queue;->post(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 32
    invoke-interface {p1, p2}, Lcom/byd/launcher/stability/TileSlot$Queue;->failed(Ljava/lang/RuntimeException;)V

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    invoke-static {p1}, Lcom/byd/launcher/stability/TileSlot;->access$300(Lcom/byd/launcher/stability/TileSlot;)Lcom/byd/launcher/stability/TileSlot$Pending;

    move-result-object p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/byd/launcher/stability/TileSlot$Ticket;->slot:Lcom/byd/launcher/stability/TileSlot;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/byd/launcher/stability/TileSlot;->access$302(Lcom/byd/launcher/stability/TileSlot;Lcom/byd/launcher/stability/TileSlot$Pending;)Lcom/byd/launcher/stability/TileSlot$Pending;

    .line 34
    :cond_2
    monitor-exit v0

    return v2

    .line 27
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
