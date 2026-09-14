.class public final synthetic Lo/x9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilityGlassRead:Lcom/byd/launcher/stability/GlassRead;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Z

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lo/x9;->Ͱ:I

    iput-object p1, p0, Lo/x9;->Ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/x9;->ͳ:Ljava/lang/Object;

    iput-boolean p3, p0, Lo/x9;->ͱ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/ff;ZLandroid/view/View;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lo/x9;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/x9;->Ͳ:Ljava/lang/Object;

    iput-boolean p2, p0, Lo/x9;->ͱ:Z

    iput-object p3, p0, Lo/x9;->ͳ:Ljava/lang/Object;

    new-instance v0, Lcom/byd/launcher/stability/GlassRead;
    invoke-direct {v0, p1, p3}, Lcom/byd/launcher/stability/GlassRead;-><init>(Lo/ff;Landroid/view/View;)V
    iput-object v0, p0, Lo/x9;->stabilityGlassRead:Lcom/byd/launcher/stability/GlassRead;
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/x9;->Ͳ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo/x9;->Ͱ:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :pswitch_0
    move-object/from16 v1, p0
    iget-object v1, v1, Lo/x9;->stabilityGlassRead:Lcom/byd/launcher/stability/GlassRead;
    invoke-virtual {v1}, Lcom/byd/launcher/stability/GlassRead;->current()Z
    move-result v1
    if-nez v1, :glass_worker_current
    return-void
    :glass_worker_current
    iget-object v1, v0, Lo/x9;->Ͳ:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lo/ff;

    .line 14
    .line 15
    iget-boolean v3, v0, Lo/x9;->ͱ:Z

    .line 16
    .line 17
    iget-object v4, v0, Lo/x9;->ͳ:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Landroid/view/View;

    .line 20
    .line 21
    sget-object v5, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v5, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    const v6, -0x7f000001

    .line 29
    .line 30
    .line 31
    const/high16 v7, -0x80000000

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-nez v8, :cond_1

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    move v8, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v8, v7

    .line 46
    :goto_0
    invoke-static {v5, v8}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    iget-object v1, v1, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v3, Lo/pe;

    .line 55
    .line 56
    invoke-direct {v3, v4, v5, v2}, Lo/pe;-><init>(Landroid/view/View;Landroid/graphics/drawable/LayerDrawable;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget-object v2, v1, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 61
    .line 62
    new-instance v5, Lo/lII;

    .line 63
    .line 64
    const/16 v8, 0x10

    .line 65
    .line 66
    invoke-direct {v5, v8}, Lo/lII;-><init>(I)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v2, p0
    iget-object v2, v2, Lo/x9;->stabilityGlassRead:Lcom/byd/launcher/stability/GlassRead;
    invoke-virtual {v2, v5}, Lcom/byd/launcher/stability/GlassRead;->prepare(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v8, 0x12c

    .line 73
    .line 74
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :glass_interrupted
    move-object/from16 v2, p0
    iget-object v2, v2, Lo/x9;->stabilityGlassRead:Lcom/byd/launcher/stability/GlassRead;
    invoke-virtual {v2}, Lcom/byd/launcher/stability/GlassRead;->current()Z
    move-result v2
    if-nez v2, :glass_after_wait
    return-void
    :glass_after_wait

    .line 75
    .line 76
    .line 77
    :catch_0
    sget-object v2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_3

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v6, v7

    .line 91
    :goto_1
    invoke-static {v2, v6}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    iget-object v1, v1, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v3, Lo/pe;

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    invoke-direct {v3, v4, v2, v5}, Lo/pe;-><init>(Landroid/view/View;Landroid/graphics/drawable/LayerDrawable;I)V

    .line 103
    .line 104
    .line 105
    :goto_2
    move-object/from16 v1, p0
    iget-object v1, v1, Lo/x9;->stabilityGlassRead:Lcom/byd/launcher/stability/GlassRead;
    invoke-virtual {v1, v3}, Lcom/byd/launcher/stability/GlassRead;->post(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void

    .line 109
    :pswitch_1
    iget-object v1, v0, Lo/x9;->Ͳ:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Lcom/byd/launcher/NavBarService;

    .line 112
    .line 113
    iget-object v2, v0, Lo/x9;->ͳ:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Ljava/lang/String;

    .line 116
    .line 117
    iget-object v3, v1, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 118
    .line 119
    iget-boolean v4, v0, Lo/x9;->ͱ:Z

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, v2, v4}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void

    .line 136
    :goto_3
    iget-object v1, v0, Lo/x9;->Ͳ:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Landroid/content/Context;

    .line 139
    .line 140
    iget-object v3, v0, Lo/x9;->ͳ:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v3, Ljava/lang/String;

    .line 143
    .line 144
    iget-boolean v4, v0, Lo/x9;->ͱ:Z

    .line 145
    .line 146
    sget-object v5, Lo/kc;->ˋ:Landroid/os/Handler;

    .line 147
    .line 148
    sget-object v5, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 149
    .line 150
    if-nez v5, :cond_5

    .line 151
    .line 152
    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_5
    :try_start_1
    const-string v6, "window"

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Landroid/view/WindowManager;

    .line 165
    .line 166
    if-nez v6, :cond_6

    .line 167
    .line 168
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :cond_6
    sget-object v7, Lo/kc;->ˋ:Landroid/os/Handler;

    .line 178
    .line 179
    sget-object v8, Lo/kc;->Ͱ:Lo/lII;

    .line 180
    .line 181
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    sget-object v7, Lo/kc;->ˏ:Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 185
    .line 186
    if-eqz v7, :cond_7

    .line 187
    .line 188
    :try_start_2
    invoke-interface {v6, v7}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    .line 190
    .line 191
    :catch_1
    const/4 v7, 0x0

    .line 192
    :try_start_3
    sput-object v7, Lo/kc;->ˏ:Landroid/widget/TextView;

    .line 193
    .line 194
    :cond_7
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 203
    .line 204
    const/high16 v8, 0x41800000    # 16.0f

    .line 205
    .line 206
    mul-float/2addr v8, v7

    .line 207
    float-to-int v8, v8

    .line 208
    const/high16 v9, 0x41200000    # 10.0f

    .line 209
    .line 210
    mul-float/2addr v9, v7

    .line 211
    float-to-int v9, v9

    .line 212
    const/high16 v10, 0x41a00000    # 20.0f

    .line 213
    .line 214
    mul-float/2addr v10, v7

    .line 215
    float-to-int v10, v10

    .line 216
    new-instance v11, Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-direct {v11, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    const/4 v5, -0x1

    .line 225
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    .line 227
    .line 228
    const/high16 v5, 0x41600000    # 14.0f

    .line 229
    .line 230
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v8, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 234
    .line 235
    .line 236
    const/16 v5, 0x11

    .line 237
    .line 238
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    .line 240
    .line 241
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 242
    .line 243
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 244
    .line 245
    .line 246
    const v8, -0x33cccccd    # -4.6976204E7f

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 250
    .line 251
    .line 252
    int-to-float v8, v10

    .line 253
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    .line 258
    .line 259
    const/16 v15, 0x7f0

    .line 260
    .line 261
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 262
    .line 263
    const/4 v13, -0x2

    .line 264
    const/4 v14, -0x2

    .line 265
    const/16 v16, 0x18

    .line 266
    .line 267
    const/16 v17, -0x3

    .line 268
    .line 269
    move-object v12, v5

    .line 270
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 271
    .line 272
    .line 273
    const/16 v8, 0x51

    .line 274
    .line 275
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 276
    .line 277
    const/high16 v8, 0x42f00000    # 120.0f

    .line 278
    .line 279
    mul-float/2addr v7, v8

    .line 280
    float-to-int v7, v7

    .line 281
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    .line 283
    invoke-interface {v6, v11, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .line 285
    .line 286
    sput-object v11, Lo/kc;->ˏ:Landroid/widget/TextView;

    .line 287
    .line 288
    sget-object v5, Lo/kc;->ˋ:Landroid/os/Handler;

    .line 289
    .line 290
    sget-object v6, Lo/kc;->Ͱ:Lo/lII;

    .line 291
    .line 292
    if-eqz v4, :cond_8

    .line 293
    .line 294
    const-wide/16 v7, 0xdac

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_8
    const-wide/16 v7, 0x7d0

    .line 298
    .line 299
    :goto_4
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :catch_2
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    :goto_5
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 308
    .line 309
    .line 310
    :goto_6
    return-void

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    :glass_interrupted
    move-exception v1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    return-void
.end method
