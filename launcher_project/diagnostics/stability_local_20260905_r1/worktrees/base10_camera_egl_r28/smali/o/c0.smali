.class public abstract Lo/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ʹ:Z

.field public static ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static volatile ˏ:Lcom/byd/launcher/adb/AdbConnection;

.field public static final Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public static volatile ͱ:I

.field public static final Ͳ:[I

.field public static ͳ:Landroid/content/Context;

.field public static volatile Ͷ:J

.field public static volatile ͷ:Ljava/lang/String;

.field public static ͺ:Ljava/util/concurrent/ScheduledExecutorService;

.field public static ͻ:Z

.field public static ͼ:Ljava/lang/Runnable;

.field public static volatile ͽ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lo/d1;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Lo/d1;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v9, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/16 v0, 0x15b3

    sput v0, Lo/c0;->ͱ:I

    const/16 v1, 0x13ad

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lo/c0;->Ͳ:[I

    const/4 v0, 0x0

    sput-boolean v0, Lo/c0;->ʹ:Z

    const-wide/16 v1, 0x0

    sput-wide v1, Lo/c0;->Ͷ:J

    const-string v1, ""

    sput-object v1, Lo/c0;->ͷ:Ljava/lang/String;

    sput-boolean v0, Lo/c0;->ͻ:Z

    sput v0, Lo/c0;->ͽ:I

    return-void
.end method

.method public static ensureConnection()Z
    .locals 4

    .line 1
    const-string v0, "CmdTools"

    .line 2
    .line 3
    sget-object v1, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lo/c0;->Ͳ()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    :try_start_0
    const-string v1, "echo 1"

    .line 13
    .line 14
    const/16 v2, 0xbb8

    .line 15
    .line 16
    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "1"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "ensureConnection: echo test failed: "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const-string v1, "ensureConnection: connection stale, force reconnecting"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    return v0
.end method

.method public static execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    # BASE-06: return before any UI wait, connection, or shell side effect.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->isWrite(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :stability_other_command
    const/4 v0, 0x0
    return-object v0
    :stability_other_command

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x1388

    const-string v1, "CmdTools"

    if-gt p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3b\u7ebf\u7a0b\u914d\u7f6e\u7684\u7b49\u5f85\u65f6\u95f4["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms]\u8fc7\u957f\uff0c\u4fee\u6539\u4e3a5000ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_1
    new-instance v0, Lo/a0;

    invoke-direct {v0, p0, p1}, Lo/a0;-><init>(Ljava/lang/String;I)V

    sget-object p0, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Catch java.util.concurrent.ExecutionException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Catch java.lang.InterruptedException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1, p0}, Lo/c0;->ˋ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized forceReconnect()Z
    .locals 6

    .line 1
    const-string v0, "Error closing connection during force reconnect: "

    const-class v1, Lo/c0;

    monitor-enter v1

    :try_start_0
    const-string v2, "CmdTools"

    const-string v3, "Force reconnecting ADB..."

    invoke-static {v2, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sput-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "CmdTools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    sput-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    throw v0

    :cond_0
    :goto_2
    sget-object v0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_1
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byd/launcher/adb/AdbStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :cond_2
    :try_start_6
    sget-object v0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-static {}, Lo/c0;->Ͳ()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lo/c0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lo/c0;->ͳ:Landroid/content/Context;

    const/4 p0, 0x1

    sput-boolean p0, Lo/c0;->ͻ:Z

    sget-boolean v1, Lo/c0;->ʹ:Z

    if-nez v1, :cond_0

    sput-boolean p0, Lo/c0;->ʹ:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lo/lII;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lo/lII;-><init>(I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 1
    sget-boolean v0, Lo/c0;->ͻ:Z

    return v0
.end method

.method public static ʹ(Ljava/nio/channels/FileLock;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "ADB file lock release failed: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "CmdTools"

    .line 23
    .line 24
    invoke-static {p0, v0, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public static ˋ(ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    # BASE-06: return before any UI wait, connection, or shell side effect.
    invoke-static/range {p1 .. p1}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->isWrite(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :stability_other_command
    const/4 v0, 0x0
    return-object v0
    :stability_other_command

    .line 1
    const-string v0, "Slow ADB stream creation: "

    .line 2
    .line 3
    const-string v1, "shell:"

    .line 4
    .line 5
    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbConnection;->isFine()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lo/c0;->ͱ()Z

    .line 18
    .line 19
    .line 20
    :cond_1
    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_12

    .line 24
    .line 25
    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbConnection;->isFine()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 40
    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v1}, Lcom/byd/launcher/adb/AdbConnection;->open(Ljava/lang/String;)Lcom/byd/launcher/adb/AdbStream;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->getLocalId()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "@shell:"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Lo/c0;->ͳ(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    sub-long/2addr v1, v4

    .line 94
    const-wide/16 v6, 0x1f4

    .line 95
    .line 96
    cmp-long v8, v1, v6

    .line 97
    .line 98
    if-lez v8, :cond_3

    .line 99
    .line 100
    const-string v8, "CmdTools"

    .line 101
    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "ms"

    .line 111
    .line 112
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v8, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    if-nez p0, :cond_5

    .line 123
    .line 124
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    monitor-exit v3

    .line 136
    goto :goto_3

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    throw v0

    .line 140
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    int-to-long v8, p0

    .line 145
    add-long/2addr v0, v8

    .line 146
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v8

    .line 157
    sub-long v8, v0, v8

    .line 158
    .line 159
    const-wide/16 v10, 0x0

    .line 160
    .line 161
    cmp-long v2, v8, v10

    .line 162
    .line 163
    if-gtz v2, :cond_6

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    :try_start_4
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_8

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->close()V

    .line 178
    .line 179
    .line 180
    :cond_8
    :goto_3
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->getReadQueue()Ljava/util/Queue;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_a

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, [B

    .line 204
    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    new-instance v8, Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->getLocalId()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, "@shell:->"

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lo/c0;->ͳ(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 253
    .line 254
    .line 255
    move-result-wide v8

    .line 256
    sub-long/2addr v8, v4

    .line 257
    cmp-long v0, v8, v6

    .line 258
    .line 259
    if-lez v0, :cond_b

    .line 260
    .line 261
    const-string v0, "CmdTools"

    .line 262
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v4, "Slow ADB command: "

    .line 269
    .line 270
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v4, " took "

    .line 277
    .line 278
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v4, "ms"

    .line 285
    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v0, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 300
    return-object p0

    .line 301
    :catchall_1
    move-exception v0

    .line 302
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 303
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 304
    :catch_0
    move-exception p0

    .line 305
    const-string p1, "CmdTools"

    .line 306
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v1, "Throw Exception: "

    .line 310
    .line 311
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {p1, v0, p0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    if-eqz v3, :cond_d

    .line 329
    .line 330
    :try_start_7
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    if-nez p0, :cond_c

    .line 335
    .line 336
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 337
    .line 338
    .line 339
    :catch_1
    :cond_c
    sget-object p0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 340
    .line 341
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :cond_d
    const-string p0, ""

    .line 345
    .line 346
    return-object p0

    .line 347
    :catch_2
    move-exception v0

    .line 348
    const-string v1, "CmdTools"

    .line 349
    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v4, "Throw IllegalStateException: "

    .line 353
    .line 354
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-static {v1, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    if-eqz v3, :cond_f

    .line 372
    .line 373
    :try_start_8
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_e

    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 380
    .line 381
    .line 382
    :catch_3
    :cond_e
    sget-object v0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 383
    .line 384
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    :cond_f
    sget-object v0, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 388
    .line 389
    if-eqz v0, :cond_10

    .line 390
    .line 391
    sget-object v0, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 392
    .line 393
    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1}, Lcom/byd/launcher/adb/AdbConnection;->setFine(Z)V

    .line 395
    .line 396
    .line 397
    :cond_10
    invoke-static {}, Lo/c0;->ͱ()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_11

    .line 402
    .line 403
    int-to-long v0, p0

    .line 404
    invoke-static {p1, v0, v1}, Lo/c0;->Ͷ(Ljava/lang/String;J)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    return-object p0

    .line 409
    :cond_11
    const-string p0, "CmdTools"

    .line 410
    .line 411
    const-string p1, "regenerateConnection failed"

    .line 412
    .line 413
    invoke-static {p0, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string p0, ""

    .line 417
    .line 418
    return-object p0

    .line 419
    :cond_12
    :goto_5
    const-string p0, "CmdTools"

    .line 420
    .line 421
    const-string p1, "_execAdbCmd: no valid connection"

    .line 422
    .line 423
    invoke-static {p0, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    return-object v3
.end method

.method public static ˏ()Ljava/nio/channels/FileLock;
    .locals 7

    .line 1
    const-string v0, "CmdTools"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "/sdcard/.adb_connection_lock"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 27
    .line 28
    const-string v3, "rw"

    .line 29
    .line 30
    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const-wide/16 v5, 0x3a98

    .line 42
    .line 43
    add-long/2addr v3, v5

    .line 44
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    cmp-long v5, v5, v3

    .line 49
    .line 50
    if-gez v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    return-object v5

    .line 59
    :cond_1
    const-wide/16 v5, 0x1f4

    .line 60
    .line 61
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v3, "ADB file lock timeout after 15000ms, concurrent ADB operations may interfere"

    .line 66
    .line 67
    invoke-static {v0, v3}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, "ADB file lock failed: "

    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :catch_2
    :goto_1
    const/4 v0, 0x0

    .line 89
    return-object v0
.end method

.method public static Ͱ(Ljava/lang/String;J)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "shell:"

    sget-object v1, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    if-nez v1, :cond_0

    const-string p0, "CmdTools"

    const-string p1, "connection is null"

    invoke-static {p0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/byd/launcher/adb/AdbConnection;->open(Ljava/lang/String;)Lcom/byd/launcher/adb/AdbStream;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->getLocalId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "@shell:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/c0;->ͳ(Ljava/lang/String;)V

    sget-object v0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-long/2addr v2, p1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V

    :cond_3
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->getReadQueue()Ljava/util/Queue;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->getLocalId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@shell:->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/c0;->ͳ(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_6
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p0

    :try_start_6
    const-string p1, "CmdTools"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execShellCmdWithTimeout exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_7
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_8
    return-object p0

    :catch_3
    move-exception v0

    :try_start_8
    const-string v2, "CmdTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalState?? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v0, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    if-eqz v0, :cond_9

    sget-object v0, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byd/launcher/adb/AdbConnection;->setFine(Z)V

    :cond_9
    invoke-static {}, Lo/c0;->ͱ()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0, p1, p2}, Lo/c0;->Ͷ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_b

    :try_start_9
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_a
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-object p0

    :cond_c
    :try_start_a
    const-string p0, ""
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_e

    :try_start_b
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    :cond_d
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_e
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_10

    :try_start_c
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :catch_6
    :cond_f
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_10
    throw p0
.end method

.method public static declared-synchronized ͱ()Z
    .locals 16

    .line 1
    const-string v0, "Catch java.io.IOException: "

    .line 2
    .line 3
    const-string v1, "Socket connected to port "

    .line 4
    .line 5
    const-string v2, "Socket connect to port "

    .line 6
    .line 7
    const-string v3, "\u629b\u51fa\u5f02\u5e38 "

    .line 8
    .line 9
    const-string v4, "Socket connecting to localhost:"

    .line 10
    .line 11
    const-string v5, "\u629b\u51fa\u5f02\u5e38 "

    .line 12
    .line 13
    const-string v6, "\u629b\u51fa\u5f02\u5e38 "

    .line 14
    .line 15
    const-string v7, "Throw IOException: "

    .line 16
    .line 17
    const-class v8, Lo/c0;

    .line 18
    .line 19
    monitor-enter v8

    .line 20
    :try_start_0
    sget-object v9, Lo/c0;->ͳ:Landroid/content/Context;

    .line 21
    .line 22
    if-eqz v9, :cond_6

    .line 23
    .line 24
    sget-object v9, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    if-eqz v9, :cond_0

    .line 28
    .line 29
    sget-object v9, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 30
    .line 31
    invoke-virtual {v9}, Lcom/byd/launcher/adb/AdbConnection;->isFine()Z

    .line 32
    .line 33
    .line 34
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    if-eqz v9, :cond_0

    .line 36
    .line 37
    monitor-exit v8

    .line 38
    return v10

    .line 39
    :cond_0
    :try_start_1
    sget-object v9, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    :try_start_2
    sget-object v11, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 45
    .line 46
    invoke-virtual {v11}, Lcom/byd/launcher/adb/AdbConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    :goto_0
    :try_start_3
    sput-object v9, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v11

    .line 55
    :try_start_4
    const-string v12, "CmdTools"

    .line 56
    .line 57
    new-instance v13, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v12, v7, v11}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    :try_start_5
    sput-object v9, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 78
    .line 79
    throw v0

    .line 80
    :cond_1
    :goto_2
    invoke-static {}, Lo/c0;->ˏ()Ljava/nio/channels/FileLock;

    .line 81
    .line 82
    .line 83
    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 84
    :try_start_6
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    const-wide v13, 0x407f400000000000L    # 500.0

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    mul-double/2addr v11, v13

    .line 94
    double-to-long v11, v11

    .line 95
    const-wide/16 v13, 0xc8

    .line 96
    .line 97
    add-long/2addr v11, v13

    .line 98
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 99
    .line 100
    .line 101
    new-instance v9, Lo/z;

    .line 102
    .line 103
    invoke-direct {v9}, Lo/z;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v11, Ljava/io/File;

    .line 107
    .line 108
    sget-object v12, Lo/c0;->ͳ:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    const-string v13, "privKey"

    .line 115
    .line 116
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v12, Ljava/io/File;

    .line 120
    .line 121
    sget-object v13, Lo/c0;->ͳ:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    const-string v14, "pubKey"

    .line 128
    .line 129
    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    const/4 v14, 0x0

    .line 137
    if-eqz v13, :cond_3

    .line 138
    .line 139
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 140
    .line 141
    .line 142
    move-result v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    if-nez v13, :cond_2

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_2
    :try_start_7
    invoke-static {v9, v11, v12}, Lcom/byd/launcher/adb/AdbCrypto;->loadAdbKeyPair(Lcom/byd/launcher/adb/AdbBase64;Ljava/io/File;Ljava/io/File;)Lcom/byd/launcher/adb/AdbCrypto;

    .line 147
    .line 148
    .line 149
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 150
    goto :goto_5

    .line 151
    :catch_1
    move-exception v6

    .line 152
    :try_start_8
    const-string v13, "CmdTools"

    .line 153
    .line 154
    new-instance v15, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-static {v13, v5, v6}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 171
    .line 172
    .line 173
    :try_start_9
    invoke-static {v9}, Lcom/byd/launcher/adb/AdbCrypto;->generateAdbKeyPair(Lcom/byd/launcher/adb/AdbBase64;)Lcom/byd/launcher/adb/AdbCrypto;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v11, v12}, Lcom/byd/launcher/adb/AdbCrypto;->saveAdbKeyPair(Ljava/io/File;Ljava/io/File;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 184
    .line 185
    .line 186
    move-object v3, v5

    .line 187
    goto :goto_5

    .line 188
    :catch_2
    move-exception v0

    .line 189
    goto :goto_3

    .line 190
    :catch_3
    move-exception v0

    .line 191
    :goto_3
    :try_start_a
    const-string v1, "CmdTools"

    .line 192
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v1, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 210
    .line 211
    .line 212
    :try_start_b
    invoke-static {v7}, Lo/c0;->ʹ(Ljava/nio/channels/FileLock;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 213
    .line 214
    .line 215
    monitor-exit v8

    .line 216
    return v14

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_3
    :goto_4
    :try_start_c
    invoke-static {v9}, Lcom/byd/launcher/adb/AdbCrypto;->generateAdbKeyPair(Lcom/byd/launcher/adb/AdbBase64;)Lcom/byd/launcher/adb/AdbCrypto;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v11, v12}, Lcom/byd/launcher/adb/AdbCrypto;->saveAdbKeyPair(Ljava/io/File;Ljava/io/File;)V
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 231
    .line 232
    .line 233
    :goto_5
    :try_start_d
    const-string v5, "CmdTools"

    .line 234
    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    sget v4, Lo/c0;->ͱ:I

    .line 241
    .line 242
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v4, " ..."

    .line 246
    .line 247
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v5, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 255
    .line 256
    .line 257
    :try_start_e
    new-instance v4, Ljava/net/Socket;

    .line 258
    .line 259
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v10}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 263
    .line 264
    .line 265
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 266
    .line 267
    const-string v6, "localhost"

    .line 268
    .line 269
    sget v9, Lo/c0;->ͱ:I

    .line 270
    .line 271
    invoke-direct {v5, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    const/16 v6, 0x1388

    .line 275
    .line 276
    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 277
    .line 278
    .line 279
    const/16 v5, 0x2710

    .line 280
    .line 281
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 282
    .line 283
    .line 284
    :try_start_f
    const-string v2, "CmdTools"

    .line 285
    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sget v1, Lo/c0;->ͱ:I

    .line 292
    .line 293
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v2, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 301
    .line 302
    .line 303
    :try_start_10
    invoke-static {v4, v3}, Lcom/byd/launcher/adb/AdbConnection;->create(Ljava/net/Socket;Lcom/byd/launcher/adb/AdbCrypto;)Lcom/byd/launcher/adb/AdbConnection;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v2, "CmdTools"

    .line 308
    .line 309
    const-string v3, "ADB connecting..."

    .line 310
    .line 311
    invoke-static {v2, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-wide/16 v2, 0x2710

    .line 315
    .line 316
    invoke-virtual {v1, v2, v3}, Lcom/byd/launcher/adb/AdbConnection;->connect(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 317
    .line 318
    .line 319
    :try_start_11
    sput-object v1, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 320
    .line 321
    const-string v0, "CmdTools"

    .line 322
    .line 323
    const-string v1, "ADB connected"

    .line 324
    .line 325
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 329
    .line 330
    if-nez v0, :cond_4

    .line 331
    .line 332
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    sput-object v0, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 337
    .line 338
    :cond_4
    sget-object v0, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 339
    .line 340
    new-instance v1, Lo/b0;

    .line 341
    .line 342
    invoke-direct {v1}, Lo/b0;-><init>()V

    .line 343
    .line 344
    .line 345
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 346
    .line 347
    const-wide/16 v3, 0x1e

    .line 348
    .line 349
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 350
    .line 351
    .line 352
    :try_start_12
    invoke-static {v7}, Lo/c0;->ʹ(Ljava/nio/channels/FileLock;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 353
    .line 354
    .line 355
    monitor-exit v8

    .line 356
    return v10

    .line 357
    :catch_4
    move-exception v1

    .line 358
    :try_start_13
    const-string v2, "CmdTools"

    .line 359
    .line 360
    const-string v3, "ADB connect failed"

    .line 361
    .line 362
    invoke-static {v2, v3, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    .line 366
    .line 367
    .line 368
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 369
    if-eqz v2, :cond_5

    .line 370
    .line 371
    :try_start_14
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :catch_5
    move-exception v2

    .line 376
    :try_start_15
    const-string v3, "CmdTools"

    .line 377
    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v3, v0, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 395
    .line 396
    .line 397
    :cond_5
    :goto_6
    :try_start_16
    invoke-static {v7}, Lo/c0;->ʹ(Ljava/nio/channels/FileLock;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 398
    .line 399
    .line 400
    monitor-exit v8

    .line 401
    return v14

    .line 402
    :catch_6
    move-exception v0

    .line 403
    :try_start_17
    const-string v1, "CmdTools"

    .line 404
    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    sget v2, Lo/c0;->ͱ:I

    .line 411
    .line 412
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v2, " failed: "

    .line 416
    .line 417
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-static {v1, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 432
    .line 433
    .line 434
    :try_start_18
    invoke-static {v7}, Lo/c0;->ʹ(Ljava/nio/channels/FileLock;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 435
    .line 436
    .line 437
    monitor-exit v8

    .line 438
    return v14

    .line 439
    :catch_7
    move-exception v0

    .line 440
    goto :goto_7

    .line 441
    :catch_8
    move-exception v0

    .line 442
    :goto_7
    :try_start_19
    const-string v1, "CmdTools"

    .line 443
    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {v1, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 461
    .line 462
    .line 463
    :try_start_1a
    invoke-static {v7}, Lo/c0;->ʹ(Ljava/nio/channels/FileLock;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 464
    .line 465
    .line 466
    monitor-exit v8

    .line 467
    return v14

    .line 468
    :goto_8
    :try_start_1b
    invoke-static {v7}, Lo/c0;->ʹ(Ljava/nio/channels/FileLock;)V

    .line 469
    .line 470
    .line 471
    throw v0

    .line 472
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 473
    .line 474
    const-string v1, "CmdTools\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528initialize()"

    .line 475
    .line 476
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 480
    :catchall_2
    move-exception v0

    .line 481
    monitor-exit v8

    .line 482
    throw v0
.end method

.method public static declared-synchronized Ͳ()Z
    .locals 9

    .line 1
    const-class v0, Lo/c0;

    monitor-enter v0

    :try_start_0
    const-string v1, "CmdTools"

    const-string v2, "Trying multi-port ADB connection..."

    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lo/c0;->Ͳ:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    sput v5, Lo/c0;->ͱ:I

    const-string v6, "CmdTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/c0;->ͱ()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "CmdTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    sput-object v1, Lo/c0;->ͷ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "\u6240\u6709\u7aef\u53e3\u8fde\u63a5\u5931\u8d25 (\u5c1d\u8bd5\u4e86: 5555, 5037)\u3002\u8bf7\u786e\u4fdd\u8bbe\u5907\u5df2\u5f00\u542fADB TCP\u6a21\u5f0f\u3002"

    sput-object v1, Lo/c0;->ͷ:Ljava/lang/String;

    const-string v1, "CmdTools"

    sget-object v2, Lo/c0;->ͷ:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ͳ(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "dumpsys media_session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    const-string v0, "byd_lnch_inst_ts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".launcher_inst"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".lnch_ts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".lnch_data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "policy_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pm uninstall com.byd.launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pm disable com.byd.launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pm enable com.android.launcher3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "set-home-activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v0, "ADB CMD"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "...[truncated]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Ͷ(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "shell:"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byd/launcher/adb/AdbConnection;->open(Ljava/lang/String;)Lcom/byd/launcher/adb/AdbStream;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->getLocalId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@shell:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/c0;->ͳ(Ljava/lang/String;)V

    sget-object p0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-nez p0, :cond_1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x1f4

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long p0, v4, p0

    cmp-long p2, p0, v2

    if-gtz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V

    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->getReadQueue()Ljava/util/Queue;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_5

    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->getLocalId()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "@shell:->"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/c0;->ͳ(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_7
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    :try_start_8
    const-string p1, "CmdTools"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retryExecAdb interrupted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-nez p0, :cond_8

    goto :goto_5

    :catch_2
    move-exception p0

    :try_start_a
    const-string p1, "CmdTools"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retryExecAdb IOException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p0

    if-nez p0, :cond_8

    :goto_5
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    :cond_8
    sget-object p0, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_9
    const-string p0, ""

    return-object p0

    :goto_6
    if-eqz v1, :cond_b

    :try_start_c
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :catch_4
    :cond_a
    sget-object p1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_b
    throw p0
.end method
