.class public final synthetic Lo/Ϙ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/Ϙ;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/Ϙ;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    iget v0, p0, Lo/Ϙ;->ˋ:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/high16 v7, 0x10000000

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    iget-object v0, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast v0, Lo/km;

    iget-object v4, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v4, Lo/mm;

    .line 1
    iget-boolean v5, v0, Lo/km;->ˏ:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v11}, Lo/km;->ͱ(Z)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, v0, Lo/km;->Ͱ:Lo/fm;

    if-eqz v0, :cond_d

    check-cast v0, Lo/fl;

    .line 2
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v5

    invoke-virtual {v5}, Lo/u;->ˏ()V

    .line 3
    iget v5, v4, Lo/mm;->Ͱ:I

    if-nez v5, :cond_1

    .line 4
    iget-object v0, v0, Lo/fl;->ˋ:Lo/vl;

    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    if-eqz v0, :cond_d

    check-cast v0, Lo/cb;

    invoke-virtual {v0, p1}, Lo/cb;->onMapClick(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v2, 0xa

    if-ne v5, v2, :cond_3

    iget-object p1, v0, Lo/fl;->ˋ:Lo/vl;

    const-string v0, "com.android.launcher3"

    .line 5
    invoke-virtual {p1, v1, v0}, Lo/vl;->Ζ(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    if-ne v5, v3, :cond_4

    .line 6
    iget-object p1, v0, Lo/fl;->ˋ:Lo/vl;

    invoke-virtual {p1}, Lo/vl;->Χ()V

    goto/16 :goto_2

    :cond_4
    if-ne v5, v9, :cond_c

    iget-object v0, v0, Lo/fl;->ˋ:Lo/vl;

    .line 7
    iget-object v1, v4, Lo/mm;->Ͳ:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "WidgetBarMgr"

    const-string v3, "No launch intent for "

    if-eqz v1, :cond_d

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_2

    .line 10
    :cond_5
    sget-object v4, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v4, :cond_8

    .line 11
    iget-object v5, v4, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v5, :cond_7

    .line 12
    iget-boolean v6, v5, Lo/nd;->Η:Z

    if-eqz v6, :cond_6

    iget-object v5, v5, Lo/nd;->Σ:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v10

    goto :goto_0

    :cond_6
    move v5, v11

    :goto_0
    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    move v10, v11

    :goto_1
    if-eqz v10, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0x7d0

    .line 13
    :try_start_0
    invoke-static {v5}, Lcom/byd/launcher/NavBarService;->ϥ(I)V

    invoke-virtual {v0}, Lo/vl;->Σ()V

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/byd/launcher/NavBarService;->Ϊ()V

    :cond_9
    iget-object v4, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_a

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lo/vl;->ΐ(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0, v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Failed to launch "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_c
    const/16 p1, 0xb

    if-ne v5, p1, :cond_d

    .line 14
    iget-object p1, v0, Lo/fl;->ˋ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz p1, :cond_d

    .line 16
    iput v6, p1, Lcom/byd/launcher/NavBarService;->Ϡ:I

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v1, Lo/ea;

    const/16 v2, 0x17

    invoke-direct {v1, p1, v2}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_2
    return-void

    .line 17
    :pswitch_1
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/km;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-eq v0, v4, :cond_10

    iget-object v1, p1, Lo/km;->Ͱ:Lo/fm;

    if-eqz v1, :cond_10

    iget-object p1, p1, Lo/km;->ˋ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/mm;

    check-cast v1, Lo/fl;

    .line 19
    iget-object p1, v1, Lo/fl;->ˋ:Lo/vl;

    iget-object v1, p1, Lo/vl;->Ͷ:Lo/km;

    if-ltz v0, :cond_e

    .line 20
    iget-object v2, v1, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_3

    .line 22
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    :goto_3
    invoke-virtual {p1}, Lo/vl;->Ο()V

    iget-object v0, p1, Lo/vl;->Ύ:Lo/pm;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lo/vl;->Ύ()Ljava/util/HashSet;

    move-result-object p1

    .line 23
    iget-object v1, v0, Lo/pm;->ˏ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_10
    return-void

    .line 24
    :pswitch_2
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/vl;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, [Landroid/view/View;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :try_start_1
    iget-object p1, p1, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    aget-object v0, v0, v11

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 26
    :pswitch_3
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/vl;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Lo/qi;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    .line 27
    invoke-virtual {p1}, Lo/vl;->ͼ()V

    .line 28
    iget-object p1, v0, Lo/qi;->Ͱ:Landroid/os/Handler;

    .line 29
    new-instance v1, Lo/ki;

    invoke-direct {v1, v0, v9}, Lo/ki;-><init>(Lo/qi;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 30
    :pswitch_4
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/vl;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v1

    invoke-virtual {v1}, Lo/u;->ˏ()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_2f

    check-cast p1, Lo/cb;

    .line 32
    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 33
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_11

    goto/16 :goto_13

    .line 34
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "daylight"

    const-string v3, "energy_feedback"

    const-string v4, "double_flash"

    const-string v7, "engine_voice"

    const-string v8, "slope_descent"

    const-string v12, "inside_light"

    sparse-switch v1, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    const/4 v5, 0x7

    goto :goto_5

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    const/4 v5, 0x6

    goto :goto_5

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    move v5, v9

    goto :goto_5

    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    const/4 v5, 0x4

    goto :goto_5

    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4

    :sswitch_5
    const-string v1, "trunk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    move v5, v6

    goto :goto_5

    :sswitch_6
    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    move v5, v10

    goto :goto_5

    :sswitch_7
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4

    :cond_18
    move v5, v11

    goto :goto_5

    :goto_4
    const/4 v5, -0x1

    :cond_19
    :goto_5
    const-string v1, " \u5f02\u5e38: "

    const-string v9, "\u8f66\u63a7\u670d\u52a1\u672a\u8fde\u63a5"

    const-string v13, "NavBarSvc"

    packed-switch v5, :pswitch_data_1

    const-string p1, "\u672a\u8bc6\u522b\u7684\u8f66\u63a7\u69fd\u4f4d actionId="

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v13, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_5
    const-string v0, "setDayTimeLightState"

    move v3, v10

    goto :goto_6

    :pswitch_6
    const-string v0, "setEnergyFeedback"

    move-object v2, v3

    move v3, v6

    move v6, v10

    goto :goto_6

    :pswitch_7
    const-string v0, "setDoubleFlashLight"

    move v2, v11

    goto :goto_7

    :pswitch_8
    const-string v0, "setEngineVoiceSimulatorState"

    move-object v2, v7

    move v3, v10

    move v6, v11

    :goto_6
    move v4, v3

    move v3, v10

    goto :goto_8

    :pswitch_9
    const-string v0, "setHDCState"

    move-object v4, v8

    move v2, v10

    :goto_7
    move v3, v2

    move-object v2, v4

    move v4, v10

    move v6, v11

    .line 35
    :goto_8
    iget-object v5, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v5, p1, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-nez v7, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_9

    :cond_1c
    move v10, v11

    :goto_9
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v5, :cond_1d

    invoke-virtual {v5, v2, v10}, Lo/vl;->ί(Ljava/lang/String;Z)V

    :cond_1d
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz v3, :cond_1f

    const-string v3, "value"

    if-eqz v10, :cond_1e

    goto :goto_a

    :cond_1e
    move v4, v6

    :goto_a
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_b

    :cond_1f
    const-string v3, "on"

    invoke-virtual {v5, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_b
    iget-object v3, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    new-instance v4, Lo/ja;

    invoke-direct {v4, p1, v0, v10, v2}, Lo/ja;-><init>(Lcom/byd/launcher/NavBarService;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v0, v5, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_13

    :catch_2
    move-exception p1

    .line 36
    invoke-static {v0, v1}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-static {p1, v0, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 38
    :cond_20
    :goto_c
    invoke-virtual {p1, v9}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 39
    :pswitch_a
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_e

    :cond_21
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->ΐ:Z

    xor-int/2addr v0, v10

    if-eqz v0, :cond_24

    :try_start_3
    sget-object v0, Lcom/byd/launcher/CoreService;->Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->getCurrentGear()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    :cond_22
    const/4 v0, -0x1

    :goto_d
    if-eq v0, v10, :cond_23

    if-lez v0, :cond_23

    const-string v9, "\u8bf7\u5148\u6302\u5165P\u6863\u518d\u64cd\u4f5c\u540e\u5907\u7bb1"

    goto :goto_e

    .line 40
    :cond_23
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v1, Lo/y9;

    invoke-direct {v1, p1, v6}, Lo/y9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 41
    :cond_24
    invoke-virtual {p1, v11}, Lcom/byd/launcher/NavBarService;->Ν(Z)V

    goto/16 :goto_13

    :cond_25
    :goto_e
    invoke-virtual {p1, v9}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 42
    :pswitch_b
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_10

    :cond_26
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->Ώ:Z

    xor-int/2addr v0, v10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toggleDriverLock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/byd/launcher/NavBarService;->Ώ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p1, Lcom/byd/launcher/NavBarService;->Ώ:Z

    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v1, :cond_27

    invoke-virtual {v1, v0}, Lo/vl;->ή(Z)V

    :cond_27
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "area"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "action"

    if-eqz v0, :cond_28

    goto :goto_f

    :cond_28
    move v10, v11

    :goto_f
    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    const-string v3, "setDoorLock"

    new-instance v4, Lo/ma;

    invoke-direct {v4, v11, p1, v0}, Lo/ma;-><init>(ILcom/byd/launcher/NavBarService;Z)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toggleDriverLock error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {p1, v0, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_13

    .line 44
    :cond_29
    :goto_10
    invoke-virtual {p1, v9}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    goto :goto_13

    .line 45
    :pswitch_c
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_12

    :cond_2a
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string v3, "inside_light_active"

    const-string v4, "vehicle_ctrl_prefs"

    if-nez v2, :cond_2b

    invoke-virtual {p1, v4, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, v12, v2}, Lo/vl;->ί(Ljava/lang/String;Z)V

    :cond_2c
    if-eqz v2, :cond_2d

    const-string v0, "turnOnInsideLight"

    goto :goto_11

    :cond_2d
    const-string v0, "turnOffInsideLight"

    :goto_11
    :try_start_5
    iget-object v3, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    new-instance v4, Lo/ka;

    invoke-direct {v4, p1, v0, v2, v11}, Lo/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    const/4 p1, 0x0

    invoke-virtual {v3, v0, p1, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_13

    :catch_5
    move-exception p1

    .line 46
    invoke-static {v0, v1}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-static {p1, v0, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_13

    .line 48
    :cond_2e
    :goto_12
    invoke-virtual {p1, v9}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    :cond_2f
    :goto_13
    return-void

    .line 49
    :pswitch_d
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/vl;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    .line 50
    invoke-virtual {p1, v0}, Lo/vl;->ͻ(Landroid/view/View;)V

    return-void

    .line 51
    :pswitch_e
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/vl;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lo/vl;->Ο:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_30

    goto :goto_14

    :cond_30
    iput-wide v1, p1, Lo/vl;->Ο:J

    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object p1

    invoke-virtual {p1}, Lo/u;->ˏ()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_14
    return-void

    .line 53
    :pswitch_f
    iget-object v0, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast v0, Lo/vl;

    iget-object v1, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v1, Lo/mm;

    sget-object v2, Lo/vl;->Χ:[Lo/ul;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v2

    invoke-virtual {v2}, Lo/u;->ˏ()V

    .line 55
    iget-object v1, v1, Lo/mm;->Ͳ:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, p1, v1}, Lo/vl;->Ζ(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 57
    :pswitch_10
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/Ϩ;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Lo/Ϫ;

    .line 58
    iget-object p1, p1, Lo/Ϩ;->ˏ:Lo/kl;

    if-eqz p1, :cond_31

    iget-object v1, p1, Lo/kl;->ˋ:Lo/nl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iget-object p1, p1, Lo/kl;->ˏ:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lo/wk;

    invoke-direct {v2, v5, v1, v0}, Lo/wk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lo/nl;->ͱ:Lo/vl;

    invoke-static {v0, p1, v2}, Lo/vl;->ˋ(Lo/vl;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_31
    return-void

    .line 60
    :pswitch_11
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowManager;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lo/nd;->χ:[Ljava/lang/String;

    .line 61
    :try_start_6
    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void

    .line 62
    :pswitch_12
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/ff;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Lo/df;

    sget-object v1, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/df;->ͼ:J
    invoke-static {v0}, Lcom/byd/launcher/stability/TileSnapshots;->action(Lo/df;)V

    const-string v1, "\u6df1\u8272\u6a21\u5f0f"

    iget-object v2, v0, Lo/df;->ˏ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lo/df;->ˏ:Ljava/lang/String;

    invoke-virtual {p1, v0, v10, v1}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    iget-object v1, p1, Lo/ff;->Ͱ:Landroid/os/Handler;

    new-instance v2, Lo/ce;

    invoke-direct {v2, p1, v0, v11}, Lo/ce;-><init>(Lo/ff;Lo/df;I)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    :cond_32
    iget-boolean v1, v0, Lo/df;->ͻ:Z

    xor-int/2addr v1, v10

    iget-object v2, v0, Lo/df;->ˏ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    :goto_15
    iget-object v1, v0, Lo/df;->ͱ:Ljava/lang/Runnable;

    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_33
    iget-object v1, v0, Lo/df;->ʹ:Lo/bf;

    if-eqz v1, :cond_34

    :try_start_7
    check-cast v1, Lo/ke;

    invoke-virtual {v1}, Lo/ke;->ˏ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v2, v0, Lo/df;->ͷ:Landroid/widget/TextView;

    if-eqz v2, :cond_34

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_34
    const-string v1, "\u79fb\u52a8\u6570\u636e"

    iget-object v2, v0, Lo/df;->ˏ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Lo/ff;->Ͱ:Landroid/os/Handler;

    new-instance v3, Lo/ce;

    invoke-direct {v3, p1, v0, v10}, Lo/ce;-><init>(Lo/ff;Lo/df;I)V

    if-eqz v1, :cond_35

    const-wide/16 v4, 0xfa0

    goto :goto_16

    :cond_35
    const-wide/16 v4, 0x5dc

    :goto_16
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p1, Lo/ff;->Ͱ:Landroid/os/Handler;

    new-instance v3, Lo/ce;

    invoke-direct {v3, p1, v0, v6}, Lo/ce;-><init>(Lo/ff;Lo/df;I)V

    if-eqz v1, :cond_36

    const-wide/16 v0, 0x1b58

    goto :goto_17

    :cond_36
    const-wide/16 v0, 0xbb8

    :goto_17
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 64
    :pswitch_13
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/qi;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    sget-boolean v1, Lo/qi;->Ι:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :try_start_8
    iget-object p1, p1, Lo/qi;->ˏ:Landroid/view/WindowManager;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void

    .line 66
    :pswitch_14
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/xb;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Lo/vb;

    .line 67
    iget-object p1, p1, Lo/xb;->Ͱ:Ljava/util/function/Consumer;

    iget-object v0, v0, Lo/vb;->ˋ:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 68
    :pswitch_15
    iget-object p1, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast p1, Lo/ub;

    iget-object v0, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v0, Lo/sb;

    .line 69
    iget-object p1, p1, Lo/ub;->Ͱ:Ljava/util/function/Consumer;

    iget-object v0, v0, Lo/sb;->ˋ:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 70
    :pswitch_16
    iget-object v0, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast v0, Lo/Ϟ;

    iget-object v1, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v1, Lo/Ϡ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v2, :cond_39

    .line 72
    iget-object v3, v1, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    .line 73
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v4, :cond_38

    .line 74
    iget-boolean v5, v4, Lo/nd;->Η:Z

    if-eqz v5, :cond_37

    iget-object v4, v4, Lo/nd;->Σ:Ljava/lang/String;

    if-eqz v4, :cond_37

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v10

    goto :goto_18

    :cond_37
    move v3, v11

    :goto_18
    if-eqz v3, :cond_38

    move v3, v10

    goto :goto_19

    :cond_38
    move v3, v11

    :goto_19
    if-eqz v3, :cond_39

    goto :goto_1c

    .line 75
    :cond_39
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v1, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    iget-object v1, v1, Lo/Ϡ;->ͱ:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_9
    iget-object v1, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    iput-boolean v10, v1, Lcom/byd/launcher/AppLauncherActivity;->ˋ:Z

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->Ϊ()V

    :cond_3a
    const/16 v1, 0xdac

    invoke-static {v1}, Lcom/byd/launcher/NavBarService;->ϥ(I)V

    iget-object v1, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    invoke-static {v1}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_1a

    :cond_3b
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1, v11, v11, v1, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_1b

    :cond_3c
    :goto_1a
    iget-object p1, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    sget v1, Lo/gf;->zoom_enter:I

    sget v2, Lo/gf;->no_anim:I

    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_1b
    :try_start_a
    invoke-static {p1}, Lo/Η;->Ί(Landroid/app/ActivityOptions;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    :try_start_b
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p1, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    invoke-virtual {p1}, Lcom/byd/launcher/AppLauncherActivity;->finish()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_1c

    :catch_9
    iget-object p1, v0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    iput-boolean v11, p1, Lcom/byd/launcher/AppLauncherActivity;->ˋ:Z

    :goto_1c
    return-void

    .line 76
    :goto_1d
    iget-object v0, p0, Lo/Ϙ;->ˏ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    iget-object v1, p0, Lo/Ϙ;->Ͱ:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/snackbar/Snackbar;->ˋ(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x35c484ed -> :sswitch_7
        0x32c52b -> :sswitch_6
        0x6983db4 -> :sswitch_5
        0x3b73d626 -> :sswitch_4
        0x475f04f5 -> :sswitch_3
        0x5211ee02 -> :sswitch_2
        0x6060435c -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
