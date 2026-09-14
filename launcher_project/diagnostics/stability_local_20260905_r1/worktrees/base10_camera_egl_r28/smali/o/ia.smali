.class public final Lo/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;
.implements Lo/cf;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ia;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/ia;->ˋ:I

    .line 2
    .line 3
    const-string v1, "NavBarSvc"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    const-string v0, "autoStartInstrumentNavigation: IPC error: "

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :pswitch_2
    return-void

    .line 15
    :pswitch_3
    const-string v0, "\u67e5\u8be2\u7a7a\u8c03\u72b6\u6001\u5931\u8d25: "

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_4
    const-string v0, "getEngineVoiceSimulatorState \u5931\u8d25: "

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_5
    const-string v0, "getEnergyFeedback \u5931\u8d25: "

    .line 28
    .line 29
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_6
    const-string v0, "getDayTimeLightState \u5931\u8d25: "

    .line 34
    .line 35
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_7
    const-string v0, "\u67e5\u8be2\u540e\u5907\u7bb1\u72b6\u6001\u5931\u8d25: "

    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_8
    const-string v0, "getAllDoorStates failed: "

    .line 46
    .line 47
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_0
    const-string v0, "Stop AC failed: "

    .line 52
    .line 53
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lo/ia;->ˋ:I

    const/4 v3, 0x3

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-string v8, "NavBarSvc"

    const-string v9, "state"

    const/4 v10, -0x1

    const-string v11, "value"

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_10

    :pswitch_1
    const-string v1, "autoStartInstrumentNavigation: IPC success"

    .line 1
    invoke-static {v8, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :pswitch_2
    iget-object v2, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v3, "energyType"

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "fuelRange"

    invoke-virtual {v1, v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "fuelPercent"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v5, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    if-eq v3, v12, :cond_1

    if-nez v3, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    const-wide/16 v14, 0xff

    cmp-long v3, v9, v14

    if-eqz v3, :cond_1

    if-gtz v4, :cond_0

    const-wide/16 v3, 0x0

    cmpg-double v3, v7, v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    move v12, v13

    :cond_1
    :goto_0
    const-string v3, "vehicle_prefs"

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "is_pure_ev"

    invoke-interface {v3, v4, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-object v2, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v3, Lo/ag;

    invoke-direct {v3, v6, v0, v1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :pswitch_3
    iget-object v2, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v2, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v3, Lo/ag;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0, v1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :pswitch_4
    invoke-virtual {v1, v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v7, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v9, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    if-ne v2, v12, :cond_3

    move v11, v12

    goto :goto_1

    :cond_3
    move v11, v13

    :goto_1
    invoke-virtual {v9, v11}, Lo/Ζ;->Ͱ(Z)V

    const-string v9, "driverTemp"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v11, 0x21

    const/16 v14, 0x11

    if-lt v9, v14, :cond_4

    if-gt v9, v11, :cond_4

    iget-object v15, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v15, v9}, Lo/Ζ;->ͱ(I)V

    :cond_4
    const-string v15, "passengerTemp"

    invoke-virtual {v1, v15, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    if-lt v15, v14, :cond_5

    if-gt v15, v11, :cond_5

    iget-object v11, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v11, v15}, Lo/Ζ;->Ͳ(I)V

    :cond_5
    const-string v11, "windLevel"

    invoke-virtual {v1, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x7

    if-ltz v11, :cond_6

    if-gt v11, v14, :cond_6

    iget-object v13, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v13, v11}, Lo/Ζ;->ͳ(I)V

    :cond_6
    const-string v13, "windMode"

    invoke-virtual {v1, v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_7

    const/16 v14, 0x8

    if-ge v13, v14, :cond_7

    iget-object v14, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    rem-int/lit8 v4, v13, 0x8

    iget v5, v14, Lo/Ζ;->ͳ:I

    if-eq v5, v4, :cond_7

    iput v4, v14, Lo/Ζ;->ͳ:I

    const/16 v4, 0xc

    invoke-virtual {v14, v4}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_7
    const-string v4, "tempCtrlMode"

    .line 6
    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    if-ne v4, v12, :cond_8

    move v14, v12

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    .line 7
    :goto_2
    iget-boolean v12, v5, Lo/Ζ;->Ͷ:Z

    if-eq v12, v14, :cond_9

    .line 8
    iput-boolean v14, v5, Lo/Ζ;->Ͷ:Z

    invoke-virtual {v5, v6}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_9
    const-string v5, "cycleMode"

    .line 9
    invoke-virtual {v1, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_a

    iget-object v6, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 10
    iget v12, v6, Lo/Ζ;->ͻ:I

    if-eq v12, v5, :cond_a

    .line 11
    iput v5, v6, Lo/Ζ;->ͻ:I

    invoke-virtual {v6, v3}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_a
    const-string v3, "defrostFront"

    .line 12
    invoke-virtual {v1, v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_c

    iget-object v6, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    const/4 v12, 0x1

    if-ne v3, v12, :cond_b

    const/4 v12, 0x1

    goto :goto_3

    :cond_b
    const/4 v12, 0x0

    .line 13
    :goto_3
    iget-boolean v14, v6, Lo/Ζ;->ͷ:Z

    if-eq v14, v12, :cond_c

    .line 14
    iput-boolean v12, v6, Lo/Ζ;->ͷ:Z

    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_c
    const-string v6, "defrostRear"

    .line 15
    invoke-virtual {v1, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_e

    iget-object v6, v7, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    const/4 v10, 0x1

    if-ne v1, v10, :cond_d

    const/4 v10, 0x1

    goto :goto_4

    :cond_d
    const/4 v10, 0x0

    .line 16
    :goto_4
    iget-boolean v12, v6, Lo/Ζ;->ͺ:Z

    if-eq v12, v10, :cond_e

    .line 17
    iput-boolean v10, v6, Lo/Ζ;->ͺ:Z

    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 18
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "\u521d\u59cb\u7a7a\u8c03\u72b6\u6001: power="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    if-ne v2, v10, :cond_f

    const-string v2, "\u5f00"

    goto :goto_5

    :cond_f
    const-string v2, "\u5173"

    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dTemp="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pTemp="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wind="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " split="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne v4, v2, :cond_10

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cycle="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " defrostF="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " defrostR="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v2, Lo/td;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 19
    :pswitch_5
    invoke-virtual {v1, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_11

    goto :goto_8

    :cond_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    const/4 v12, 0x1

    goto :goto_7

    :cond_12
    const/4 v12, 0x0

    :goto_7
    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v2, Lo/x7;

    invoke-direct {v2, v3, v0, v12}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    return-void

    .line 20
    :pswitch_6
    invoke-virtual {v1, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_13

    goto :goto_a

    :cond_13
    if-ne v1, v7, :cond_14

    const/4 v12, 0x1

    goto :goto_9

    :cond_14
    const/4 v12, 0x0

    :goto_9
    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v2, Lo/x7;

    invoke-direct {v2, v7, v0, v12}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a
    return-void

    .line 21
    :pswitch_7
    invoke-virtual {v1, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v7, :cond_16

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v2, 0x1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDayTimeLightState rawValue="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_18

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    move v13, v2

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    :goto_d
    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v3, Lo/x7;

    invoke-direct {v3, v2, v0, v13}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void

    :pswitch_8
    move v2, v13

    .line 22
    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    if-lez v1, :cond_19

    const/4 v12, 0x1

    goto :goto_e

    :cond_19
    const/4 v12, 0x0

    :goto_e
    iput-boolean v12, v2, Lcom/byd/launcher/NavBarService;->ΐ:Z

    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v2, Lo/td;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_9
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v12, 0x1

    :goto_f
    if-gt v12, v3, :cond_1b

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "door_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    move v2, v4

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x4

    goto :goto_f

    :cond_1b
    const/4 v4, 0x1

    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    xor-int/2addr v2, v4

    iput-boolean v2, v1, Lcom/byd/launcher/NavBarService;->Ώ:Z

    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v2, Lo/td;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 24
    :goto_10
    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo/Ζ;->Ͱ(Z)V

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v1, v3}, Lo/Ζ;->ͳ(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final ʹ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    invoke-static {v0}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.byd.mediacenter"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ϵ:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->ϫ(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iput-object v2, v0, Lo/vl;->Ρ:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v0, Lo/vl;->Σ:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v2, v0, Lo/vl;->Τ:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    const-string v3, "\u7b49\u5f85\u64ad\u653e"

    .line 38
    .line 39
    const-string v4, ""

    .line 40
    .line 41
    invoke-virtual {v0, v2, v3, v4}, Lo/vl;->Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lo/vl;->Ϋ(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lo/vl;->Ω(Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ύ:Lo/hd;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v3, v0, Lo/hd;->ˋ:Lo/nd;

    .line 57
    .line 58
    iget-object v3, v3, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v4, Lo/md;

    .line 61
    .line 62
    invoke-direct {v4, v0, v1, v1}, Lo/md;-><init>(Lo/hd;ZI)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->Ͳ(Lcom/byd/launcher/NavBarService;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 74
    .line 75
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Ε:Ljava/lang/String;

    .line 76
    .line 77
    return-void
.end method

.method public final ˋ()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, v1, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v4, 0x3

    .line 25
    if-ne v1, v4, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v1, v3

    .line 30
    :goto_1
    if-nez v1, :cond_4

    .line 31
    .line 32
    :cond_2
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ϵ:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move v2, v3

    .line 38
    :cond_4
    :goto_2
    return v2
.end method

.method public final ˏ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    invoke-static {v0}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.byd.mediacenter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3}, Lo/vl;->Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ύ:Lo/hd;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, p3}, Lo/hd;->ˋ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ʹ(Lcom/byd/launcher/NavBarService;)V

    const-string p1, "launcher_prefs"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "instrument_music_enabled"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {v0, p2}, Lcom/byd/launcher/NavBarService;->ͱ(Lcom/byd/launcher/NavBarService;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final Ͱ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ρ:Z

    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/byd/launcher/NavBarService;->OOO:J

    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϕ(I)V

    return-void
.end method

.method public final ͱ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v2, Lo/y9;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-direct {v2, v0, v3}, Lo/y9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v3, 0x15e

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lo/vl;->Σ()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 45
    .line 46
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ρ:Z

    .line 50
    .line 51
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final Ͳ()V
    .locals 10

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 5
    .line 6
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ϑ:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 16
    .line 17
    const-wide/16 v5, 0x3e8

    .line 18
    .line 19
    add-long v7, v3, v5

    .line 20
    .line 21
    iput-wide v7, v0, Lcom/byd/launcher/NavBarService;->Φ:J

    .line 22
    .line 23
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 24
    .line 25
    iput-wide v7, v0, Lcom/byd/launcher/NavBarService;->Χ:J

    .line 26
    .line 27
    sput-wide v7, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 28
    .line 29
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 30
    .line 31
    iput-wide v3, v0, Lcom/byd/launcher/NavBarService;->Υ:J

    .line 32
    .line 33
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 34
    .line 35
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 45
    .line 46
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 49
    .line 50
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 60
    .line 61
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 64
    .line 65
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϒ()V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Α()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 92
    .line 93
    new-instance v2, Lo/hb;

    .line 94
    .line 95
    invoke-direct {v2, p0, v1}, Lo/hb;-><init>(Lo/ia;I)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v3, 0xc8

    .line 99
    .line 100
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 106
    .line 107
    new-instance v2, Lo/hb;

    .line 108
    .line 109
    const/4 v7, 0x2

    .line 110
    invoke-direct {v2, p0, v7}, Lo/hb;-><init>(Lo/ia;I)V

    .line 111
    .line 112
    .line 113
    const-wide/16 v7, 0x1f4

    .line 114
    .line 115
    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 119
    .line 120
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 121
    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Γ:Z

    .line 125
    .line 126
    if-nez v2, :cond_4

    .line 127
    .line 128
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Β:Z

    .line 129
    .line 130
    if-nez v2, :cond_4

    .line 131
    .line 132
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 133
    .line 134
    if-nez v2, :cond_4

    .line 135
    .line 136
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 137
    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 141
    .line 142
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 143
    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 152
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ρ()V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 165
    .line 166
    new-instance v2, Lo/hb;

    .line 167
    .line 168
    const/4 v9, 0x3

    .line 169
    invoke-direct {v2, p0, v9}, Lo/hb;-><init>(Lo/ia;I)V

    .line 170
    .line 171
    .line 172
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 175
    .line 176
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    .line 178
    .line 179
    :cond_4
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 180
    .line 181
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 182
    .line 183
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance v1, Lo/hb;

    .line 188
    .line 189
    const/4 v2, 0x4

    .line 190
    invoke-direct {v1, p0, v2}, Lo/hb;-><init>(Lo/ia;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 197
    .line 198
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 199
    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 203
    .line 204
    new-instance v1, Lo/hb;

    .line 205
    .line 206
    const/4 v2, 0x5

    .line 207
    invoke-direct {v1, p0, v2}, Lo/hb;-><init>(Lo/ia;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    .line 212
    .line 213
    :cond_5
    return-void
.end method

.method public final ͳ(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    invoke-static {v0}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.byd.mediacenter"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    iput-boolean p1, v0, Lcom/byd/launcher/NavBarService;->ϵ:Z

    .line 19
    .line 20
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lo/vl;->Ϋ(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ύ:Lo/hd;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v1, v0, Lo/hd;->ˋ:Lo/nd;

    .line 34
    .line 35
    iget-object v1, v1, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Lo/md;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v2, v0, p1, v3}, Lo/md;-><init>(Lo/hd;ZI)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ʹ(Lcom/byd/launcher/NavBarService;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϫ(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 61
    .line 62
    const-string v1, "launcher_prefs"

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "instrument_music_enabled"

    .line 70
    .line 71
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ε:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    iget-object v0, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 90
    .line 91
    invoke-static {v0, p1}, Lcom/byd/launcher/NavBarService;->ͱ(Lcom/byd/launcher/NavBarService;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    if-nez p1, :cond_5

    .line 96
    .line 97
    iget-object p1, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/byd/launcher/NavBarService;->Ͳ(Lcom/byd/launcher/NavBarService;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_1
    return-void
.end method

.method public final Ͷ(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "fav"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/byd/launcher/NavBarService;->ͳ(Lcom/byd/launcher/NavBarService;)V

    return-void

    :cond_0
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v1, p1}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    return-void
.end method
