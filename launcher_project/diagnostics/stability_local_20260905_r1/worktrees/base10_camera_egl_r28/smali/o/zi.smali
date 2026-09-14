.class public final synthetic Lo/zi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Lo/oj;

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:I


# direct methods
.method public synthetic constructor <init>(Lo/oj;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/zi;->Ͱ:Lo/oj;

    iput p2, p0, Lo/zi;->ͱ:I

    iput p3, p0, Lo/zi;->Ͳ:I

    iput p4, p0, Lo/zi;->ͳ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lo/zi;->ͳ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/zi;->Ͱ:Lo/oj;

    .line 4
    .line 5
    iget-object v2, v1, Lo/oj;->ˋ:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "settings put system screen_brightness "

    .line 8
    .line 9
    iget v4, p0, Lo/zi;->ͱ:I

    .line 10
    .line 11
    iget v5, p0, Lo/zi;->Ͳ:I

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-string v7, "VehicleCtrlMgr"

    .line 15
    .line 16
    if-gtz v4, :cond_0

    .line 17
    .line 18
    if-le v5, v6, :cond_1

    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    invoke-virtual {v8}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    if-eqz v9, :cond_1

    .line 31
    .line 32
    new-instance v9, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v10, "savedIAL"

    .line 38
    .line 39
    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v10, "savedBacklight"

    .line 43
    .line 44
    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v10, "bydScreenOn"

    .line 48
    .line 49
    new-instance v11, Lo/ib;

    .line 50
    .line 51
    invoke-direct {v11, v1, v4, v5, v6}, Lo/ib;-><init>(Ljava/lang/Object;III)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v10, v9, v11}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, "BYD screen on error: "

    .line 62
    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v4, v7}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v4, "screen_brightness"

    .line 74
    .line 75
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception v1

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v5, "wakeUpScreen brightness Settings.System failed: "

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v4, v7}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    :try_start_2
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/16 v1, 0x3e8

    .line 112
    .line 113
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_2
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "wakeUpScreen brightness ADB failed: "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1, v7}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_2
    return-void
.end method
