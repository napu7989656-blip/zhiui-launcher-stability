.class public final Lo/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic ˋ:Lo/nd;


# direct methods
.method public constructor <init>(Lo/nd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ld;->ˋ:Lo/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-object v3, v1, Lo/ld;->ˋ:Lo/nd;

    .line 6
    .line 7
    iget v4, v3, Lo/nd;->Ε:I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-gtz v4, :cond_0

    .line 11
    .line 12
    return v5

    .line 13
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x2

    .line 22
    if-ne v0, v7, :cond_2

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    iget-wide v10, v3, Lo/nd;->ΰ:J

    .line 29
    .line 30
    sub-long v10, v8, v10

    .line 31
    .line 32
    const-wide/16 v12, 0x0

    .line 33
    .line 34
    cmp-long v10, v10, v12

    .line 35
    .line 36
    if-gez v10, :cond_1

    .line 37
    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_1
    iput-wide v8, v3, Lo/nd;->ΰ:J

    .line 41
    .line 42
    :cond_2
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    iput-wide v8, v3, Lo/nd;->ί:J

    .line 49
    .line 50
    :cond_3
    iget-object v8, v3, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 51
    .line 52
    if-eqz v8, :cond_6

    .line 53
    .line 54
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    iget-object v9, v3, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 59
    .line 60
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    iget v10, v3, Lo/nd;->γ:I

    .line 65
    .line 66
    if-ne v8, v10, :cond_4

    .line 67
    .line 68
    iget v10, v3, Lo/nd;->δ:I

    .line 69
    .line 70
    if-eq v9, v10, :cond_6

    .line 71
    .line 72
    :cond_4
    iput v8, v3, Lo/nd;->γ:I

    .line 73
    .line 74
    iput v9, v3, Lo/nd;->δ:I

    .line 75
    .line 76
    if-lez v8, :cond_6

    .line 77
    .line 78
    if-lez v9, :cond_6

    .line 79
    .line 80
    iget v10, v3, Lo/nd;->ε:I

    .line 81
    .line 82
    if-lez v10, :cond_6

    .line 83
    .line 84
    iget v11, v3, Lo/nd;->ζ:I

    .line 85
    .line 86
    if-lez v11, :cond_6

    .line 87
    .line 88
    int-to-float v10, v10

    .line 89
    int-to-float v8, v8

    .line 90
    div-float/2addr v10, v8

    .line 91
    iput v10, v3, Lo/nd;->α:F

    .line 92
    .line 93
    int-to-float v8, v11

    .line 94
    int-to-float v9, v9

    .line 95
    div-float/2addr v8, v9

    .line 96
    iput v8, v3, Lo/nd;->β:F

    .line 97
    .line 98
    iget-object v8, v3, Lo/nd;->ξ:Landroid/graphics/Matrix;

    .line 99
    .line 100
    if-nez v8, :cond_5

    .line 101
    .line 102
    new-instance v8, Landroid/graphics/Matrix;

    .line 103
    .line 104
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v8, v3, Lo/nd;->ξ:Landroid/graphics/Matrix;

    .line 108
    .line 109
    :cond_5
    iget-object v8, v3, Lo/nd;->ξ:Landroid/graphics/Matrix;

    .line 110
    .line 111
    iget v9, v3, Lo/nd;->α:F

    .line 112
    .line 113
    iget v10, v3, Lo/nd;->β:F

    .line 114
    .line 115
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 116
    .line 117
    .line 118
    :cond_6
    iget-boolean v8, v3, Lo/nd;->λ:Z

    .line 119
    .line 120
    const-wide/32 v9, 0x1c9c380

    .line 121
    .line 122
    .line 123
    if-eqz v8, :cond_b

    .line 124
    .line 125
    iget-object v8, v3, Lo/nd;->ξ:Landroid/graphics/Matrix;

    .line 126
    .line 127
    if-eqz v8, :cond_b

    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 130
    .line 131
    .line 132
    iget-object v8, v3, Lo/nd;->κ:Ljava/lang/reflect/Method;

    .line 133
    .line 134
    new-array v11, v6, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    aput-object v12, v11, v5

    .line 141
    .line 142
    invoke-virtual {v8, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 148
    .line 149
    .line 150
    move-result-wide v11

    .line 151
    iget-wide v13, v3, Lo/nd;->π:J

    .line 152
    .line 153
    sub-long v13, v11, v13

    .line 154
    .line 155
    cmp-long v0, v13, v9

    .line 156
    .line 157
    if-lez v0, :cond_7

    .line 158
    .line 159
    invoke-virtual {v3}, Lo/nd;->Ί()V

    .line 160
    .line 161
    .line 162
    iput-wide v11, v3, Lo/nd;->π:J

    .line 163
    .line 164
    :cond_7
    iget-object v0, v3, Lo/nd;->ι:Ljava/lang/reflect/Method;

    .line 165
    .line 166
    iget-object v8, v3, Lo/nd;->θ:Landroid/hardware/input/InputManager;

    .line 167
    .line 168
    new-array v11, v7, [Ljava/lang/Object;

    .line 169
    .line 170
    aput-object v2, v11, v5

    .line 171
    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    aput-object v12, v11, v6

    .line 177
    .line 178
    invoke-virtual {v0, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v8, v3, Lo/nd;->ο:Landroid/graphics/Matrix;

    .line 183
    .line 184
    if-nez v8, :cond_8

    .line 185
    .line 186
    new-instance v8, Landroid/graphics/Matrix;

    .line 187
    .line 188
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v8, v3, Lo/nd;->ο:Landroid/graphics/Matrix;

    .line 192
    .line 193
    :cond_8
    iget-object v8, v3, Lo/nd;->ξ:Landroid/graphics/Matrix;

    .line 194
    .line 195
    iget-object v11, v3, Lo/nd;->ο:Landroid/graphics/Matrix;

    .line 196
    .line 197
    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 198
    .line 199
    .line 200
    iget-object v8, v3, Lo/nd;->ο:Landroid/graphics/Matrix;

    .line 201
    .line 202
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 203
    .line 204
    .line 205
    instance-of v8, v0, Ljava/lang/Boolean;

    .line 206
    .line 207
    if-eqz v8, :cond_12

    .line 208
    .line 209
    check-cast v0, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_12

    .line 216
    .line 217
    const-string v0, "PiPManager"

    .line 218
    .line 219
    const-string v8, "Direct inject(fastpath) returned false, fallback"

    .line 220
    .line 221
    invoke-static {v0, v8}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iput-boolean v5, v3, Lo/nd;->λ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    :try_start_1
    iget-object v8, v3, Lo/nd;->ο:Landroid/graphics/Matrix;

    .line 229
    .line 230
    if-eqz v8, :cond_9

    .line 231
    .line 232
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    .line 234
    .line 235
    :catchall_1
    :cond_9
    const-string v8, "Fast inject failed, fallback"

    .line 236
    .line 237
    instance-of v11, v0, Ljava/lang/Exception;

    .line 238
    .line 239
    if-eqz v11, :cond_a

    .line 240
    .line 241
    check-cast v0, Ljava/lang/Exception;

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_a
    new-instance v11, Ljava/lang/RuntimeException;

    .line 245
    .line 246
    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    move-object v0, v11

    .line 250
    :goto_0
    invoke-virtual {v3, v8, v0}, Lo/nd;->ͺ(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 251
    .line 252
    .line 253
    iput-boolean v5, v3, Lo/nd;->λ:Z

    .line 254
    .line 255
    :cond_b
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    const/16 v0, 0xa

    .line 260
    .line 261
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    move v11, v5

    .line 266
    :goto_2
    if-ge v11, v0, :cond_c

    .line 267
    .line 268
    iget-object v12, v3, Lo/nd;->Π:[Landroid/view/MotionEvent$PointerProperties;

    .line 269
    .line 270
    aget-object v12, v12, v11

    .line 271
    .line 272
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    iput v13, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 277
    .line 278
    iget-object v12, v3, Lo/nd;->Π:[Landroid/view/MotionEvent$PointerProperties;

    .line 279
    .line 280
    aget-object v12, v12, v11

    .line 281
    .line 282
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    iput v13, v12, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 287
    .line 288
    iget-object v12, v3, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    .line 289
    .line 290
    aget-object v12, v12, v11

    .line 291
    .line 292
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    iget v14, v3, Lo/nd;->α:F

    .line 297
    .line 298
    mul-float/2addr v13, v14

    .line 299
    iput v13, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 300
    .line 301
    iget-object v12, v3, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    .line 302
    .line 303
    aget-object v12, v12, v11

    .line 304
    .line 305
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    iget v14, v3, Lo/nd;->β:F

    .line 310
    .line 311
    mul-float/2addr v13, v14

    .line 312
    iput v13, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 313
    .line 314
    iget-object v12, v3, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    .line 315
    .line 316
    aget-object v12, v12, v11

    .line 317
    .line 318
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    const/high16 v14, 0x3f800000    # 1.0f

    .line 323
    .line 324
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    .line 325
    .line 326
    .line 327
    move-result v13

    .line 328
    iput v13, v12, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 329
    .line 330
    iget-object v12, v3, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    .line 331
    .line 332
    aget-object v12, v12, v11

    .line 333
    .line 334
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getSize(I)F

    .line 335
    .line 336
    .line 337
    move-result v13

    .line 338
    iput v13, v12, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 339
    .line 340
    add-int/lit8 v11, v11, 0x1

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_c
    iget-wide v11, v3, Lo/nd;->ί:J

    .line 344
    .line 345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 346
    .line 347
    .line 348
    move-result-wide v13

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 350
    .line 351
    .line 352
    move-result v15

    .line 353
    iget-object v7, v3, Lo/nd;->Π:[Landroid/view/MotionEvent$PointerProperties;

    .line 354
    .line 355
    iget-object v9, v3, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    .line 356
    .line 357
    const/16 v19, 0x0

    .line 358
    .line 359
    const/16 v20, 0x0

    .line 360
    .line 361
    const/high16 v21, 0x3f800000    # 1.0f

    .line 362
    .line 363
    const/high16 v22, 0x3f800000    # 1.0f

    .line 364
    .line 365
    const/16 v23, 0x0

    .line 366
    .line 367
    const/16 v24, 0x0

    .line 368
    .line 369
    const/16 v25, 0x1002

    .line 370
    .line 371
    const/16 v26, 0x0

    .line 372
    .line 373
    move/from16 v16, v0

    .line 374
    .line 375
    move-object/from16 v17, v7

    .line 376
    .line 377
    move-object/from16 v18, v9

    .line 378
    .line 379
    invoke-static/range {v11 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    iget-boolean v0, v3, Lo/nd;->λ:Z

    .line 384
    .line 385
    if-eqz v0, :cond_f

    .line 386
    .line 387
    const-string v0, "Direct inject returned false for display "

    .line 388
    .line 389
    :try_start_2
    iget-object v9, v3, Lo/nd;->κ:Ljava/lang/reflect/Method;

    .line 390
    .line 391
    new-array v10, v6, [Ljava/lang/Object;

    .line 392
    .line 393
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    aput-object v11, v10, v5

    .line 398
    .line 399
    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    if-nez v9, :cond_d

    .line 407
    .line 408
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 409
    .line 410
    .line 411
    move-result-wide v9

    .line 412
    iget-wide v11, v3, Lo/nd;->π:J

    .line 413
    .line 414
    sub-long v11, v9, v11

    .line 415
    .line 416
    const-wide/32 v13, 0x1c9c380

    .line 417
    .line 418
    .line 419
    cmp-long v11, v11, v13

    .line 420
    .line 421
    if-lez v11, :cond_d

    .line 422
    .line 423
    invoke-virtual {v3}, Lo/nd;->Ί()V

    .line 424
    .line 425
    .line 426
    iput-wide v9, v3, Lo/nd;->π:J

    .line 427
    .line 428
    :cond_d
    iget-object v9, v3, Lo/nd;->ι:Ljava/lang/reflect/Method;

    .line 429
    .line 430
    iget-object v10, v3, Lo/nd;->θ:Landroid/hardware/input/InputManager;

    .line 431
    .line 432
    const/4 v11, 0x2

    .line 433
    new-array v12, v11, [Ljava/lang/Object;

    .line 434
    .line 435
    aput-object v7, v12, v5

    .line 436
    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    aput-object v11, v12, v6

    .line 442
    .line 443
    invoke-virtual {v9, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    instance-of v10, v9, Ljava/lang/Boolean;

    .line 448
    .line 449
    if-eqz v10, :cond_e

    .line 450
    .line 451
    check-cast v9, Ljava/lang/Boolean;

    .line 452
    .line 453
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    if-nez v9, :cond_e

    .line 458
    .line 459
    const-string v9, "PiPManager"

    .line 460
    .line 461
    new-instance v10, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v0, ", switching to Binder path"

    .line 470
    .line 471
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v9, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iput-boolean v5, v3, Lo/nd;->λ:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 482
    .line 483
    goto :goto_3

    .line 484
    :cond_e
    move v0, v6

    .line 485
    goto :goto_4

    .line 486
    :catch_0
    move-exception v0

    .line 487
    const-string v9, "Direct inject failed, disabling"

    .line 488
    .line 489
    invoke-virtual {v3, v9, v0}, Lo/nd;->ͺ(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 490
    .line 491
    .line 492
    iput-boolean v5, v3, Lo/nd;->λ:Z

    .line 493
    .line 494
    :goto_3
    move v0, v5

    .line 495
    :goto_4
    if-eqz v0, :cond_f

    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_f
    iget-object v0, v3, Lo/nd;->Ο:Landroid/os/IBinder;

    .line 499
    .line 500
    const/4 v9, 0x0

    .line 501
    if-eqz v0, :cond_10

    .line 502
    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    :try_start_3
    const-string v11, "com.byd.launcher.ITouchInjector"

    .line 508
    .line 509
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v7, v10, v5}, Landroid/view/MotionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 519
    .line 520
    .line 521
    const/4 v11, 0x2

    .line 522
    invoke-interface {v0, v11, v10, v9, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 523
    .line 524
    .line 525
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 526
    .line 527
    .line 528
    move v0, v6

    .line 529
    goto :goto_5

    .line 530
    :catchall_2
    move-exception v0

    .line 531
    goto :goto_7

    .line 532
    :catch_1
    move-exception v0

    .line 533
    :try_start_4
    const-string v11, "Binder touch transact failed"

    .line 534
    .line 535
    invoke-virtual {v3, v11, v0}, Lo/nd;->ͺ(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 536
    .line 537
    .line 538
    iput-object v9, v3, Lo/nd;->Ο:Landroid/os/IBinder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 539
    .line 540
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 541
    .line 542
    .line 543
    move v0, v5

    .line 544
    :goto_5
    if-eqz v0, :cond_10

    .line 545
    .line 546
    :goto_6
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 547
    .line 548
    .line 549
    goto :goto_9

    .line 550
    :goto_7
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :cond_10
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 555
    .line 556
    .line 557
    if-ne v8, v6, :cond_12

    .line 558
    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    iget v7, v3, Lo/nd;->α:F

    .line 564
    .line 565
    mul-float/2addr v0, v7

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    iget v8, v3, Lo/nd;->β:F

    .line 571
    .line 572
    mul-float/2addr v7, v8

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 574
    .line 575
    .line 576
    move-result v8

    .line 577
    iget-wide v10, v3, Lo/nd;->ί:J

    .line 578
    .line 579
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    iget-object v12, v3, Lo/nd;->Ν:[B

    .line 584
    .line 585
    monitor-enter v12

    .line 586
    :try_start_5
    iget-object v13, v3, Lo/nd;->Λ:Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 587
    .line 588
    if-nez v13, :cond_11

    .line 589
    .line 590
    goto :goto_8

    .line 591
    :cond_11
    :try_start_6
    iget-object v13, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 592
    .line 593
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 594
    .line 595
    .line 596
    iget-object v13, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 597
    .line 598
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 599
    .line 600
    .line 601
    iget-object v4, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 602
    .line 603
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 604
    .line 605
    .line 606
    iget-object v4, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 607
    .line 608
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 609
    .line 610
    .line 611
    iget-object v0, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 612
    .line 613
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 614
    .line 615
    .line 616
    iget-object v0, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 617
    .line 618
    invoke-virtual {v0, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 619
    .line 620
    .line 621
    iget-object v0, v3, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    .line 622
    .line 623
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 624
    .line 625
    .line 626
    iget-object v0, v3, Lo/nd;->Λ:Ljava/io/OutputStream;

    .line 627
    .line 628
    iget-object v2, v3, Lo/nd;->Ν:[B

    .line 629
    .line 630
    const/16 v4, 0x1c

    .line 631
    .line 632
    invoke-virtual {v0, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 633
    .line 634
    .line 635
    iget-object v0, v3, Lo/nd;->Λ:Ljava/io/OutputStream;

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 638
    .line 639
    .line 640
    goto :goto_8

    .line 641
    :catch_2
    move-exception v0

    .line 642
    :try_start_7
    const-string v2, "Binary touch send failed"

    .line 643
    .line 644
    invoke-virtual {v3, v2, v0}, Lo/nd;->ͺ(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 645
    .line 646
    .line 647
    iput-object v9, v3, Lo/nd;->Λ:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 648
    .line 649
    :try_start_8
    iget-object v0, v3, Lo/nd;->Μ:Ljava/net/Socket;

    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 652
    .line 653
    .line 654
    :catch_3
    :try_start_9
    iput-object v9, v3, Lo/nd;->Μ:Ljava/net/Socket;

    .line 655
    .line 656
    :goto_8
    monitor-exit v12

    .line 657
    goto :goto_9

    .line 658
    :catchall_3
    move-exception v0

    .line 659
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 660
    throw v0

    .line 661
    :cond_12
    :goto_9
    return v6
.end method
