.class public final Lo/g1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public ʹ:J

.field public final Ͱ:Ljava/net/Socket;

.field public final ͱ:Ljava/lang/String;

.field public Ͳ:Ljava/io/BufferedReader;

.field public ͳ:Ljava/io/PrintWriter;

.field public final Ͷ:Ljava/lang/Object;

.field public volatile ͷ:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/g1;->Ͷ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/g1;->ͷ:Z

    iput-object p1, p0, Lo/g1;->Ͱ:Ljava/net/Socket;

    iput-object p2, p0, Lo/g1;->ͱ:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/g1;->ʹ:J

    const p2, 0x15f90

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lo/g1;->Ͳ:Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object p2, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Client handler initialization error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoreService"

    invoke-static {p2, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/g1;->ˋ()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/g1;->Ͳ:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/g1;->ˋ()V

    return-void

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lo/g1;->ͷ:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/g1;->Ͳ:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_2
    iget-object v1, p0, Lo/g1;->Ͷ:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lo/g1;->ʹ:J

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "{\"command\":\"injectTouch\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "{\"command\":\"touch\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/byd/launcher/CoreService;->Δ:Lo/e1;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/g1;->ͱ:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/byd/launcher/CoreService;->Δ:Lo/e1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/byd/launcher/CoreService;->ˋ(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catch_0
    iget-object v0, p0, Lo/g1;->Ͷ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lo/g1;->ʹ:J

    sub-long/2addr v1, v3

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-wide/32 v3, 0x1d4c0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    :try_start_8
    const-string v0, "CoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/g1;->ͱ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " timed out (no data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_b
    const-string v1, "CoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client communication error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lo/g1;->ˋ()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lo/g1;->ˋ()V

    throw v0
.end method

.method public final ˋ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/g1;->Ͷ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lo/g1;->ˏ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ˏ()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/g1;->ͷ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lo/g1;->ͷ:Z

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iget-object v1, p0, Lo/g1;->ͱ:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lo/g1;->Ͳ:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_1
    :try_start_2
    iget-object v0, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 28
    .line 29
    .line 30
    :catch_1
    :cond_2
    :try_start_4
    iget-object v0, p0, Lo/g1;->Ͱ:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 35
    .line 36
    .line 37
    :catch_2
    :cond_3
    const/4 v0, 0x0

    .line 38
    :try_start_6
    iput-object v0, p0, Lo/g1;->Ͳ:Ljava/io/BufferedReader;

    .line 39
    .line 40
    iput-object v0, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_3
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Cleanup error: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "CoreService"

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final Ͱ(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "PrintWriter error for client "

    const-string v1, "Error sending to client "

    iget-object v2, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lo/g1;->Ͱ:Ljava/net/Socket;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lo/g1;->Ͷ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/g1;->Ͱ:Ljava/net/Socket;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lo/g1;->ͳ:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->checkError()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/g1;->ͱ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/g1;->ˏ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "CoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/g1;->ͱ:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/g1;->ˏ()V

    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    :goto_0
    monitor-exit v2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
