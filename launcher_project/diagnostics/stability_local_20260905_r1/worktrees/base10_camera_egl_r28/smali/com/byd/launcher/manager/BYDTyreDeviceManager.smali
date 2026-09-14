.class public Lcom/byd/launcher/manager/BYDTyreDeviceManager;
.super Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDTyreDeviceManager"


# instance fields
.field private mBYDAutoTyreDevice:Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;-><init>()V

    invoke-static {p1}, Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->mBYDAutoTyreDevice:Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;->registerListener(Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;)V

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
    const-string v0, "BYDTyreDeviceManager"

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
.method public getTyrePressure(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->mBYDAutoTyreDevice:Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

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
    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;->getTyrePressureValue(I)I

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
    const-string v2, "getTyrePressure error: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "BYDTyreDeviceManager"

    .line 21
    .line 22
    invoke-static {p1, v0, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public onTyrePressureValueChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;->onTyrePressureValueChanged(II)V

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
    const-string p1, "tyrePressureChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onTyrePressureValueChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDTyreDeviceManager"

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

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->mBYDAutoTyreDevice:Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;->unregisterListener(Landroid/hardware/bydauto/tyre/AbsBYDAutoTyreListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->mBYDAutoTyreDevice:Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

    :cond_0
    return-void
.end method
