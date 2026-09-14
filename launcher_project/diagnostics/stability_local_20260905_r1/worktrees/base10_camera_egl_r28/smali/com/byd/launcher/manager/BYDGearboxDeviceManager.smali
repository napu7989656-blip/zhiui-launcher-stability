.class public Lcom/byd/launcher/manager/BYDGearboxDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POLL_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "BYDGearboxDeviceManager"


# instance fields
.field private lastBrake:I

.field private lastGear:I

.field private mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

.field private pollHandler:Landroid/os/Handler;

.field private final pollRunnable:Ljava/lang/Runnable;

.field private polling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "BYDGearboxDeviceManager"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->lastGear:I

    .line 8
    .line 9
    iput v1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->lastBrake:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->polling:Z

    .line 13
    .line 14
    new-instance v1, Lo/c8;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2, p0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    new-instance v2, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollHandler:Landroid/os/Handler;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p1}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "getInstance failed: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const-string p1, "Device obtained, starting gear polling"

    .line 62
    .line 63
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->startPolling()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const-string p1, "Device is null, gear polling disabled"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
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
    const-string v0, "BYDGearboxDeviceManager"

    .line 38
    .line 39
    invoke-static {p1, p2, v0}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private startPolling()V
    .locals 2

    iget-boolean v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->polling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->polling:Z

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic ʹ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static bridge synthetic ˋ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->lastBrake:I

    return p0
.end method

.method public static bridge synthetic ˏ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->lastGear:I

    return p0
.end method

.method public static bridge synthetic Ͱ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic ͱ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->polling:Z

    return p0
.end method

.method public static bridge synthetic Ͳ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->lastBrake:I

    return-void
.end method

.method public static bridge synthetic ͳ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->lastGear:I

    return-void
.end method


# virtual methods
.method public getBrakeFluidLevel()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getBrakeFluidLevel()I

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
    const-string v3, "getBrakeFluidLevel error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getBrakePedalState()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getBrakePedalState()I

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
    const-string v3, "getBrakePedalState error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getCurrentGear()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getGearboxAutoModeType()I

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
    const-string v3, "getCurrentGear error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getGearboxAutoModeType()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getGearboxAutoModeType()I

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
    const-string v3, "getGearboxAutoModeType error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getGearboxCode()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getGearboxCode()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "getGearboxCode error: "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "BYDGearboxDeviceManager"

    .line 22
    .line 23
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public getGearboxManualModeLevel()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getGearboxManualModeLevel()I

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
    const-string v3, "getGearboxManualModeLevel error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getGearboxType()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getGearboxType()I

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
    const-string v3, "getGearboxType error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public getParkBrakeSwitch()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->mBYDAutoGearboxDevice:Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

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
    invoke-virtual {v0}, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;->getParkBrakeSwitch()I

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
    const-string v3, "getParkBrakeSwitch error: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "BYDGearboxDeviceManager"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public stopPolling()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->polling:Z

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->pollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
