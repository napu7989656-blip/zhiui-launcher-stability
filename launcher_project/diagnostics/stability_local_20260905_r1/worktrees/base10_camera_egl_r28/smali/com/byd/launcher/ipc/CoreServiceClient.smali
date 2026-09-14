.class public Lcom/byd/launcher/ipc/CoreServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_TIMEOUT_MS:J = 0x3a98L

.field private static final HEARTBEAT_INTERVAL_MS:J = 0x61a8L

.field private static final HOST:Ljava/lang/String; = "127.0.0.1"

.field private static final PORT:I = 0x22b8

.field private static final RECONNECT_INITIAL_MS:J = 0xbb8L

.field private static final RECONNECT_MAX_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "CoreServiceClient"

.field private static volatile sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;


# instance fields
.field private volatile mAutoReconnect:Z

.field private mCallbackCleanupFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mDestroyed:Z

.field private mHeartbeatFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byd/launcher/ipc/ICoreServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPendingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Ljava/io/BufferedReader;

.field private mReconnectDelay:J

.field private final mRequestIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSocket:Ljava/net/Socket;

.field private final mWriteLock:Ljava/lang/Object;

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriteLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mRequestIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReconnectDelay:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    iput-boolean v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mDestroyed:Z

    return-void
.end method

.method private doDisconnect()V
    .locals 6

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->stopHeartbeat()V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->stopCallbackCleanup()V

    :try_start_0
    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReader:Ljava/io/BufferedReader;

    iput-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    iput-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;

    iget-object v3, v3, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->callback:Lcom/byd/launcher/ipc/ICoreServiceCallback;

    iget-object v4, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/byd/launcher/ipc/ˋ;

    invoke-direct {v5, v1, v3}, Lcom/byd/launcher/ipc/ˋ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    if-eqz v0, :cond_4

    const-string v0, "CoreServiceClient"

    const-string v2, "\u5df2\u65ad\u5f00\u4e0e CoreService \u7684\u8fde\u63a5"

    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->notifyConnectionChanged(Z)V

    :cond_4
    return-void
.end method

.method private declared-synchronized ensureScheduler()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lo/d1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo/d1;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;
    .locals 2

    sget-object v0, Lcom/byd/launcher/ipc/CoreServiceClient;->sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/byd/launcher/ipc/CoreServiceClient;->sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/byd/launcher/ipc/CoreServiceClient;

    invoke-direct {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;-><init>()V

    sput-object v1, Lcom/byd/launcher/ipc/CoreServiceClient;->sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/byd/launcher/ipc/CoreServiceClient;->sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;

    return-object v0
.end method

.method private handleMessage(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "CoreServiceClient"

    .line 2
    .line 3
    const-string v1, "\u672a\u77e5\u6d88\u606f\u7c7b\u578b: "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "type"

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v3, "response"

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->handleResponse(Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v3, "notification"

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-direct {p0, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->handleNotification(Lorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "\u89e3\u6790\u6d88\u606f JSON \u5931\u8d25: "

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1, v0}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method private handleNotification(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "event"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lo/Ϋ;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v0, v3, p1}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleResponse(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "requestId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "command"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;

    :cond_0
    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;

    iget-object v6, v6, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->command:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, v5, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->callback:Lcom/byd/launcher/ipc/ICoreServiceCallback;

    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lo/ϕ;

    invoke-direct {v4, v2, v0, v3, p1}, Lo/ϕ;-><init>(ZLcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private synthetic lambda$connect$0()V
    .locals 8

    const-string v0, "CoreServiceClient"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "\u6b63\u5728\u8fde\u63a5 CoreService 127.0.0.1:8888..."

    invoke-static {v0, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    const/high16 v5, 0x10000

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSendBufferSize(I)V

    new-instance v5, Ljava/net/InetSocketAddress;

    const-string v6, "127.0.0.1"

    const/16 v7, 0x22b8

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x2710

    invoke-virtual {v3, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    iput-object v3, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mSocket:Ljava/net/Socket;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReader:Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v5, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v5, 0xbb8

    iput-wide v5, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReconnectDelay:J

    const-string v5, "\u5df2\u8fde\u63a5\u5230 CoreService"

    invoke-static {v0, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->notifyConnectionChanged(Z)V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->startHeartbeat()V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->startCallbackCleanup()V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->startReadLoop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CoreService connection failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8fde\u63a5 CoreService \u5931\u8d25: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    iput-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mSocket:Ljava/net/Socket;

    iput-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReader:Ljava/io/BufferedReader;

    iput-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->scheduleReconnect()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$doDisconnect$1(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 1

    :try_start_0
    const-string v0, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    invoke-interface {p0, v0}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static synthetic lambda$ensureScheduler$15(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CoreServiceClient-IO"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private synthetic lambda$handleNotification$10(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byd/launcher/ipc/ICoreServiceListener;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/byd/launcher/ipc/ICoreServiceListener;->onNotification(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "\u901a\u77e5\u76d1\u542c\u5668\u5f02\u5e38: "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "CoreServiceClient"

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private static synthetic lambda$handleResponse$9(ZLcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1, p2}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    if-eqz p3, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    const-string p3, "\u672a\u77e5\u9519\u8bef"

    .line 19
    .line 20
    :goto_1
    invoke-interface {p1, p3}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p2, "\u56de\u8c03\u5f02\u5e38: "

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "CoreServiceClient"

    .line 33
    .line 34
    invoke-static {p0, p1, p2}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_2
    return-void
.end method

.method private synthetic lambda$notifyConnectionChanged$16(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byd/launcher/ipc/ICoreServiceListener;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v1, p1}, Lcom/byd/launcher/ipc/ICoreServiceListener;->onConnectionChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "\u8fde\u63a5\u72b6\u6001\u76d1\u542c\u5668\u5f02\u5e38: "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "CoreServiceClient"

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private synthetic lambda$scheduleReconnect$14()V
    .locals 4

    iget-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReconnectDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReconnectDelay:J

    invoke-virtual {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->connect()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$sendCommand$2(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 1

    const-string v0, "\u672a\u8fde\u63a5\u5230 CoreService"

    invoke-interface {p0, v0}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendCommand$3(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 1

    const-string v0, "\u8bf7\u6c42\u961f\u5217\u5df2\u6ee1"

    invoke-interface {p0, v0}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendCommand$4(Lcom/byd/launcher/ipc/ICoreServiceCallback;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendCommand$5(Ljava/lang/String;Ljava/lang/String;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 4

    const-string v0, "\u53d1\u9001\u547d\u4ee4\u5931\u8d25: "

    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriteLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "CoreServiceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lo/ag;

    const/16 v2, 0xd

    invoke-direct {v0, v2, p3, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$sendCommand$6(Lcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6784\u9020\u547d\u4ee4\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendRaw$7(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$startCallbackCleanup$12(Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->callback:Lcom/byd/launcher/ipc/ICoreServiceCallback;

    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-interface {p0, v0}, Lcom/byd/launcher/ipc/ICoreServiceCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startCallbackCleanup$13()V
    .locals 5

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;

    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u56de\u8c03\u8d85\u65f6: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->command:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CoreServiceClient"

    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/byd/launcher/ipc/ˋ;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2}, Lcom/byd/launcher/ipc/ˋ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$startHeartbeat$11()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "command"

    .line 15
    .line 16
    const-string v2, "heartbeat"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriteLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 38
    .line 39
    .line 40
    :cond_0
    monitor-exit v1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "CoreServiceClient"

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "\u5fc3\u8df3\u53d1\u9001\u5931\u8d25: "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v2, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$startReadLoop$8()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->handleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->doDisconnect()V

    iget-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->scheduleReconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CoreServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->doDisconnect()V

    iget-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->doDisconnect()V

    iget-boolean v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->scheduleReconnect()V

    :cond_3
    throw v0
.end method

.method private notifyConnectionChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lo/x7;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleReconnect()V
    .locals 5

    iget-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReconnectDelay:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5c06\u5728 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms \u540e\u91cd\u8fde..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoreServiceClient"

    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->ensureScheduler()V

    iget-object v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lo/h1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lo/h1;-><init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startCallbackCleanup()V
    .locals 7

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->stopCallbackCleanup()V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/h1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lo/h1;-><init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x7530

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mCallbackCleanupFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startHeartbeat()V
    .locals 7

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->stopHeartbeat()V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/h1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/h1;-><init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V

    const-wide/16 v2, 0x61a8

    const-wide/16 v4, 0x61a8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mHeartbeatFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startReadLoop()V
    .locals 3

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/h1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo/h1;-><init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopCallbackCleanup()V
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mCallbackCleanupFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mCallbackCleanupFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private stopHeartbeat()V
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mHeartbeatFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mHeartbeatFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static synthetic ʹ(Lcom/byd/launcher/ipc/ICoreServiceCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$sendCommand$4(Lcom/byd/launcher/ipc/ICoreServiceCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic ˋ(Lcom/byd/launcher/ipc/CoreServiceClient;Ljava/lang/String;Ljava/lang/String;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$sendCommand$5(Ljava/lang/String;Ljava/lang/String;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    return-void
.end method

.method public static synthetic ˏ(Lcom/byd/launcher/ipc/CoreServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$startHeartbeat$11()V

    return-void
.end method

.method public static synthetic Ͱ(Lcom/byd/launcher/ipc/CoreServiceClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$sendRaw$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ͱ(Lcom/byd/launcher/ipc/CoreServiceClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$notifyConnectionChanged$16(Z)V

    return-void
.end method

.method public static synthetic Ͳ(Lcom/byd/launcher/ipc/CoreServiceClient;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$handleNotification$10(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic ͳ(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$sendCommand$3(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    return-void
.end method

.method public static synthetic Ͷ(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$sendCommand$2(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    return-void
.end method

.method public static synthetic ͷ(Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$startCallbackCleanup$12(Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;)V

    return-void
.end method

.method public static synthetic ͺ(ZLcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$handleResponse$9(ZLcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ͻ(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$ensureScheduler$15(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ͼ(Lcom/byd/launcher/ipc/CoreServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->scheduleReconnect()V

    return-void
.end method

.method public static synthetic ͽ(Lcom/byd/launcher/ipc/CoreServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$startCallbackCleanup$13()V

    return-void
.end method

.method public static synthetic Ά(Lcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$sendCommand$6(Lcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONException;)V

    return-void
.end method

.method public static synthetic Έ(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$doDisconnect$1(Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    return-void
.end method

.method public static synthetic Ή(Lcom/byd/launcher/ipc/CoreServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$connect$0()V

    return-void
.end method

.method public static synthetic Ί(Lcom/byd/launcher/ipc/CoreServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$startReadLoop$8()V

    return-void
.end method

.method public static synthetic Ό(Lcom/byd/launcher/ipc/CoreServiceClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->lambda$scheduleReconnect$14()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/byd/launcher/ipc/ICoreServiceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 3

    iget-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->ensureScheduler()V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/h1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lo/h1;-><init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->disconnect()V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    const-class v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/byd/launcher/ipc/CoreServiceClient;->sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-ne v2, p0, :cond_1

    sput-object v1, Lcom/byd/launcher/ipc/CoreServiceClient;->sInstance:Lcom/byd/launcher/ipc/CoreServiceClient;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->doDisconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/byd/launcher/ipc/ICoreServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAndReconnect()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mAutoReconnect:Z

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->doDisconnect()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mReconnectDelay:J

    invoke-virtual {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->connect()V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    .locals 11

    const-string v0, "req_"

    iget-boolean v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mDestroyed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "CoreServiceClient"

    if-nez v1, :cond_2

    const-string p2, "\u672a\u8fde\u63a5\uff0c\u65e0\u6cd5\u53d1\u9001\u547d\u4ee4: "

    .line 2
    invoke-static {p2, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/byd/launcher/ipc/ˋ;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p3}, Lcom/byd/launcher/ipc/ˋ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mRequestIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requestId"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/16 v1, 0x40

    if-lt p2, v1, :cond_4

    iget-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/byd/launcher/ipc/ˋ;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p3}, Lcom/byd/launcher/ipc/ˋ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object p2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mPendingCallbacks:Ljava/util/Map;

    new-instance v1, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;

    invoke-direct {v1, p3, p1}, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;-><init>(Lcom/byd/launcher/ipc/ICoreServiceCallback;Ljava/lang/String;)V

    invoke-interface {p2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->ensureScheduler()V

    iget-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lo/sj;

    const/4 v10, 0x1

    move-object v5, p2

    move-object v6, p0

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lo/sj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u6784\u9020\u547d\u4ee4 JSON \u5931\u8d25: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2, v2}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 5
    iget-object p2, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lo/ag;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p3, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public sendRaw(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/byd/launcher/ipc/CoreServiceClient;->ensureScheduler()V

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/ag;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendRawDirect(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CoreServiceClient"

    const-string v0, "sendRawDirect: PrintWriter error detected, triggering reconnect"

    invoke-static {p1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lo/h1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lo/h1;-><init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
