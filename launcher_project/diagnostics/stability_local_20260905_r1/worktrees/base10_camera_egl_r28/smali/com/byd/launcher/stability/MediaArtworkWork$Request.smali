.class public final Lcom/byd/launcher/stability/MediaArtworkWork$Request;
.super Ljava/lang/Object;
.source "MediaArtworkWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/MediaArtworkWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private final owner:Lcom/byd/launcher/stability/MediaArtworkWork;

.field private final session:Ljava/lang/Object;

.field private started:Z


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    iput-object p2, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->session:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/Object;Lcom/byd/launcher/stability/MediaArtworkWork$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;-><init>(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Lcom/byd/launcher/stability/MediaArtworkWork;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    return-object p0
.end method


# virtual methods
.method public current()Z
    .locals 4

    .line 81
    invoke-static {}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$300(Lcom/byd/launcher/stability/MediaArtworkWork;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$400(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$500(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Host;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->session:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/byd/launcher/stability/MediaArtworkWork$Host;->current(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    .line 84
    iget-object v3, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v3, v1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$600(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/RuntimeException;)V

    monitor-exit v0

    return v2

    .line 82
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)Z
    .locals 6

    .line 88
    invoke-static {}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 89
    :try_start_0
    iget-boolean v2, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->started:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->current()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 90
    iput-boolean v2, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->started:Z

    .line 91
    invoke-static {}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$700()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 93
    check-cast v3, Lcom/byd/launcher/stability/MediaArtworkWork$Job;

    iget-object v3, v3, Lcom/byd/launcher/stability/MediaArtworkWork$Job;->request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    .line 94
    iget-object v5, v3, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v5}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$400(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    move-result-object v5

    if-ne v5, v3, :cond_1

    .line 95
    iget-object v5, v3, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v5, v4}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$402(Lcom/byd/launcher/stability/MediaArtworkWork;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    .line 96
    iget-object v3, v3, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v3}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$800(Lcom/byd/launcher/stability/MediaArtworkWork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$700()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v5, Lcom/byd/launcher/stability/MediaArtworkWork$Job;

    invoke-direct {v5, p0, p1}, Lcom/byd/launcher/stability/MediaArtworkWork$Job;-><init>(Lcom/byd/launcher/stability/MediaArtworkWork$Request;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 101
    :catch_0
    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$400(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    move-result-object p1

    if-ne p1, p0, :cond_2

    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {p1, v4}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$402(Lcom/byd/launcher/stability/MediaArtworkWork;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    .line 102
    :cond_2
    monitor-exit v0

    return v1

    .line 89
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public post(Lcom/byd/launcher/stability/MediaArtworkWork$Result;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_0
    new-instance v2, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;

    invoke-direct {v2, p0, p1}, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;-><init>(Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkWork$Result;)V

    .line 110
    invoke-virtual {p0}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->current()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->discard()V

    monitor-exit v1

    return v0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$800(Lcom/byd/launcher/stability/MediaArtworkWork;)V

    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {p1, v2}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$902(Lcom/byd/launcher/stability/MediaArtworkWork;Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;)Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$500(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Host;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/byd/launcher/stability/MediaArtworkWork$Host;->post(Ljava/lang/Runnable;)Z

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

    .line 113
    iget-object v3, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {v3, p1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$600(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/RuntimeException;)V

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-static {p1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$900(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;

    move-result-object p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->owner:Lcom/byd/launcher/stability/MediaArtworkWork;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$902(Lcom/byd/launcher/stability/MediaArtworkWork;Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;)Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;

    .line 115
    :cond_3
    invoke-virtual {v2}, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->discard()V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
