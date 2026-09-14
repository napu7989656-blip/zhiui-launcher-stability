.class public final Lcom/byd/launcher/stability/ReadAfterAction;
.super Ljava/lang/Object;
.source "ReadAfterAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/ReadAfterAction$Token;
    }
.end annotation


# instance fields
.field private current:Lcom/byd/launcher/stability/ReadAfterAction$Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/byd/launcher/stability/ReadAfterAction;)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/byd/launcher/stability/ReadAfterAction;->current:Lcom/byd/launcher/stability/ReadAfterAction$Token;

    return-object p0
.end method

.method static synthetic access$202(Lcom/byd/launcher/stability/ReadAfterAction;Lcom/byd/launcher/stability/ReadAfterAction$Token;)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byd/launcher/stability/ReadAfterAction;->current:Lcom/byd/launcher/stability/ReadAfterAction$Token;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized begin(J)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    new-instance v0, Lcom/byd/launcher/stability/ReadAfterAction$Token;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/byd/launcher/stability/ReadAfterAction$Token;-><init>(Lcom/byd/launcher/stability/ReadAfterAction;JLcom/byd/launcher/stability/ReadAfterAction$1;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/ReadAfterAction;->current:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blocked(J)Z
    .locals 4

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/ReadAfterAction;->current:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 14
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/byd/launcher/stability/ReadAfterAction$Token;->access$100(Lcom/byd/launcher/stability/ReadAfterAction$Token;)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3a98

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 15
    :try_start_2
    iput-object p1, p0, Lcom/byd/launcher/stability/ReadAfterAction;->current:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 17
    :try_start_0
    iput-object v0, p0, Lcom/byd/launcher/stability/ReadAfterAction;->current:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
