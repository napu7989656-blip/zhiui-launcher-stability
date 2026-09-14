.class public final Lcom/byd/launcher/stability/LatestVisualWork;
.super Ljava/lang/Object;
.source "LatestVisualWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/LatestVisualWork$Host;,
        Lcom/byd/launcher/stability/LatestVisualWork$Delivery;,
        Lcom/byd/launcher/stability/LatestVisualWork$Request;,
        Lcom/byd/launcher/stability/LatestVisualWork$Job;,
        Lcom/byd/launcher/stability/LatestVisualWork$Result;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final POOL:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private closed:Z

.field private current:Lcom/byd/launcher/stability/LatestVisualWork$Request;

.field private final host:Lcom/byd/launcher/stability/LatestVisualWork$Host;

.field private pending:Lcom/byd/launcher/stability/LatestVisualWork$Delivery;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->LOCK:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/byd/launcher/stability/LatestVisualWork$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/byd/launcher/stability/LatestVisualWork$$ExternalSyntheticLambda0;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/byd/launcher/stability/LatestVisualWork$Host;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->host:Lcom/byd/launcher/stability/LatestVisualWork$Host;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 12
    sget-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/byd/launcher/stability/LatestVisualWork;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/byd/launcher/stability/LatestVisualWork;->closed:Z

    return p0
.end method

.method static synthetic access$400(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Request;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/byd/launcher/stability/LatestVisualWork;->current:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    return-object p0
.end method

.method static synthetic access$402(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$Request;)Lcom/byd/launcher/stability/LatestVisualWork$Request;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->current:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 12
    sget-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/byd/launcher/stability/LatestVisualWork;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->clearPending()V

    return-void
.end method

.method static synthetic access$700(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Delivery;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/byd/launcher/stability/LatestVisualWork;->pending:Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    return-object p0
.end method

.method static synthetic access$702(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$Delivery;)Lcom/byd/launcher/stability/LatestVisualWork$Delivery;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->pending:Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    return-object p1
.end method

.method static synthetic access$800(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Host;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/byd/launcher/stability/LatestVisualWork;->host:Lcom/byd/launcher/stability/LatestVisualWork$Host;

    return-object p0
.end method

.method static synthetic access$900(Lcom/byd/launcher/stability/LatestVisualWork;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/LatestVisualWork;->report(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method private cancelQueued()V
    .locals 3

    .line 50
    sget-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 51
    check-cast v1, Lcom/byd/launcher/stability/LatestVisualWork$Job;

    .line 52
    iget-object v2, v1, Lcom/byd/launcher/stability/LatestVisualWork$Job;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-static {v2}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->access$100(Lcom/byd/launcher/stability/LatestVisualWork$Request;)Lcom/byd/launcher/stability/LatestVisualWork;

    move-result-object v2

    if-ne v2, p0, :cond_0

    sget-object v2, Lcom/byd/launcher/stability/LatestVisualWork;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearPending()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/byd/launcher/stability/LatestVisualWork;->pending:Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->pending:Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->host:Lcom/byd/launcher/stability/LatestVisualWork$Host;

    invoke-interface {v1, v0}, Lcom/byd/launcher/stability/LatestVisualWork$Host;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/byd/launcher/stability/LatestVisualWork;->report(Ljava/lang/RuntimeException;)V

    .line 59
    :goto_0
    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestVisualWork$Delivery;->discard()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "LauncherVisual"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private report(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/LatestVisualWork;->host:Lcom/byd/launcher/stability/LatestVisualWork$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/LatestVisualWork$Host;->failed(Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public begin()Lcom/byd/launcher/stability/LatestVisualWork$Request;
    .locals 3

    .line 37
    sget-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->cancelQueued()V

    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->clearPending()V

    .line 39
    iget-boolean v1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->closed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-direct {v1, p0, v2}, Lcom/byd/launcher/stability/LatestVisualWork$Request;-><init>(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$1;)V

    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/byd/launcher/stability/LatestVisualWork;->current:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    .line 40
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 47
    sget-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->closed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->current:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->cancelQueued()V

    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->clearPending()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidate()V
    .locals 2

    .line 44
    sget-object v0, Lcom/byd/launcher/stability/LatestVisualWork;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork;->current:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->cancelQueued()V

    invoke-direct {p0}, Lcom/byd/launcher/stability/LatestVisualWork;->clearPending()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
