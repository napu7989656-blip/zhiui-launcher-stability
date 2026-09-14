.class public final synthetic Lo/ϓ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Ljava/lang/Object;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;

.field public final synthetic Ͷ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/AppLauncherActivity;ILjava/lang/String;Lo/Ϡ;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lo/ϓ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ϓ;->Ͳ:Ljava/lang/Object;

    iput p2, p0, Lo/ϓ;->ͱ:I

    iput-object p3, p0, Lo/ϓ;->ͳ:Ljava/lang/Object;

    iput-object p4, p0, Lo/ϓ;->Ͷ:Ljava/lang/Object;

    iput-object p5, p0, Lo/ϓ;->ʹ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/ff;Landroid/widget/SeekBar;ILandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lo/ϓ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ϓ;->Ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/ϓ;->ͳ:Ljava/lang/Object;

    iput p3, p0, Lo/ϓ;->ͱ:I

    iput-object p4, p0, Lo/ϓ;->ʹ:Ljava/lang/Object;

    iput-object p5, p0, Lo/ϓ;->Ͷ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ϓ;->Ͳ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ϓ;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/ϓ;->ʹ:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lo/ϓ;->Ͷ:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lo/ϓ;->ͳ:Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, p0, Lo/ϓ;->ͱ:I

    .line 10
    .line 11
    iget-object v5, p0, Lo/ϓ;->Ͳ:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :pswitch_0
    check-cast v5, Lcom/byd/launcher/AppLauncherActivity;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    move-object v9, v2

    .line 23
    check-cast v9, Lo/Ϡ;

    .line 24
    .line 25
    move-object v10, v1

    .line 26
    check-cast v10, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v5, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    .line 29
    .line 30
    const-string v1, "am start-activity -W --display "

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    :try_start_0
    invoke-static {v5}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_0

    .line 41
    .line 42
    new-instance v1, Lo/Ψ;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-direct {v1, v5, v3}, Lo/Ψ;-><init>(Lcom/byd/launcher/AppLauncherActivity;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " -n "

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/16 v3, 0x2710

    .line 70
    .line 71
    invoke-static {v1, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    if-eqz v11, :cond_2

    .line 76
    .line 77
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v3, "status: ok"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v3, "complete"

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    :cond_1
    move v8, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const/4 v1, 0x0

    .line 104
    move v8, v1

    .line 105
    :goto_0
    new-instance v1, Lo/Ϊ;

    .line 106
    .line 107
    move-object v6, v1

    .line 108
    move-object v7, v5

    .line 109
    invoke-direct/range {v6 .. v11}, Lo/Ϊ;-><init>(Lcom/byd/launcher/AppLauncherActivity;ZLo/Ϡ;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception v1

    .line 117
    new-instance v3, Lo/Ω;

    .line 118
    .line 119
    invoke-direct {v3, v5, v1, v2}, Lo/Ω;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/lang/Exception;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void

    .line 126
    :goto_3
    check-cast v5, Lo/ff;

    .line 127
    .line 128
    check-cast v3, Landroid/widget/SeekBar;

    .line 129
    .line 130
    check-cast v1, Landroid/widget/TextView;

    .line 131
    .line 132
    check-cast v2, Landroid/widget/ImageView;

    .line 133
    .line 134
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 140
    .line 141
    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v6, "%"

    .line 153
    .line 154
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    if-eqz v2, :cond_5

    .line 165
    .line 166
    const/16 v0, 0x19

    .line 167
    .line 168
    if-le v4, v0, :cond_4

    .line 169
    .line 170
    sget v0, Lo/hf;->control_soc_set2:I

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_4
    sget v0, Lo/hf;->control_soc_set1:I

    .line 174
    .line 175
    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {v5, v3, v1, v2}, Lo/ff;->Ώ(Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
