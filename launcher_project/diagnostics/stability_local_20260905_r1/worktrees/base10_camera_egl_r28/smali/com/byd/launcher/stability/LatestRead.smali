.class public final Lcom/byd/launcher/stability/LatestRead;
.super Ljava/lang/Object;
.source "LatestRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/LatestRead$Ticket;
    }
.end annotation


# instance fields
.field private volatile current:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/stability/LatestRead;->current:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/LatestRead;)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/LatestRead;->current:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized invalidate()V
    .locals 1

    monitor-enter p0

    .line 13
    :try_start_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/stability/LatestRead;->current:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issue()Lcom/byd/launcher/stability/LatestRead$Ticket;
    .locals 3

    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/byd/launcher/stability/LatestRead;->current:Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/byd/launcher/stability/LatestRead$Ticket;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/byd/launcher/stability/LatestRead$Ticket;-><init>(Lcom/byd/launcher/stability/LatestRead;Ljava/lang/Object;Lcom/byd/launcher/stability/LatestRead$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
