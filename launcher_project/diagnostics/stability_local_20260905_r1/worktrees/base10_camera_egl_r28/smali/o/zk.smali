.class public final synthetic Lo/zk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/vl;


# direct methods
.method public synthetic constructor <init>(Lo/vl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/zk;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    # BASE-06: original selector 0 and default selector are system-policy options.
    iget v0, p0, Lo/zk;->ˋ:I
    if-eqz v0, :stability_policy_readonly
    if-ltz v0, :stability_policy_readonly
    const/16 v1, 0x9
    if-lt v0, v1, :stability_other_setting
    :stability_policy_readonly
    return-void
    :stability_other_setting

    iget p1, p0, Lo/zk;->ˋ:I

    const/16 v0, 0x8

    const-string v1, "NavBarSvc"

    const/4 v2, 0x0

    const-string v3, "launcher_prefs"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "instrument_nav_auto_start"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object v0, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clock_visible"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    new-instance v1, Lo/x7;

    invoke-direct {v1, v2, p1, p2}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 5
    :pswitch_2
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "force_landscape"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "toggleForceLandscape: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (per-activity only, no system settings modified)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetBarMgr"

    invoke-static {p2, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :pswitch_3
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object v0, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pip_enabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_1

    check-cast p1, Lo/cb;

    if-nez p2, :cond_1

    .line 8
    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 9
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz p1, :cond_1

    .line 10
    iget-boolean p2, p1, Lo/nd;->Η:Z

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1}, Lo/nd;->ͳ()V

    :cond_1
    return-void

    .line 12
    :pswitch_4
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    .line 13
    iget-object p1, p1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 14
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "glass_blur_enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->φ()V

    :cond_2
    return-void

    .line 17
    :pswitch_5
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "instrument_music_enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 18
    :pswitch_6
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "disable_animations"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 19
    :pswitch_7
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    .line 20
    iget-object v4, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "oem_real_statusbar_enabled"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_8

    check-cast p1, Lo/cb;

    .line 21
    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 22
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applyOemRealStatusBarMode: enabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p1, Lcom/byd/launcher/NavBarService;->π:Z

    iget-object v1, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    if-eqz p2, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ώ()V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Β:Z

    if-nez p2, :cond_6

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Α:Z

    if-nez p2, :cond_6

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Γ:Z

    if-nez p2, :cond_6

    .line 24
    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->ο:Z

    if-nez p2, :cond_6

    .line 25
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Β:Z

    if-nez p2, :cond_7

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Α:Z

    if-nez p2, :cond_7

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Γ:Z

    if-nez p2, :cond_7

    .line 26
    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->ο:Z

    if-nez p2, :cond_7

    .line 27
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Η()V

    :cond_8
    :goto_0
    return-void

    .line 28
    :pswitch_8
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    iget-object v4, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "oem_navbar_enabled"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_b

    check-cast p1, Lo/cb;

    .line 29
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applyOemNavBarMode: enabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7d0

    const-string v4, "settings put global policy_control immersive.status=com.byd.launcher"

    if-eqz p2, :cond_a

    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 31
    :cond_9
    :try_start_0
    invoke-static {v4, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "restoreSystemNavBar failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {p1, p2, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_a
    :try_start_1
    invoke-static {v4, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "hideSystemNavBar failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p2, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    :goto_1
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    if-eqz p2, :cond_b

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    :cond_b
    :goto_2
    return-void

    .line 36
    :goto_3
    iget-object p1, p0, Lo/zk;->ˏ:Lo/vl;

    .line 37
    iget-object v0, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "oem_statusbar_enabled"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_13

    check-cast p1, Lo/cb;

    .line 38
    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 39
    iput-boolean p2, p1, Lcom/byd/launcher/NavBarService;->ο:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "applyOemStatusBarMode: enabled="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_f

    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    if-eqz p2, :cond_c

    .line 40
    iput-boolean v2, p2, Lo/ff;->ͺ:Z

    invoke-virtual {p2}, Lo/ff;->Ά()V

    .line 41
    :cond_c
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_d

    :try_start_2
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    invoke-interface {p2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_d
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_e

    :try_start_3
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    invoke-interface {p2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_e
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͷ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result p2

    if-nez p2, :cond_13

    new-instance p2, Lo/lII;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, Lo/lII;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_f
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͷ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result p2

    if-nez p2, :cond_10

    new-instance p2, Lo/lII;

    const/16 v0, 0xd

    invoke-direct {p2, v0}, Lo/lII;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    :cond_10
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    const/16 v0, 0x30

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_11

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Β:Z

    if-nez p2, :cond_11

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Α:Z

    if-nez p2, :cond_11

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Γ:Z

    if-nez p2, :cond_11

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->π:Z

    if-nez p2, :cond_11

    :try_start_4
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ω()I

    move-result v5

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/16 v6, 0x7f0

    const v7, 0x1000128

    const/4 v8, -0x3

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p1, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    iget-object v4, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    invoke-interface {v3, v4, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϫ()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to re-add statusBarView: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p2, v3, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    :cond_11
    :goto_4
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_12

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Β:Z

    if-nez p2, :cond_12

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Α:Z

    if-nez p2, :cond_12

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Γ:Z

    if-nez p2, :cond_12

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->π:Z

    if-nez p2, :cond_12

    :try_start_5
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ω()I

    move-result v5

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/16 v6, 0x7f0

    const/16 v7, 0x128

    const/4 v8, -0x3

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    iget-object v3, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    invoke-interface {v0, v3, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to re-add swipeTouchZone: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {p2, v0, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Γ()V

    :cond_13
    :goto_6
    return-void

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
