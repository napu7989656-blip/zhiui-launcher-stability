.class public final synthetic Lo/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/NavBarService;

.field public final synthetic Ͳ:Z


# direct methods
.method public synthetic constructor <init>(ILcom/byd/launcher/NavBarService;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lo/aa;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput-boolean p3, p0, Lo/aa;->Ͳ:Z

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo/aa;->Ͱ:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_1b

    .line 13
    .line 14
    :pswitch_0
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 15
    .line 16
    iget-object v1, v0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    iget-boolean v4, v0, Lo/aa;->Ͳ:Z

    .line 19
    .line 20
    iget-object v5, v1, Lcom/byd/launcher/NavBarService;->ε:Landroid/widget/ImageView;

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    move v2, v3

    .line 27
    :cond_0
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->δ()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/byd/launcher/NavBarService;->Ή(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :pswitch_1
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 41
    .line 42
    iget-object v1, v0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "com.byd.mediacenter"

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iget-wide v4, v1, Lcom/byd/launcher/NavBarService;->Ϸ:J

    .line 65
    .line 66
    sub-long/2addr v2, v4

    .line 67
    const-wide/16 v4, 0x5dc

    .line 68
    .line 69
    cmp-long v2, v2, v4

    .line 70
    .line 71
    if-gez v2, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-boolean v2, v0, Lo/aa;->Ͳ:Z

    .line 75
    .line 76
    iput-boolean v2, v1, Lcom/byd/launcher/NavBarService;->ϵ:Z

    .line 77
    .line 78
    iget-object v3, v1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Lo/vl;->Ϋ(Z)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->ϊ()V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void

    .line 89
    :pswitch_2
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 90
    .line 91
    iget-object v1, v0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 92
    .line 93
    iget-boolean v2, v0, Lo/aa;->Ͳ:Z

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/byd/launcher/NavBarService;->Έ(Z)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_3
    iget-object v1, v0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 100
    .line 101
    iget-boolean v5, v0, Lo/aa;->Ͳ:Z

    .line 102
    .line 103
    sget-object v6, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-static {v1}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    iput-boolean v6, v1, Lcom/byd/launcher/NavBarService;->Ϗ:Z

    .line 117
    .line 118
    iget-object v8, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 119
    .line 120
    const/4 v9, 0x1

    .line 121
    invoke-static {v9}, Lo/ci;->ͱ(Z)I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    const/4 v13, 0x5

    .line 126
    if-eqz v8, :cond_1c

    .line 127
    .line 128
    if-eqz v7, :cond_b

    .line 129
    .line 130
    if-eqz v6, :cond_5

    .line 131
    .line 132
    const v7, -0x4c1f1f20

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const/high16 v7, -0x4d000000

    .line 137
    .line 138
    :goto_1
    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v7, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 142
    .line 143
    sget v8, Lo/if;->iv_nav_blur_bg:I

    .line 144
    .line 145
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Landroid/widget/ImageView;

    .line 150
    .line 151
    if-eqz v7, :cond_a

    .line 152
    .line 153
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    if-eqz v8, :cond_6

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    iget-object v8, v1, Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;

    .line 161
    .line 162
    if-eqz v8, :cond_7

    .line 163
    .line 164
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_7

    .line 169
    .line 170
    iget-object v8, v1, Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    iget-boolean v8, v1, Lcom/byd/launcher/NavBarService;->ϖ:Z

    .line 180
    .line 181
    if-eqz v8, :cond_8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    sget-object v8, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 185
    .line 186
    if-eqz v8, :cond_a

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    if-eqz v15, :cond_9

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_9
    iput-boolean v9, v1, Lcom/byd/launcher/NavBarService;->ϖ:Z

    .line 196
    .line 197
    new-instance v15, Lo/Ϋ;

    .line 198
    .line 199
    invoke-direct {v15, v1, v8, v9, v7}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v15}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 203
    .line 204
    .line 205
    :cond_a
    :goto_3
    iget-object v7, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 206
    .line 207
    sget v8, Lo/if;->v_nav_blur_tint:I

    .line 208
    .line 209
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    if-eqz v7, :cond_e

    .line 214
    .line 215
    invoke-static {v6}, Lo/ci;->ˏ(Z)I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_b
    if-eqz v6, :cond_c

    .line 224
    .line 225
    const/4 v7, -0x1

    .line 226
    goto :goto_4

    .line 227
    :cond_c
    const/high16 v7, -0x1000000

    .line 228
    .line 229
    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    .line 231
    .line 232
    iget-object v7, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 233
    .line 234
    sget v8, Lo/if;->iv_nav_blur_bg:I

    .line 235
    .line 236
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    check-cast v7, Landroid/widget/ImageView;

    .line 241
    .line 242
    if-eqz v7, :cond_d

    .line 243
    .line 244
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    :cond_d
    iget-object v7, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 248
    .line 249
    sget v8, Lo/if;->v_nav_blur_tint:I

    .line 250
    .line 251
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    if-eqz v7, :cond_e

    .line 256
    .line 257
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    .line 259
    .line 260
    :cond_e
    :goto_5
    invoke-static {v6}, Lo/ci;->ͱ(Z)I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    sget v8, Lo/if;->btn_driver_temp_down:I

    .line 265
    .line 266
    sget v15, Lo/if;->btn_driver_temp_up:I

    .line 267
    .line 268
    sget v11, Lo/if;->btn_wind_down:I

    .line 269
    .line 270
    sget v12, Lo/if;->btn_wind_up:I

    .line 271
    .line 272
    filled-new-array {v8, v15, v11, v12}, [I

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    move v11, v3

    .line 277
    :goto_6
    const/4 v12, 0x4

    .line 278
    if-ge v11, v12, :cond_11

    .line 279
    .line 280
    aget v12, v8, v11

    .line 281
    .line 282
    iget-object v15, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 283
    .line 284
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    instance-of v15, v12, Landroid/widget/ImageView;

    .line 289
    .line 290
    if-eqz v15, :cond_10

    .line 291
    .line 292
    check-cast v12, Landroid/widget/ImageView;

    .line 293
    .line 294
    if-eqz v6, :cond_f

    .line 295
    .line 296
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 297
    .line 298
    invoke-virtual {v12, v7, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 299
    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_f
    invoke-virtual {v12}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 303
    .line 304
    .line 305
    :cond_10
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_11
    sget v7, Lo/if;->btn_nav_settings:I

    .line 309
    .line 310
    sget v8, Lo/if;->btn_nav_camera:I

    .line 311
    .line 312
    sget v11, Lo/if;->btn_nav_media:I

    .line 313
    .line 314
    sget v15, Lo/if;->btn_nav_app4:I

    .line 315
    .line 316
    filled-new-array {v7, v8, v11, v15}, [I

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    move v8, v3

    .line 321
    :goto_8
    if-ge v8, v12, :cond_15

    .line 322
    .line 323
    aget v11, v7, v8

    .line 324
    .line 325
    iget-object v15, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 326
    .line 327
    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    instance-of v15, v11, Landroid/widget/ImageView;

    .line 332
    .line 333
    if-eqz v15, :cond_14

    .line 334
    .line 335
    sget v15, Lo/if;->tag_nav_func:I

    .line 336
    .line 337
    invoke-virtual {v11, v15}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v15

    .line 341
    if-eqz v15, :cond_12

    .line 342
    .line 343
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v15

    .line 347
    const-string v14, "app:"

    .line 348
    .line 349
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    if-nez v14, :cond_12

    .line 354
    .line 355
    move v14, v9

    .line 356
    goto :goto_9

    .line 357
    :cond_12
    move v14, v3

    .line 358
    :goto_9
    if-eqz v6, :cond_13

    .line 359
    .line 360
    if-eqz v14, :cond_13

    .line 361
    .line 362
    check-cast v11, Landroid/widget/ImageView;

    .line 363
    .line 364
    invoke-static {v6}, Lo/ci;->ͱ(Z)I

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 369
    .line 370
    invoke-virtual {v11, v14, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 371
    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_13
    check-cast v11, Landroid/widget/ImageView;

    .line 375
    .line 376
    invoke-virtual {v11}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 377
    .line 378
    .line 379
    :cond_14
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_15
    const/16 v7, 0xb

    .line 383
    .line 384
    new-array v8, v7, [I

    .line 385
    .line 386
    sget v11, Lo/if;->btn_back:I

    .line 387
    .line 388
    aput v11, v8, v3

    .line 389
    .line 390
    sget v11, Lo/if;->btn_home:I

    .line 391
    .line 392
    aput v11, v8, v9

    .line 393
    .line 394
    sget v9, Lo/if;->btn_defrost:I

    .line 395
    .line 396
    aput v9, v8, v4

    .line 397
    .line 398
    const/4 v9, 0x3

    .line 399
    sget v11, Lo/if;->btn_driver_temp_down:I

    .line 400
    .line 401
    aput v11, v8, v9

    .line 402
    .line 403
    sget v9, Lo/if;->btn_driver_temp_up:I

    .line 404
    .line 405
    aput v9, v8, v12

    .line 406
    .line 407
    sget v9, Lo/if;->btn_wind_down:I

    .line 408
    .line 409
    aput v9, v8, v13

    .line 410
    .line 411
    const/4 v9, 0x6

    .line 412
    sget v11, Lo/if;->btn_wind_up:I

    .line 413
    .line 414
    aput v11, v8, v9

    .line 415
    .line 416
    const/4 v9, 0x7

    .line 417
    sget v11, Lo/if;->btn_ac_power:I

    .line 418
    .line 419
    aput v11, v8, v9

    .line 420
    .line 421
    sget v9, Lo/if;->btn_cycle_mode:I

    .line 422
    .line 423
    aput v9, v8, v2

    .line 424
    .line 425
    const/16 v9, 0x9

    .line 426
    .line 427
    sget v11, Lo/if;->btn_all_apps:I

    .line 428
    .line 429
    aput v11, v8, v9

    .line 430
    .line 431
    const/16 v9, 0xa

    .line 432
    .line 433
    sget v11, Lo/if;->layout_wind:I

    .line 434
    .line 435
    aput v11, v8, v9

    .line 436
    .line 437
    move v9, v3

    .line 438
    :goto_b
    if-ge v9, v7, :cond_17

    .line 439
    .line 440
    aget v11, v8, v9

    .line 441
    .line 442
    iget-object v14, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 443
    .line 444
    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    if-eqz v11, :cond_16

    .line 449
    .line 450
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 451
    .line 452
    .line 453
    move-result v14

    .line 454
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 455
    .line 456
    .line 457
    move-result v15

    .line 458
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    .line 459
    .line 460
    .line 461
    move-result v7

    .line 462
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    const/4 v3, 0x0

    .line 467
    invoke-virtual {v11, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v14, v15, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 471
    .line 472
    .line 473
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 474
    .line 475
    const/16 v2, 0x8

    .line 476
    .line 477
    const/4 v3, 0x0

    .line 478
    const/16 v7, 0xb

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_17
    sget v2, Lo/if;->btn_nav_settings:I

    .line 482
    .line 483
    sget v3, Lo/if;->btn_nav_camera:I

    .line 484
    .line 485
    sget v7, Lo/if;->btn_nav_media:I

    .line 486
    .line 487
    sget v8, Lo/if;->btn_nav_app4:I

    .line 488
    .line 489
    filled-new-array {v2, v3, v7, v8}, [I

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    const/4 v3, 0x0

    .line 494
    :goto_c
    if-ge v3, v12, :cond_19

    .line 495
    .line 496
    aget v7, v2, v3

    .line 497
    .line 498
    iget-object v8, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 499
    .line 500
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    if-eqz v7, :cond_18

    .line 505
    .line 506
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    .line 515
    .line 516
    .line 517
    move-result v11

    .line 518
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    .line 519
    .line 520
    .line 521
    move-result v14

    .line 522
    const/4 v15, 0x0

    .line 523
    invoke-virtual {v7, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7, v8, v9, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 527
    .line 528
    .line 529
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 530
    .line 531
    goto :goto_c

    .line 532
    :cond_19
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 533
    .line 534
    sget v3, Lo/if;->tv_driver_temp:I

    .line 535
    .line 536
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    instance-of v3, v2, Landroid/widget/TextView;

    .line 541
    .line 542
    if-eqz v3, :cond_1a

    .line 543
    .line 544
    move-object v3, v2

    .line 545
    check-cast v3, Landroid/widget/TextView;

    .line 546
    .line 547
    invoke-static {v6}, Lo/ci;->ͷ(Z)I

    .line 548
    .line 549
    .line 550
    move-result v7

    .line 551
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 567
    .line 568
    .line 569
    move-result v9

    .line 570
    const/4 v11, 0x0

    .line 571
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 575
    .line 576
    .line 577
    :cond_1a
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->Ͳ:Lcom/byd/launcher/databinding/NavBarBinding;

    .line 578
    .line 579
    if-eqz v2, :cond_1b

    .line 580
    .line 581
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 582
    .line 583
    .line 584
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->Ͳ:Lcom/byd/launcher/databinding/NavBarBinding;

    .line 585
    .line 586
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 587
    .line 588
    .line 589
    :cond_1b
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 590
    .line 591
    new-instance v3, Lo/l9;

    .line 592
    .line 593
    invoke-direct {v3, v1, v6, v6}, Lo/l9;-><init>(Lcom/byd/launcher/NavBarService;ZZ)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->χ()V

    .line 600
    .line 601
    .line 602
    :cond_1c
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 603
    .line 604
    if-eqz v2, :cond_1d

    .line 605
    .line 606
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 607
    .line 608
    .line 609
    :cond_1d
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 610
    .line 611
    if-eqz v2, :cond_33

    .line 612
    .line 613
    iget-object v3, v2, Lo/vl;->Ξ:Ljava/lang/Boolean;

    .line 614
    .line 615
    if-eqz v3, :cond_1e

    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-ne v3, v6, :cond_1e

    .line 622
    .line 623
    goto/16 :goto_19

    .line 624
    .line 625
    :cond_1e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    iput-object v3, v2, Lo/vl;->Ξ:Ljava/lang/Boolean;

    .line 630
    .line 631
    iget-object v3, v2, Lo/vl;->ˏ:Landroid/content/Context;

    .line 632
    .line 633
    invoke-static {v3}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    iget-object v7, v2, Lo/vl;->Ͷ:Lo/km;

    .line 638
    .line 639
    if-eqz v7, :cond_1f

    .line 640
    .line 641
    iput-boolean v6, v7, Lo/km;->Ͳ:Z

    .line 642
    .line 643
    :cond_1f
    iget-object v7, v2, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 644
    .line 645
    if-eqz v7, :cond_31

    .line 646
    .line 647
    iget-object v7, v2, Lo/vl;->ˏ:Landroid/content/Context;

    .line 648
    .line 649
    invoke-static {v7}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    if-eqz v7, :cond_21

    .line 654
    .line 655
    if-eqz v3, :cond_20

    .line 656
    .line 657
    const v3, 0x66ffffff

    .line 658
    .line 659
    .line 660
    goto :goto_e

    .line 661
    :cond_20
    const/high16 v3, 0x66000000

    .line 662
    .line 663
    goto :goto_e

    .line 664
    :cond_21
    if-eqz v3, :cond_22

    .line 665
    .line 666
    const/4 v11, -0x1

    .line 667
    goto :goto_d

    .line 668
    :cond_22
    const/high16 v11, -0x1000000

    .line 669
    .line 670
    :goto_d
    move v3, v11

    .line 671
    :goto_e
    const/4 v8, 0x0

    .line 672
    :goto_f
    iget-object v9, v2, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 673
    .line 674
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 675
    .line 676
    .line 677
    move-result v9

    .line 678
    if-ge v8, v9, :cond_2f

    .line 679
    .line 680
    iget-object v9, v2, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 681
    .line 682
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 683
    .line 684
    .line 685
    move-result-object v9

    .line 686
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 687
    .line 688
    .line 689
    move-result-object v11

    .line 690
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 691
    .line 692
    .line 693
    move-result-object v11

    .line 694
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 699
    .line 700
    const/high16 v12, 0x41000000    # 8.0f

    .line 701
    .line 702
    mul-float/2addr v11, v12

    .line 703
    if-eqz v7, :cond_24

    .line 704
    .line 705
    sget v12, Lo/if;->tag_blur_crop_drawable:I

    .line 706
    .line 707
    invoke-virtual {v9, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v12

    .line 711
    instance-of v14, v12, Lo/II;

    .line 712
    .line 713
    if-eqz v14, :cond_23

    .line 714
    .line 715
    check-cast v12, Lo/II;

    .line 716
    .line 717
    iput v3, v12, Lo/II;->Ͷ:I

    .line 718
    .line 719
    iget-object v11, v12, Lo/II;->Ͱ:Landroid/graphics/Paint;

    .line 720
    .line 721
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 725
    .line 726
    .line 727
    goto :goto_11

    .line 728
    :cond_23
    sget-object v12, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 729
    .line 730
    new-instance v14, Lo/II;

    .line 731
    .line 732
    invoke-direct {v14, v12, v3, v11}, Lo/II;-><init>(Landroid/graphics/Bitmap;IF)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v9, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 736
    .line 737
    .line 738
    sget v11, Lo/if;->tag_blur_crop_drawable:I

    .line 739
    .line 740
    goto :goto_10

    .line 741
    :cond_24
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    .line 742
    .line 743
    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v9, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 753
    .line 754
    .line 755
    sget v11, Lo/if;->tag_blur_crop_drawable:I

    .line 756
    .line 757
    const/4 v14, 0x0

    .line 758
    :goto_10
    invoke-virtual {v9, v11, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    :goto_11
    invoke-static {v9, v6}, Lo/ci;->ˋ(Landroid/view/View;Z)V

    .line 762
    .line 763
    .line 764
    sget v11, Lo/if;->btn_music_prev:I

    .line 765
    .line 766
    sget v12, Lo/if;->btn_music_play:I

    .line 767
    .line 768
    sget v14, Lo/if;->btn_music_next:I

    .line 769
    .line 770
    sget v15, Lo/if;->iv_vehicle_lock:I

    .line 771
    .line 772
    sget v4, Lo/if;->iv_vehicle_trunk:I

    .line 773
    .line 774
    filled-new-array {v11, v12, v14, v15, v4}, [I

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    const/4 v11, 0x0

    .line 779
    :goto_12
    if-ge v11, v13, :cond_27

    .line 780
    .line 781
    aget v12, v4, v11

    .line 782
    .line 783
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 784
    .line 785
    .line 786
    move-result-object v12

    .line 787
    instance-of v14, v12, Landroid/widget/ImageView;

    .line 788
    .line 789
    if-eqz v14, :cond_26

    .line 790
    .line 791
    if-eqz v6, :cond_25

    .line 792
    .line 793
    move-object v14, v12

    .line 794
    check-cast v14, Landroid/widget/ImageView;

    .line 795
    .line 796
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 797
    .line 798
    invoke-virtual {v14, v10, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 799
    .line 800
    .line 801
    const/4 v14, 0x0

    .line 802
    invoke-virtual {v12, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 803
    .line 804
    .line 805
    goto :goto_13

    .line 806
    :cond_25
    check-cast v12, Landroid/widget/ImageView;

    .line 807
    .line 808
    invoke-virtual {v12}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 809
    .line 810
    .line 811
    :cond_26
    :goto_13
    add-int/lit8 v11, v11, 0x1

    .line 812
    .line 813
    goto :goto_12

    .line 814
    :cond_27
    sget v4, Lo/if;->btn_nav_home:I

    .line 815
    .line 816
    sget v11, Lo/if;->btn_nav_company:I

    .line 817
    .line 818
    filled-new-array {v4, v11}, [I

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    const/4 v11, 0x0

    .line 823
    const/4 v12, 0x2

    .line 824
    :goto_14
    if-ge v11, v12, :cond_2c

    .line 825
    .line 826
    aget v12, v4, v11

    .line 827
    .line 828
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 829
    .line 830
    .line 831
    move-result-object v12

    .line 832
    if-eqz v12, :cond_28

    .line 833
    .line 834
    if-eqz v6, :cond_28

    .line 835
    .line 836
    const/4 v14, 0x0

    .line 837
    invoke-virtual {v12, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 838
    .line 839
    .line 840
    :cond_28
    instance-of v14, v12, Landroid/view/ViewGroup;

    .line 841
    .line 842
    if-eqz v14, :cond_2b

    .line 843
    .line 844
    check-cast v12, Landroid/view/ViewGroup;

    .line 845
    .line 846
    const/4 v14, 0x0

    .line 847
    :goto_15
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    .line 848
    .line 849
    .line 850
    move-result v15

    .line 851
    if-ge v14, v15, :cond_2b

    .line 852
    .line 853
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 854
    .line 855
    .line 856
    move-result-object v15

    .line 857
    instance-of v13, v15, Landroid/widget/ImageView;

    .line 858
    .line 859
    if-eqz v13, :cond_2a

    .line 860
    .line 861
    check-cast v15, Landroid/widget/ImageView;

    .line 862
    .line 863
    if-eqz v6, :cond_29

    .line 864
    .line 865
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 866
    .line 867
    invoke-virtual {v15, v10, v13}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 868
    .line 869
    .line 870
    goto :goto_16

    .line 871
    :cond_29
    invoke-virtual {v15}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 872
    .line 873
    .line 874
    :cond_2a
    :goto_16
    add-int/lit8 v14, v14, 0x1

    .line 875
    .line 876
    const/4 v13, 0x5

    .line 877
    goto :goto_15

    .line 878
    :cond_2b
    add-int/lit8 v11, v11, 0x1

    .line 879
    .line 880
    const/4 v12, 0x2

    .line 881
    const/4 v13, 0x5

    .line 882
    goto :goto_14

    .line 883
    :cond_2c
    if-eqz v6, :cond_2e

    .line 884
    .line 885
    sget v4, Lo/if;->btn_vehicle_lock:I

    .line 886
    .line 887
    sget v11, Lo/if;->btn_vehicle_trunk:I

    .line 888
    .line 889
    filled-new-array {v4, v11}, [I

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    const/4 v11, 0x0

    .line 894
    :goto_17
    const/4 v12, 0x2

    .line 895
    if-ge v11, v12, :cond_2e

    .line 896
    .line 897
    aget v12, v4, v11

    .line 898
    .line 899
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 900
    .line 901
    .line 902
    move-result-object v12

    .line 903
    const/4 v13, 0x0

    .line 904
    if-eqz v12, :cond_2d

    .line 905
    .line 906
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 907
    .line 908
    .line 909
    :cond_2d
    add-int/lit8 v11, v11, 0x1

    .line 910
    .line 911
    goto :goto_17

    .line 912
    :cond_2e
    const/4 v13, 0x0

    .line 913
    add-int/lit8 v8, v8, 0x1

    .line 914
    .line 915
    const/4 v4, 0x2

    .line 916
    const/4 v13, 0x5

    .line 917
    goto/16 :goto_f

    .line 918
    .line 919
    :cond_2f
    invoke-virtual {v2}, Lo/vl;->ͳ()V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v2}, Lo/vl;->Έ()Lo/dm;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    if-eqz v3, :cond_30

    .line 927
    .line 928
    invoke-virtual {v2, v3}, Lo/vl;->Θ(Lo/dm;)V

    .line 929
    .line 930
    .line 931
    :cond_30
    iget-object v3, v2, Lo/vl;->Ͷ:Lo/km;

    .line 932
    .line 933
    if-eqz v3, :cond_31

    .line 934
    .line 935
    invoke-virtual {v3}, Lo/km;->getItemCount()I

    .line 936
    .line 937
    .line 938
    move-result v4

    .line 939
    const-string v6, "theme"

    .line 940
    .line 941
    const/4 v7, 0x0

    .line 942
    invoke-virtual {v3, v7, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    goto :goto_18

    .line 946
    :cond_31
    const/4 v7, 0x0

    .line 947
    :goto_18
    iget-object v3, v2, Lo/vl;->ͳ:Landroid/view/View;

    .line 948
    .line 949
    if-eqz v3, :cond_33

    .line 950
    .line 951
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 952
    .line 953
    .line 954
    iget-object v3, v2, Lo/vl;->ͳ:Landroid/view/View;

    .line 955
    .line 956
    sget v4, Lo/if;->v_blur_tint:I

    .line 957
    .line 958
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    const/16 v4, 0x8

    .line 963
    .line 964
    if-eqz v3, :cond_32

    .line 965
    .line 966
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 967
    .line 968
    .line 969
    :cond_32
    iget-object v2, v2, Lo/vl;->ͳ:Landroid/view/View;

    .line 970
    .line 971
    sget v3, Lo/if;->iv_blur_bg:I

    .line 972
    .line 973
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    check-cast v2, Landroid/widget/ImageView;

    .line 978
    .line 979
    if-eqz v2, :cond_33

    .line 980
    .line 981
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    .line 983
    .line 984
    :cond_33
    :goto_19
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->χ()V

    .line 985
    .line 986
    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    .line 988
    .line 989
    const-string v2, "Theme applied: light="

    .line 990
    .line 991
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    const-string v2, "NavBarSvc"

    .line 1002
    .line 1003
    invoke-static {v2, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    return-void

    .line 1007
    :pswitch_4
    iget-object v1, v0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1008
    .line 1009
    iget-boolean v2, v0, Lo/aa;->Ͳ:Z

    .line 1010
    .line 1011
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1012
    .line 1013
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    .line 1015
    .line 1016
    sget-object v3, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 1017
    .line 1018
    if-eqz v3, :cond_34

    .line 1019
    .line 1020
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v3

    .line 1024
    if-nez v3, :cond_34

    .line 1025
    .line 1026
    invoke-virtual {v1, v2}, Lcom/byd/launcher/NavBarService;->Έ(Z)V

    .line 1027
    .line 1028
    .line 1029
    goto :goto_1a

    .line 1030
    :cond_34
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    if-eqz v3, :cond_35

    .line 1035
    .line 1036
    invoke-virtual {v3}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 1037
    .line 1038
    .line 1039
    :cond_35
    iget-object v3, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1040
    .line 1041
    new-instance v4, Lo/aa;

    .line 1042
    .line 1043
    const/4 v5, 0x2

    .line 1044
    invoke-direct {v4, v5, v1, v2}, Lo/aa;-><init>(ILcom/byd/launcher/NavBarService;Z)V

    .line 1045
    .line 1046
    .line 1047
    const-wide/16 v1, 0x1f4

    .line 1048
    .line 1049
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1050
    .line 1051
    .line 1052
    :goto_1a
    return-void

    .line 1053
    :goto_1b
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1054
    .line 1055
    iget-object v1, v0, Lo/aa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1056
    .line 1057
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    iget-boolean v2, v0, Lo/aa;->Ͳ:Z

    .line 1061
    .line 1062
    if-eqz v2, :cond_36

    .line 1063
    .line 1064
    const-string v2, "\u5df2\u6536\u85cf"

    .line 1065
    .line 1066
    goto :goto_1c

    .line 1067
    :cond_36
    const-string v2, "\u5df2\u53d6\u6d88\u6536\u85cf"

    .line 1068
    .line 1069
    :goto_1c
    invoke-virtual {v1, v2}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    return-void

    .line 1073
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
