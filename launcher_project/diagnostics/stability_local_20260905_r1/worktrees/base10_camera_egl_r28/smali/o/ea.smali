.class public final synthetic Lo/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ea;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lo/ea;->Ͱ:I

    .line 2
    .line 3
    const-wide/16 v1, 0xbb8

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const-string v4, "settings put global policy_control immersive.status=com.byd.launcher"

    .line 7
    .line 8
    const-string v5, "settings put global policy_control null"

    .line 9
    .line 10
    const/16 v6, 0xa

    .line 11
    .line 12
    const/4 v7, -0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    const/16 v9, 0x8

    .line 15
    .line 16
    const/high16 v10, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const-string v11, "NavBarSvc"

    .line 19
    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x1

    .line 22
    const/4 v14, 0x0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_14

    .line 27
    .line 28
    :pswitch_0
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 29
    .line 30
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 40
    .line 41
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 51
    .line 52
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 53
    .line 54
    invoke-virtual {v0, v7}, Lcom/byd/launcher/NavBarService;->ϣ(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_3
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 59
    .line 60
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ο()V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-wide/16 v1, 0x96

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void

    .line 97
    :pswitch_4
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͳ:Lcom/byd/launcher/databinding/NavBarBinding;

    .line 100
    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͳ:Lcom/byd/launcher/databinding/NavBarBinding;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void

    .line 112
    :pswitch_5
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 113
    .line 114
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ο()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_6
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 121
    .line 122
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_7
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 129
    .line 130
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_8
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 137
    .line 138
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_9
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 148
    .line 149
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v3, "pm grant "

    .line 155
    .line 156
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v5, " android.permission.ACCESS_FINE_LOCATION"

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v4, v1, v2}, Lo/c0;->Ͱ(Ljava/lang/String;J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v5, " android.permission.ACCESS_COARSE_LOCATION"

    .line 193
    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {v4, v1, v2}, Lo/c0;->Ͱ(Ljava/lang/String;J)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v3, " android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 217
    .line 218
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v3, v1, v2}, Lo/c0;->Ͱ(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    .line 228
    :catch_0
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 229
    .line 230
    new-instance v2, Lo/m9;

    .line 231
    .line 232
    invoke-direct {v2, v0, v6}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_a
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 240
    .line 241
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 242
    .line 243
    if-eqz v1, :cond_2

    .line 244
    .line 245
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ψ:Z

    .line 246
    .line 247
    if-nez v1, :cond_2

    .line 248
    .line 249
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 250
    .line 251
    if-eqz v1, :cond_2

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ί()V

    .line 254
    .line 255
    .line 256
    :cond_2
    return-void

    .line 257
    :pswitch_b
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 258
    .line 259
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    :try_start_1
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_4

    .line 272
    .line 273
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 274
    .line 275
    if-nez v0, :cond_3

    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_3
    move-object v4, v5

    .line 279
    :goto_0
    const/16 v0, 0x3e8

    .line 280
    .line 281
    invoke-static {v4, v0}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v2, "exitScreenOffMode: restore policy_control failed: "

    .line 289
    .line 290
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v1, v11}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_4
    :goto_1
    return-void

    .line 297
    :pswitch_c
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 298
    .line 299
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 300
    .line 301
    if-eqz v1, :cond_5

    .line 302
    .line 303
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v13}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 307
    .line 308
    .line 309
    :cond_5
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 310
    .line 311
    if-eqz v1, :cond_6

    .line 312
    .line 313
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 314
    .line 315
    if-nez v1, :cond_6

    .line 316
    .line 317
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 318
    .line 319
    if-nez v1, :cond_6

    .line 320
    .line 321
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 322
    .line 323
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 327
    .line 328
    .line 329
    :cond_6
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 330
    .line 331
    if-eqz v1, :cond_7

    .line 332
    .line 333
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 334
    .line 335
    if-nez v1, :cond_7

    .line 336
    .line 337
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 338
    .line 339
    if-nez v1, :cond_7

    .line 340
    .line 341
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 342
    .line 343
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    :cond_7
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 347
    .line 348
    if-eqz v1, :cond_8

    .line 349
    .line 350
    invoke-virtual {v0, v7}, Lcom/byd/launcher/NavBarService;->ϣ(I)V

    .line 351
    .line 352
    .line 353
    :cond_8
    return-void

    .line 354
    :pswitch_d
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    if-eqz v0, :media_start_done
    invoke-virtual {v0}, Lo/a9;->stabilityStart()V
    :media_start_done
    return-void

    .line 424
    :pswitch_e
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 425
    .line 426
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 427
    .line 428
    if-nez v1, :cond_b

    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_b
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 432
    .line 433
    if-eqz v1, :cond_c

    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_c
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 437
    .line 438
    if-nez v1, :cond_d

    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_d
    invoke-virtual {v1}, Lo/vl;->Ε()Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_e

    .line 446
    .line 447
    goto :goto_3

    .line 448
    :cond_e
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 449
    .line 450
    if-eqz v1, :cond_f

    .line 451
    .line 452
    iget-boolean v1, v1, Lo/oj;->Ͷ:Z

    .line 453
    .line 454
    if-eqz v1, :cond_f

    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_f
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 458
    .line 459
    if-eqz v1, :cond_10

    .line 460
    .line 461
    iget-boolean v1, v1, Lo/ff;->ͷ:Z

    .line 462
    .line 463
    if-eqz v1, :cond_10

    .line 464
    .line 465
    goto :goto_3

    .line 466
    :cond_10
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 467
    .line 468
    if-eqz v1, :cond_11

    .line 469
    .line 470
    iget-boolean v1, v1, Lo/nd;->Η:Z

    .line 471
    .line 472
    if-eqz v1, :cond_11

    .line 473
    .line 474
    goto :goto_3

    .line 475
    :cond_11
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 476
    .line 477
    if-eqz v1, :cond_12

    .line 478
    .line 479
    goto :goto_3

    .line 480
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 481
    .line 482
    .line 483
    move-result-wide v1

    .line 484
    sget-wide v3, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 485
    .line 486
    cmp-long v1, v1, v3

    .line 487
    .line 488
    if-gez v1, :cond_13

    .line 489
    .line 490
    goto :goto_3

    .line 491
    :cond_13
    const-string v1, "applyForegroundState resync: lastVisible=true but actually hidden, forcing show"

    .line 492
    .line 493
    invoke-static {v11, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iput-boolean v14, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 497
    .line 498
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 499
    .line 500
    invoke-virtual {v1}, Lo/vl;->Η()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 504
    .line 505
    .line 506
    iput-boolean v13, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 507
    .line 508
    :goto_3
    return-void

    .line 509
    :pswitch_f
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 510
    .line 511
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 517
    .line 518
    .line 519
    move-result-wide v1

    .line 520
    sget-wide v3, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 521
    .line 522
    cmp-long v1, v1, v3

    .line 523
    .line 524
    if-gez v1, :cond_14

    .line 525
    .line 526
    goto/16 :goto_6

    .line 527
    .line 528
    :cond_14
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 529
    .line 530
    if-eqz v1, :cond_15

    .line 531
    .line 532
    iget-boolean v1, v1, Lo/oj;->Ͷ:Z

    .line 533
    .line 534
    if-eqz v1, :cond_15

    .line 535
    .line 536
    goto :goto_6

    .line 537
    :cond_15
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 538
    .line 539
    if-eqz v1, :cond_16

    .line 540
    .line 541
    iget-boolean v1, v1, Lo/ff;->ͷ:Z

    .line 542
    .line 543
    if-eqz v1, :cond_16

    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_16
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 547
    .line 548
    if-eqz v1, :cond_17

    .line 549
    .line 550
    iget-boolean v1, v1, Lo/nd;->Η:Z

    .line 551
    .line 552
    if-eqz v1, :cond_17

    .line 553
    .line 554
    goto :goto_6

    .line 555
    :cond_17
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 556
    .line 557
    if-eqz v1, :cond_18

    .line 558
    .line 559
    goto :goto_6

    .line 560
    :cond_18
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 561
    .line 562
    if-nez v1, :cond_19

    .line 563
    .line 564
    goto :goto_6

    .line 565
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 566
    .line 567
    .line 568
    move-result-wide v1

    .line 569
    iget-wide v3, v0, Lcom/byd/launcher/NavBarService;->Ψ:J

    .line 570
    .line 571
    cmp-long v1, v1, v3

    .line 572
    .line 573
    if-gez v1, :cond_1a

    .line 574
    .line 575
    goto :goto_6

    .line 576
    :cond_1a
    const-string v1, "launcher_prefs"

    .line 577
    .line 578
    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    const-string v2, "floating_window_enabled"

    .line 583
    .line 584
    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_1d

    .line 589
    .line 590
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 591
    .line 592
    if-eqz v1, :cond_1c

    .line 593
    .line 594
    iget-boolean v2, v1, Lo/nd;->Η:Z

    .line 595
    .line 596
    if-nez v2, :cond_1b

    .line 597
    .line 598
    goto :goto_4

    .line 599
    :cond_1b
    invoke-virtual {v1}, Lo/nd;->ͷ()Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eqz v1, :cond_1e

    .line 604
    .line 605
    goto :goto_5

    .line 606
    :cond_1c
    :goto_4
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϝ()V

    .line 607
    .line 608
    .line 609
    goto :goto_6

    .line 610
    :cond_1d
    iput-boolean v13, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 613
    .line 614
    .line 615
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 616
    .line 617
    if-eqz v1, :cond_1e

    .line 618
    .line 619
    invoke-virtual {v1}, Lo/nd;->ͷ()Z

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-eqz v1, :cond_1e

    .line 624
    .line 625
    :goto_5
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 626
    .line 627
    invoke-virtual {v1, v14}, Lo/nd;->Έ(Z)V

    .line 628
    .line 629
    .line 630
    :cond_1e
    :goto_6
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 631
    .line 632
    return-void

    .line 633
    :pswitch_10
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 634
    .line 635
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 636
    .line 637
    if-eqz v1, :cond_1f

    .line 638
    .line 639
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 640
    .line 641
    .line 642
    :cond_1f
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 643
    .line 644
    if-eqz v0, :cond_20

    .line 645
    .line 646
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 647
    .line 648
    .line 649
    :cond_20
    return-void

    .line 650
    :pswitch_11
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 651
    .line 652
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 653
    .line 654
    if-nez v1, :cond_23

    .line 655
    .line 656
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Β:Z

    .line 657
    .line 658
    if-eqz v1, :cond_21

    .line 659
    .line 660
    goto :goto_7

    .line 661
    :cond_21
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 662
    .line 663
    if-eqz v1, :cond_22

    .line 664
    .line 665
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 666
    .line 667
    if-nez v1, :cond_22

    .line 668
    .line 669
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 670
    .line 671
    if-nez v1, :cond_22

    .line 672
    .line 673
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 674
    .line 675
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 679
    .line 680
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 681
    .line 682
    .line 683
    :cond_22
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 684
    .line 685
    if-eqz v1, :cond_23

    .line 686
    .line 687
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 688
    .line 689
    if-nez v1, :cond_23

    .line 690
    .line 691
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 692
    .line 693
    if-nez v1, :cond_23

    .line 694
    .line 695
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 696
    .line 697
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 698
    .line 699
    .line 700
    :cond_23
    :goto_7
    return-void

    .line 701
    :pswitch_12
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 702
    .line 703
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 704
    .line 705
    if-eqz v1, :cond_25

    .line 706
    .line 707
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 708
    .line 709
    if-eqz v1, :cond_25

    .line 710
    .line 711
    invoke-virtual {v1}, Lo/vl;->Ε()Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-nez v1, :cond_25

    .line 716
    .line 717
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 718
    .line 719
    if-nez v1, :cond_25

    .line 720
    .line 721
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 722
    .line 723
    if-eqz v1, :cond_24

    .line 724
    .line 725
    iget-boolean v1, v1, Lo/nd;->Η:Z

    .line 726
    .line 727
    if-nez v1, :cond_25

    .line 728
    .line 729
    :cond_24
    const-string v1, "notifyHomeResumed fallback: widget bar not visible, forcing show"

    .line 730
    .line 731
    invoke-static {v11, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0, v7}, Lcom/byd/launcher/NavBarService;->ϣ(I)V

    .line 735
    .line 736
    .line 737
    :cond_25
    return-void

    .line 738
    :pswitch_13
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 739
    .line 740
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 741
    .line 742
    if-nez v1, :cond_26

    .line 743
    .line 744
    goto :goto_8

    .line 745
    :cond_26
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 746
    .line 747
    if-eqz v1, :cond_27

    .line 748
    .line 749
    iget-boolean v1, v1, Lo/oj;->Ͷ:Z

    .line 750
    .line 751
    if-eqz v1, :cond_27

    .line 752
    .line 753
    goto :goto_8

    .line 754
    :cond_27
    invoke-static {}, Lcom/byd/launcher/AppLauncherActivity;->Ͱ()Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_28

    .line 759
    .line 760
    goto :goto_8

    .line 761
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 762
    .line 763
    .line 764
    move-result-wide v1

    .line 765
    iget-wide v3, v0, Lcom/byd/launcher/NavBarService;->Ψ:J

    .line 766
    .line 767
    cmp-long v1, v1, v3

    .line 768
    .line 769
    if-gez v1, :cond_29

    .line 770
    .line 771
    goto :goto_8

    .line 772
    :cond_29
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 773
    .line 774
    if-eqz v1, :cond_2a

    .line 775
    .line 776
    iget-boolean v2, v1, Lo/nd;->Η:Z

    .line 777
    .line 778
    if-eqz v2, :cond_2a

    .line 779
    .line 780
    invoke-virtual {v1}, Lo/nd;->ͷ()Z

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    if-eqz v1, :cond_2b

    .line 785
    .line 786
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 787
    .line 788
    invoke-virtual {v1, v14}, Lo/nd;->Έ(Z)V

    .line 789
    .line 790
    .line 791
    goto :goto_8

    .line 792
    :cond_2a
    iput-boolean v13, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 793
    .line 794
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 798
    .line 799
    .line 800
    :cond_2b
    :goto_8
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 801
    .line 802
    return-void

    .line 803
    :pswitch_14
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 804
    .line 805
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 806
    .line 807
    if-nez v1, :cond_2c

    .line 808
    .line 809
    goto :goto_9

    .line 810
    :cond_2c
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 811
    .line 812
    if-eqz v1, :cond_2d

    .line 813
    .line 814
    iget-boolean v1, v1, Lo/oj;->Ͷ:Z

    .line 815
    .line 816
    if-eqz v1, :cond_2d

    .line 817
    .line 818
    goto :goto_9

    .line 819
    :cond_2d
    invoke-static {}, Lcom/byd/launcher/AppLauncherActivity;->Ͱ()Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-eqz v1, :cond_2e

    .line 824
    .line 825
    goto :goto_9

    .line 826
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 827
    .line 828
    .line 829
    move-result-wide v1

    .line 830
    iget-wide v3, v0, Lcom/byd/launcher/NavBarService;->Ψ:J

    .line 831
    .line 832
    cmp-long v1, v1, v3

    .line 833
    .line 834
    if-gez v1, :cond_2f

    .line 835
    .line 836
    goto :goto_9

    .line 837
    :cond_2f
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 838
    .line 839
    if-eqz v1, :cond_30

    .line 840
    .line 841
    iget-boolean v2, v1, Lo/nd;->Η:Z

    .line 842
    .line 843
    if-eqz v2, :cond_30

    .line 844
    .line 845
    invoke-virtual {v1}, Lo/nd;->ͷ()Z

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    if-eqz v1, :cond_31

    .line 850
    .line 851
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 852
    .line 853
    invoke-virtual {v1, v14}, Lo/nd;->Έ(Z)V

    .line 854
    .line 855
    .line 856
    goto :goto_9

    .line 857
    :cond_30
    iput-boolean v13, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 858
    .line 859
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 863
    .line 864
    .line 865
    :cond_31
    :goto_9
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 866
    .line 867
    return-void

    .line 868
    :pswitch_15
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 869
    .line 870
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ψ:Z

    .line 871
    .line 872
    if-nez v1, :cond_32

    .line 873
    .line 874
    goto :goto_b

    .line 875
    :cond_32
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 876
    .line 877
    if-eqz v1, :cond_33

    .line 878
    .line 879
    iget-boolean v1, v1, Lo/ff;->ͷ:Z

    .line 880
    .line 881
    if-eqz v1, :cond_33

    .line 882
    .line 883
    goto :goto_a

    .line 884
    :cond_33
    iput-boolean v14, v0, Lcom/byd/launcher/NavBarService;->ψ:Z

    .line 885
    .line 886
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 887
    .line 888
    if-eqz v1, :cond_34

    .line 889
    .line 890
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 891
    .line 892
    if-nez v1, :cond_34

    .line 893
    .line 894
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 898
    .line 899
    .line 900
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 901
    .line 902
    new-instance v2, Lo/ea;

    .line 903
    .line 904
    const/16 v3, 0x14

    .line 905
    .line 906
    invoke-direct {v2, v0, v3}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 907
    .line 908
    .line 909
    const-wide/16 v3, 0x64

    .line 910
    .line 911
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 912
    .line 913
    .line 914
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 915
    .line 916
    new-instance v2, Lo/ea;

    .line 917
    .line 918
    const/16 v3, 0x15

    .line 919
    .line 920
    invoke-direct {v2, v0, v3}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 921
    .line 922
    .line 923
    const-wide/16 v3, 0x12c

    .line 924
    .line 925
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    .line 927
    .line 928
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 929
    .line 930
    if-eqz v1, :cond_35

    .line 931
    .line 932
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ί()V

    .line 933
    .line 934
    .line 935
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ϗ:Landroid/graphics/drawable/Drawable;

    .line 936
    .line 937
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ϙ:Landroid/graphics/Bitmap;

    .line 938
    .line 939
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->δ()Z

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ή(Z)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 947
    .line 948
    .line 949
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 950
    .line 951
    new-instance v2, Lo/ea;

    .line 952
    .line 953
    const/16 v3, 0x16

    .line 954
    .line 955
    invoke-direct {v2, v0, v3}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 956
    .line 957
    .line 958
    const-wide/16 v3, 0xc8

    .line 959
    .line 960
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 961
    .line 962
    .line 963
    goto :goto_a

    .line 964
    :cond_34
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 965
    .line 966
    .line 967
    :cond_35
    :goto_a
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ϝ:Lo/ea;

    .line 968
    .line 969
    :goto_b
    return-void

    .line 970
    :pswitch_16
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 971
    .line 972
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 973
    .line 974
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 975
    .line 976
    .line 977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 978
    .line 979
    .line 980
    move-result-wide v1

    .line 981
    sget-wide v3, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 982
    .line 983
    cmp-long v1, v1, v3

    .line 984
    .line 985
    if-gez v1, :cond_36

    .line 986
    .line 987
    goto :goto_c

    .line 988
    :cond_36
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 989
    .line 990
    if-eqz v1, :cond_37

    .line 991
    .line 992
    iget-boolean v1, v1, Lo/oj;->Ͷ:Z

    .line 993
    .line 994
    if-eqz v1, :cond_37

    .line 995
    .line 996
    goto :goto_c

    .line 997
    :cond_37
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 998
    .line 999
    if-nez v1, :cond_38

    .line 1000
    .line 1001
    goto :goto_c

    .line 1002
    :cond_38
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 1003
    .line 1004
    if-eqz v1, :cond_39

    .line 1005
    .line 1006
    goto :goto_c

    .line 1007
    :cond_39
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1008
    .line 1009
    if-eqz v1, :cond_3a

    .line 1010
    .line 1011
    iget-boolean v1, v1, Lo/nd;->Η:Z

    .line 1012
    .line 1013
    if-eqz v1, :cond_3a

    .line 1014
    .line 1015
    goto :goto_c

    .line 1016
    :cond_3a
    iput-boolean v13, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 1017
    .line 1018
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 1019
    .line 1020
    .line 1021
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1022
    .line 1023
    if-eqz v1, :cond_3b

    .line 1024
    .line 1025
    invoke-virtual {v1}, Lo/vl;->Ί()V

    .line 1026
    .line 1027
    .line 1028
    :cond_3b
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 1029
    .line 1030
    if-eqz v1, :cond_3c

    .line 1031
    .line 1032
    new-instance v1, Lo/m9;

    .line 1033
    .line 1034
    const/4 v2, 0x2

    .line 1035
    invoke-direct {v1, v0, v2}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 1039
    .line 1040
    .line 1041
    :cond_3c
    :goto_c
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 1042
    .line 1043
    return-void

    .line 1044
    :pswitch_17
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1045
    .line 1046
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ˋ(Lcom/byd/launcher/NavBarService;)V

    .line 1047
    .line 1048
    .line 1049
    return-void

    .line 1050
    :pswitch_18
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1051
    .line 1052
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 1053
    .line 1054
    if-eqz v1, :cond_3d

    .line 1055
    .line 1056
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v0, v14}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 1060
    .line 1061
    .line 1062
    :cond_3d
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 1063
    .line 1064
    if-eqz v1, :cond_3e

    .line 1065
    .line 1066
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1067
    .line 1068
    .line 1069
    :cond_3e
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 1070
    .line 1071
    if-eqz v0, :cond_3f

    .line 1072
    .line 1073
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    .line 1075
    .line 1076
    :cond_3f
    return-void

    .line 1077
    :pswitch_19
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1078
    .line 1079
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 1080
    .line 1081
    if-eqz v1, :cond_40

    .line 1082
    .line 1083
    goto :goto_d

    .line 1084
    :cond_40
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 1085
    .line 1086
    if-eqz v1, :cond_41

    .line 1087
    .line 1088
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0, v13}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 1092
    .line 1093
    .line 1094
    :cond_41
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 1095
    .line 1096
    if-eqz v1, :cond_42

    .line 1097
    .line 1098
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 1099
    .line 1100
    if-nez v1, :cond_42

    .line 1101
    .line 1102
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 1103
    .line 1104
    if-nez v1, :cond_42

    .line 1105
    .line 1106
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 1107
    .line 1108
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 1112
    .line 1113
    .line 1114
    :cond_42
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 1115
    .line 1116
    if-eqz v1, :cond_43

    .line 1117
    .line 1118
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 1119
    .line 1120
    if-nez v1, :cond_43

    .line 1121
    .line 1122
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 1123
    .line 1124
    if-nez v1, :cond_43

    .line 1125
    .line 1126
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 1127
    .line 1128
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    .line 1130
    .line 1131
    :cond_43
    :goto_d
    return-void

    .line 1132
    :pswitch_1a
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1133
    .line 1134
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1135
    .line 1136
    new-instance v2, Lo/m9;

    .line 1137
    .line 1138
    invoke-direct {v2, v0, v13}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1142
    .line 1143
    .line 1144
    return-void

    .line 1145
    :pswitch_1b
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1146
    .line 1147
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1148
    .line 1149
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Δ()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v1

    .line 1153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    iput-object v1, v0, Lcom/byd/launcher/NavBarService;->ϋ:Ljava/lang/Boolean;

    .line 1158
    .line 1159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1160
    .line 1161
    .line 1162
    move-result-wide v1

    .line 1163
    iput-wide v1, v0, Lcom/byd/launcher/NavBarService;->ϐ:J

    .line 1164
    .line 1165
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1166
    .line 1167
    new-instance v2, Lo/m9;

    .line 1168
    .line 1169
    invoke-direct {v2, v0, v3}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1173
    .line 1174
    .line 1175
    return-void

    .line 1176
    :pswitch_1c
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1177
    .line 1178
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1179
    .line 1180
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_0
    return-void
    :init_continue_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    :try_start_5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    invoke-static {v1}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 1188
    .line 1189
    .line 1190
    move v1, v13

    .line 1191
    move v2, v14

    .line 1192
    :goto_e
    if-gt v1, v6, :cond_46

    .line 1193
    .line 1194
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1195
    .line 1196
    if-eqz v3, :cond_46

    .line 1197
    .line 1198
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_1
    return-void
    :init_continue_1
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 1199
    .line 1200
    .line 1201
    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1202
    if-eqz v2, :cond_45

    .line 1203
    .line 1204
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_2
    return-void
    :init_continue_2
    :try_start_6
    const-string v2, "echo adb_ok"

    .line 1205
    .line 1206
    const/16 v3, 0xbb8

    .line 1207
    .line 1208
    invoke-static {v2, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    if-eqz v2, :cond_44

    .line 1213
    .line 1214
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    const-string v3, "adb_ok"

    .line 1219
    .line 1220
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1224
    if-eqz v2, :cond_44

    .line 1225
    .line 1226
    move v2, v13

    .line 1227
    goto :goto_f

    .line 1228
    :catch_3
    move-exception v2

    .line 1229
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    const-string v7, "verifyAdbConnection failed: "

    .line 1232
    .line 1233
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    invoke-static {v11, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    .line 1249
    .line 1250
    :cond_44
    move v2, v14

    .line 1251
    :goto_f
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_3
    return-void
    :init_continue_3
    if-eqz v2, :cond_45

    .line 1252
    .line 1253
    goto :goto_10

    .line 1254
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    const-string v7, "initCmdTools: ADB attempt "

    .line 1260
    .line 1261
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    const-string v7, " failed"

    .line 1268
    .line 1269
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v3

    .line 1276
    invoke-static {v11, v3}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    const-wide/16 v7, 0x3e8

    .line 1280
    .line 1281
    int-to-long v9, v1

    .line 1282
    mul-long/2addr v9, v7

    .line 1283
    const-wide/16 v7, 0x1388

    .line 1284
    .line 1285
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 1286
    .line 1287
    .line 1288
    move-result-wide v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1289
    :try_start_8
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_4
    return-void
    :init_continue_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :init_interrupted
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1290
    .line 1291
    .line 1292
    :catch_4
    add-int/lit8 v1, v1, 0x1

    .line 1293
    .line 1294
    goto :goto_e

    .line 1295
    :cond_46
    :goto_10
    :try_start_9
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_5
    return-void
    :init_continue_5
    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Κ:Z

    .line 1296
    .line 1297
    if-eqz v2, :cond_4a

    .line 1298
    .line 1299
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 1300
    .line 1301
    const/16 v2, 0x7d0

    .line 1302
    .line 1303
    if-nez v1, :cond_47

    .line 1304
    .line 1305
    const-string v1, "settings put global heads_up_notifications_enabled 0"

    .line 1306
    .line 1307
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_6
    return-void
    :init_continue_6
    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    :cond_47
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 1311
    .line 1312
    if-nez v1, :cond_48

    .line 1313
    .line 1314
    goto :goto_11

    .line 1315
    :cond_48
    move-object v4, v5

    .line 1316
    :goto_11
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_7
    return-void
    :init_continue_7
    invoke-static {v4, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_8
    return-void
    :init_continue_8
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1320
    .line 1321
    new-instance v2, Lo/m9;

    .line 1322
    .line 1323
    invoke-direct {v2, v0, v14}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1327
    .line 1328
    .line 1329
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_9
    return-void
    :init_continue_9
    invoke-static {}, Lcom/byd/launcher/NavBarService;->Λ()V

    .line 1330
    .line 1331
    .line 1332
    const-string v1, "initCmdTools: ADB OK, policy write skipped, IME initialization unchanged"

    .line 1333
    .line 1334
    invoke-static {v11, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_10
    return-void
    :init_continue_10
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Κ()V

    .line 1338
    .line 1339
    .line 1340
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_11
    return-void
    :init_continue_11
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Κ:Z

    .line 1341
    .line 1342
    if-nez v1, :cond_49

    .line 1343
    .line 1344
    goto :goto_12

    .line 1345
    :cond_49
    new-instance v1, Lo/m9;

    .line 1346
    .line 1347
    const/16 v2, 0x9

    .line 1348
    .line 1349
    invoke-direct {v1, v0, v2}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 1353
    .line 1354
    .line 1355
    :goto_12
    invoke-direct {p0}, Lo/ea;->stabilityInitCurrent()Z
    move-result v3
    if-nez v3, :init_continue_12
    return-void
    :init_continue_12
    new-instance v1, Lo/m9;

    .line 1356
    .line 1357
    const/16 v2, 0x8

    .line 1358
    .line 1359
    invoke-direct {v1, v0, v2}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_13

    .line 1366
    :cond_4a
    const-string v0, "initCmdTools: ADB connection failed after retries"

    .line 1367
    .line 1368
    invoke-static {v11, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1369
    .line 1370
    .line 1371
    goto :goto_13

    .line 1372
    :catch_5
    move-exception v0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    const-string v2, "initCmdTools error: "

    .line 1376
    .line 1377
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v1

    .line 1391
    invoke-static {v11, v1, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1392
    .line 1393
    .line 1394
    :goto_13
    return-void

    .line 1395
    :goto_14
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1396
    .line 1397
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1398
    .line 1399
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 1403
    .line 1404
    .line 1405
    return-void

    .line 1406
    nop

    .line 1407
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
    :init_interrupted
    move-exception v0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    return-void
.end method

.method private stabilityInitCurrent()Z
    .locals 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v0
    if-nez v0, :init_invalid
    iget-object v0, p0, Lo/ea;->ͱ:Lcom/byd/launcher/NavBarService;
    if-eqz v0, :init_invalid
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v1, :init_invalid
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :init_invalid
    const/4 v0, 0x1
    return v0
    :init_invalid
    const/4 v0, 0x0
    return v0
.end method
