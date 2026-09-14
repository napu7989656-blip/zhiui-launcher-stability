.class public final Lo/we;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/uh;
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/we;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/we;->ˏ:Ljava/lang/Object;

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

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/we;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/we;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const-string v0, "bydScreenOff error: "

    .line 8
    .line 9
    const-string v1, "QuickSettingsMgr"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    const-string v0, "queryTripInfo error: "

    .line 16
    .line 17
    const-string v1, "VehicleCtrlMgr"

    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/we;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/we;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "bydScreenOff success: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "QuickSettingsMgr"

    .line 22
    .line 23
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    iget-object v0, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lo/oj;

    .line 30
    .line 31
    iget-object v0, v0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v1, Lo/ag;

    .line 34
    .line 35
    const/16 v2, 0x15

    .line 36
    .line 37
    invoke-direct {v1, v2, p0, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˋ(FF)V
    .locals 4

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/we;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    const/high16 v0, -0x3d600000    # -80.0f

    .line 2
    .line 3
    cmpg-float p1, p1, v0

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    const/high16 p1, -0x3bb80000    # -800.0f

    .line 8
    .line 9
    cmpg-float p1, p2, p1

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    iget-object p2, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Lo/ff;

    .line 20
    .line 21
    invoke-virtual {p2}, Lo/ff;->ͳ()V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p2, Lo/ff;

    .line 27
    .line 28
    iget-object p2, p2, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Lo/td;

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    invoke-direct {v0, v1, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x12c

    .line 38
    .line 39
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    sget-object p2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/byd/launcher/NavBarService;->ό()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lo/ff;

    .line 52
    .line 53
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 54
    .line 55
    new-instance v1, Lo/y9;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {v1, p2, v2}, Lo/y9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x1f4

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lo/ff;

    .line 71
    .line 72
    invoke-virtual {p1}, Lo/ff;->ʹ()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object p1, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lo/ff;

    .line 79
    .line 80
    iget-object p1, p1, Lo/ff;->ʹ:Landroid/view/View;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-wide/16 v0, 0xc8

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-object p2, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lo/ff;

    .line 111
    .line 112
    iget-object p1, p1, Lo/ff;->Ͷ:Landroid/view/View;

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/high16 v2, 0x3f800000    # 1.0f

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    return-void
.end method
