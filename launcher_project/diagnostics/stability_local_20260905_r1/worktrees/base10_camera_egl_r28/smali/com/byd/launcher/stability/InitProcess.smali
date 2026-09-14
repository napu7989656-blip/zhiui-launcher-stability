.class public final Lcom/byd/launcher/stability/InitProcess;
.super Ljava/lang/Object;
.source "InitProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/InitProcess$Gate;,
        Lcom/byd/launcher/stability/InitProcess$Clock;,
        Lcom/byd/launcher/stability/InitProcess$Result;
    }
.end annotation


# static fields
.field private static final SYSTEM:Lcom/byd/launcher/stability/InitProcess$Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/byd/launcher/stability/InitProcess$1;

    invoke-direct {v0}, Lcom/byd/launcher/stability/InitProcess$1;-><init>()V

    sput-object v0, Lcom/byd/launcher/stability/InitProcess;->SYSTEM:Lcom/byd/launcher/stability/InitProcess$Clock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Lcom/byd/launcher/stability/InitProcess$Gate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-interface {p0}, Lcom/byd/launcher/stability/InitProcess$Gate;->current()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Initialization owner ended"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static collect(Ljava/lang/Process;JIILcom/byd/launcher/stability/InitProcess$Gate;Lcom/byd/launcher/stability/InitProcess$Clock;)Lcom/byd/launcher/stability/InitProcess$Result;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v0, p4

    const/4 v1, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    .line 52
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v5, v4, [B

    .line 54
    :goto_0
    invoke-static/range {p5 .. p5}, Lcom/byd/launcher/stability/InitProcess;->check(Lcom/byd/launcher/stability/InitProcess$Gate;)V

    .line 55
    invoke-interface/range {p6 .. p6}, Lcom/byd/launcher/stability/InitProcess$Clock;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, p1

    move/from16 v8, p3

    int-to-long v9, v8

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    cmp-long v6, v6, v9

    const/4 v7, 0x0

    if-ltz v6, :cond_0

    .line 56
    new-instance v0, Lcom/byd/launcher/stability/InitProcess$Result;

    const-string v3, ""

    const/4 v4, -0x1

    invoke-direct {v0, v7, v4, v3, v1}, Lcom/byd/launcher/stability/InitProcess$Result;-><init>(ZILjava/lang/String;Lcom/byd/launcher/stability/InitProcess$1;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :catch_0
    invoke-static {v2}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V

    .line 86
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :catch_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 88
    :catch_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    return-object v0

    .line 59
    :cond_0
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_2

    .line 61
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 63
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    sub-int v9, v0, v9

    if-gt v6, v9, :cond_1

    .line 64
    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Process output limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    :cond_2
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v6

    .line 70
    invoke-static/range {p5 .. p5}, Lcom/byd/launcher/stability/InitProcess;->check(Lcom/byd/launcher/stability/InitProcess$Gate;)V

    .line 72
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_3

    goto :goto_0

    .line 73
    :cond_3
    new-instance v7, Lcom/byd/launcher/stability/InitProcess$Result;

    new-instance v9, Ljava/lang/String;

    .line 74
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v10, 0x1

    invoke-direct {v7, v10, v6, v9, v1}, Lcom/byd/launcher/stability/InitProcess$Result;-><init>(ZILjava/lang/String;Lcom/byd/launcher/stability/InitProcess$1;)V
    :try_end_7
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 84
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 85
    :catch_4
    invoke-static {v2}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V

    .line 86
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    .line 87
    :catch_5
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 88
    :catch_6
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    return-object v7

    .line 76
    :catch_8
    :try_start_c
    invoke-interface/range {p6 .. p6}, Lcom/byd/launcher/stability/InitProcess$Clock;->sleep()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    .line 80
    :goto_1
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 81
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 84
    :goto_2
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_b

    .line 85
    :catch_b
    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V

    .line 86
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_c

    .line 87
    :catch_c
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_d

    .line 88
    :catch_d
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/launcher/stability/InitProcess;->close(Ljava/io/Closeable;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_e

    .line 89
    :catch_e
    throw v0
.end method

.method public static run([Ljava/lang/String;IILcom/byd/launcher/stability/InitProcess$Gate;)Lcom/byd/launcher/stability/InitProcess$Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 36
    array-length v0, p0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    const/high16 v0, 0x10000

    if-gt p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 39
    invoke-static {p3}, Lcom/byd/launcher/stability/InitProcess;->check(Lcom/byd/launcher/stability/InitProcess$Gate;)V

    .line 40
    sget-object v7, Lcom/byd/launcher/stability/InitProcess;->SYSTEM:Lcom/byd/launcher/stability/InitProcess$Clock;

    invoke-interface {v7}, Lcom/byd/launcher/stability/InitProcess$Clock;->nanoTime()J

    move-result-wide v2

    .line 41
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    .line 42
    invoke-static/range {v1 .. v7}, Lcom/byd/launcher/stability/InitProcess;->collect(Ljava/lang/Process;JIILcom/byd/launcher/stability/InitProcess$Gate;Lcom/byd/launcher/stability/InitProcess$Clock;)Lcom/byd/launcher/stability/InitProcess$Result;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
