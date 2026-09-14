.class public final synthetic Lo/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/vl;

.field public final synthetic Ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lo/vl;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lo/bk;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/bk;->ͱ:Lo/vl;

    .line 4
    .line 5
    iput-boolean p2, p0, Lo/bk;->Ͳ:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lo/bk;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_6

    .line 8
    :pswitch_0
    iget-object v0, p0, Lo/bk;->ͱ:Lo/vl;

    .line 9
    .line 10
    invoke-virtual {v0}, Lo/vl;->Έ()Lo/dm;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-boolean v2, p0, Lo/bk;->Ͳ:Z

    .line 18
    .line 19
    iget-object v3, v1, Lo/dm;->Ͳ:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    sget v4, Lo/hf;->widget_music_btn_play:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget v4, Lo/hf;->widget_music_btn_pause:I

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lo/vl;->Θ(Lo/dm;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, v1, Lo/dm;->ˏ:Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    return-void

    .line 44
    :pswitch_1
    iget-object v0, p0, Lo/bk;->ͱ:Lo/vl;

    .line 45
    .line 46
    iget-boolean v2, p0, Lo/bk;->Ͳ:Z

    .line 47
    .line 48
    invoke-virtual {v0}, Lo/vl;->Έ()Lo/dm;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_9

    .line 53
    .line 54
    iget-object v4, v3, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    .line 55
    .line 56
    if-nez v4, :cond_4

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_4
    if-eqz v2, :cond_5

    .line 60
    .line 61
    sget v5, Lo/hf;->ic_music_favorite_filled:I

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    sget v5, Lo/hf;->ic_music_favorite:I

    .line 65
    .line 66
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 73
    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    iget-boolean v0, v2, Lcom/byd/launcher/NavBarService;->Ϗ:Z

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_7
    iget-object v0, v0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_3
    if-eqz v0, :cond_8

    .line 86
    .line 87
    iget-object v0, v3, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-static {v1}, Lo/ci;->ͱ(Z)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    :goto_4
    iget-object v0, v3, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 102
    .line 103
    .line 104
    :cond_9
    :goto_5
    return-void

    .line 105
    :goto_6
    iget-object v0, p0, Lo/bk;->ͱ:Lo/vl;

    .line 106
    .line 107
    iget-boolean v2, p0, Lo/bk;->Ͳ:Z

    .line 108
    .line 109
    iget-object v3, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 110
    .line 111
    if-nez v3, :cond_a

    .line 112
    .line 113
    goto/16 :goto_d

    .line 114
    .line 115
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 120
    .line 121
    .line 122
    iget-boolean v3, v0, Lo/vl;->Ή:Z

    .line 123
    .line 124
    if-eq v2, v3, :cond_b

    .line 125
    .line 126
    goto/16 :goto_d

    .line 127
    .line 128
    :cond_b
    :try_start_0
    iget-object v3, v0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v3}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/4 v4, 0x0

    .line 135
    if-eqz v3, :cond_c

    .line 136
    .line 137
    move v5, v4

    .line 138
    goto :goto_7

    .line 139
    :cond_c
    const/16 v5, 0x28

    .line 140
    .line 141
    invoke-virtual {v0, v5}, Lo/vl;->Ά(I)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    :goto_7
    if-eqz v3, :cond_d

    .line 146
    .line 147
    const/16 v3, 0x50

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_d
    const/16 v3, 0x28a

    .line 151
    .line 152
    :goto_8
    const/4 v6, 0x0

    .line 153
    if-eqz v2, :cond_13

    .line 154
    .line 155
    iput-boolean v1, v0, Lo/vl;->Ί:Z

    .line 156
    .line 157
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iget-object v7, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-nez v7, :cond_e

    .line 170
    .line 171
    const v7, 0x3c23d70a    # 0.01f

    .line 172
    .line 173
    .line 174
    cmpl-float v7, v2, v7

    .line 175
    .line 176
    if-lez v7, :cond_e

    .line 177
    .line 178
    const v7, 0x3f733333    # 0.95f

    .line 179
    .line 180
    .line 181
    cmpg-float v7, v2, v7

    .line 182
    .line 183
    if-gez v7, :cond_e

    .line 184
    .line 185
    move v7, v1

    .line 186
    goto :goto_9

    .line 187
    :cond_e
    move v7, v4

    .line 188
    :goto_9
    const/high16 v8, 0x3f800000    # 1.0f

    .line 189
    .line 190
    if-eqz v7, :cond_f

    .line 191
    .line 192
    int-to-float v3, v3

    .line 193
    sub-float v2, v8, v2

    .line 194
    .line 195
    mul-float/2addr v2, v3

    .line 196
    float-to-int v2, v2

    .line 197
    const/16 v3, 0xc8

    .line 198
    .line 199
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    goto :goto_a

    .line 204
    :cond_f
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 205
    .line 206
    int-to-float v5, v5

    .line 207
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 211
    .line 212
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 213
    .line 214
    .line 215
    :goto_a
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 221
    .line 222
    if-eqz v2, :cond_10

    .line 223
    .line 224
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    :cond_10
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 230
    .line 231
    .line 232
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    const/4 v5, 0x2

    .line 239
    if-ne v2, v5, :cond_11

    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_11
    move v1, v4

    .line 243
    :goto_b
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    invoke-virtual {v2, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 247
    .line 248
    .line 249
    if-eqz v1, :cond_12

    .line 250
    .line 251
    iget-object v1, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    int-to-long v2, v3

    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    sget-object v2, Lo/vl;->Ψ:Landroid/view/animation/PathInterpolator;

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    new-instance v2, Lo/mk;

    .line 277
    .line 278
    const/16 v3, 0x8

    .line 279
    .line 280
    invoke-direct {v2, v0, v3}, Lo/mk;-><init>(Lo/vl;I)V

    .line 281
    .line 282
    .line 283
    goto :goto_c

    .line 284
    :cond_12
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    new-instance v2, Lo/jl;

    .line 289
    .line 290
    invoke-direct {v2, v0, v1, v3}, Lo/jl;-><init>(Lo/vl;Landroid/view/Choreographer;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 294
    .line 295
    .line 296
    goto :goto_d

    .line 297
    :cond_13
    iput-boolean v4, v0, Lo/vl;->Ί:Z

    .line 298
    .line 299
    iget-object v1, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    int-to-float v2, v5

    .line 306
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    int-to-long v2, v3

    .line 315
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    sget-object v2, Lo/vl;->Ω:Landroid/view/animation/PathInterpolator;

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    new-instance v2, Lo/mk;

    .line 326
    .line 327
    const/16 v3, 0x9

    .line 328
    .line 329
    invoke-direct {v2, v0, v3}, Lo/mk;-><init>(Lo/vl;I)V

    .line 330
    .line 331
    .line 332
    :goto_c
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_d

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "WidgetBarMgr"

    .line 342
    .line 343
    const-string v2, "setVisible failed"

    .line 344
    .line 345
    invoke-static {v1, v2, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 346
    .line 347
    .line 348
    :goto_d
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
