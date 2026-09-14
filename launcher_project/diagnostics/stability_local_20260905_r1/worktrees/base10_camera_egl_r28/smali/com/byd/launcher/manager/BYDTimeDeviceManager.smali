.class public Lcom/byd/launcher/manager/BYDTimeDeviceManager;
.super Landroid/hardware/bydauto/time/AbsBYDAutoTimeListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDTimeDeviceManager"


# instance fields
.field private mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/bydauto/time/AbsBYDAutoTimeListener;-><init>()V

    invoke-static {p1}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->registerListener(Landroid/hardware/bydauto/time/AbsBYDAutoTimeListener;)V

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
    const-string v0, "BYDTimeDeviceManager"

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
.method public getTime()[I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->getTime()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-array v0, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    :goto_0
    return-object v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "getTime error: "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "BYDTimeDeviceManager"

    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    return-object v0
.end method

.method public getTimeFormat()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->getTimeFormat()I

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
    const-string v3, "getTimeFormat error: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "BYDTimeDeviceManager"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public onTimeChanged([I)V
    .locals 5

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/time/AbsBYDAutoTimeListener;->onTimeChanged([I)V

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
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONArray;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v2, p1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    aget v4, p1, v3

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "timeArray"

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string p1, "timeChanged"

    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "onTimeChanged error: "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "BYDTimeDeviceManager"

    .line 48
    .line 49
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public onTimeFormatChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/time/AbsBYDAutoTimeListener;->onTimeFormatChanged(I)V

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
    const-string v1, "format"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "timeFormatChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onTimeFormatChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDTimeDeviceManager"

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

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->unregisterListener(Landroid/hardware/bydauto/time/AbsBYDAutoTimeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    :cond_0
    return-void
.end method

.method public setDate(IIII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->setDate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p3, "setDate error: "

    .line 13
    .line 14
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p3, "BYDTimeDeviceManager"

    .line 18
    .line 19
    invoke-static {p1, p2, p3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public setTime(III)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->setTime(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p3, "setTime error: "

    .line 13
    .line 14
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p3, "BYDTimeDeviceManager"

    .line 18
    .line 19
    invoke-static {p1, p2, p3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public setTimeFormat(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDTimeDeviceManager;->mBYDAutoTimeDevice:Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;->setTimeFormat(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "setTimeFormat error: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "BYDTimeDeviceManager"

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method
