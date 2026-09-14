.class public final synthetic Lo/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Z

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZII)V
    .locals 0

    .line 1
    iput p4, p0, Lo/lb;->Ͱ:I

    iput-object p1, p0, Lo/lb;->ͳ:Ljava/lang/Object;

    iput-boolean p2, p0, Lo/lb;->ͱ:Z

    iput p3, p0, Lo/lb;->Ͳ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/mb;IZ)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo/lb;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lb;->ͳ:Ljava/lang/Object;

    iput p2, p0, Lo/lb;->Ͳ:I

    iput-boolean p3, p0, Lo/lb;->ͱ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/lb;->ͳ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo/lb;->Ͱ:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :pswitch_0
    iget-object v0, v1, Lo/lb;->ͳ:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v5, v0

    .line 16
    check-cast v5, Lo/qi;

    .line 17
    .line 18
    iget-boolean v0, v1, Lo/lb;->ͱ:Z

    .line 19
    .line 20
    iget v6, v1, Lo/lb;->Ͳ:I

    .line 21
    .line 22
    const/4 v7, 0x3

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    sget-boolean v0, Lo/qi;->Ι:Z

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ϑ:Ljava/lang/String;

    .line 35
    .line 36
    const-string v8, "com.byd.avc"

    .line 37
    .line 38
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, v3

    .line 44
    :goto_0
    const-string v8, "TurnSignalCamera"

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string v0, "AVC is in foreground, skip turn signal overlay"

    .line 49
    .line 50
    invoke-static {v8, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    iget-object v0, v5, Lo/qi;->Ό:Lo/ki;

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v10, v5, Lo/qi;->Ͱ:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    iput-object v9, v5, Lo/qi;->Ό:Lo/ki;

    .line 66
    .line 67
    :cond_2
    iget v0, v5, Lo/qi;->ͷ:I

    .line 68
    .line 69
    if-ne v0, v6, :cond_3

    .line 70
    .line 71
    iget-boolean v0, v5, Lo/qi;->Ͷ:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_3
    iput v6, v5, Lo/qi;->ͷ:I

    .line 78
    .line 79
    const-string v0, "Overlay shown, direction="

    .line 80
    .line 81
    iget-boolean v10, v5, Lo/qi;->Ͷ:Z

    .line 82
    .line 83
    const v11, 0x800033

    .line 84
    .line 85
    .line 86
    if-eqz v10, :cond_4

    .line 87
    .line 88
    iget-object v10, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 89
    .line 90
    if-eqz v10, :cond_4

    .line 91
    .line 92
    :try_start_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 97
    .line 98
    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    .line 100
    iget v2, v5, Lo/qi;->ͽ:I

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Lo/qi;->ͱ(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 107
    .line 108
    iget v2, v5, Lo/qi;->Ά:I

    .line 109
    .line 110
    invoke-virtual {v5, v2}, Lo/qi;->ͱ(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    .line 116
    iget-object v2, v5, Lo/qi;->ˏ:Landroid/view/WindowManager;

    .line 117
    .line 118
    iget-object v3, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v3, "updateViewLayout failed: "

    .line 129
    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v2, v8}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_4
    new-instance v10, Landroid/widget/ImageView;

    .line 139
    .line 140
    iget-object v12, v5, Lo/qi;->ˋ:Landroid/content/Context;

    .line 141
    .line 142
    invoke-direct {v10, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    iput-object v10, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 146
    .line 147
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 148
    .line 149
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 150
    .line 151
    .line 152
    iget-object v10, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 153
    .line 154
    const/high16 v12, -0x1000000

    .line 155
    .line 156
    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v10, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {v10, v2, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 167
    .line 168
    .line 169
    iget-object v7, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 172
    .line 173
    .line 174
    iget v2, v5, Lo/qi;->ͻ:I

    .line 175
    .line 176
    invoke-virtual {v5, v2}, Lo/qi;->ͱ(I)I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    iget v2, v5, Lo/qi;->ͼ:I

    .line 181
    .line 182
    invoke-virtual {v5, v2}, Lo/qi;->ͱ(I)I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 187
    .line 188
    const/16 v15, 0x7f0

    .line 189
    .line 190
    const/16 v16, 0x128

    .line 191
    .line 192
    const/16 v17, -0x3

    .line 193
    .line 194
    move-object v12, v2

    .line 195
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 196
    .line 197
    .line 198
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 199
    .line 200
    iget v7, v5, Lo/qi;->ͽ:I

    .line 201
    .line 202
    invoke-virtual {v5, v7}, Lo/qi;->ͱ(I)I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 207
    .line 208
    iget v7, v5, Lo/qi;->Ά:I

    .line 209
    .line 210
    invoke-virtual {v5, v7}, Lo/qi;->ͱ(I)I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 215
    .line 216
    :try_start_1
    iget-object v7, v5, Lo/qi;->ˏ:Landroid/view/WindowManager;

    .line 217
    .line 218
    iget-object v10, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 219
    .line 220
    invoke-interface {v7, v10, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    iput-boolean v4, v5, Lo/qi;->Ͷ:Z

    .line 224
    .line 225
    iget-object v2, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 232
    .line 233
    const v4, 0x3f59999a    # 0.85f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 240
    .line 241
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 245
    .line 246
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const/high16 v4, 0x3f800000    # 1.0f

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    const-wide/16 v10, 0xb4

    .line 265
    .line 266
    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 271
    .line 272
    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 280
    .line 281
    .line 282
    if-nez v6, :cond_5

    .line 283
    .line 284
    const-string v2, "left"

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_5
    const-string v2, "right"

    .line 288
    .line 289
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v8, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :catch_1
    move-exception v0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v4, "Failed to show overlay: "

    .line 301
    .line 302
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v2, v8}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iput-object v9, v5, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 309
    .line 310
    iput-boolean v3, v5, Lo/qi;->Ͷ:Z

    .line 311
    .line 312
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    .line 313
    .line 314
    new-instance v2, Lo/ki;

    .line 315
    .line 316
    const/4 v3, 0x4

    .line 317
    invoke-direct {v2, v5, v3}, Lo/ki;-><init>(Lo/qi;I)V

    .line 318
    .line 319
    .line 320
    const-string v3, "turn-signal-camera"

    .line 321
    .line 322
    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_6
    iget-object v0, v5, Lo/qi;->Ό:Lo/ki;

    .line 330
    .line 331
    if-eqz v0, :cond_7

    .line 332
    .line 333
    iget-object v2, v5, Lo/qi;->Ͱ:Landroid/os/Handler;

    .line 334
    .line 335
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    .line 337
    .line 338
    :cond_7
    new-instance v0, Lo/ki;

    .line 339
    .line 340
    invoke-direct {v0, v5, v7}, Lo/ki;-><init>(Lo/qi;I)V

    .line 341
    .line 342
    .line 343
    iput-object v0, v5, Lo/qi;->Ό:Lo/ki;

    .line 344
    .line 345
    iget-object v2, v5, Lo/qi;->Ͱ:Landroid/os/Handler;

    .line 346
    .line 347
    const-wide/16 v3, 0x320

    .line 348
    .line 349
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    .line 351
    .line 352
    :goto_3
    return-void

    .line 353
    :pswitch_1
    iget-object v0, v1, Lo/lb;->ͳ:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lo/mb;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 361
    .line 362
    iget-object v0, v0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iget v2, v1, Lo/lb;->Ͳ:I

    .line 368
    .line 369
    iget-boolean v5, v1, Lo/lb;->ͱ:Z

    .line 370
    .line 371
    if-eqz v5, :cond_8

    .line 372
    .line 373
    if-ne v2, v4, :cond_8

    .line 374
    .line 375
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϻ:I

    .line 376
    .line 377
    const-string v4, "seat_heat_l"

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_8
    if-eqz v5, :cond_9

    .line 381
    .line 382
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϼ:I

    .line 383
    .line 384
    const-string v4, "seat_heat_r"

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_9
    if-ne v2, v4, :cond_a

    .line 388
    .line 389
    iget v2, v0, Lcom/byd/launcher/NavBarService;->Ͻ:I

    .line 390
    .line 391
    const-string v4, "seat_cool_l"

    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_a
    iget v2, v0, Lcom/byd/launcher/NavBarService;->Ͼ:I

    .line 395
    .line 396
    const-string v4, "seat_cool_r"

    .line 397
    .line 398
    :goto_4
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->II:[Ljava/lang/String;

    .line 399
    .line 400
    if-eqz v5, :cond_c

    .line 401
    .line 402
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->lI:[Landroid/widget/ImageButton;

    .line 403
    .line 404
    if-eqz v5, :cond_c

    .line 405
    .line 406
    move v5, v3

    .line 407
    :goto_5
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->II:[Ljava/lang/String;

    .line 408
    .line 409
    array-length v7, v6

    .line 410
    if-ge v5, v7, :cond_c

    .line 411
    .line 412
    iget-object v7, v0, Lcom/byd/launcher/NavBarService;->lI:[Landroid/widget/ImageButton;

    .line 413
    .line 414
    array-length v7, v7

    .line 415
    if-ge v5, v7, :cond_c

    .line 416
    .line 417
    aget-object v6, v6, v5

    .line 418
    .line 419
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-eqz v6, :cond_b

    .line 424
    .line 425
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->lI:[Landroid/widget/ImageButton;

    .line 426
    .line 427
    aget-object v6, v6, v5

    .line 428
    .line 429
    if-eqz v6, :cond_b

    .line 430
    .line 431
    invoke-static {v6, v4, v2}, Lcom/byd/launcher/NavBarService;->Ϩ(Landroid/widget/ImageButton;Ljava/lang/String;I)V

    .line 432
    .line 433
    .line 434
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_c
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->lll:[Ljava/lang/String;

    .line 438
    .line 439
    if-eqz v5, :cond_e

    .line 440
    .line 441
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->Il:[Landroid/widget/ImageButton;

    .line 442
    .line 443
    if-eqz v5, :cond_e

    .line 444
    .line 445
    :goto_6
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->lll:[Ljava/lang/String;

    .line 446
    .line 447
    array-length v6, v5

    .line 448
    if-ge v3, v6, :cond_e

    .line 449
    .line 450
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->Il:[Landroid/widget/ImageButton;

    .line 451
    .line 452
    array-length v6, v6

    .line 453
    if-ge v3, v6, :cond_e

    .line 454
    .line 455
    aget-object v5, v5, v3

    .line 456
    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    if-eqz v5, :cond_d

    .line 462
    .line 463
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->Il:[Landroid/widget/ImageButton;

    .line 464
    .line 465
    aget-object v5, v5, v3

    .line 466
    .line 467
    if-eqz v5, :cond_d

    .line 468
    .line 469
    invoke-static {v5, v4, v2}, Lcom/byd/launcher/NavBarService;->Ϩ(Landroid/widget/ImageButton;Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 473
    .line 474
    goto :goto_6

    .line 475
    :cond_e
    return-void

    .line 476
    :goto_7
    iget-object v0, v1, Lo/lb;->ͳ:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v0, Lo/ff;

    .line 479
    .line 480
    iget-boolean v5, v1, Lo/lb;->ͱ:Z

    .line 481
    .line 482
    iget v6, v1, Lo/lb;->Ͳ:I

    .line 483
    .line 484
    const-string v7, ")"

    .line 485
    .line 486
    iget-object v8, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 487
    .line 488
    const-string v9, "QuickSettingsMgr"

    .line 489
    .line 490
    const-string v10, "CarSettings sys_screen_mode="

    .line 491
    .line 492
    const-string v0, "setINSTheme: "

    .line 493
    .line 494
    :try_start_2
    sget-object v11, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    .line 495
    .line 496
    if-eqz v11, :cond_10

    .line 497
    .line 498
    if-eqz v5, :cond_f

    .line 499
    .line 500
    move v12, v4

    .line 501
    goto :goto_8

    .line 502
    :cond_f
    move v12, v3

    .line 503
    :goto_8
    invoke-virtual {v11, v12}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->setINSTheme(I)I

    .line 504
    .line 505
    .line 506
    new-instance v11, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v0, " (light="

    .line 515
    .line 516
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-static {v9, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 530
    .line 531
    .line 532
    goto :goto_9

    .line 533
    :catch_2
    move-exception v0

    .line 534
    new-instance v11, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v12, "setINSTheme error: "

    .line 537
    .line 538
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v0, v11, v9}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :cond_10
    :goto_9
    :try_start_3
    const-string v0, "uimode"

    .line 545
    .line 546
    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    check-cast v0, Landroid/app/UiModeManager;

    .line 551
    .line 552
    if-eqz v0, :cond_13

    .line 553
    .line 554
    if-ne v6, v2, :cond_11

    .line 555
    .line 556
    invoke-virtual {v0, v3}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 557
    .line 558
    .line 559
    goto :goto_a

    .line 560
    :cond_11
    if-eqz v5, :cond_12

    .line 561
    .line 562
    invoke-virtual {v0, v4}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 563
    .line 564
    .line 565
    goto :goto_a

    .line 566
    :cond_12
    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 567
    .line 568
    .line 569
    goto :goto_a

    .line 570
    :catch_3
    move-exception v0

    .line 571
    new-instance v11, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string v12, "setNightMode via UiModeManager: "

    .line 574
    .line 575
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-static {v0, v11, v9}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    :cond_13
    :goto_a
    :try_start_4
    invoke-static {v8}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 582
    .line 583
    .line 584
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-eqz v0, :cond_18

    .line 589
    .line 590
    if-ne v6, v2, :cond_14

    .line 591
    .line 592
    const-string v0, "cmd uimode night auto"

    .line 593
    .line 594
    goto :goto_b

    .line 595
    :cond_14
    if-eqz v5, :cond_15

    .line 596
    .line 597
    const-string v0, "cmd uimode night no"

    .line 598
    .line 599
    goto :goto_b

    .line 600
    :cond_15
    const-string v0, "cmd uimode night yes"

    .line 601
    .line 602
    :goto_b
    const/16 v11, 0x7d0

    .line 603
    .line 604
    invoke-static {v0, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    if-ne v6, v2, :cond_16

    .line 608
    .line 609
    const-string v0, "settings put secure ui_night_mode 0"

    .line 610
    .line 611
    goto :goto_c

    .line 612
    :cond_16
    if-eqz v5, :cond_17

    .line 613
    .line 614
    const-string v0, "settings put secure ui_night_mode 1"

    .line 615
    .line 616
    goto :goto_c

    .line 617
    :cond_17
    const-string v0, "settings put secure ui_night_mode 2"

    .line 618
    .line 619
    :goto_c
    invoke-static {v0, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 620
    .line 621
    .line 622
    goto :goto_d

    .line 623
    :catch_4
    move-exception v0

    .line 624
    new-instance v11, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    const-string v12, "setNightMode via adb: "

    .line 627
    .line 628
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-static {v0, v11, v9}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    :cond_18
    :goto_d
    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    .line 635
    .line 636
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 637
    .line 638
    .line 639
    if-ne v6, v2, :cond_19

    .line 640
    .line 641
    move v2, v3

    .line 642
    goto :goto_e

    .line 643
    :cond_19
    if-eqz v5, :cond_1a

    .line 644
    .line 645
    move v2, v4

    .line 646
    :cond_1a
    :goto_e
    const-string v5, "value"

    .line 647
    .line 648
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    const-string v8, "content://carsettings/global"

    .line 660
    .line 661
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    const-string v11, "key=?"

    .line 666
    .line 667
    new-array v4, v4, [Ljava/lang/String;

    .line 668
    .line 669
    const-string v12, "sys_screen_mode"

    .line 670
    .line 671
    aput-object v12, v4, v3

    .line 672
    .line 673
    invoke-virtual {v5, v8, v0, v11, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v2, " (finalMode="

    .line 685
    .line 686
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-static {v9, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 700
    .line 701
    .line 702
    goto :goto_f

    .line 703
    :catch_5
    move-exception v0

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    const-string v3, "CarSettings sys_screen_mode error: "

    .line 707
    .line 708
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-static {v0, v2, v9}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_f
    return-void

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
