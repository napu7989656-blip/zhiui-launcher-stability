.class public final Lo/ye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:[J

.field public final synthetic ͱ:Landroid/widget/TextView;

.field public final synthetic Ͳ:Lo/ff;


# direct methods
.method public constructor <init>(Lo/ff;[JLandroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ye;->Ͳ:Lo/ff;

    iput-object p2, p0, Lo/ye;->Ͱ:[J

    iput-object p3, p0, Lo/ye;->ͱ:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ye;->Ͳ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ye;->Ͳ:Lo/ff;

    .line 2
    .line 3
    iget-object v0, v0, Lo/ff;->Δ:Lo/xe;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lo/ye;->Ͱ:[J

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aget-wide v4, v2, v3

    .line 16
    .line 17
    sub-long/2addr v0, v4

    .line 18
    const-wide/16 v4, 0xbb8

    .line 19
    .line 20
    sub-long/2addr v4, v0

    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    cmp-long v0, v4, v0

    .line 24
    .line 25
    if-gtz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lo/ye;->Ͳ:Lo/ff;

    .line 28
    .line 29
    const-string v1, "QuickSettingsMgr"

    .line 30
    .line 31
    iget-object v2, v0, Lo/ff;->Δ:Lo/xe;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :try_start_0
    iget-object v4, v0, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 37
    .line 38
    invoke-interface {v4, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    const-string v2, "exitCleanMode: overlay removed"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v5, "exitCleanMode: "

    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v4, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 v1, 0x0

    .line 59
    iput-object v1, v0, Lo/ff;->Δ:Lo/xe;

    .line 60
    .line 61
    :try_start_1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iput-boolean v3, v0, Lcom/byd/launcher/NavBarService;->Θ:Z

    .line 66
    .line 67
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ι:Lo/na;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 77
    .line 78
    new-instance v2, Lo/llI;

    .line 79
    .line 80
    const/16 v3, 0x1b

    .line 81
    .line 82
    invoke-direct {v2, v0, v3}, Lo/llI;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-wide/16 v0, 0x3e7

    .line 90
    .line 91
    add-long/2addr v4, v0

    .line 92
    const-wide/16 v0, 0x3e8

    .line 93
    .line 94
    div-long/2addr v4, v0

    .line 95
    iget-object v0, p0, Lo/ye;->ͱ:Landroid/widget/TextView;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, "\u7ee7\u7eed\u957f\u6309 "

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, "s ..."

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lo/ye;->Ͳ:Lo/ff;

    .line 120
    .line 121
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 122
    .line 123
    const-wide/16 v1, 0x64

    .line 124
    .line 125
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .line 127
    .line 128
    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method
