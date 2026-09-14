.class public final synthetic Lo/jj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:Lo/mj;

.field public final synthetic ˏ:Lo/nj;

.field public final synthetic Ͱ:Z

.field public final synthetic ͱ:Lo/lj;


# direct methods
.method public synthetic constructor <init>(Lo/mj;Lo/nj;ZLo/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/jj;->ˋ:Lo/mj;

    iput-object p2, p0, Lo/jj;->ˏ:Lo/nj;

    iput-boolean p3, p0, Lo/jj;->Ͱ:Z

    iput-object p4, p0, Lo/jj;->ͱ:Lo/lj;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lo/jj;->ˋ:Lo/mj;

    iget-object v0, v2, Lo/mj;->ˏ:Lo/oj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lo/jj;->ˏ:Lo/nj;

    const/4 v6, 0x1

    if-eqz v3, :cond_2e

    .line 2
    iget-object v7, v3, Lo/nj;->Ͳ:Ljava/lang/String;

    if-nez v7, :cond_0

    goto/16 :goto_29

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Toggle: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " active="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v3, Lo/nj;->Ͷ:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VehicleCtrlMgr"

    invoke-static {v9, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v14, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "toggleScreenOff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "openTrunk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v12

    goto :goto_1

    :sswitch_2
    const-string v8, "setWindowAir"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_1

    :sswitch_3
    const-string v8, "setMoonRoofVentilate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v14

    goto :goto_1

    :sswitch_4
    const-string v8, "setMoonRoofBreath"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :sswitch_5
    const-string v8, "setWindowVent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v8, :cond_1

    move v8, v11

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, -0x1

    :goto_1
    iget-object v15, v0, Lo/oj;->Ͱ:Landroid/os/Handler;

    if-eqz v8, :cond_2d

    const-string v13, "setMoonRoofState"

    const-string v16, "\u5df2\u5f00\u542f"

    const-string v4, "\u5df2\u5173\u95ed"

    if-eq v8, v6, :cond_29

    if-eq v8, v14, :cond_26

    if-eq v8, v11, :cond_23

    if-eq v8, v10, :cond_20

    if-eq v8, v12, :cond_1b

    :try_start_1
    iget-boolean v8, v3, Lo/nj;->Ͷ:Z

    if-nez v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v3, Lo/nj;->Ͷ:Z

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const-string v11, "setSocSaveSwitch"

    const-string v12, "setDayTimeLightState"

    const-string v14, "setEnergyFeedback"

    const-string v6, "setEngineVoiceSimulatorState"

    const-string v10, "setBodyWindowCtrlState"

    sparse-switch v8, :sswitch_data_1

    goto :goto_4

    :sswitch_6
    :try_start_2
    const-string v8, "setAllWindowCtrlState"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    goto :goto_5

    :sswitch_7
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x7

    goto :goto_5

    :sswitch_8
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    goto :goto_5

    :sswitch_9
    const-string v8, "setAllWindowClose"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_5

    :sswitch_a
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    goto :goto_5

    :sswitch_b
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    goto :goto_5

    :sswitch_c
    const-string v8, "setInsideLightDoorState"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x4

    goto :goto_5

    :sswitch_d
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x6

    goto :goto_5

    :sswitch_e
    const-string v8, "setAllWindowOpen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_5

    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    goto/16 :goto_1d

    :cond_3
    :goto_4
    const/4 v8, -0x1

    :goto_5
    iget-object v5, v0, Lo/oj;->ͺ:Ljava/util/ArrayList;

    const-string v13, "setAllWindowState"

    move-object/from16 v17, v2

    const-string v2, "rr"

    const-string v1, "lr"

    move-object/from16 v18, v9

    const-string v9, "rf"

    move-object/from16 v19, v7

    const-string v7, "lf"

    move-object/from16 v20, v4

    const-string v4, "\u5df2\u6253\u5f00"

    packed-switch v8, :pswitch_data_0

    move-object/from16 v4, v20

    goto/16 :goto_1a

    :pswitch_0
    :try_start_3
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_6

    :cond_4
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v0, v1, v14}, Lo/oj;->Ύ(ILjava/lang/String;)V

    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_5

    const-string v1, "\u8f83\u5927"

    goto :goto_7

    :cond_5
    const-string v1, "\u6807\u51c6"

    :goto_7
    iput-object v1, v3, Lo/nj;->ͷ:Ljava/lang/String;

    const-string v1, "energy_feedback"

    goto/16 :goto_12

    :pswitch_1
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_6

    const/4 v14, 0x2

    goto :goto_8

    :cond_6
    const/4 v14, 0x1

    :goto_8
    invoke-virtual {v0, v14, v11}, Lo/oj;->Ύ(ILjava/lang/String;)V

    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_7

    const-string v0, "\u5f3a\u5236\u4fdd\u7535"

    goto :goto_9

    :cond_7
    const-string v0, "\u667a\u80fd\u4fdd\u7535"

    :goto_9
    iput-object v0, v3, Lo/nj;->ˏ:Ljava/lang/String;

    const/4 v4, 0x0

    goto/16 :goto_1c

    :pswitch_2
    iget-object v1, v3, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-static {v1}, Lo/oj;->ͺ(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "window"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "state"

    iget-boolean v5, v3, Lo/nj;->Ͷ:Z

    if-eqz v5, :cond_8

    const/4 v14, 0x1

    goto :goto_a

    :cond_8
    const/4 v14, 0x2

    :goto_a
    invoke-virtual {v2, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v2, v1}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :try_start_5
    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_9

    goto/16 :goto_1c

    :cond_9
    move-object/from16 v4, v20

    goto/16 :goto_1c

    :pswitch_3
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1, v6}, Lo/oj;->Ύ(ILjava/lang/String;)V

    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_b

    move-object/from16 v1, v16

    goto :goto_c

    :cond_b
    move-object/from16 v1, v20

    :goto_c
    iput-object v1, v3, Lo/nj;->ͷ:Ljava/lang/String;

    const-string v1, "engine_voice"

    goto :goto_12

    :pswitch_4
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_c

    const-string v1, "turnOnInsideLight"

    goto :goto_d

    :cond_c
    const-string v1, "turnOffInsideLight"

    :goto_d
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V

    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_d

    move-object/from16 v1, v16

    goto :goto_e

    :cond_d
    move-object/from16 v1, v20

    :goto_e
    iput-object v1, v3, Lo/nj;->ͷ:Ljava/lang/String;

    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    const-string v1, "vehicle_ctrl_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inside_light_active"

    iget-boolean v2, v3, Lo/nj;->Ͷ:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "inside_light"

    iget-boolean v1, v3, Lo/nj;->Ͷ:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 3
    :try_start_6
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v2, :cond_1f

    .line 4
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v5, Lo/x9;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v0, v1, v6}, Lo/x9;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    :goto_f
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_20

    .line 5
    :pswitch_5
    :try_start_7
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_e

    const/4 v14, 0x1

    goto :goto_10

    :cond_e
    const/4 v14, 0x2

    :goto_10
    invoke-virtual {v0, v14, v12}, Lo/oj;->Ύ(ILjava/lang/String;)V

    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_f

    move-object/from16 v1, v16

    goto :goto_11

    :cond_f
    move-object/from16 v1, v20

    :goto_11
    iput-object v1, v3, Lo/nj;->ͷ:Ljava/lang/String;

    const-string v1, "daylight"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 6
    :goto_12
    :try_start_8
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v2, :cond_1f

    .line 7
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v5, Lo/x9;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v1, v0, v6}, Lo/x9;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_f

    .line 8
    :pswitch_6
    :try_start_9
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_10

    const/4 v14, 0x1

    goto :goto_13

    :cond_10
    const/4 v14, 0x2

    :goto_13
    const/4 v1, 0x1

    const/4 v2, 0x4

    :goto_14
    if-gt v1, v2, :cond_11

    new-instance v6, Lo/ue;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    const/4 v7, 0x1

    :try_start_a
    invoke-direct {v6, v0, v1, v14, v7}, Lo/ue;-><init>(Ljava/lang/Object;III)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    add-int/lit8 v7, v1, -0x1

    int-to-long v7, v7

    const-wide/16 v11, 0x1f4

    mul-long/2addr v7, v11

    :try_start_b
    invoke-virtual {v15, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :catch_1
    move-exception v0

    move v2, v7

    goto/16 :goto_27

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nj;

    iget-object v5, v2, Lo/nj;->Ͳ:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-boolean v5, v3, Lo/nj;->Ͷ:Z

    iput-boolean v5, v2, Lo/nj;->Ͷ:Z

    iget-boolean v5, v3, Lo/nj;->Ͷ:Z

    if-eqz v5, :cond_13

    move-object v5, v4

    goto :goto_16

    :cond_13
    move-object/from16 v5, v20

    :goto_16
    iput-object v5, v2, Lo/nj;->ͷ:Ljava/lang/String;

    goto :goto_15

    :cond_14
    iget-object v1, v0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1f

    goto/16 :goto_19

    :pswitch_7
    const/4 v4, 0x0

    iput-boolean v4, v3, Lo/nj;->Ͷ:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :try_start_c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v4, v1}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    :try_start_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nj;

    iget-object v4, v2, Lo/nj;->Ͳ:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    iput-boolean v4, v2, Lo/nj;->Ͷ:Z

    move-object/from16 v4, v20

    iput-object v4, v2, Lo/nj;->ͷ:Ljava/lang/String;

    move-object/from16 v20, v4

    goto :goto_17

    :cond_16
    iget-object v1, v0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1f

    goto :goto_19

    :pswitch_8
    const/4 v6, 0x0

    iput-boolean v6, v3, Lo/nj;->Ͷ:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :try_start_e
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v6, v1}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    :try_start_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nj;

    iget-object v5, v2, Lo/nj;->Ͳ:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    :try_start_10
    iput-boolean v5, v2, Lo/nj;->Ͷ:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :try_start_11
    iput-object v4, v2, Lo/nj;->ͷ:Ljava/lang/String;

    goto :goto_18

    :catch_4
    move-exception v0

    move v2, v5

    goto/16 :goto_27

    :cond_18
    iget-object v1, v0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1f

    :goto_19
    iget-object v0, v0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_20

    :goto_1a
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    move-object/from16 v2, v19

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1, v2}, Lo/oj;->Ύ(ILjava/lang/String;)V

    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_1a

    move-object/from16 v4, v16

    :cond_1a
    :goto_1c
    iput-object v4, v3, Lo/nj;->ͷ:Ljava/lang/String;

    goto :goto_20

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :goto_1d
    const/4 v2, 0x1

    goto/16 :goto_27

    :cond_1b
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_1c

    const-string v1, "closeTrunk"

    .line 9
    new-instance v2, Lo/ka;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v5, v4}, Lo/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_20

    .line 10
    :cond_1c
    :try_start_12
    sget-object v1, Lcom/byd/launcher/CoreService;->Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->getCurrentGear()I

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    move v13, v1

    goto :goto_1e

    :cond_1d
    const/4 v13, -0x1

    :goto_1e
    const/4 v1, 0x1

    goto :goto_1f

    :catch_6
    const/4 v1, 0x1

    const/4 v13, -0x1

    :goto_1f
    if-eq v13, v1, :cond_1e

    if-lez v13, :cond_1e

    :try_start_13
    const-string v1, "\u8bf7\u5148\u6302\u5165P\u6863\u518d\u64cd\u4f5c\u540e\u5907\u7bb1"

    invoke-virtual {v0, v1}, Lo/oj;->Δ(Ljava/lang/String;)V

    goto :goto_20

    .line 11
    :cond_1e
    new-instance v1, Lo/ag;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0, v3}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catchall_0
    :cond_1f
    :goto_20
    const/4 v2, 0x1

    :goto_21
    const/4 v4, 0x0

    goto/16 :goto_2a

    :cond_20
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    .line 12
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iput-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_22

    move-object/from16 v4, v16

    :cond_22
    iput-object v4, v3, Lo/nj;->ͷ:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    const/4 v2, 0x1

    :try_start_14
    invoke-virtual {v0, v1, v2}, Lo/oj;->ΐ(ZZ)V

    goto :goto_21

    :catch_7
    move-exception v0

    goto :goto_1d

    :cond_23
    move-object/from16 v17, v2

    move v2, v6

    move-object/from16 v18, v9

    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_23

    :cond_24
    const/4 v1, 0x0

    :goto_23
    iput-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_25

    move-object/from16 v4, v16

    :cond_25
    iput-object v4, v3, Lo/nj;->ͷ:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    const/4 v4, 0x0

    :try_start_15
    invoke-virtual {v0, v1, v4}, Lo/oj;->ΐ(ZZ)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_21

    :cond_26
    move-object/from16 v17, v2

    move v2, v6

    move-object/from16 v18, v9

    :try_start_16
    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-nez v1, :cond_27

    move v1, v2

    goto :goto_24

    :cond_27
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_28

    move-object/from16 v4, v16

    :cond_28
    iput-object v4, v3, Lo/nj;->ͷ:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const/16 v1, 0xfc

    goto :goto_26

    :cond_29
    move-object/from16 v17, v2

    move v2, v6

    move-object/from16 v18, v9

    iget-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-nez v1, :cond_2a

    move v1, v2

    goto :goto_25

    :cond_2a
    const/4 v1, 0x0

    :goto_25
    iput-boolean v1, v3, Lo/nj;->Ͷ:Z

    if-eqz v1, :cond_2b

    move-object/from16 v4, v16

    :cond_2b
    iput-object v4, v3, Lo/nj;->ͷ:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const/16 v1, 0xfd

    goto :goto_26

    :cond_2c
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {v0, v1, v13}, Lo/oj;->Ύ(ILjava/lang/String;)V

    goto :goto_21

    :cond_2d
    move-object/from16 v17, v2

    move v2, v6

    move-object/from16 v18, v9

    .line 13
    invoke-virtual {v0}, Lo/oj;->Ί()V

    .line 14
    new-instance v1, Lo/yi;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    const/4 v4, 0x0

    :try_start_17
    invoke-direct {v1, v0, v4}, Lo/yi;-><init>(Lo/oj;I)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v15, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    goto :goto_2a

    :catch_8
    move-exception v0

    goto :goto_28

    :catch_9
    move-exception v0

    :goto_27
    const/4 v4, 0x0

    goto :goto_28

    :catch_a
    move-exception v0

    move-object/from16 v17, v2

    move v2, v6

    move-object/from16 v18, v9

    goto :goto_27

    .line 15
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "handleToggleClick crash: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v18

    invoke-static {v5, v1, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2a

    :cond_2e
    :goto_29
    move-object/from16 v17, v2

    move v2, v6

    goto/16 :goto_21

    :goto_2a
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lo/jj;->Ͱ:Z

    iget-object v5, v1, Lo/jj;->ͱ:Lo/lj;

    if-eqz v0, :cond_32

    .line 16
    iget-object v0, v3, Lo/nj;->ͳ:Ljava/lang/String;

    if-eqz v0, :cond_2f

    goto :goto_2b

    :cond_2f
    move v2, v4

    :goto_2b
    iget-object v0, v5, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    if-eqz v2, :cond_31

    iget-boolean v2, v3, Lo/nj;->Ͷ:Z

    if-eqz v2, :cond_30

    invoke-virtual/range {v17 .. v17}, Lo/mj;->ˏ()I

    move-result v2

    goto :goto_2c

    :cond_30
    invoke-virtual/range {v17 .. v17}, Lo/mj;->ͱ()I

    move-result v2

    :goto_2c
    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_2f

    :cond_31
    invoke-virtual/range {v17 .. v17}, Lo/mj;->ˏ()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    new-instance v2, Lo/h2;

    move-object/from16 v4, v17

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v0, v6}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const-wide/16 v6, 0x12c

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_32
    move-object/from16 v4, v17

    iget-object v0, v5, Lo/lj;->ˋ:Landroid/widget/ImageView;

    iget-boolean v2, v3, Lo/nj;->Ͷ:Z

    if-eqz v2, :cond_33

    iget v2, v3, Lo/nj;->ͱ:I

    goto :goto_2d

    :cond_33
    iget v2, v3, Lo/nj;->Ͱ:I

    :goto_2d
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v5, Lo/lj;->ˋ:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Lo/mj;->ˋ(Landroid/widget/ImageView;)V

    iget-boolean v0, v3, Lo/nj;->Ͷ:Z

    if-eqz v0, :cond_34

    invoke-virtual {v4}, Lo/mj;->ˏ()I

    move-result v0

    goto :goto_2e

    :cond_34
    invoke-virtual {v4}, Lo/mj;->Ͱ()I

    move-result v0

    :goto_2e
    iget-object v2, v5, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :goto_2f
    invoke-static {v5, v3}, Lo/mj;->Ͳ(Lo/lj;Lo/nj;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7495f539 -> :sswitch_5
        -0x44417ac9 -> :sswitch_4
        0x4ae632c3 -> :sswitch_3
        0x4ed190f8 -> :sswitch_2
        0x5b8f858a -> :sswitch_1
        0x6623706f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5ae35e67 -> :sswitch_e
        -0x4eb20eee -> :sswitch_d
        -0x37571055 -> :sswitch_c
        -0x228a1725 -> :sswitch_b
        -0x36150d1 -> :sswitch_a
        -0x2333377 -> :sswitch_9
        0x13b9242 -> :sswitch_8
        0x164852b6 -> :sswitch_7
        0x4b141af7 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
