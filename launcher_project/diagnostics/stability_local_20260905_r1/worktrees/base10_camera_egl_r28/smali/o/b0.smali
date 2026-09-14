.class public final Lo/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lo/c0;->Ͷ:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x6d60

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sput-wide v0, Lo/c0;->Ͷ:J

    .line 17
    .line 18
    sget-object v0, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byd/launcher/adb/AdbConnection;->isFine()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sput v1, Lo/c0;->ͽ:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget v0, Lo/c0;->ͽ:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    sput v0, Lo/c0;->ͽ:I

    .line 39
    .line 40
    sget v0, Lo/c0;->ͽ:I

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    if-gt v0, v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "ADB connection unavailable after "

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget v2, Lo/c0;->ͽ:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, " checks, attempting reconnect..."

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "CmdTools"

    .line 68
    .line 69
    invoke-static {v2, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput v1, Lo/c0;->ͽ:I

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    const-wide v3, 0x40a7700000000000L    # 3000.0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    mul-double/2addr v0, v3

    .line 84
    double-to-long v0, v0

    .line 85
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    const-string v0, "ADB reconnect failed in status check"

    .line 95
    .line 96
    invoke-static {v2, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const-string v0, "ADB reconnected in status check"

    .line 101
    .line 102
    invoke-static {v2, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lo/c0;->ͼ:Ljava/lang/Runnable;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "Reconnect callback error: "

    .line 117
    .line 118
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_0
    sget-object v0, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 125
    .line 126
    const-wide/16 v1, 0x1e

    .line 127
    .line 128
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 129
    .line 130
    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 131
    .line 132
    .line 133
    return-void
.end method
