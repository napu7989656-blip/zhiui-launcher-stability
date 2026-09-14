.class public final synthetic Lo/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput p1, p0, Lo/ag;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/ag;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo/ag;->Ͳ:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x10
    if-ne p1, v0, :tile_capture_done
    move-object v0, p2
    check-cast v0, Lo/ff;
    move-object v1, p3
    check-cast v1, Ljava/util/List;
    invoke-static {v0, v1}, Lcom/byd/launcher/stability/TileSnapshots;->capture(Lo/ff;Ljava/util/List;)Lcom/byd/launcher/stability/TileBatch;
    move-result-object v0
    iput-object v0, p0, Lo/ag;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    :tile_capture_done
    return-void
.end method

.method private final ˋ()V
    .locals 12

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ag;->ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ag;->ͱ:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/nd;

    .line 4
    .line 5
    iget-object v1, p0, Lo/ag;->Ͳ:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Runnable;

    .line 8
    .line 9
    iget-object v2, v0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 20
    .line 21
    and-int/lit8 v3, v3, 0x30

    .line 22
    .line 23
    const/16 v4, 0x20

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    move v3, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 40
    .line 41
    new-instance v6, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    .line 48
    .line 49
    const/16 v7, 0x11

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52
    .line 53
    .line 54
    const/high16 v8, 0x41c00000    # 24.0f

    .line 55
    .line 56
    mul-float/2addr v8, v4

    .line 57
    float-to-int v8, v8

    .line 58
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    new-instance v8, Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    const-string v9, "ic_trunk"

    .line 67
    .line 68
    invoke-virtual {v0, v9}, Lo/nd;->Ͳ(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    if-eqz v3, :cond_2

    .line 78
    .line 79
    const v0, -0x9b4a0a

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const v0, -0xe1771b

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 91
    .line 92
    .line 93
    const/high16 v0, 0x42400000    # 48.0f

    .line 94
    .line 95
    mul-float/2addr v0, v4

    .line 96
    float-to-int v0, v0

    .line 97
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    .line 99
    invoke-direct {v9, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    const/high16 v0, 0x41400000    # 12.0f

    .line 103
    .line 104
    mul-float/2addr v0, v4

    .line 105
    float-to-int v0, v0

    .line 106
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 107
    .line 108
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    const-string v8, "\u6253\u5f00\u540e\u5907\u7bb1"

    .line 117
    .line 118
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    const/high16 v8, 0x41900000    # 18.0f

    .line 122
    .line 123
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    invoke-virtual {v0, v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 128
    .line 129
    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    const/4 v9, -0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    const/high16 v9, -0x1000000

    .line 135
    .line 136
    :goto_2
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    .line 141
    .line 142
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .line 144
    const/4 v10, -0x2

    .line 145
    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    const/high16 v11, 0x41000000    # 8.0f

    .line 149
    .line 150
    mul-float/2addr v11, v4

    .line 151
    float-to-int v11, v11

    .line 152
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 153
    .line 154
    invoke-virtual {v6, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    const-string v9, "\u8bf7\u786e\u8ba4\u8f66\u8f86\u5468\u56f4\u5b89\u5168\u540e\u518d\u64cd\u4f5c"

    .line 163
    .line 164
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    const/high16 v9, 0x41600000    # 14.0f

    .line 168
    .line 169
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    .line 171
    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    const v9, -0x66000001

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    const/high16 v9, -0x67000000

    .line 179
    .line 180
    :goto_3
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 184
    .line 185
    .line 186
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    const/high16 v9, 0x41a00000    # 20.0f

    .line 192
    .line 193
    mul-float/2addr v4, v9

    .line 194
    float-to-int v4, v4

    .line 195
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 196
    .line 197
    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 201
    .line 202
    if-eqz v3, :cond_5

    .line 203
    .line 204
    const v3, 0x10302d1

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    const v3, 0x10302d2

    .line 209
    .line 210
    .line 211
    :goto_4
    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v2, Lo/z9;

    .line 219
    .line 220
    invoke-direct {v2, v5, v1}, Lo/z9;-><init>(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const-string v1, "\u786e\u8ba4\u6253\u5f00"

    .line 224
    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const-string v1, "\u53d6\u6d88"

    .line 230
    .line 231
    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_6

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const/16 v2, 0x7f0

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 252
    .line 253
    .line 254
    :cond_6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method private final ˏ()V
    .locals 12

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ag;->ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ag;->ͱ:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/gh;

    .line 4
    .line 5
    iget-object v1, p0, Lo/ag;->Ͳ:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "SherpaOnnxTts"

    .line 10
    .line 11
    iget-object v3, v0, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lo/gh;->ͱ()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    array-length v3, v1

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    if-ge v5, v3, :cond_4

    .line 27
    .line 28
    aget-object v6, v1, v5

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v8, "|0|1.0"

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    iget-object v8, v0, Lo/gh;->ͷ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .line 66
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :try_start_0
    iget-object v9, v0, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 74
    .line 75
    const/high16 v10, 0x3f800000    # 1.0f

    .line 76
    .line 77
    invoke-virtual {v9, v4, v6, v10}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ(ILjava/lang/String;F)Lcom/k2fsa/sherpa/onnx/GeneratedAudio;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    iget-object v10, v9, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->ˋ:[F

    .line 82
    .line 83
    array-length v11, v10

    .line 84
    if-lez v11, :cond_3

    .line 85
    .line 86
    new-instance v11, Lo/fh;

    .line 87
    .line 88
    invoke-virtual {v10}, [F->clone()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    check-cast v10, [F

    .line 93
    .line 94
    iget v9, v9, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->ˏ:I

    .line 95
    .line 96
    invoke-direct {v11, v10, v9}, Lo/fh;-><init>([FI)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-static {v7, v11}, Lo/gh;->Ͷ(Ljava/lang/String;Lo/fh;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v7}, Lo/gh;->ˋ(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v8, "Pre-generated: "

    .line 114
    .line 115
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v2, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v7

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v9, "Pre-generate failed: "

    .line 133
    .line 134
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v6, " - "

    .line 141
    .line 142
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {v7, v8, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ag;->ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    move-object/from16 v1, p0

    iget v0, v1, Lo/ag;->Ͱ:I

    const/16 v2, 0x9

    const-string v3, "\u53d6\u6d88"

    const/4 v4, -0x2

    const-string v5, "drawable"

    const/high16 v6, 0x41c00000    # 24.0f

    const/16 v7, 0x11

    const-string v8, "VehicleCtrlMgr"

    const-string v9, "totalMileage"

    const-string v10, "totalElecCon"

    const-string v11, "totalFuelCon"

    const/high16 v14, 0x41600000    # 14.0f

    const/4 v15, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lo/ag;->ˏ()V

    return-void

    :pswitch_0
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/c8;

    iget-object v3, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lo/c8;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/nd;

    iget v4, v0, Lo/nd;->Ε:I

    .line 2
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lo/h2;

    invoke-direct {v6, v0, v3, v4, v2}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/nd;

    iget-object v3, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 4
    iget v4, v0, Lo/nd;->Ε:I

    .line 5
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lo/h2;

    invoke-direct {v6, v0, v3, v4, v2}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lo/ag;->ˋ()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/nd;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 7
    iget-object v0, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v9, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    if-eqz v5, :cond_0

    move v6, v15

    goto :goto_0

    :cond_0
    const v6, -0xd5d5d6

    :goto_0
    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u786e\u8ba4\u6253\u5f00\u540e\u5907\u7bb1\uff1f"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v5, :cond_1

    const v11, -0xe5e5e6

    goto :goto_1

    :cond_1
    move v11, v15

    :goto_1
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u786e\u8ba4"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, -0xb350b0

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v8

    float-to-int v12, v12

    invoke-virtual {v11, v10, v12, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v5, :cond_2

    const v3, -0xe5e5e6

    goto :goto_2

    :cond_2
    const v3, -0x333334

    :goto_2
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_3

    const v3, -0x111112

    goto :goto_3

    :cond_3
    const v3, -0xbbbbbc

    :goto_3
    invoke-virtual {v15, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v15, v10, v12, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v12, v13, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x438c0000    # 280.0f

    mul-float/2addr v8, v4

    float-to-int v4, v8

    const/16 v18, -0x2

    const/16 v19, 0x7f0

    const/16 v20, 0x20

    const/16 v21, -0x3

    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, v9, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lo/pi;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v9, v4, v2}, Lo/pi;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lo/Ϙ;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v9}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 8
    :pswitch_4
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    sget-object v3, Lo/nd;->χ:[Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    .line 10
    :pswitch_5
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/pip/DualPipLayout;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 11
    iget-object v3, v0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    invoke-virtual {v3, v13, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v4, v0, Lcom/byd/launcher/pip/DualPipLayout;->ʹ:Landroid/view/View;

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iput-boolean v13, v0, Lcom/byd/launcher/pip/DualPipLayout;->ͺ:Z

    iget-object v0, v0, Lcom/byd/launcher/pip/DualPipLayout;->Έ:Lo/u2;

    if-eqz v0, :cond_9

    check-cast v0, Lo/hd;

    .line 12
    iget-object v0, v0, Lo/hd;->ˋ:Lo/nd;

    iget-object v2, v0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v13}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 13
    :cond_7
    iget-object v2, v0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v2, v0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v15, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    .line 14
    :pswitch_6
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/ka;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Lo/nj;

    .line 15
    iget-object v0, v0, Lo/ka;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/oj;

    sget v3, Lo/oj;->Α:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    const-string v4, "getTrunkState"

    new-instance v5, Lo/g8;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v0, v2}, Lo/g8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshTrunkState error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {v0, v2, v8}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    .line 18
    :pswitch_7
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/we;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    .line 19
    iget-object v0, v0, Lo/we;->ˏ:Ljava/lang/Object;

    check-cast v0, Lo/oj;

    iget-object v3, v0, Lo/oj;->Ͳ:Landroid/view/View;

    if-nez v3, :cond_c

    goto/16 :goto_8

    :cond_c
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "elecRange"

    invoke-virtual {v2, v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "fuelRange"

    invoke-virtual {v2, v5, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    add-int v6, v4, v5

    const-string v7, "energyType"

    invoke-virtual {v2, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const-string v8, "fuelPercent"

    if-eq v7, v12, :cond_e

    if-nez v7, :cond_d

    invoke-virtual {v2, v8, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    const-wide/16 v18, 0xff

    cmp-long v7, v16, v18

    if-eqz v7, :cond_e

    if-gtz v5, :cond_d

    invoke-virtual {v2, v8, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v7, v14, v16

    if-gtz v7, :cond_d

    goto :goto_5

    :cond_d
    move v12, v13

    :cond_e
    :goto_5
    if-lez v6, :cond_10

    sget v7, Lo/if;->tv_range:I

    if-eqz v12, :cond_f

    const-string v13, "\u7eed\u822a"

    goto :goto_6

    :cond_f
    const-string v13, "\u603b\u7eed\u822a"

    :goto_6
    invoke-virtual {v0, v7, v13}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_10
    const-string v7, " km"

    if-lez v6, :cond_11

    sget v13, Lo/if;->tv_range:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_11
    if-lez v4, :cond_12

    sget v6, Lo/if;->tv_elec_range:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_12
    sget v4, Lo/if;->tv_fuel_range:I

    if-eqz v12, :cond_13

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_fuel_range:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    sget v4, Lo/if;->tv_fuel_level:I

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_fuel_level:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    sget v4, Lo/if;->tv_total_fuel:I

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_total_fuel:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    sget v4, Lo/if;->tv_hev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_hev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ext_charging:I

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ext_charging:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    sget v4, Lo/if;->tv_range:I

    invoke-static {v0, v4}, Lo/oj;->ˏ(Lo/oj;I)V

    sget v4, Lo/if;->tv_range:I

    invoke-static {v0, v4}, Lo/oj;->ˋ(Lo/oj;I)V

    goto :goto_7

    :cond_13
    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_fuel_range:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    sget v4, Lo/if;->tv_fuel_level:I

    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_fuel_level:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    sget v4, Lo/if;->tv_total_fuel:I

    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_total_fuel:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    sget v4, Lo/if;->tv_hev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_hev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ev_mileage:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ext_charging:I

    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_ext_charging:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    sget v4, Lo/if;->tv_range:I

    invoke-static {v0, v4}, Lo/oj;->Ͳ(Lo/oj;I)V

    sget v4, Lo/if;->tv_range:I

    invoke-static {v0, v4}, Lo/oj;->ͱ(Lo/oj;I)V

    if-lez v5, :cond_14

    sget v4, Lo/if;->tv_fuel_range:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_14
    :goto_7
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    const-string v7, "%.1f km"

    if-ltz v6, :cond_15

    sget v6, Lo/if;->tv_mileage:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_15
    const-string v4, "evMileage"

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v4, v13, v15

    if-ltz v4, :cond_16

    sget v4, Lo/if;->tv_ev_mileage:I

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_16
    const-string v4, "hevMileage"

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    if-nez v12, :cond_17

    const-wide/16 v13, 0x0

    cmpl-double v6, v4, v13

    if-ltz v6, :cond_17

    sget v6, Lo/if;->tv_hev_mileage:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_17
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v6, "%.0f %%"

    if-nez v12, :cond_18

    const-wide/16 v7, 0x0

    cmpl-double v7, v4, v7

    if-ltz v7, :cond_18

    sget v7, Lo/if;->tv_fuel_level:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_18
    const-string v4, "elecPercent"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/16 v13, 0x0

    cmpl-double v9, v4, v13

    if-ltz v9, :cond_19

    sget v9, Lo/if;->tv_battery:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_19
    const-string v4, "externalChargingPower"

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v6, v4, v13

    if-ltz v6, :cond_1a

    sget v6, Lo/if;->tv_ext_charging:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f kW"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_1a
    invoke-virtual {v2, v11, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    if-nez v12, :cond_1b

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_1b

    sget v6, Lo/if;->tv_total_fuel:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f L"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_1b
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v10, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    const-string v7, "%.1f kWh"

    if-ltz v6, :cond_1c

    sget v6, Lo/if;->tv_total_elec:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_1c
    const-string v4, "lastElecConPHM"

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-ltz v2, :cond_1d

    sget v2, Lo/if;->tv_consumption:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/oj;->Α(ILjava/lang/String;)V

    :cond_1d
    :goto_8
    return-void

    .line 20
    :pswitch_8
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/oj;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    .line 21
    iget-object v3, v0, Lo/oj;->ˋ:Landroid/content/Context;

    :try_start_1
    const-string v4, "car_model_prefs"

    invoke-virtual {v3, v4, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "car_model_image_path"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v0, Lo/oj;->Ͱ:Landroid/os/Handler;

    if-eqz v6, :cond_1e

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1e

    new-instance v3, Lo/j9;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v6, v4}, Lo/j9;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_1e
    const-string v6, "car_model_drawable"

    const-string v7, "widget_byd_song"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_9

    :cond_1f
    sget v3, Lo/hf;->widget_byd_song:I

    :goto_9
    new-instance v4, Lo/bg;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v3, v5}, Lo/bg;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_a
    return-void

    .line 22
    :pswitch_9
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/oj;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 23
    iput-object v2, v0, Lo/oj;->ͼ:Landroid/view/View;

    return-void

    .line 24
    :pswitch_a
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/oj;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 25
    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    invoke-static {v0, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 26
    :pswitch_b
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lo/oj;

    iget-object v0, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lo/nj;

    .line 27
    iget-object v0, v2, Lo/oj;->ˋ:Landroid/content/Context;

    :try_start_3
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v11, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "ic_trunk"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v5, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_20
    if-eqz v9, :cond_21

    const v5, -0xe1771b

    goto :goto_b

    :cond_21
    const v5, -0x9b4a0a

    :goto_b
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v11, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6253\u5f00\u540e\u5907\u7bb1"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v9, :cond_22

    const/high16 v6, -0x1000000

    goto :goto_c

    :cond_22
    const/4 v6, -0x1

    :goto_c
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v6, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x41000000    # 8.0f

    mul-float/2addr v13, v10

    float-to-int v13, v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v11, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u8bf7\u786e\u8ba4\u8f66\u8f86\u5468\u56f4\u5b89\u5168\u540e\u518d\u64cd\u4f5c"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v9, :cond_23

    const/high16 v6, -0x67000000

    goto :goto_d

    :cond_23
    const v6, -0x66000001

    :goto_d
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v10, v7

    float-to-int v7, v10

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v11, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    if-eqz v9, :cond_24

    const v6, 0x10302d2

    goto :goto_e

    :cond_24
    const v6, 0x10302d1

    :goto_e
    invoke-direct {v5, v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u786e\u8ba4\u6253\u5f00"

    new-instance v6, Lo/ϔ;

    invoke-direct {v6, v12, v2, v4}, Lo/ϔ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v5, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7f0

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    :cond_25
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "showTrunkConfirmDialog error: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lo/ka;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v12, v3}, Lo/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    const-string v3, "openTrunk"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V

    :goto_f
    return-void

    .line 29
    :pswitch_c
    iget-object v0, v1, Lo/ag;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v0
    if-nez v0, :tile_worker_usable
    return-void
    :tile_worker_usable
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lo/ff;

    iget-object v0, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v2, v13

    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_28

    :try_start_4
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/df;

    iget-object v7, v0, Lo/df;->ͳ:Lo/ef;

    if-eqz v7, :cond_26

    iget-object v8, v1, Lo/ag;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v8, v0, v7}, Lcom/byd/launcher/stability/TileSnapshots;->read(Lcom/byd/launcher/stability/TileBatch;Lo/df;Lo/ef;)Z

    move-result v7

    if-eqz v7, :cond_26

    move v7, v12

    goto :goto_11

    :cond_26
    move v7, v13

    :goto_11
    aput-boolean v7, v5, v2

    iget-object v7, v0, Lo/df;->ʹ:Lo/bf;

    if-eqz v7, :cond_27

    check-cast v7, Lo/ke;

    invoke-virtual {v7}, Lo/ke;->ˏ()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_27
    iget-object v0, v0, Lo/df;->ˏ:Ljava/lang/String;

    :goto_12
    aput-object v0, v6, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/df;

    iget-object v7, v7, Lo/df;->ˏ:Ljava/lang/String;

    aput-object v7, v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "refreshTile bg: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "QuickSettingsMgr"

    .line 31
    invoke-static {v0, v7, v8}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 32
    :cond_28
    iget-object v0, v1, Lo/ag;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;

    new-instance v8, Lo/sj;

    const/4 v7, 0x4

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lo/sj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v8}, Lcom/byd/launcher/stability/TileSnapshots;->post(Lcom/byd/launcher/stability/TileBatch;Ljava/lang/Runnable;)Z

    return-void

    .line 33
    :pswitch_d
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/ipc/ICoreServiceCallback;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONException;

    invoke-static {v0, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->Ά(Lcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONException;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->Ͱ(Lcom/byd/launcher/ipc/CoreServiceClient;Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/ipc/ICoreServiceCallback;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->ʹ(Lcom/byd/launcher/ipc/ICoreServiceCallback;Ljava/lang/Exception;)V

    return-void

    :pswitch_10
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/qi;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    .line 34
    iput-boolean v13, v0, Lo/qi;->Ύ:Z

    :try_start_5
    iget-object v0, v0, Lo/qi;->ˏ:Landroid/view/WindowManager;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    return-void

    .line 35
    :pswitch_11
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 36
    invoke-static {v0}, Lo/ak;->ˏ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {v2}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V

    :cond_29
    return-void

    .line 37
    :pswitch_12
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/ia;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    .line 38
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v3, :cond_2f

    if-eqz v2, :cond_2c

    .line 39
    iget-boolean v4, v3, Lo/vl;->Κ:Z

    if-nez v4, :cond_2c

    const-wide/16 v4, 0x0

    .line 40
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iget-wide v12, v3, Lo/vl;->Ν:D

    cmpl-double v8, v6, v12

    if-eqz v8, :cond_2a

    iput-wide v6, v3, Lo/vl;->Ν:D

    :cond_2a
    iget-wide v12, v3, Lo/vl;->Ζ:D

    cmpg-double v8, v12, v4

    if-gez v8, :cond_2b

    iput-wide v6, v3, Lo/vl;->Ζ:D

    invoke-virtual {v2, v10, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v3, Lo/vl;->Η:D

    invoke-virtual {v2, v11, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v3, Lo/vl;->Θ:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lo/vl;->Ι:J

    goto :goto_14

    :cond_2b
    cmpl-double v4, v6, v4

    if-lez v4, :cond_2c

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v12, v4

    cmpg-double v4, v6, v12

    if-gez v4, :cond_2c

    invoke-virtual {v3, v2}, Lo/vl;->Μ(Lorg/json/JSONObject;)V

    .line 41
    :cond_2c
    :goto_14
    iget-object v4, v3, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_2d

    goto :goto_15

    .line 42
    :cond_2d
    new-instance v4, Lo/wk;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3, v2}, Lo/wk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_2e

    invoke-virtual {v4}, Lo/wk;->run()V

    goto :goto_15

    :cond_2e
    iget-object v3, v3, Lo/vl;->ͱ:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    :cond_2f
    :goto_15
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v3, :cond_34

    .line 44
    iget-boolean v3, v3, Lo/nd;->Η:Z

    if-eqz v3, :cond_34

    if-eqz v2, :cond_34

    const-wide/16 v3, 0x0

    .line 45
    invoke-virtual {v2, v9, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v2, v10, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v2, v11, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v2, :cond_34

    .line 46
    iget-wide v11, v2, Lo/vl;->Ζ:D

    cmpl-double v13, v11, v3

    if-ltz v13, :cond_30

    sub-double/2addr v5, v11

    move-wide v13, v5

    goto :goto_16

    :cond_30
    move-wide v13, v3

    .line 47
    :goto_16
    iget-wide v5, v2, Lo/vl;->Η:D

    cmpl-double v11, v5, v3

    if-ltz v11, :cond_31

    sub-double/2addr v7, v5

    move-wide/from16 v17, v7

    goto :goto_17

    :cond_31
    move-wide/from16 v17, v3

    .line 48
    :goto_17
    iget-wide v5, v2, Lo/vl;->Θ:D

    cmpl-double v7, v5, v3

    if-ltz v7, :cond_32

    sub-double v3, v9, v5

    :cond_32
    move-wide/from16 v19, v3

    .line 49
    iget-wide v2, v2, Lo/vl;->Λ:D

    .line 50
    iget-object v12, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 51
    iget-boolean v0, v12, Lo/nd;->Η:Z

    if-nez v0, :cond_33

    goto :goto_18

    .line 52
    :cond_33
    iget-object v0, v12, Lo/nd;->ͱ:Landroid/os/Handler;

    new-instance v4, Lo/tc;

    move-object v11, v4

    move-wide v15, v2

    invoke-direct/range {v11 .. v20}, Lo/tc;-><init>(Lo/nd;DDDD)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    :goto_18
    return-void

    .line 53
    :pswitch_13
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/ia;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "dvrStatus"

    .line 54
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    if-eqz v4, :cond_38

    if-nez v2, :cond_35

    goto :goto_19

    :cond_35
    :try_start_6
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->δ:Landroid/widget/ImageView;

    if-eqz v4, :cond_38

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lcom/byd/launcher/NavBarService;->Ϥ:I

    if-eq v2, v3, :cond_36

    iput v2, v0, Lcom/byd/launcher/NavBarService;->Ϥ:I

    :cond_36
    if-lt v2, v12, :cond_37

    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->δ:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->δ:Landroid/widget/ImageView;

    sget v2, Lo/hf;->statusbar_driving_recorder_1:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    :cond_37
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->δ:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_19

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateVehicleStatusBar error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NavBarSvc"

    .line 55
    invoke-static {v0, v2, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_38
    :goto_19
    return-void

    .line 56
    :pswitch_14
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/NavBarService;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    :try_start_7
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->III:Lo/llI;

    :try_start_8
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->IIl:Landroid/widget/TextView;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v3, :cond_39

    :try_start_9
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    invoke-interface {v5, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    const/4 v3, 0x0

    :try_start_a
    iput-object v3, v0, Lcom/byd/launcher/NavBarService;->IIl:Landroid/widget/TextView;

    :cond_39
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v6, -0x33cccccd    # -4.6976204E7f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v8

    invoke-virtual {v0, v5}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v5

    invoke-virtual {v0, v7}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v7

    invoke-virtual {v3, v6, v8, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v17, 0x7f0

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v18, 0x18

    const/16 v19, -0x3

    move-object v14, v5

    invoke-direct/range {v14 .. v19}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v6, 0x51

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v6, 0x78

    invoke-virtual {v0, v6}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    invoke-interface {v6, v3, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, v0, Lcom/byd/launcher/NavBarService;->IIl:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1a

    :catch_7
    invoke-static {v0, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1a
    return-void

    .line 58
    :pswitch_15
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/NavBarService;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {v0}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_1c

    .line 60
    :cond_3a
    sget-object v3, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3c

    .line 61
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3c

    if-eqz v2, :cond_3c

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const v12, -0x7f000001

    goto :goto_1b

    :cond_3b
    const/high16 v12, -0x80000000

    :goto_1b
    invoke-static {v3, v12}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3c
    :goto_1c
    return-void

    .line 62
    :pswitch_16
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/NavBarService;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 63
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    if-nez v3, :cond_3d

    goto/16 :goto_1f

    :cond_3d
    sget v4, Lo/if;->iv_nav_blur_bg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_44

    invoke-static {v0}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v4

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_3f

    :cond_3e
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3f

    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;

    :cond_3f
    if-eqz v2, :cond_42

    if-eqz v4, :cond_42

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    sget v3, Lo/if;->v_nav_blur_tint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_40

    invoke-static {v3}, Lo/ci;->ˏ(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_40
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    if-eqz v3, :cond_41

    const v13, -0x4c1f1f20

    goto :goto_1e

    :cond_41
    const/high16 v13, -0x4d000000

    goto :goto_1e

    :cond_42
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v4, :cond_44

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    if-eqz v2, :cond_43

    goto :goto_1d

    :cond_43
    const/high16 v15, -0x1000000

    :goto_1d
    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    sget v2, Lo/if;->v_nav_blur_tint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    :goto_1e
    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_44
    :goto_1f
    return-void

    .line 64
    :pswitch_17
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lo/f7;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    sget v3, Lo/f7;->ˏ:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget v3, Lcom/byd/launcher/LauncherApp;->ˏ:I

    iget-object v0, v0, Lo/f7;->ˋ:Lcom/byd/launcher/LauncherApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/byd/launcher/LauncherApp;->ˋ(Landroid/content/Context;)V

    return-void

    .line 66
    :pswitch_18
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/byd/launcher/AppLauncherActivity;

    iget-object v0, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v0, Lo/Ϡ;

    .line 67
    iget-object v3, v2, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    const-string v4, "am start-activity -W --display 0 -n "

    const-string v5, "am force-stop "

    :try_start_b
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lo/c0;->ensureConnection()Z

    move-result v6

    if-nez v6, :cond_45

    new-instance v0, Lo/Ψ;

    invoke-direct {v0, v2, v12}, Lo/Ψ;-><init>(Lcom/byd/launcher/AppLauncherActivity;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    :cond_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1388

    invoke-static {v5, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lo/Ϡ;->ͱ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-static {v4, v5}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "status: ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "complete"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    goto :goto_20

    :cond_46
    move v12, v13

    :cond_47
    :goto_20
    new-instance v5, Lo/ϕ;

    invoke-direct {v5, v2, v12, v0, v4}, Lo/ϕ;-><init>(Lcom/byd/launcher/AppLauncherActivity;ZLo/Ϡ;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_21

    :catch_8
    move-exception v0

    new-instance v4, Lo/Ω;

    invoke-direct {v4, v2, v0, v13}, Lo/Ω;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/lang/Exception;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_21
    return-void

    .line 68
    :pswitch_19
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Lcom/byd/launcher/AppLauncherActivity;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    sget-object v3, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {v0}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_23

    .line 70
    :cond_48
    sget-object v3, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4a

    .line 71
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    const v12, -0x7f000001

    goto :goto_22

    :cond_49
    const/high16 v12, -0x80000000

    :goto_22
    invoke-static {v3, v12}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4a
    :goto_23
    return-void

    .line 72
    :pswitch_1a
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/profileinstaller/ProfileInstallerInitializer;->ˋ(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V

    return-void

    :pswitch_1b
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/DispatchQueue;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroidx/lifecycle/DispatchQueue;->ˋ(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1c
    iget-object v0, v1, Lo/ag;->ͱ:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object v2, v1, Lo/ag;->Ͳ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->ˏ(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
