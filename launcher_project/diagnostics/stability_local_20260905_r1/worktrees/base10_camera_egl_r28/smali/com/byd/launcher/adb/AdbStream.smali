.class public Lcom/byd/launcher/adb/AdbStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private adbConn:Lcom/byd/launcher/adb/AdbConnection;

.field private isClosed:Z

.field private localId:I

.field private readQueue:Lo/IlI;

.field private remoteId:I

.field private writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/adb/AdbConnection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    iput p2, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    new-instance p1, Lo/IlI;

    invoke-direct {p1}, Lo/IlI;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/adb/AdbStream;->readQueue:Lo/IlI;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/byd/launcher/adb/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p2, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    return-void
.end method


# virtual methods
.method public addPayload([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->readQueue:Lo/IlI;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lo/IlI;->ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byd/launcher/adb/AdbStream;->notifyClose()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget v0, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    .line 13
    .line 14
    iget v1, p0, Lcom/byd/launcher/adb/AdbStream;->remoteId:I

    .line 15
    .line 16
    const v2, 0x45534c43

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v2, v3, v0, v1}, Lo/Ρ;->ˋ(I[BII)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->readQueue:Lo/IlI;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v0, Lo/IlI;->Ͱ:Z

    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v0
.end method

.method public getInputStream()Lo/IlI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->readQueue:Lo/IlI;

    return-object v0
.end method

.method public getLocalId()I
    .locals 1

    iget v0, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    return v0
.end method

.method public getReadQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->readQueue:Lo/IlI;

    iget-object v0, v0, Lo/IlI;->ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    return v0
.end method

.method public notifyClose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readyForWrite()V
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public sendReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/byd/launcher/adb/AdbStream;->remoteId:I

    .line 4
    .line 5
    const v2, 0x59414b4f

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v3, v0, v1}, Lo/Ρ;->ˋ(I[BII)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public specialWrite([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget v0, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    .line 26
    .line 27
    iget v2, p0, Lcom/byd/launcher/adb/AdbStream;->remoteId:I

    .line 28
    .line 29
    const v3, 0x45545257

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p1, v0, v2}, Lo/Ρ;->ˋ(I[BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 46
    .line 47
    iget v0, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    .line 48
    .line 49
    iget v2, p0, Lcom/byd/launcher/adb/AdbStream;->remoteId:I

    .line 50
    .line 51
    new-array v1, v1, [B

    .line 52
    .line 53
    invoke-static {v3, v1, v0, v2}, Lo/Ρ;->ˋ(I[BII)[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v0, "Stream closed"

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method public updateRemoteId(I)V
    .locals 0

    iput p1, p0, Lcom/byd/launcher/adb/AdbStream;->remoteId:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byd/launcher/adb/AdbStream;->specialWrite([B)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/byd/launcher/adb/AdbStream;->write([BZ)V

    return-void
.end method

.method public write([BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/byd/launcher/adb/AdbStream;->isClosed:Z

    if-nez v0, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/byd/launcher/adb/AdbStream;->localId:I

    iget v1, p0, Lcom/byd/launcher/adb/AdbStream;->remoteId:I

    const v2, 0x45545257

    .line 3
    invoke-static {v2, p1, v0, v1}, Lo/Ρ;->ˋ(I[BII)[B

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/byd/launcher/adb/AdbStream;->adbConn:Lcom/byd/launcher/adb/AdbConnection;

    iget-object p1, p1, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
