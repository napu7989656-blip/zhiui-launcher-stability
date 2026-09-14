.class public final synthetic Lo/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilityNavActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;

.field public final synthetic Ͳ:I


# direct methods
.method public synthetic constructor <init>(Lo/ff;II)V
    .locals 1

    .line 1
    iput p3, p0, Lo/de;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/de;->ͱ:Lo/ff;

    .line 4
    .line 5
    iput p2, p0, Lo/de;->Ͳ:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1
    if-ne p3, v0, :nav_action_capture_done
    invoke-static {p1}, Lcom/byd/launcher/stability/NavAction;->begin(Lo/ff;)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    move-result-object v0
    iput-object v0, p0, Lo/de;->stabilityNavActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    :nav_action_capture_done
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/de;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/de;->Ͱ:I

    .line 2
    .line 3
    iget v1, p0, Lo/de;->Ͳ:I

    .line 4
    .line 5
    iget-object v2, p0, Lo/de;->ͱ:Lo/ff;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :pswitch_0
    iget-object v0, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v3, Lo/if;->qs_instrument_brightness_slider:I

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/SeekBar;

    .line 24
    .line 25
    iget-object v2, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 26
    .line 27
    sget v3, Lo/if;->qs_instrument_brightness_value:I

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    if-eqz v2, :cond_2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0xa

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void

    .line 52
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string v0, "media volume --show --stream 14 --set "

    .line 56
    .line 57
    :try_start_0
    iget-object v2, v2, Lo/ff;->ˋ:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/16 v1, 0x7d0

    .line 81
    .line 82
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "setNavVolumeViaAdb: "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v2, "QuickSettingsMgr"

    .line 95
    .line 96
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/byd/launcher/stability/NavAction;->finishJob(Lo/de;)V
    return-void

    .line 100
    :pswitch_2
    iget-object v0, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 101
    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    sget v3, Lo/if;->qs_instrument_brightness_slider:I

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/SeekBar;

    .line 112
    .line 113
    iget-object v2, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 114
    .line 115
    sget v3, Lo/if;->qs_instrument_brightness_value:I

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eq v3, v1, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    .line 133
    .line 134
    :cond_5
    if-eqz v2, :cond_6

    .line 135
    .line 136
    mul-int/lit8 v1, v1, 0xa

    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_6

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_2
    return-void

    .line 156
    :goto_3
    iget-object v0, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 157
    .line 158
    if-nez v0, :cond_7

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    sget v3, Lo/if;->qs_soc_slider:I

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/SeekBar;

    .line 168
    .line 169
    iget-object v3, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 170
    .line 171
    sget v4, Lo/if;->qs_soc_value:I

    .line 172
    .line 173
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Landroid/widget/TextView;

    .line 178
    .line 179
    iget-object v4, v2, Lo/ff;->ͳ:Landroid/view/View;

    .line 180
    .line 181
    sget v5, Lo/if;->qs_soc_icon:I

    .line 182
    .line 183
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroid/widget/ImageView;

    .line 188
    .line 189
    if-eqz v0, :cond_8

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 192
    .line 193
    .line 194
    :cond_8
    if-eqz v3, :cond_9

    .line 195
    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v6, "%"

    .line 205
    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    :cond_9
    if-eqz v4, :cond_b

    .line 217
    .line 218
    const/16 v5, 0x19

    .line 219
    .line 220
    if-le v1, v5, :cond_a

    .line 221
    .line 222
    sget v1, Lo/hf;->control_soc_set2:I

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    sget v1, Lo/hf;->control_soc_set1:I

    .line 226
    .line 227
    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    .line 229
    .line 230
    :cond_b
    invoke-virtual {v2, v0, v3, v4}, Lo/ff;->Ώ(Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 231
    .line 232
    .line 233
    :goto_5
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
