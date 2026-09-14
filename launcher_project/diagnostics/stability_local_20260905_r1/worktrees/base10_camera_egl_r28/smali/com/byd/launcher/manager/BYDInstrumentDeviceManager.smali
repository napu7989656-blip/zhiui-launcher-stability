.class public Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;
.super Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDInstrumentDeviceManager"

.field private static volatile sMethodSendMusicName:Ljava/lang/reflect/Method;

.field private static volatile sMethodSendMusicSource:Ljava/lang/reflect/Method;

.field private static volatile sMethodSendMusicState:Ljava/lang/reflect/Method;


# instance fields
.field private lastSentMusicName:Ljava/lang/String;

.field private lastSentMusicState:Z

.field private mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicState:Z

    invoke-static {p1}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->registerListener(Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;)V

    :cond_0
    return-void
.end method

.method private getOrCacheMusicMethod(I)Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicName:Ljava/lang/reflect/Method;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "sendMusicName"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicName:Ljava/lang/reflect/Method;

    :cond_1
    sget-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicName:Ljava/lang/reflect/Method;

    return-object p1

    :cond_2
    sget-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicSource:Ljava/lang/reflect/Method;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "sendMusicSource"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicSource:Ljava/lang/reflect/Method;

    :cond_3
    sget-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicSource:Ljava/lang/reflect/Method;

    return-object p1

    :cond_4
    sget-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicState:Ljava/lang/reflect/Method;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "sendMusicState"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicState:Ljava/lang/reflect/Method;

    :cond_5
    sget-object p1, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->sMethodSendMusicState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
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
    const-string v0, "BYDInstrumentDeviceManager"

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
.method public getAlarmBuzzleState()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->getAlarmBuzzleState()I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "getAlarmBuzzleState error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDInstrumentDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getAverageSpeed()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "getAverageSpeed"

    .line 12
    .line 13
    new-array v3, v1, [Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 20
    .line 21
    new-array v3, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v2, v0, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    :cond_1
    instance-of v2, v0, Ljava/lang/Number;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    return v0

    .line 49
    :cond_2
    return v1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "getAverageSpeed error: "

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "BYDInstrumentDeviceManager"

    .line 59
    .line 60
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v1
.end method

.method public getBacklightBrightness()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "getBacklightBrightness"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 21
    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v2, v0, Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    return v1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "getBacklightBrightness reflection failed: "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "BYDInstrumentDeviceManager"

    .line 48
    .line 49
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v1
.end method

.method public getBacklightModeState(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "getBacklightModeState"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput-object v5, v4, v6

    .line 20
    .line 21
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 26
    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v3, v6

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of v0, p1, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    return v1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "getBacklightModeState reflection failed: "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "BYDInstrumentDeviceManager"

    .line 59
    .line 60
    invoke-static {p1, v0, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v1
.end method

.method public getBatteryPercent()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "getBatteryPercent"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 21
    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v2, v0, Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    return v1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "getBatteryPercent error: "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "BYDInstrumentDeviceManager"

    .line 48
    .line 49
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v1
.end method

.method public getCurrentJourneyDriveMileage()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v3, "getCurrentJourneyDriveMileage"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 22
    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v3, v0, Ljava/lang/Double;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Double;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0

    .line 40
    :cond_1
    instance-of v3, v0, Ljava/lang/Number;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 47
    .line 48
    .line 49
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return-wide v0

    .line 51
    :cond_2
    return-wide v1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "getCurrentJourneyDriveMileage error: "

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v4, "BYDInstrumentDeviceManager"

    .line 61
    .line 62
    invoke-static {v0, v3, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-wide v1
.end method

.method public getCurrentJourneyDriveTime()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v3, "getCurrentJourneyDriveTime"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 22
    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v3, v0, Ljava/lang/Double;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Double;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0

    .line 40
    :cond_1
    instance-of v3, v0, Ljava/lang/Number;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 47
    .line 48
    .line 49
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return-wide v0

    .line 51
    :cond_2
    return-wide v1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "getCurrentJourneyDriveTime error: "

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v4, "BYDInstrumentDeviceManager"

    .line 61
    .line 62
    invoke-static {v0, v3, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-wide v1
.end method

.method public getDrivingRecorderState()I
    .locals 4

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDrivingRecorder"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return v1
.end method

.method public getExternalChargingPower()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->getExternalChargingPower()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-wide v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "getExternalChargingPower error: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "BYDInstrumentDeviceManager"

    .line 22
    .line 23
    invoke-static {v0, v3, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-wide v1
.end method

.method public getMaintenanceInfo(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->getMaintenanceInfo(I)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "getMaintenanceInfo error: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "BYDInstrumentDeviceManager"

    .line 21
    .line 22
    invoke-static {p1, v0, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getMalfunctionInfo(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->getMalfunctionInfo(I)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "getMalfunctionInfo error: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "BYDInstrumentDeviceManager"

    .line 21
    .line 22
    invoke-static {p1, v0, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getOutCarTemperature()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "getOutCarTemperature"

    .line 12
    .line 13
    new-array v3, v1, [Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 20
    .line 21
    new-array v3, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v2, v0, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    return v1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "getOutCarTemperature error: "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "BYDInstrumentDeviceManager"

    .line 47
    .line 48
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1
.end method

.method public getTravelTime()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v3, "getTravelTime"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 22
    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v3, v0, Ljava/lang/Double;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Double;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0

    .line 40
    :cond_1
    instance-of v3, v0, Ljava/lang/Number;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 47
    .line 48
    .line 49
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return-wide v0

    .line 51
    :cond_2
    return-wide v1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "getTravelTime error: "

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v4, "BYDInstrumentDeviceManager"

    .line 61
    .line 62
    invoke-static {v0, v3, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-wide v1
.end method

.method public getUnit(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->getUnit(I)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "getUnit error: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "BYDInstrumentDeviceManager"

    .line 21
    .line 22
    invoke-static {p1, v0, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public onAlarmBuzzleStateChange(I)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;->onAlarmBuzzleStateChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onExternalChargingPowerChanged(D)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;->onExternalChargingPowerChanged(D)V

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
    const-string v1, "power"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "externalChargingPowerChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "onExternalChargingPowerChanged error: "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "BYDInstrumentDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onMaintenanceInfoChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;->onMaintenanceInfoChanged(II)V

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
    const-string v1, "type"

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
    const-string p1, "maintenanceInfoChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onMaintenanceInfoChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDInstrumentDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onMalfunctionInfoChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;->onMalfunctionInfoChanged(II)V

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
    const-string v1, "type"

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
    const-string p1, "malfunctionInfoChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onMalfunctionInfoChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDInstrumentDeviceManager"

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

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->unregisterListener(Landroid/hardware/bydauto/instrument/AbsBYDAutoInstrumentListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    :cond_0
    return-void
.end method

.method public sendMusicName(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string p1, "   "

    .line 16
    .line 17
    :goto_0
    iput-object p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicName:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-direct {p0, v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getOrCacheMusicMethod(I)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 28
    .line 29
    new-array v4, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    aput-object v5, v4, v0

    .line 36
    .line 37
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0, v2}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getOrCacheMusicMethod(I)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v3, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 47
    .line 48
    new-array v4, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v4, v0

    .line 55
    .line 56
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_3
    const/4 v0, 0x2

    .line 60
    invoke-direct {p0, v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getOrCacheMusicMethod(I)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 67
    .line 68
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_4
    iput-boolean v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "sendMusicName failed: "

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "BYDInstrumentDeviceManager"

    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void
.end method

.method public sendMusicState(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicState:Z

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    return-void

    .line 14
    :cond_2
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicState:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->lastSentMusicName:Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getOrCacheMusicMethod(I)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 28
    .line 29
    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    aput-object v4, v3, p1

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_3
    const/4 v0, 0x2

    .line 41
    invoke-direct {p0, v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->getOrCacheMusicMethod(I)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 48
    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    const-string v3, "   "

    .line 52
    .line 53
    aput-object v3, v1, p1

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "sendMusicState failed: "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "BYDInstrumentDeviceManager"

    .line 68
    .line 69
    invoke-static {p1, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    return-void
.end method

.method public setBacklightBrightness(I)I
    .locals 9

    .line 1
    const-string v0, "BYDInstrumentDeviceManager"

    .line 2
    .line 3
    const-string v1, "setBacklightBrightness("

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v4, "setBacklightBrightness"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    new-array v6, v5, [Ljava/lang/Class;

    .line 19
    .line 20
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    aput-object v7, v6, v8

    .line 24
    .line 25
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v4, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 30
    .line 31
    new-array v5, v5, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    aput-object v6, v5, v8

    .line 38
    .line 39
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    instance-of v4, v2, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    check-cast v2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v2, v3

    .line 55
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ") ret="

    .line 64
    .line 65
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "setBacklightBrightness reflection failed: "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v1, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v3
.end method

.method public setBacklightModeState(II)I
    .locals 10

    .line 1
    const-string v0, "BYDInstrumentDeviceManager"

    .line 2
    .line 3
    const-string v1, "setBacklightModeState("

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v4, "setBacklightModeState"

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    new-array v6, v5, [Ljava/lang/Class;

    .line 19
    .line 20
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    aput-object v7, v6, v8

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    aput-object v7, v6, v9

    .line 27
    .line 28
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v4, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 33
    .line 34
    new-array v5, v5, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    aput-object v6, v5, v8

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    aput-object v6, v5, v9

    .line 47
    .line 48
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    instance-of v4, v2, Ljava/lang/Integer;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v2, v3

    .line 64
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, ","

    .line 73
    .line 74
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, ") ret="

    .line 81
    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "setBacklightModeState reflection failed: "

    .line 100
    .line 101
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p2, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v3
.end method

.method public setMaintenanceInfo(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->setMaintenanceInfo(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "setMaintenanceInfo error: "

    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "BYDInstrumentDeviceManager"

    .line 19
    .line 20
    invoke-static {p1, p2, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public setUnit(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->mBYDAutoInstrumentDevice:Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;->setUnit(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "setUnit error: "

    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "BYDInstrumentDeviceManager"

    .line 19
    .line 20
    invoke-static {p1, p2, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
