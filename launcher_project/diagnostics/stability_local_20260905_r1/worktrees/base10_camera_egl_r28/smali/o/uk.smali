.class public final synthetic Lo/uk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/vl;


# direct methods
.method public synthetic constructor <init>(Lo/vl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/uk;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/uk;->ˏ:Lo/vl;

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
    .locals 13

    iget v0, p0, Lo/uk;->ˋ:I

    const-string v1, "com.android.launcher3"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x2

    const v5, -0x22cccccd

    const/16 v6, 0x8

    const/16 v7, 0xc

    const/high16 v8, 0x41500000    # 13.0f

    const/4 v9, -0x1

    const-string v10, "WidgetBarMgr"

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    const-string v0, "fullscreen_packages"

    const-string v1, "\u9009\u62e9\u9690\u85cf\u72b6\u6001\u680f\u548c\u5bfc\u822a\u680f\u7684\u5e94\u7528"

    invoke-virtual {p1, v0, v1}, Lo/vl;->Φ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v10, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u4ec5\u652f\u630118\u63a7\u5236\u5668"

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v7}, Lo/vl;->ͽ(I)I

    move-result v8

    invoke-virtual {v0, v6}, Lo/vl;->ͽ(I)I

    move-result v9

    invoke-virtual {v0, v7}, Lo/vl;->ͽ(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lo/vl;->ͽ(I)I

    move-result v10

    invoke-virtual {v12, v8, v9, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v6}, Lo/vl;->ͽ(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Lo/vl;->ͽ(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2}, Lo/vl;->ͽ(I)I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object p1, v0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v0, Lo/dk;

    invoke-direct {v0, v1, v11}, Lo/dk;-><init>(Landroid/widget/PopupWindow;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v10, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u58c1\u7eb8\u653e\u7f6e\u4e8e/sdcard/launcher/wallpapers"

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v7}, Lo/vl;->ͽ(I)I

    move-result v8

    invoke-virtual {v0, v6}, Lo/vl;->ͽ(I)I

    move-result v9

    invoke-virtual {v0, v7}, Lo/vl;->ͽ(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lo/vl;->ͽ(I)I

    move-result v10

    invoke-virtual {v12, v8, v9, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v6}, Lo/vl;->ͽ(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Lo/vl;->ͽ(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v2}, Lo/vl;->ͽ(I)I

    move-result v2

    invoke-virtual {v1, p1, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object p1, v0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v0, Lo/dk;

    invoke-direct {v0, v1, v3}, Lo/dk;-><init>(Landroid/widget/PopupWindow;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6
    :pswitch_3
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ά()V

    iget-object v0, p1, Lo/vl;->ˏ:Landroid/content/Context;

    const-string v1, "\u58c1\u7eb8\u5237\u65b0\u4e2d..."

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p1}, Lo/vl;->ͼ()V

    return-void

    .line 8
    :pswitch_4
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Lo/vl;->ͼ()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lo/lII;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lo/lII;-><init>(I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 9
    :pswitch_5
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    iget-object v0, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x10302d2

    goto :goto_0

    :cond_1
    const v1, 0x10302d1

    :goto_0
    const-string v2, "widget_byd_song"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "BYD\u5b8b (\u9ed8\u8ba4)"

    const-string v4, "\u4ece\u76f8\u518c\u9009\u62e9\u56fe\u7247..."

    const-string v5, "\u6062\u590d\u9ed8\u8ba4\u56fe\u7247"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    sget v6, Lo/lf;->Theme_NavDemo:I

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v0, "\u9009\u62e9\u8f66\u8f86\u56fe\u7247"

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lo/ek;

    invoke-direct {v0, p1, v2, v11, v3}, Lo/ek;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u53d6\u6d88"

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showCarModelPicker failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v0, v10}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 11
    :pswitch_6
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    iget-boolean v0, p1, Lo/vl;->Α:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lo/vl;->ͼ()V

    :cond_3
    return-void

    .line 12
    :pswitch_7
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v0

    invoke-virtual {v0}, Lo/u;->ˏ()V

    .line 14
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    new-instance v3, Lo/ia;

    invoke-direct {v3, v0, v6}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    const-string v0, "getTripInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    :cond_5
    :goto_2
    const/16 v0, 0x7d0

    .line 17
    :try_start_1
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ϥ(I)V

    invoke-virtual {p1}, Lo/vl;->Σ()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.launcher3.Launcher"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p1, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v1, Lo/mk;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lo/mk;-><init>(Lo/vl;I)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openJourneyReport failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1, v0, v10}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void

    .line 19
    :pswitch_8
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v0

    invoke-virtual {v0}, Lo/u;->ˏ()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_7

    check-cast p1, Lo/cb;

    .line 21
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 22
    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1, v11}, Lcom/byd/launcher/NavBarService;->ς(I)V

    :cond_7
    return-void

    .line 23
    :pswitch_9
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v0

    invoke-virtual {v0}, Lo/u;->ˏ()V

    iget-object p1, p1, Lo/vl;->Έ:Lo/tl;

    if-eqz p1, :cond_8

    check-cast p1, Lo/cb;

    .line 25
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϧ()V

    :cond_8
    return-void

    .line 26
    :pswitch_a
    iget-object v0, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v1

    invoke-virtual {v1}, Lo/u;->ˏ()V

    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    if-eqz v0, :cond_9

    check-cast v0, Lo/cb;

    invoke-virtual {v0, p1}, Lo/cb;->onMusicClick(Landroid/view/View;)V

    :cond_9
    return-void

    .line 28
    :pswitch_b
    iget-object v0, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v1

    invoke-virtual {v1}, Lo/u;->ˏ()V

    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    if-eqz v0, :cond_a

    check-cast v0, Lo/cb;

    invoke-virtual {v0, p1}, Lo/cb;->onMapCompanyClick(Landroid/view/View;)V

    :cond_a
    return-void

    .line 30
    :pswitch_c
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v0

    invoke-virtual {v0}, Lo/u;->ˏ()V

    invoke-virtual {p1}, Lo/vl;->Χ()V

    return-void

    .line 32
    :pswitch_d
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v0

    invoke-virtual {v0}, Lo/u;->ˏ()V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Lo/vl;->Ζ(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 35
    :pswitch_e
    iget-object v0, p0, Lo/uk;->ˏ:Lo/vl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    move-result-object v1

    invoke-virtual {v1}, Lo/u;->ˏ()V

    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    if-eqz v0, :cond_b

    check-cast v0, Lo/cb;

    invoke-virtual {v0, p1}, Lo/cb;->onMapHomeClick(Landroid/view/View;)V

    :cond_b
    return-void

    .line 37
    :pswitch_f
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    iget-object v0, p1, Lo/vl;->Ͷ:Lo/km;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v11}, Lo/km;->ͱ(Z)V

    invoke-virtual {p1}, Lo/vl;->Ο()V

    :cond_c
    return-void

    .line 38
    :goto_4
    iget-object p1, p0, Lo/uk;->ˏ:Lo/vl;

    const-string v0, "statusbar_hidden_packages"

    const-string v1, "\u9009\u62e9\u4ec5\u9690\u85cf\u72b6\u6001\u680f\u7684\u5e94\u7528"

    invoke-virtual {p1, v0, v1}, Lo/vl;->Φ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
