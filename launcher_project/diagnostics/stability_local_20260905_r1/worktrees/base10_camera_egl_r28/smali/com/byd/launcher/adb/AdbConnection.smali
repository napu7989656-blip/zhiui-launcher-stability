.class public Lcom/byd/launcher/adb/AdbConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected connectAttempted:Z

.field protected connected:Z

.field protected connectionThread:Ljava/lang/Thread;

.field protected crypto:Lcom/byd/launcher/adb/AdbCrypto;

.field protected inputStream:Ljava/io/InputStream;

.field protected volatile isFine:Z

.field protected lastLocalId:I

.field protected maxData:I

.field protected msgManager:Lcom/byd/launcher/adb/ˏ;

.field protected outputStream:Ljava/io/OutputStream;

.field protected sentSignature:Z

.field protected socket:Ljava/net/Socket;

.field protected volatile stopFlag:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->isFine:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->stopFlag:Z

    new-instance v1, Lcom/byd/launcher/adb/ˏ;

    invoke-direct {v1, p0}, Lcom/byd/launcher/adb/ˏ;-><init>(Lcom/byd/launcher/adb/AdbConnection;)V

    iput-object v1, p0, Lcom/byd/launcher/adb/AdbConnection;->msgManager:Lcom/byd/launcher/adb/ˏ;

    iput v0, p0, Lcom/byd/launcher/adb/AdbConnection;->lastLocalId:I

    invoke-direct {p0}, Lcom/byd/launcher/adb/AdbConnection;->createConnectionThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectionThread:Ljava/lang/Thread;

    return-void
.end method

.method private cleanupStreams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->msgManager:Lcom/byd/launcher/adb/ˏ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byd/launcher/adb/ˏ;->ˋ:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/byd/launcher/adb/AdbStream;

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static create(Ljava/net/Socket;Lcom/byd/launcher/adb/AdbCrypto;)Lcom/byd/launcher/adb/AdbConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/byd/launcher/adb/AdbConnection;

    invoke-direct {v0}, Lcom/byd/launcher/adb/AdbConnection;-><init>()V

    iput-object p1, v0, Lcom/byd/launcher/adb/AdbConnection;->crypto:Lcom/byd/launcher/adb/AdbCrypto;

    iput-object p0, v0, Lcom/byd/launcher/adb/AdbConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/byd/launcher/adb/AdbConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v1, 0x4000

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Ljava/net/Socket;->setPerformancePreferences(III)V

    return-object v0
.end method

.method private createConnectionThread()Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/byd/launcher/adb/ˋ;

    invoke-direct {v1, p0, p0}, Lcom/byd/launcher/adb/ˋ;-><init>(Lcom/byd/launcher/adb/AdbConnection;Lcom/byd/launcher/adb/AdbConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static bridge synthetic ˋ(Lcom/byd/launcher/adb/AdbConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byd/launcher/adb/AdbConnection;->cleanupStreams()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectionThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/byd/launcher/adb/AdbConnection;->connect(J)V

    return-void
.end method

.method public connect(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 2
    sget-object v1, Lo/Ρ;->ˋ:[B

    const v2, 0x4e584e43    # 9.072519E8f

    const/high16 v3, 0x1000000

    const/16 v4, 0x1000

    invoke-static {v2, v1, v3, v4}, Lo/Ρ;->ˋ(I[BII)[B

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectAttempted:Z

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    :cond_0
    iget-boolean p1, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectAttempted:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/byd/launcher/adb/AdbConnection;->maxData:I

    return v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connect() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->isFine:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connectAttempted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;)Lcom/byd/launcher/adb/AdbStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byd/launcher/adb/AdbConnection;->lastLocalId:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/byd/launcher/adb/AdbConnection;->lastLocalId:I

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/byd/launcher/adb/AdbConnection;->connectAttempted:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean v1, p0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 30
    .line 31
    const-string v0, "Connection failed"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_0
    new-instance v1, Lcom/byd/launcher/adb/AdbStream;

    .line 41
    .line 42
    invoke-direct {v1, p0, v0}, Lcom/byd/launcher/adb/AdbStream;-><init>(Lcom/byd/launcher/adb/AdbConnection;I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/byd/launcher/adb/AdbConnection;->msgManager:Lcom/byd/launcher/adb/ˏ;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/byd/launcher/adb/ˏ;->ˋ:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 57
    .line 58
    sget-object v3, Lo/Ρ;->ˋ:[B

    .line 59
    .line 60
    const-string v3, "UTF-8"

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    array-length v3, p1

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    const v4, 0x4e45504f    # 8.2759366E8f

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v4, v3, v0, p1}, Lo/Ρ;->ˋ(I[BII)[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 97
    .line 98
    .line 99
    monitor-enter v1

    .line 100
    const-wide/16 v2, 0x1388

    .line 101
    .line 102
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 103
    .line 104
    .line 105
    monitor-exit v1

    .line 106
    return-object v1

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    throw p1

    .line 110
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v0, "connect() must be called first"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public declared-synchronized setFine(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/byd/launcher/adb/AdbConnection;->isFine:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
