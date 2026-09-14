.class public Lcom/byd/launcher/manager/BYDSensorDeviceManager;
.super Landroid/hardware/bydauto/sensor/AbsBYDAutoSensorListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDSensorDeviceManager"


# instance fields
.field private mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

.field private volatile mInCarTemperature:D

.field private mLastEventLogTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/bydauto/sensor/AbsBYDAutoSensorListener;-><init>()V

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mInCarTemperature:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mLastEventLogTime:J

    invoke-static {p1}, Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;->registerListener(Landroid/hardware/bydauto/sensor/AbsBYDAutoSensorListener;)V

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
    const-string v0, "BYDSensorDeviceManager"

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
.method public getInCarTemperature()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mInCarTemperature:D

    .line 2
    .line 3
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    .line 4
    .line 5
    cmpl-double v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mInCarTemperature:D

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-wide v2

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getTemperatureSensorValue"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    new-array v5, v4, [Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    .line 31
    .line 32
    new-array v4, v4, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Ljava/lang/Double;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Double;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    return-wide v0

    .line 49
    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v0, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 56
    .line 57
    .line 58
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    return-wide v0

    .line 60
    :cond_3
    return-wide v2

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v4, "getInCarTemperature error: "

    .line 65
    .line 66
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v4, "BYDSensorDeviceManager"

    .line 70
    .line 71
    invoke-static {v0, v1, v4}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-wide v2
.end method

.method public getLightIntensity()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;->getLightIntensity()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    return v0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "getLightIntensity error: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "BYDSensorDeviceManager"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public onDataEventChanged(ILandroid/hardware/bydauto/BYDAutoEventValue;)V
    .locals 7

    const-string v0, "onDataEventChanged: eventType=0x"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mLastEventLogTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iput-wide v1, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mLastEventLogTime:J

    const-string v1, "BYDSensorDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intValue="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->intValue:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doubleValue="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->doubleValue:D

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onLightIntensityChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/sensor/AbsBYDAutoSensorListener;->onLightIntensityChanged(I)V

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
    const-string p1, "lightIntensityChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onLightIntensityChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDSensorDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onTemperatureSensorValueChanged(D)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTemperatureSensorValueChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BYDSensorDeviceManager"

    invoke-static {v1, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v2, -0x3fbc000000000000L    # -40.0

    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    const-wide v2, 0x405f400000000000L    # 125.0

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v2

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mInCarTemperature:D

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Sensor\u6e29\u5ea6\u66f4\u65b0: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mInCarTemperature:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\u00b0C"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;->unregisterListener(Landroid/hardware/bydauto/sensor/AbsBYDAutoSensorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDSensorDeviceManager;->mBYDAutoSensorDevice:Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    :cond_0
    return-void
.end method
