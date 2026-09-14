.class public final Lcom/byd/launcher/adb/ˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Lcom/byd/launcher/adb/AdbConnection;

.field public final synthetic ͱ:Lcom/byd/launcher/adb/AdbConnection;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/adb/AdbConnection;Lcom/byd/launcher/adb/AdbConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    iput-object p2, p0, Lcom/byd/launcher/adb/ˋ;->Ͱ:Lcom/byd/launcher/adb/AdbConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/byd/launcher/adb/AdbConnection;->stopFlag:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->connectionThread:Ljava/lang/Thread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->inputStream:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-static {v0}, Lo/Π;->ˋ(Ljava/io/InputStream;)Lo/Π;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/byd/launcher/adb/AdbConnection;->msgManager:Lcom/byd/launcher/adb/ˏ;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/byd/launcher/adb/ˏ;->Ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lcom/byd/launcher/adb/AdbConnection;->stopFlag:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byd/launcher/adb/ˋ;->Ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_1
    iget-object v2, p0, Lcom/byd/launcher/adb/ˋ;->ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/byd/launcher/adb/AdbConnection;->ˋ(Lcom/byd/launcher/adb/AdbConnection;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/byd/launcher/adb/ˋ;->Ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/byd/launcher/adb/ˋ;->Ͱ:Lcom/byd/launcher/adb/AdbConnection;

    .line 54
    .line 55
    iput-boolean v1, v2, Lcom/byd/launcher/adb/AdbConnection;->connectAttempted:Z

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v1
.end method
