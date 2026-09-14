.class public final synthetic Lo/k9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/k9;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isServiceDestroyed(Lcom/byd/launcher/NavBarService;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    iget v0, p0, Lo/k9;->ˋ:I

    const-string v1, "stopAc"

    const/high16 v2, 0x10000000

    const/4 v3, 0x3

    const-wide/16 v4, 0x12c

    const/4 v6, 0x2

    const-string v7, "NavBarSvc"

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_24

    :pswitch_0
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.byd.carsettings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch car settings failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0, v7}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 3
    :pswitch_1
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    const-string p1, "audio"

    .line 4
    iget-object v0, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_1

    :cond_1
    const/16 v0, -0x64

    :goto_1
    invoke-virtual {p1, v3, v0, v10}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2
    return-void

    .line 5
    :pswitch_2
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 6
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    if-eqz v0, :cond_8

    .line 7
    iget-boolean v0, v0, Lo/ff;->ͷ:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    invoke-virtual {p1}, Lo/ff;->ʹ()V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9
    sget v1, Lo/if;->quick_settings_container:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dimen"

    const-string v4, "android"

    const-string v5, "status_bar_height"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v10

    :goto_2
    invoke-virtual {v1, v10, v0, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_6
    if-eqz v1, :cond_7

    .line 11
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 12
    iput-object v1, v0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 13
    :cond_7
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    iget p1, p1, Lcom/byd/launcher/NavBarService;->ν:I

    invoke-virtual {v0, p1}, Lo/ff;->Ύ(I)V

    :cond_8
    :goto_3
    return-void

    .line 14
    :pswitch_3
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 15
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    if-eqz v0, :cond_d

    .line 16
    iget-boolean v1, v0, Lo/oj;->Ͷ:Z

    if-eqz v1, :cond_a

    .line 17
    invoke-virtual {v0}, Lo/oj;->ͻ()V

    goto :goto_4

    :cond_a
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    if-eqz v0, :cond_b

    .line 18
    iget-boolean v0, v0, Lo/ff;->ͷ:Z

    if-eqz v0, :cond_b

    .line 19
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    invoke-virtual {v0}, Lo/ff;->ʹ()V

    :cond_b
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 20
    sget v1, Lo/if;->vehicle_control_container:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 21
    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 22
    iput-object v0, v1, Lo/oj;->ͱ:Landroid/view/ViewGroup;

    .line 23
    :cond_c
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    invoke-virtual {p1}, Lo/oj;->Β()V

    :cond_d
    :goto_4
    return-void

    .line 24
    :pswitch_4
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    if-eqz p1, :cond_f

    .line 25
    iget-object v0, p1, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 26
    new-instance v1, Lo/yi;

    invoke-direct {v1, p1, v6}, Lo/yi;-><init>(Lo/oj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_5
    return-void

    .line 27
    :pswitch_5
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_10

    goto/16 :goto_9

    :cond_10
    invoke-static {}, Lcom/byd/launcher/AppLauncherActivity;->Ͱ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 28
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    sput-object v9, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/byd/launcher/AppLauncherActivity;->finish()V

    .line 29
    :cond_11
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz p1, :cond_19

    invoke-virtual {p1, v10}, Lo/nd;->Έ(Z)V

    goto :goto_9

    :cond_12
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_13

    .line 30
    iget-boolean v1, v0, Lo/nd;->Η:Z

    if-eqz v1, :cond_13

    .line 31
    invoke-virtual {v0, v11}, Lo/nd;->Έ(Z)V

    :cond_13
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->έ()V

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    if-eqz v0, :cond_14

    .line 32
    iget-boolean v1, v0, Lo/oj;->Ͷ:Z

    if-eqz v1, :cond_14

    .line 33
    invoke-virtual {v0}, Lo/oj;->ͻ()V

    :cond_14
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_15

    .line 34
    iget-boolean v1, v0, Lo/nd;->Η:Z

    if-eqz v1, :cond_15

    .line 35
    invoke-virtual {v0, v11}, Lo/nd;->Έ(Z)V

    .line 36
    :cond_15
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->Έ(Z)V

    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->Ή(Z)V

    .line 37
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/byd/launcher/AppLauncherActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v10

    goto :goto_7

    :cond_17
    sget v1, Lo/gf;->slide_up_enter:I

    :goto_7
    invoke-static {p1}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_8

    :cond_18
    sget v10, Lo/gf;->no_anim:I

    :goto_8
    invoke-static {p1, v1, v10}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lo/Η;->Ί(Landroid/app/ActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_19
    :goto_9
    return-void

    .line 38
    :pswitch_6
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_1a

    goto :goto_b

    :cond_1a
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    :cond_1b
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 39
    iget-boolean v2, v0, Lo/Ζ;->Ͱ:Z

    xor-int/2addr v2, v11

    .line 40
    invoke-virtual {v0, v2}, Lo/Ζ;->Ͱ(Z)V

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->χ()V

    if-eqz v2, :cond_1c

    const-string v1, "startAc"

    :cond_1c
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    new-instance v3, Lo/ma;

    invoke-direct {v3, v11, p1, v2}, Lo/ma;-><init>(ILcom/byd/launcher/NavBarService;Z)V

    invoke-virtual {v0, v1, v9, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    goto :goto_b

    :cond_1d
    :goto_a
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    :goto_b
    return-void

    .line 41
    :pswitch_7
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 42
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_1e

    goto/16 :goto_f

    :cond_1e
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    if-eqz v0, :cond_1f

    .line 43
    iget-boolean v1, v0, Lo/oj;->Ͷ:Z

    if-eqz v1, :cond_1f

    .line 44
    invoke-virtual {v0}, Lo/oj;->ͻ()V

    move v0, v11

    goto :goto_c

    :cond_1f
    move v0, v10

    :goto_c
    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    if-eqz v1, :cond_20

    .line 45
    iget-boolean v1, v1, Lo/ff;->ͷ:Z

    if-eqz v1, :cond_20

    .line 46
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    invoke-virtual {v0}, Lo/ff;->ʹ()V

    move v0, v11

    :cond_20
    invoke-static {}, Lcom/byd/launcher/AppLauncherActivity;->Ͱ()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 47
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    sput-object v9, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/byd/launcher/AppLauncherActivity;->finish()V

    .line 48
    :cond_21
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    invoke-virtual {v0, v10}, Lo/nd;->Έ(Z)V

    :cond_22
    move v0, v11

    :cond_23
    if-eqz v0, :cond_24

    goto/16 :goto_f

    :cond_24
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Β()Z

    move-result v0

    if-nez v0, :cond_25

    iput-boolean v10, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    :cond_25
    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->ϩ:Z

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    invoke-virtual {v0, v10}, Lo/nd;->Έ(Z)V

    :cond_26
    const-wide/16 v0, 0x1f4

    .line 49
    :try_start_2
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_27

    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->Ϊ:Z

    move v2, v11

    goto :goto_d

    :cond_28
    iput-boolean v10, p1, Lcom/byd/launcher/NavBarService;->Ϊ:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v10

    goto :goto_d

    :catch_1
    :try_start_3
    iget-boolean v2, p1, Lcom/byd/launcher/NavBarService;->Ϊ:Z

    :goto_d
    if-eqz v2, :cond_29

    .line 50
    invoke-virtual {p1, v8}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v3, Lo/m9;

    const/16 v7, 0x1b

    invoke-direct {v3, p1, v7}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :cond_29
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/byd/launcher/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->ϒ:Z

    invoke-virtual {p1, v2}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V

    iput-boolean v10, p1, Lcom/byd/launcher/NavBarService;->ϒ:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_e

    :catch_2
    iput-boolean v10, p1, Lcom/byd/launcher/NavBarService;->ϒ:Z

    invoke-virtual {p1, v6}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    :goto_e
    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    iput-object v9, p1, Lcom/byd/launcher/NavBarService;->ϑ:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/byd/launcher/NavBarService;->Φ:J

    iput-wide v0, p1, Lcom/byd/launcher/NavBarService;->Χ:J

    add-long/2addr v4, v2

    sput-wide v4, Lcom/byd/launcher/NavBarService;->OOO:J

    iput-wide v2, p1, Lcom/byd/launcher/NavBarService;->Υ:J

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    if-eqz v0, :cond_2a

    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v9, p1, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    :cond_2a
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    if-eqz v0, :cond_2b

    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v9, p1, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    :cond_2b
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->Ρ:Z

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ϔ()V

    :cond_2c
    :goto_f
    return-void

    .line 51
    :pswitch_8
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 52
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_2d

    goto :goto_10

    :cond_2d
    iput-boolean v10, p1, Lcom/byd/launcher/NavBarService;->Ξ:Z

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, v10}, Lo/vl;->Ρ(Z)V

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    :goto_10
    return-void

    .line 53
    :pswitch_9
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 54
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_2f

    goto/16 :goto_14

    :cond_2f
    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->ϩ:Z

    invoke-static {}, Lcom/byd/launcher/AppLauncherActivity;->Ͱ()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 55
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    sput-object v9, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/byd/launcher/AppLauncherActivity;->finish()V

    .line 56
    :cond_30
    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    iput-object v9, p1, Lcom/byd/launcher/NavBarService;->ϑ:Ljava/lang/String;

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    invoke-virtual {p1, v10}, Lo/nd;->Έ(Z)V

    goto/16 :goto_14

    :cond_31
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    if-eqz v0, :cond_32

    .line 57
    iget-boolean v0, v0, Lo/ff;->ͷ:Z

    if-eqz v0, :cond_32

    .line 58
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    invoke-virtual {p1}, Lo/ff;->ʹ()V

    goto/16 :goto_14

    :cond_32
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    if-eqz v0, :cond_33

    .line 59
    iget-boolean v1, v0, Lo/oj;->Ͷ:Z

    if-eqz v1, :cond_33

    .line 60
    invoke-virtual {v0}, Lo/oj;->ͻ()V

    goto/16 :goto_14

    :cond_33
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v0, :cond_35

    .line 61
    iget-object v1, v0, Lo/vl;->ΐ:Landroid/view/View;

    if-eqz v1, :cond_34

    move v1, v11

    goto :goto_11

    :cond_34
    move v1, v10

    :goto_11
    if-eqz v1, :cond_35

    .line 62
    invoke-virtual {v0}, Lo/vl;->ͼ()V

    goto :goto_14

    :cond_35
    if-eqz v0, :cond_37

    .line 63
    iget-object v1, v0, Lo/vl;->Ό:Landroid/view/View;

    if-eqz v1, :cond_36

    move v1, v11

    goto :goto_12

    :cond_36
    move v1, v10

    :goto_12
    if-eqz v1, :cond_37

    .line 64
    invoke-virtual {v0, v9}, Lo/vl;->ͻ(Landroid/view/View;)V

    goto :goto_14

    .line 65
    :cond_37
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Β()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_14

    :cond_38
    invoke-virtual {p1, v11}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Β()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/byd/launcher/NavBarService;->Ψ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    goto :goto_13

    :cond_39
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Β()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/byd/launcher/NavBarService;->Ψ:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    :goto_13
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    invoke-virtual {v0, v10}, Lo/nd;->Έ(Z)V

    :cond_3a
    iput-boolean v11, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    iput-object v9, p1, Lcom/byd/launcher/NavBarService;->ϑ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ϔ()V

    :cond_3b
    :goto_14
    return-void

    .line 66
    :pswitch_a
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    :try_start_4
    iget v0, p1, Lcom/byd/launcher/NavBarService;->Δ:I

    if-ne v0, v6, :cond_3c

    move v6, v11

    :cond_3c
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_15

    :cond_3d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "setPadRotation"

    new-instance v3, Lo/oa;

    const/4 v4, 0x4

    invoke-direct {v3, p1, v6, v4}, Lo/oa;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    goto :goto_16

    :cond_3e
    :goto_15
    const-string p1, "Rotate screen: CoreServiceClient not connected"

    invoke-static {v7, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_16

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rotate screen failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p1, v0, v7}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_16
    return-void

    .line 69
    :pswitch_b
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    :try_start_5
    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    if-eqz v0, :cond_3f

    const-string p1, "Split screen ignored: already on home"

    invoke-static {v7, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_3f
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Α()V

    invoke-virtual {p1, v8}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v1, Lo/m9;

    const/16 v2, 0x19

    invoke-direct {v1, p1, v2}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v1, Lo/m9;

    const/16 v2, 0x1a

    invoke-direct {v1, p1, v2}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_17

    :catch_4
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Split screen failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v0, v7}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_17
    return-void

    .line 72
    :pswitch_c
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/byd/launcher/NavBarService;->χ:J

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ώ()V

    :try_start_6
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_40

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "expandNotificationsPanel"

    new-array v2, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_18

    :catch_5
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "expand"

    new-array v2, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_6
    :goto_18
    if-eqz v9, :cond_40

    :try_start_9
    new-array v0, v10, [Ljava/lang/Object;

    invoke-virtual {v9, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_19

    :catchall_1
    :cond_40
    const-string p1, "cmd statusbar expand-notifications"

    const/16 v0, 0x7d0

    invoke-static {p1, v0}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    :goto_19
    return-void

    .line 74
    :pswitch_d
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_41

    goto :goto_1b

    :cond_41
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_1a

    :cond_42
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 75
    iget v0, v0, Lo/Ζ;->ʹ:I

    add-int/2addr v0, v11

    if-gt v0, v8, :cond_44

    .line 76
    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->ϙ(I)V

    goto :goto_1b

    :cond_43
    :goto_1a
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    :cond_44
    :goto_1b
    return-void

    .line 77
    :pswitch_e
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_45

    goto :goto_1d

    :cond_45
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_1c

    :cond_46
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 78
    iget v0, v0, Lo/Ζ;->ʹ:I

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_48

    .line 79
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-nez v0, :cond_47

    goto :goto_1d

    :cond_47
    new-instance v2, Lo/ia;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    invoke-virtual {v0, v1, v9, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    goto :goto_1d

    .line 80
    :cond_48
    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->ϙ(I)V

    goto :goto_1d

    :cond_49
    :goto_1c
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    :goto_1d
    return-void

    .line 81
    :pswitch_f
    iget-object v0, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v1, :cond_4a

    goto :goto_1e

    :cond_4a
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->ζ(Landroid/view/View;)V

    :goto_1e
    return-void

    .line 82
    :pswitch_10
    iget-object v0, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v1, :cond_4b

    goto :goto_1f

    :cond_4b
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->ζ(Landroid/view/View;)V

    :goto_1f
    return-void

    .line 83
    :pswitch_11
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_4c

    goto :goto_21

    :cond_4c
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_20

    :cond_4d
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 84
    iget v0, v0, Lo/Ζ;->ͱ:I

    add-int/2addr v0, v11

    const/16 v1, 0x21

    if-gt v0, v1, :cond_4f

    .line 85
    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->Ϙ(I)V

    goto :goto_21

    :cond_4e
    :goto_20
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    :cond_4f
    :goto_21
    return-void

    .line 86
    :pswitch_12
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-boolean v0, p1, Lcom/byd/launcher/NavBarService;->lII:Z

    if-eqz v0, :cond_50

    goto :goto_23

    :cond_50
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_22

    :cond_51
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 87
    iget v0, v0, Lo/Ζ;->ͱ:I

    sub-int/2addr v0, v11

    const/16 v1, 0x11

    if-lt v0, v1, :cond_53

    .line 88
    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->Ϙ(I)V

    goto :goto_23

    :cond_52
    :goto_22
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    :cond_53
    :goto_23
    return-void

    .line 89
    :goto_24
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 90
    iget-object p1, p0, Lo/k9;->ˏ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Θ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
