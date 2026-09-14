.class public Lcom/byd/launcher/manager/BYDRadarDeviceManager;
.super Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDRadarDeviceManager"


# instance fields
.field private mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;-><init>()V

    invoke-static {p1}, Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;->registerListener(Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;)V

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
    const-string v0, "BYDRadarDeviceManager"

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
.method public getAllRadarProbeStates()Lorg/json/JSONArray;
    .locals 5

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;->getAllRadarProbeStates()[I

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRadarProbeState(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;->getRadarProbeState(I)I

    move-result p1

    return p1
.end method

.method public getReverseRadarSwitchState()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;->getReverseRadarSwitchState()I

    move-result v0

    return v0
.end method

.method public onRadarProbeStateChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;->onRadarProbeStateChanged(II)V

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
    const-string p1, "radarProbeStateChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onRadarProbeStateChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDRadarDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onReverseRadarSwitchStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;->onReverseRadarSwitchStateChanged(I)V

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
    const-string v1, "state"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "reverseRadarSwitchStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onReverseRadarSwitchStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDRadarDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;->unregisterListener(Landroid/hardware/bydauto/radar/AbsBYDAutoRadarListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDRadarDeviceManager;->mBYDAutoRadarDevice:Landroid/hardware/bydauto/radar/BYDAutoRadarDevice;

    :cond_0
    return-void
.end method
