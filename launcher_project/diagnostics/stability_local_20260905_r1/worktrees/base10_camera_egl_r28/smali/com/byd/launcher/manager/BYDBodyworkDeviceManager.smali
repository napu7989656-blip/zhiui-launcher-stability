.class public Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;
.super Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDBodyworkDeviceManager"


# instance fields
.field private mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;-><init>()V

    invoke-static {p1}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->registerListener(Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;)V

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
    const-string v0, "BYDBodyworkDeviceManager"

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
.method public closeTrunk()I
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "closeTrunk postEvent("

    iget-object v0, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    const-string v3, "closeTrunk: device class="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BYDBodyworkDeviceManager"

    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    const v4, 0x2940001a

    const/4 v5, 0x0

    filled-new-array {v0, v4, v5}, [I

    move-result-object v6

    const/4 v12, 0x2

    filled-new-array {v0, v4, v12}, [I

    move-result-object v7

    const/4 v4, 0x6

    filled-new-array {v0, v4, v5}, [I

    move-result-object v8

    filled-new-array {v0, v4, v12}, [I

    move-result-object v9

    filled-new-array {v4, v5, v5}, [I

    move-result-object v10

    filled-new-array {v4, v12, v5}, [I

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [[I

    move-result-object v6

    move v7, v5

    :goto_1
    const-string v8, ","

    const/4 v9, 0x1

    if-ge v7, v4, :cond_2

    aget-object v10, v6, v7

    :try_start_0
    iget-object v0, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    aget v11, v10, v5

    aget v13, v10, v9

    aget v14, v10, v12

    const/4 v15, 0x0

    invoke-virtual {v0, v11, v13, v14, v15}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->postEvent(IIILjava/lang/Object;)Z

    move-result v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v10, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", 0x"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v10, v9

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v10, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", null): "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    return v5

    :catchall_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v13, v10, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v10, v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v10, v12

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") failed: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "setTrunkState"

    const-string v2, "0"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v4, "2"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v14

    const-string v0, "setDoorState"

    const-string v6, "6,0"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "6,2"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "setBodyCtrlState"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v17

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v0, "closeTrunkDoor"

    const-string v10, ""

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v19

    const-string v0, "setDoorCtrl"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v20

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v21

    const-string v0, "setLuggageDoorState"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v22

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v23

    filled-new-array/range {v13 .. v23}, [[Ljava/lang/String;

    move-result-object v2

    move v4, v5

    :goto_2
    const/16 v0, 0xb

    if-ge v4, v0, :cond_7

    aget-object v6, v2, v4

    :try_start_1
    aget-object v0, v6, v5

    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Class;

    invoke-virtual {v10, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget-object v11, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v5

    aput-object v14, v13, v9

    invoke-virtual {v11, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iget-object v13, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    new-array v14, v12, [Ljava/lang/Object;

    aget-object v15, v10, v5

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    aget-object v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v9

    invoke-virtual {v11, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    :cond_4
    iget-object v10, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v5

    invoke-virtual {v10, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget-object v11, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v10, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closeTrunk via "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): result="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v10, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    return v5

    :cond_5
    instance-of v0, v10, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    return v5

    :catchall_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "closeTrunk "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v6, v5

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    aget-object v0, v6, v5

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_7
    const-string v0, "closeTrunk: all bodywork methods failed"

    invoke-static {v3, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getAlarmState()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getAlarmState()I

    move-result v0

    return v0
.end method

.method public getAutoModelName()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getAutoModelName"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 19
    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    return-object v0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "getAutoModelName error: "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "BYDBodyworkDeviceManager"

    .line 42
    .line 43
    invoke-static {v1, v2, v3}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public getAutoSystemState()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getAutoSystemState()I

    move-result v0

    return v0
.end method

.method public getAutoVIN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getAutoVIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltageLevel()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getBatteryVoltageLevel()I

    move-result v0

    return v0
.end method

.method public getDoorState(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getDoorState(I)I

    move-result p1

    return p1
.end method

.method public getFuelElecLowPower()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getFuelElecLowPower()I

    move-result v0

    return v0
.end method

.method public getMoonRoofConfig()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getMoonRoofConfig()I

    move-result v0

    return v0
.end method

.method public getPowerLevel()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getPowerLevel()I

    move-result v0

    return v0
.end method

.method public getSteeringWheelValue(I)D
    .locals 2

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getSteeringWheelValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSunroofPosition()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSunroofPosition"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "getSunroofPosition error: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "BYDBodyworkDeviceManager"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method public getSunroofState()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSunroofState"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "getSunroofState error: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "BYDBodyworkDeviceManager"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method public getSunroofWindowblindPosition()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSunroofWindowblindPosition"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "getSunroofWindowblindPosition error: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "BYDBodyworkDeviceManager"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method public getTrunkState()I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->getDoorState(I)I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    return v0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "getTrunkState error: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "BYDBodyworkDeviceManager"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    return v0
.end method

.method public getWindowOpenPercent(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getWindowOpenPercent(I)I

    move-result p1

    return p1
.end method

.method public getWindowState(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getWindowState(I)I

    move-result p1

    return p1
.end method

.method public onAlarmStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onAlarmStateChanged(I)V

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
    const-string p1, "alarmStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onAlarmStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onAutoSystemStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onAutoSystemStateChanged(I)V

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
    const-string p1, "autoSystemStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onAutoSystemStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onAutoVINChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onAutoVINChanged(Ljava/lang/String;)V

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
    const-string v1, "vin"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "autoVINChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onAutoVINChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onBatteryPowerChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onBatteryPowerChanged(I)V

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
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "batteryPowerChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onBatteryPowerChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onBatteryPowerHEVChanged(D)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onBatteryPowerHEVChanged(D)V

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
    const-string p1, "batteryPowerHEVChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onBatteryPowerHEVChanged error: "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onBatteryVoltageLevelChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onBatteryVoltageLevelChanged(I)V

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
    const-string p1, "batteryVoltageLevelChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onBatteryVoltageLevelChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onCarWindowAntiPinchConfigChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onCarWindowAntiPinchConfigChanged(I)V

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
    const-string v1, "config"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "carWindowAntiPinchConfigChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onCarWindowAntiPinchConfigChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onDoorStateChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onDoorStateChanged(II)V

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
    const-string v1, "door"

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
    const-string p1, "doorStateChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onDoorStateChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onError(ILjava/lang/String;)V

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
    const-string v1, "code"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "message"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "error"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onError error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onFuelElecLowPowerChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onFuelElecLowPowerChanged(I)V

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
    const-string p1, "fuelElecLowPowerChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onFuelElecLowPowerChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onHasMessageChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onHasMessageChanged(II)V

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
    const-string p1, "hasMessageChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onHasMessageChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onMessage5sOnlineStateChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onMessage5sOnlineStateChanged(II)V

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
    const-string p1, "message5sOnlineStateChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onMessage5sOnlineStateChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onMoonRoofConfigChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onMoonRoofConfigChanged(I)V

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
    const-string v1, "config"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "moonRoofConfigChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onMoonRoofConfigChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onPowerDayModeChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onPowerDayModeChanged(I)V

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
    const-string p1, "powerDayModeChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onPowerDayModeChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onPowerLevelChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onPowerLevelChanged(I)V

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
    const-string p1, "powerLevelChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onPowerLevelChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onRainCloseWindowChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onRainCloseWindowChanged(I)V

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
    const-string p1, "rainCloseWindowChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onRainCloseWindowChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onSmartVoiceLimitChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSmartVoiceLimitChanged(I)V

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
    const-string v1, "limit"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "smartVoiceLimitChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onSmartVoiceLimitChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onSteeringWheelAngleChanged(DII)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSteeringWheelAngleChanged(DII)V

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
    const-string v1, "angle"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "type"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "state"

    .line 20
    .line 21
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
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
    const-string p3, "onSteeringWheelAngleChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p3, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, p3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onSteeringWheelSpeedChanged(DII)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSteeringWheelSpeedChanged(DII)V

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
    const-string v1, "speed"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "type"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "state"

    .line 20
    .line 21
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string p1, "steeringWheelSpeedChanged"

    .line 25
    .line 26
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p3, "onSteeringWheelSpeedChanged error: "

    .line 34
    .line 35
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p3, "BYDBodyworkDeviceManager"

    .line 39
    .line 40
    invoke-static {p1, p2, p3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public onSteeringWheelValueChanged(ID)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSteeringWheelValueChanged(ID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p3, "onSteeringWheelValueChanged error: "

    .line 9
    .line 10
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p3, "BYDBodyworkDeviceManager"

    .line 14
    .line 15
    invoke-static {p1, p2, p3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public onSunroofCloseNoticeChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSunroofCloseNoticeChanged(I)V

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
    const-string p1, "sunroofCloseNoticeChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onSunroofCloseNoticeChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onSunroofInitStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSunroofInitStateChanged(I)V

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
    const-string p1, "sunroofInitStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onSunroofInitStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onSunroofPositionChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSunroofPositionChanged(I)V

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
    const-string v1, "position"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "sunroofPositionChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onSunroofPositionChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onSunroofStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSunroofStateChanged(I)V

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
    const-string p1, "sunroofStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onSunroofStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onSunroofWindowblindPositionChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onSunroofWindowblindPositionChanged(I)V

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
    const-string v1, "position"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "sunroofWindowblindPositionChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onSunroofWindowblindPositionChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onWindoblindInitStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onWindoblindInitStateChanged(I)V

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
    const-string p1, "windoblindInitStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onWindoblindInitStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onWindowOpenPercentChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onWindowOpenPercentChanged(II)V

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
    const-string v1, "window"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "percent"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "windowOpenPercentChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onWindowOpenPercentChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onWindowPermitStateChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onWindowPermitStateChanged(I)V

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
    const-string p1, "windowPermitStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v1, "onWindowPermitStateChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDBodyworkDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onWindowStateChanged(II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;->onWindowStateChanged(II)V

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
    const-string v1, "window"

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
    const-string p1, "windowStateChanged"

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    const-string v0, "onWindowStateChanged error: "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "BYDBodyworkDeviceManager"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public openTrunk()I
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "openTrunk postEvent("

    iget-object v0, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    const-string v3, "openTrunk: device class="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BYDBodyworkDeviceManager"

    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    const-string v4, "("

    const-string v5, ","

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "openTrunk: available methods: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "oor"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "runk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "ost"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "set"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "open"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "ctrl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "Ctrl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v11, v10

    move v12, v6

    :goto_2
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const-string v10, ") "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const v0, 0x2940001a

    const/16 v7, 0x3e9

    const/4 v8, 0x1

    filled-new-array {v7, v0, v8}, [I

    move-result-object v0

    const/4 v9, 0x6

    filled-new-array {v7, v9, v8}, [I

    move-result-object v7

    filled-new-array {v9, v8, v8}, [I

    move-result-object v10

    filled-new-array {v0, v7, v10}, [[I

    move-result-object v7

    move v10, v6

    :goto_3
    const/4 v11, 0x2

    const/4 v0, 0x3

    if-ge v10, v0, :cond_7

    aget-object v12, v7, v10

    :try_start_0
    iget-object v0, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    aget v13, v12, v6

    aget v14, v12, v8

    aget v15, v12, v11

    const/4 v9, 0x0

    invoke-virtual {v0, v13, v14, v15, v9}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->postEvent(IIILjava/lang/Object;)Z

    move-result v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v12, v6

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", 0x"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v12, v8

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v12, v11

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", null): "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    return v6

    :catchall_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v13, v12, v6

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v12, v8

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v12, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x6

    goto :goto_3

    :cond_7
    const-string v0, "setTrunkState"

    const-string v2, "1"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v17

    const-string v0, "setDoorState"

    const-string v7, "6,1"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v0, "setBodyCtrlState"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v19

    const-string v0, "openTrunkDoor"

    const-string v9, ""

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v20

    const-string v0, "setDoorCtrl"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v21

    const-string v0, "setLuggageDoorState"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [[Ljava/lang/String;

    move-result-object v2

    move v7, v6

    :goto_4
    const/4 v9, 0x6

    if-ge v7, v9, :cond_c

    aget-object v10, v2, v7

    :try_start_1
    aget-object v0, v10, v6

    aget-object v12, v10, v8

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Class;

    invoke-virtual {v13, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    iget-object v14, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_5

    :cond_8
    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v6

    aput-object v16, v15, v8

    invoke-virtual {v14, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iget-object v15, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    new-array v9, v11, [Ljava/lang/Object;

    aget-object v17, v13, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v9, v6

    aget-object v13, v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v8

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_5

    :cond_9
    iget-object v9, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-array v13, v8, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v6

    invoke-virtual {v9, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-object v13, v1, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-virtual {v9, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "openTrunk via "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): result="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v13, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    return v6

    :cond_a
    instance-of v0, v13, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_b

    return v6

    :catchall_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "openTrunk "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_0
    aget-object v0, v10, v6

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_c
    const-string v0, "openTrunk: all bodywork methods failed"

    invoke-static {v3, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->unregisterListener(Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    :cond_0
    return-void
.end method

.method public setAllWindowState(IIII)I
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x1

    .line 6
    :try_start_0
    iget-object v5, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 7
    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    const-string v6, "setAllWindowState"

    .line 13
    .line 14
    new-array v7, v3, [Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v8, v7, v1

    .line 19
    .line 20
    aput-object v8, v7, v4

    .line 21
    .line 22
    aput-object v8, v7, v2

    .line 23
    .line 24
    aput-object v8, v7, v0

    .line 25
    .line 26
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v6, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 31
    .line 32
    new-array v7, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    aput-object v8, v7, v1

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    aput-object v8, v7, v4

    .line 45
    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    aput-object v8, v7, v2

    .line 51
    .line 52
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    aput-object v8, v7, v0

    .line 57
    .line 58
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    return p1

    .line 69
    :catchall_0
    move-exception v5

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v7, "setAllWindowState bulk API not available, falling back to individual: "

    .line 73
    .line 74
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v7, "BYDBodyworkDeviceManager"

    .line 78
    .line 79
    invoke-static {v5, v6, v7}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-virtual {p0, v4, p1}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setBodyWindowCtrlState(II)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2, p2}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setBodyWindowCtrlState(II)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, p3}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setBodyWindowCtrlState(II)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3, p4}, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->setBodyWindowCtrlState(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p3, "setAllWindowState fallback error: "

    .line 99
    .line 100
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1, p2, v7}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p1, -0x1

    .line 107
    return p1
.end method

.method public setBodyWindowCtrlState(II)I
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setBodyWindowCtrlState"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v4, v3, v6

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 25
    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aput-object p1, v2, v5

    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    aput-object p1, v2, v6

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "setBodyWindowCtrlState error: "

    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "BYDBodyworkDeviceManager"

    .line 60
    .line 61
    invoke-static {p1, p2, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, -0x1

    .line 65
    return p1
.end method

.method public setMoonRoofAndSunshadeStop()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setMoonRoofAndSunshadeStop"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "setMoonRoofAndSunshadeStop error: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "BYDBodyworkDeviceManager"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method public setMoonRoofState(I)I
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setMoonRoofState"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v2, v5

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "setMoonRoofState error: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "BYDBodyworkDeviceManager"

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, -0x1

    .line 56
    return p1
.end method

.method public setSunshadeState(I)I
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "setSunshadeState"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDBodyworkDeviceManager;->mBYDAutoBodyworkDevice:Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v2, v5

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "setSunshadeState error: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "BYDBodyworkDeviceManager"

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, -0x1

    .line 56
    return p1
.end method
