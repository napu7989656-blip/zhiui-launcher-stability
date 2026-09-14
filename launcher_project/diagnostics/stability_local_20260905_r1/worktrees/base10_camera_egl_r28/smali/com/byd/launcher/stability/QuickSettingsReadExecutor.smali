.class public final Lcom/byd/launcher/stability/QuickSettingsReadExecutor;
.super Ljava/lang/Object;
.source "QuickSettingsReadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;
    }
.end annotation


# static fields
.field private static final IDS:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final LOCK:Ljava/lang/Object;

.field private static final POOL:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->LOCK:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->IDS:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x8

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$1;

    invoke-direct {v8}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$1;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 12
    sget-object v0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->IDS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static cancelQueued(Ljava/lang/Object;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 55
    check-cast v2, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;

    .line 56
    invoke-static {v2}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->access$100(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    sget-object v3, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static execute(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 34
    :cond_0
    sget-object v1, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return v0

    .line 38
    :cond_1
    sget-object v2, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 39
    check-cast v3, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;

    .line 40
    invoke-static {v3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->access$100(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_2

    invoke-static {v3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->access$200(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-static {v3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->access$300(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_2

    sget-object v4, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 42
    :cond_3
    sget-object v2, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->POOL:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_4
    :try_start_1
    new-instance v3, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 47
    :catch_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
