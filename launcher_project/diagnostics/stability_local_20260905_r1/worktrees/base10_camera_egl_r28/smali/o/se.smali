.class public final Lo/se;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Landroid/widget/TextView;

.field public final synthetic Ͱ:Lo/ff;


# direct methods
.method public synthetic constructor <init>(Lo/ff;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/se;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/se;->Ͱ:Lo/ff;

    .line 4
    .line 5
    iput-object p2, p0, Lo/se;->ˏ:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget p1, p0, Lo/se;->ˋ:I

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    iget-object p1, p0, Lo/se;->ˏ:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    mul-int/2addr p2, v0

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_1
    iget-object p1, p0, Lo/se;->ˏ:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-nez p3, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-gtz p2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/16 p1, 0x64

    .line 40
    .line 41
    if-lt p2, p1, :cond_4

    .line 42
    .line 43
    const/16 v0, 0xff

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    int-to-float p1, p2

    .line 47
    const/high16 p2, 0x43750000    # 245.0f

    .line 48
    .line 49
    mul-float/2addr p1, p2

    .line 50
    const/high16 p2, 0x42c80000    # 100.0f

    .line 51
    .line 52
    div-float/2addr p1, p2

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr v0, p1

    .line 58
    :goto_0
    :try_start_0
    iget-object p1, p0, Lo/se;->Ͱ:Lo/ff;

    .line 59
    .line 60
    iget-object p1, p1, Lo/ff;->ˋ:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "screen_brightness"

    .line 67
    .line 68
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    iget-object p1, p0, Lo/se;->Ͱ:Lo/ff;

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p1, Lo/ff;->Ζ:Z

    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    :goto_2
    if-eqz p3, :nav_programmatic_progress
    iget-object v1, p0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {v1}, Lcom/byd/launcher/stability/NavRead;->changed(Lo/ff;)V
    :nav_programmatic_progress
    iget-object p1, p0, Lo/se;->ˏ:Landroid/widget/TextView;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    iget v0, p0, Lo/se;->ˋ:I
    const/4 v1, 0x2
    if-ne v0, v1, :nav_start_done
    iget-object v0, p0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :nav_start_done
    const/4 v1, 0x1
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/NavRead;->tracking(Lo/ff;Z)V
    :nav_start_done
    iget v0, p0, Lo/se;->ˋ:I
    const/4 v1, 0x1
    if-ne v0, v1, :done
    iget-object v0, p0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :done
    iget-object v0, v0, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/byd/launcher/stability/InstrumentReads;->tracking(Z)V
    :done
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/se;->Ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/se;->ˋ:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :pswitch_0
    iget-object v3, p0, Lo/se;->Ͱ:Lo/ff;
    iget-object v3, v3, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    const/4 v4, 0x0
    invoke-virtual {v3, v4}, Lcom/byd/launcher/stability/InstrumentReads;->tracking(Z)V
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, p1

    .line 21
    :goto_0
    if-le v3, v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v3

    .line 25
    :goto_1
    add-int/2addr v1, v2

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "instBrt onStopTrackingTouch: step="

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " -> apiVal="

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "QuickSettingsMgr"

    .line 49
    .line 50
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lo/se;->Ͱ:Lo/ff;

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iput-wide v3, v2, Lo/ff;->Η:J

    .line 60
    .line 61
    new-instance v2, Ljava/lang/Thread;

    .line 62
    .line 63
    new-instance v3, Lo/ue;

    .line 64
    .line 65
    invoke-direct {v3, p0, v1, p1, v0}, Lo/ue;-><init>(Ljava/lang/Object;III)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Lo/se;->Ͱ:Lo/ff;

    .line 76
    .line 77
    iget-boolean v0, v0, Lo/ff;->Ζ:Z

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-gtz p1, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/16 v0, 0x64

    .line 90
    .line 91
    if-lt p1, v0, :cond_4

    .line 92
    .line 93
    const/16 v1, 0xff

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    int-to-float p1, p1

    .line 97
    const/high16 v0, 0x43750000    # 245.0f

    .line 98
    .line 99
    mul-float/2addr p1, v0

    .line 100
    const/high16 v0, 0x42c80000    # 100.0f

    .line 101
    .line 102
    div-float/2addr p1, v0

    .line 103
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    add-int/2addr v1, p1

    .line 108
    :goto_2
    new-instance p1, Ljava/lang/Thread;

    .line 109
    .line 110
    new-instance v0, Lo/bg;

    .line 111
    .line 112
    const/4 v2, 0x2

    .line 113
    invoke-direct {v0, p0, v1, v2}, Lo/bg;-><init>(Ljava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 120
    .line 121
    .line 122
    :goto_3
    return-void

    .line 123
    :goto_4
    iget-object v3, p0, Lo/se;->Ͱ:Lo/ff;
    const/4 v4, 0x0
    invoke-static {v3, v4}, Lcom/byd/launcher/stability/NavRead;->tracking(Lo/ff;Z)V
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iget-object v0, p0, Lo/se;->Ͱ:Lo/ff;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance v1, Ljava/lang/Thread;

    .line 133
    .line 134
    new-instance v3, Lo/de;

    .line 135
    .line 136
    invoke-direct {v3, v0, p1, v2}, Lo/de;-><init>(Lo/ff;II)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
