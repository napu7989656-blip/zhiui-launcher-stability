.class public final Lcom/byd/launcher/stability/InstrumentReads;
.super Ljava/lang/Object;
.source "InstrumentReads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/InstrumentReads$Request;,
        Lcom/byd/launcher/stability/InstrumentReads$Host;
    }
.end annotation


# instance fields
.field private cachedResult:Ljava/lang/Runnable;

.field private epoch:Ljava/lang/Object;

.field private final host:Lcom/byd/launcher/stability/InstrumentReads$Host;

.field private latest:Lcom/byd/launcher/stability/InstrumentReads$Request;

.field private result:Ljava/lang/Runnable;

.field private retry:Ljava/lang/Runnable;

.field private retryCount:I

.field private tracking:Z


# direct methods
.method public constructor <init>(Lcom/byd/launcher/stability/InstrumentReads$Host;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->epoch:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/byd/launcher/stability/InstrumentReads;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/byd/launcher/stability/InstrumentReads;->cancelRetry()V

    return-void
.end method

.method static synthetic access$102(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/byd/launcher/stability/InstrumentReads;)I
    .locals 0

    .line 4
    iget p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    return p0
.end method

.method static synthetic access$1102(Lcom/byd/launcher/stability/InstrumentReads;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/InstrumentReads;->scheduleRetry(Lcom/byd/launcher/stability/InstrumentReads$Request;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/byd/launcher/stability/InstrumentReads;->publish(Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->epoch:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/byd/launcher/stability/InstrumentReads;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->tracking:Z

    return p0
.end method

.method static synthetic access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    return-object p0
.end method

.method static synthetic access$700(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/InstrumentReads;->current(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z

    move-result p0

    return p0
.end method

.method private cancelRetry()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/byd/launcher/stability/InstrumentReads;->remove(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    iget v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->retryState(IZ)V

    return-void
.end method

.method private current(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->latest:Lcom/byd/launcher/stability/InstrumentReads$Request;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->epoch:Ljava/lang/Object;

    invoke-static {p1}, Lcom/byd/launcher/stability/InstrumentReads$Request;->access$500(Lcom/byd/launcher/stability/InstrumentReads$Request;)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->tracking:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private post(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v0, p1, p2, p3}, Lcom/byd/launcher/stability/InstrumentReads$Host;->post(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 116
    iget-object p2, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {p2, p1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->failed(Ljava/lang/RuntimeException;)V

    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized publish(Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/InstrumentReads;->current(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/byd/launcher/stability/InstrumentReads$Request;->access$600(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 68
    invoke-static {p1, v0}, Lcom/byd/launcher/stability/InstrumentReads$Request;->access$602(Lcom/byd/launcher/stability/InstrumentReads$Request;Z)Z

    .line 69
    new-instance v0, Lcom/byd/launcher/stability/InstrumentReads$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byd/launcher/stability/InstrumentReads$2;-><init>(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    const-wide/16 p1, 0x0

    .line 85
    invoke-direct {p0, v0, p1, p2}, Lcom/byd/launcher/stability/InstrumentReads;->post(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private remove(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->failed(Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private scheduleRetry(Lcom/byd/launcher/stability/InstrumentReads$Request;)V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v0}, Lcom/byd/launcher/stability/InstrumentReads$Host;->delays()[I

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 91
    new-instance v3, Lcom/byd/launcher/stability/InstrumentReads$3;

    invoke-direct {v3, p0, p1}, Lcom/byd/launcher/stability/InstrumentReads$3;-><init>(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)V

    .line 101
    iput-object v3, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    .line 102
    iget p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    aget p1, v0, p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v4, p1

    invoke-direct {p0, v3, v4, v5}, Lcom/byd/launcher/stability/InstrumentReads;->post(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iput v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    iget-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {p1, v1, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->retryState(IZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retry:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    iget v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    invoke-interface {p1, v1, v0}, Lcom/byd/launcher/stability/InstrumentReads$Host;->retryState(IZ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized applyCached(Ljava/lang/Runnable;)V
    .locals 7

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/byd/launcher/stability/InstrumentReads;->remove(Ljava/lang/Runnable;)V

    .line 46
    iget-object v3, p0, Lcom/byd/launcher/stability/InstrumentReads;->epoch:Ljava/lang/Object;

    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v0}, Lcom/byd/launcher/stability/InstrumentReads$Host;->root()Ljava/lang/Object;

    move-result-object v5

    .line 47
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v0}, Lcom/byd/launcher/stability/InstrumentReads$Host;->cached()I

    move-result v4

    .line 48
    new-instance v0, Lcom/byd/launcher/stability/InstrumentReads$1;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/byd/launcher/stability/InstrumentReads$1;-><init>(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->post(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized begin(Z)Lcom/byd/launcher/stability/InstrumentReads$Request;
    .locals 7

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/byd/launcher/stability/InstrumentReads;->remove(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    .line 29
    invoke-direct {p0}, Lcom/byd/launcher/stability/InstrumentReads;->cancelRetry()V

    .line 30
    new-instance v0, Lcom/byd/launcher/stability/InstrumentReads$Request;

    iget-object v3, p0, Lcom/byd/launcher/stability/InstrumentReads;->epoch:Ljava/lang/Object;

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->root()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/byd/launcher/stability/InstrumentReads$Request;-><init>(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Object;Ljava/lang/Object;ZLcom/byd/launcher/stability/InstrumentReads$1;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->latest:Lcom/byd/launcher/stability/InstrumentReads$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invalidate()V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->epoch:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->latest:Lcom/byd/launcher/stability/InstrumentReads$Request;

    .line 35
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    invoke-direct {p0, v1}, Lcom/byd/launcher/stability/InstrumentReads;->remove(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->result:Ljava/lang/Runnable;

    .line 36
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;

    invoke-direct {p0, v1}, Lcom/byd/launcher/stability/InstrumentReads;->remove(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->cachedResult:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0}, Lcom/byd/launcher/stability/InstrumentReads;->cancelRetry()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->retryCount:I

    iput-boolean v0, p0, Lcom/byd/launcher/stability/InstrumentReads;->tracking:Z

    .line 38
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads;->host:Lcom/byd/launcher/stability/InstrumentReads$Host;

    invoke-interface {v1, v0, v0}, Lcom/byd/launcher/stability/InstrumentReads$Host;->retryState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tracking(Z)V
    .locals 0

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/byd/launcher/stability/InstrumentReads;->invalidate()V

    iput-boolean p1, p0, Lcom/byd/launcher/stability/InstrumentReads;->tracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
