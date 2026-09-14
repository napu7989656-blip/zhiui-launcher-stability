.class public final Lcom/byd/launcher/stability/LatestVisualWork$Request;
.super Ljava/lang/Object;
.source "LatestVisualWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/LatestVisualWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private final owner:Lcom/byd/launcher/stability/LatestVisualWork;

.field private started:Z


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/LatestVisualWork;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/LatestVisualWork$Request;-><init>(Lcom/byd/launcher/stability/LatestVisualWork;)V

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/LatestVisualWork$Request;)Lcom/byd/launcher/stability/LatestVisualWork;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    return-object p0
.end method


# virtual methods
.method public current()Z
    .locals 2

    .line 71
    invoke-static {}, Lcom/byd/launcher/stability/LatestVisualWork;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {v1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$300(Lcom/byd/launcher/stability/LatestVisualWork;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {v1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$400(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Request;

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

.method public execute(Ljava/lang/Runnable;)Z
    .locals 6

    .line 74
    invoke-static {}, Lcom/byd/launcher/stability/LatestVisualWork;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 75
    :try_start_0
    iget-boolean v2, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->started:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->current()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 76
    iput-boolean v2, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->started:Z

    .line 77
    invoke-static {}, Lcom/byd/launcher/stability/LatestVisualWork;->access$500()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 79
    check-cast v3, Lcom/byd/launcher/stability/LatestVisualWork$Job;

    iget-object v3, v3, Lcom/byd/launcher/stability/LatestVisualWork$Job;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    .line 80
    iget-object v5, v3, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {v5}, Lcom/byd/launcher/stability/LatestVisualWork;->access$400(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Request;

    move-result-object v5

    if-ne v5, v3, :cond_1

    iget-object v3, v3, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {v3, v4}, Lcom/byd/launcher/stability/LatestVisualWork;->access$402(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$Request;)Lcom/byd/launcher/stability/LatestVisualWork$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/byd/launcher/stability/LatestVisualWork;->access$500()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v5, Lcom/byd/launcher/stability/LatestVisualWork$Job;

    invoke-direct {v5, p0, p1}, Lcom/byd/launcher/stability/LatestVisualWork$Job;-><init>(Lcom/byd/launcher/stability/LatestVisualWork$Request;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 84
    :catch_0
    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$400(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Request;

    move-result-object p1

    if-ne p1, p0, :cond_2

    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {p1, v4}, Lcom/byd/launcher/stability/LatestVisualWork;->access$402(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$Request;)Lcom/byd/launcher/stability/LatestVisualWork$Request;

    .line 85
    :cond_2
    monitor-exit v0

    return v1

    .line 75
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public post(Lcom/byd/launcher/stability/LatestVisualWork$Result;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    invoke-static {}, Lcom/byd/launcher/stability/LatestVisualWork;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    new-instance v2, Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    invoke-direct {v2, p0, p1}, Lcom/byd/launcher/stability/LatestVisualWork$Delivery;-><init>(Lcom/byd/launcher/stability/LatestVisualWork$Request;Lcom/byd/launcher/stability/LatestVisualWork$Result;)V

    .line 93
    invoke-virtual {p0}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->current()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/byd/launcher/stability/LatestVisualWork$Delivery;->discard()V

    monitor-exit v1

    return v0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$600(Lcom/byd/launcher/stability/LatestVisualWork;)V

    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {p1, v2}, Lcom/byd/launcher/stability/LatestVisualWork;->access$702(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$Delivery;)Lcom/byd/launcher/stability/LatestVisualWork$Delivery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$800(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Host;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/byd/launcher/stability/LatestVisualWork$Host;->post(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    :try_start_2
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 96
    iget-object v3, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {v3, p1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$900(Lcom/byd/launcher/stability/LatestVisualWork;Ljava/lang/RuntimeException;)V

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/LatestVisualWork;->access$700(Lcom/byd/launcher/stability/LatestVisualWork;)Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    move-result-object p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Request;->owner:Lcom/byd/launcher/stability/LatestVisualWork;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/byd/launcher/stability/LatestVisualWork;->access$702(Lcom/byd/launcher/stability/LatestVisualWork;Lcom/byd/launcher/stability/LatestVisualWork$Delivery;)Lcom/byd/launcher/stability/LatestVisualWork$Delivery;

    .line 98
    :cond_3
    invoke-virtual {v2}, Lcom/byd/launcher/stability/LatestVisualWork$Delivery;->discard()V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
