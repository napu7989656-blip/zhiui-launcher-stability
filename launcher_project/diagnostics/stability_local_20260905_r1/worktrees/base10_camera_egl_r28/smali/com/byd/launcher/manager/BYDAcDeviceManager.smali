.class public Lcom/byd/launcher/manager/BYDAcDeviceManager;
.super Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;
.source "SourceFile"


# static fields
.field private static final EVENT_CAR_INNER_TEMP:I = 0x3d6c2830

.field private static final EVENT_CAR_INNER_TEMP_DIFEN:I = 0x3d800030

.field private static final EVENT_CAR_INNER_TEMP_DIFEN_BACKUP:I = 0x4eb06010

.field private static final EVENT_ENV_TEMP:I = 0x2230002c

.field private static final TAG:Ljava/lang/String; = "BYDAcDeviceManager"


# instance fields
.field private mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

.field private volatile mInCarTemperature:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;-><init>()V

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mInCarTemperature:D

    invoke-static {p1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->registerListener(Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;)V

    :cond_0
    return-void
.end method

.method private notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    const-string v2, "notification"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "event"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const-string p1, "data"

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {v0}, Lcom/byd/launcher/CoreService;->ͼ(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "Failed to create notification: "

    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "BYDAcDeviceManager"

    .line 38
    .line 39
    invoke-static {p1, p2, v0}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public getAcCycleMode()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getAcCycleMode()I

    move-result v0

    return v0
.end method

.method public getAcDefrostState(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getAcDefrostState(I)I

    move-result p1

    return p1
.end method

.method public getAcState()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getAcStartState()I

    move-result v0

    return v0
.end method

.method public getAcTemperature(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getTemprature(I)I

    move-result p1

    return p1
.end method

.method public getAcTemperatureControlMode()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getAcTemperatureControlMode()I

    move-result v0

    return v0
.end method

.method public getAcWindLevel()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getAcWindLevel()I

    move-result v0

    return v0
.end method

.method public getAcWindMode()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->getAcWindMode()I

    move-result v0

    return v0
.end method

.method public getInCarTemperature()D
    .locals 2

    iget-wide v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mInCarTemperature:D

    return-wide v0
.end method

.method public onAcCycleModeChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onAcCycleModeChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "mode"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "acCycleModeChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onAcCycleModeChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDAcDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onAcDefrostStateChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onAcDefrostStateChanged(II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "area"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "state"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "acDefrostStateChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "onAcDefrostStateChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDAcDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onAcStarted()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onAcStarted()V

    .line 2
    .line 3
    .line 4
    const-string v0, "acStarted"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "onAcStarted error: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "BYDAcDeviceManager"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public onAcStoped()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onAcStoped()V

    .line 2
    .line 3
    .line 4
    const-string v0, "acStoped"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "onAcStoped error: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "BYDAcDeviceManager"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public onAcWindLevelChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onAcWindLevelChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "level"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "acWindLevelChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onAcWindLevelChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDAcDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onAcWindModeChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onAcWindModeChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "mode"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "acWindModeChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onAcWindModeChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDAcDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onDataEventChanged(ILandroid/hardware/bydauto/BYDAutoEventValue;)V
    .locals 8

    .line 1
    const-string v0, "\u6e29\u5ea6\u66f4\u65b0: "

    .line 2
    .line 3
    const-string v1, "BYDAcDeviceManager"

    .line 4
    .line 5
    const-string v2, "onDataEventChanged: eventType=0x"

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " ("

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ") intValue="

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v2, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->intValue:I

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " doubleValue="

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-wide v4, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->doubleValue:D

    .line 45
    .line 46
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const v2, 0x3d6c2830

    .line 57
    .line 58
    .line 59
    if-eq p1, v2, :cond_0

    .line 60
    .line 61
    const v2, 0x3d800030

    .line 62
    .line 63
    .line 64
    if-eq p1, v2, :cond_0

    .line 65
    .line 66
    const v2, 0x4eb06010

    .line 67
    .line 68
    .line 69
    if-eq p1, v2, :cond_0

    .line 70
    .line 71
    const v2, 0x2230002c

    .line 72
    .line 73
    .line 74
    if-ne p1, v2, :cond_3

    .line 75
    .line 76
    :cond_0
    iget v2, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->intValue:I

    .line 77
    .line 78
    int-to-double v2, v2

    .line 79
    const-wide v4, -0x3e32329b00800000L    # -9.99999999E8

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    cmpl-double v6, v2, v4

    .line 85
    .line 86
    if-nez v6, :cond_1

    .line 87
    .line 88
    iget-wide v2, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->doubleValue:D

    .line 89
    .line 90
    :cond_1
    const-wide/high16 v6, -0x3fbc000000000000L    # -40.0

    .line 91
    .line 92
    cmpl-double p2, v2, v6

    .line 93
    .line 94
    if-lez p2, :cond_3

    .line 95
    .line 96
    const-wide v6, 0x405f400000000000L    # 125.0

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    cmpg-double p2, v2, v6

    .line 102
    .line 103
    if-gez p2, :cond_3

    .line 104
    .line 105
    cmpl-double p2, v2, v4

    .line 106
    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    iput-wide v2, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mInCarTemperature:D

    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-wide v2, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mInCarTemperature:D

    .line 119
    .line 120
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, "\u00b0C from eventType=0x"

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, " eventValue=null"

    .line 153
    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :goto_1
    invoke-static {v1, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v0, "onDataEventChanged error: "

    .line 166
    .line 167
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p1, p2, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    :goto_2
    return-void
.end method

.method public onTemperatureChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;->onTemperatureChanged(II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "area"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "value"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "acTemperatureChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDAcDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "onTemperatureChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDAcDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->unregisterListener(Landroid/hardware/bydauto/ac/AbsBYDAutoAcListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    :cond_0
    return-void
.end method

.method public setAcCycleMode(I)I
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->setAcCycleMode(II)I

    move-result p1

    return p1
.end method

.method public setAcDefrostState(II)I
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->setAcDefrostState(III)I

    move-result p1

    return p1
.end method

.method public setAcTemperature(II)I
    .locals 3

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->setAcTemperature(IIII)I

    move-result p1

    return p1
.end method

.method public setAcTemperatureControlMode(I)I
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->setAcTemperatureControlMode(II)I

    move-result p1

    return p1
.end method

.method public setAcWindLevel(I)I
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->setAcWindLevel(II)I

    move-result p1

    return p1
.end method

.method public startAc()I
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->start(I)I

    move-result v0

    return v0
.end method

.method public stopAc()I
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDAcDeviceManager;->mBYDAutoAcDevice:Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;->stop(I)I

    move-result v0

    return v0
.end method
