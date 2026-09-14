.class public final Lo/re;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lo/re;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/re;->Ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lo/re;->ˏ:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lo/re;->ͱ:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/re;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/re;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lo/re;->ˏ:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    if-eqz p3, :soc_programmatic_progress
    iget-object v0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/SocRead;->changed(Lo/ff;)V
    :soc_programmatic_progress
    if-eqz p3, :cond_1

    .line 12
    .line 13
    const/16 p3, 0x46

    .line 14
    .line 15
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    const/16 v0, 0x19

    .line 20
    .line 21
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eq p3, p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    move-object p2, v2

    .line 31
    check-cast p2, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, "%"

    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p2, p0, Lo/re;->Ͱ:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Lo/ff;

    .line 58
    .line 59
    check-cast v2, Landroid/widget/TextView;

    .line 60
    .line 61
    check-cast v1, Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {p2, p1, v2, v1}, Lo/ff;->Ώ(Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    check-cast v2, Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    if-eqz p3, :cond_4

    .line 79
    .line 80
    check-cast v1, Landroid/media/AudioManager;

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 p1, 0x3

    .line 86
    const/4 p3, 0x0

    .line 87
    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    return-void

    .line 91
    :goto_1
    if-eqz p3, :cond_6

    .line 92
    .line 93
    check-cast v2, Lo/nj;

    .line 94
    .line 95
    iget p3, v2, Lo/nj;->ͺ:I

    .line 96
    .line 97
    iget v0, v2, Lo/nj;->ͻ:I

    .line 98
    .line 99
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eq p3, p2, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    .line 111
    .line 112
    :cond_5
    check-cast v1, Lo/kj;

    .line 113
    .line 114
    iget-object p1, v1, Lo/kj;->Ͱ:Landroid/widget/TextView;

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object p3, v2, Lo/nj;->ͽ:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/re;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    const/4 v1, 0x1
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/SocRead;->tracking(Lo/ff;Z)V
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 14

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/re;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/re;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    const/16 v2, 0x19

    .line 6
    .line 7
    const/16 v3, 0x46

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    const/4 v4, 0x0
    invoke-static {v0, v4}, Lcom/byd/launcher/stability/SocRead;->tracking(Lo/ff;Z)V
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    check-cast v1, Landroid/widget/ImageView;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    if-le p1, v2, :cond_0

    .line 30
    .line 31
    sget v0, Lo/hf;->control_soc_set2:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget v0, Lo/hf;->control_soc_set1:I

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    .line 40
    .line 41
    new-instance v1, Lo/bg;

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-direct {v1, p0, p1, v2}, Lo/bg;-><init>(Ljava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    .line 52
    .line 53
    :pswitch_1
    return-void

    .line 54
    :goto_1
    iget-object v0, p0, Lo/re;->ˏ:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lo/nj;

    .line 57
    .line 58
    iget v4, v0, Lo/nj;->ͺ:I

    .line 59
    .line 60
    iget v5, v0, Lo/nj;->ͻ:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v4, p0, Lo/re;->Ͱ:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Lo/mj;

    .line 77
    .line 78
    iget-object v5, v4, Lo/mj;->ˏ:Lo/oj;

    .line 79
    .line 80
    sget v6, Lo/oj;->Α:I

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iput p1, v0, Lo/nj;->ͼ:I

    .line 86
    .line 87
    iget v6, v0, Lo/nj;->ͺ:I

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    const/4 v8, 0x0

    .line 91
    if-le p1, v6, :cond_2

    .line 92
    .line 93
    move v6, v7

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move v6, v8

    .line 96
    :goto_2
    iput-boolean v6, v0, Lo/nj;->Ͷ:Z

    .line 97
    .line 98
    const-string v6, "setSunshadeState"

    .line 99
    .line 100
    const-string v9, "setMoonRoofState"

    .line 101
    .line 102
    iget-object v10, v0, Lo/nj;->Ͳ:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v10, :cond_3

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    const-string v12, "setSOCTarget"

    .line 112
    .line 113
    const/4 v13, -0x1

    .line 114
    sparse-switch v11, :sswitch_data_0

    .line 115
    .line 116
    .line 117
    :goto_3
    move v7, v13

    .line 118
    goto :goto_4

    .line 119
    :sswitch_0
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-nez v7, :cond_4

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    const/4 v7, 0x2

    .line 127
    goto :goto_4

    .line 128
    :sswitch_1
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-nez v11, :cond_6

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :sswitch_2
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_5

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move v7, v8

    .line 143
    :cond_6
    :goto_4
    packed-switch v7, :pswitch_data_1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, p1, v10}, Lo/oj;->Ύ(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :pswitch_2
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 159
    .line 160
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, "value"

    .line 164
    .line 165
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    invoke-virtual {v5, v12, v2, p1}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :pswitch_3
    if-nez p1, :cond_7

    .line 174
    .line 175
    invoke-virtual {v5, v8, v9}, Lo/oj;->Ύ(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_7
    const/16 v2, 0x15

    .line 180
    .line 181
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-virtual {v5, p1, v9}, Lo/oj;->Ύ(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :pswitch_4
    invoke-virtual {v5, p1, v6}, Lo/oj;->Ύ(ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :catch_0
    :goto_5
    iget-object p1, v4, Lo/mj;->ˏ:Lo/oj;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_8

    .line 202
    .line 203
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_8
    check-cast v1, Lo/kj;

    .line 207
    .line 208
    iget-object p1, v1, Lo/kj;->ˋ:Landroid/widget/ImageView;

    .line 209
    .line 210
    iget-boolean v2, v0, Lo/nj;->Ͷ:Z

    .line 211
    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    iget v2, v0, Lo/nj;->ͱ:I

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_9
    iget v2, v0, Lo/nj;->Ͱ:I

    .line 218
    .line 219
    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    .line 221
    .line 222
    iget-boolean p1, v0, Lo/nj;->Ͷ:Z

    .line 223
    .line 224
    if-eqz p1, :cond_a

    .line 225
    .line 226
    const p1, 0x664fc3f7

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_a
    const p1, 0x33ffffff

    .line 231
    .line 232
    .line 233
    :goto_7
    iget-object v0, v1, Lo/kj;->Ͳ:Landroidx/cardview/widget/CardView;

    .line 234
    .line 235
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x5c4b3392 -> :sswitch_2
        -0x1a096f26 -> :sswitch_1
        0x7220c7b6 -> :sswitch_0
    .end sparse-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
