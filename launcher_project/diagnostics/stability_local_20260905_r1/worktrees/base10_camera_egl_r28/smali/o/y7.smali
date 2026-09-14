.class public final synthetic Lo/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/y7;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final ˋ()V
    .locals 15

    .line 1
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 2
    .line 3
    sget-object v1, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "/"

    .line 9
    .line 10
    const-string v2, "settings put secure accessibility_enabled 1"

    .line 11
    .line 12
    const-string v3, "settings put secure enabled_accessibility_services "

    .line 13
    .line 14
    const-string v4, "MainActivity"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ή()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lo/c0;->isInitialized()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v6}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const-string v6, "Connecting ADB..."

    .line 39
    .line 40
    invoke-static {v4, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/4 v7, 0x2

    .line 48
    :goto_0
    const/16 v8, 0x8

    .line 49
    .line 50
    if-gt v7, v8, :cond_4

    .line 51
    .line 52
    if-nez v6, :cond_4

    .line 53
    .line 54
    iget-boolean v9, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 55
    .line 56
    if-nez v9, :cond_4

    .line 57
    .line 58
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    const-string v1, "Service alive during ADB retry, done"

    .line 65
    .line 66
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_2
    const-wide/16 v8, 0x3e8

    .line 72
    .line 73
    int-to-long v10, v7

    .line 74
    mul-long/2addr v10, v8

    .line 75
    const-wide/16 v8, 0x1388

    .line 76
    .line 77
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v8

    .line 81
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_3

    .line 89
    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v9, "ADB connected on attempt "

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v4, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    if-eqz v6, :cond_5

    .line 114
    .line 115
    const-string v7, "ADB connection ready"

    .line 116
    .line 117
    invoke-static {v4, v7}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v7, "appops set com.byd.launcher SYSTEM_ALERT_WINDOW allow"

    .line 121
    .line 122
    const/16 v9, 0x3e8

    .line 123
    .line 124
    invoke-static {v7, v9}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    :cond_5
    if-eqz v6, :cond_12

    .line 128
    .line 129
    iget-boolean v6, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 130
    .line 131
    if-eqz v6, :cond_6

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_6
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_7

    .line 140
    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :cond_7
    sget-object v6, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    const/4 v7, 0x1

    .line 146
    invoke-virtual {v6, v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const-wide/16 v9, 0x1f4

    .line 151
    .line 152
    if-nez v7, :cond_9

    .line 153
    .line 154
    const-string v1, "Another thread is toggling accessibility, waiting..."

    .line 155
    .line 156
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move v1, v5

    .line 160
    :goto_1
    const/16 v2, 0x14

    .line 161
    .line 162
    if-ge v1, v2, :cond_13

    .line 163
    .line 164
    iget-boolean v2, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 165
    .line 166
    if-nez v2, :cond_13

    .line 167
    .line 168
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_8

    .line 173
    .line 174
    goto/16 :goto_7

    .line 175
    .line 176
    :cond_8
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    :try_start_1
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 183
    .line 184
    .line 185
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    if-eqz v7, :cond_a

    .line 187
    .line 188
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :cond_a
    :try_start_3
    const-string v6, "Enabling accessibility from MainActivity"

    .line 194
    .line 195
    invoke-static {v4, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-class v7, Lcom/byd/launcher/NavBarService;

    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    const/16 v11, 0x7d0

    .line 242
    .line 243
    invoke-static {v7, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    const-wide/16 v12, 0x12c

    .line 247
    .line 248
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 249
    .line 250
    .line 251
    invoke-static {v2, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move v7, v5

    .line 255
    :goto_2
    const/4 v14, 0x6

    .line 256
    if-ge v7, v14, :cond_d

    .line 257
    .line 258
    iget-boolean v14, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 259
    .line 260
    if-nez v14, :cond_d

    .line 261
    .line 262
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    if-eqz v14, :cond_c

    .line 267
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v2, "Service alive after Round 1, wait "

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    .line 287
    .line 288
    :cond_b
    :goto_3
    :try_start_4
    sget-object v1, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 289
    .line 290
    goto/16 :goto_5

    .line 291
    .line 292
    :cond_c
    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 293
    .line 294
    .line 295
    add-int/lit8 v7, v7, 0x1

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_d
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-nez v7, :cond_b

    .line 303
    .line 304
    iget-boolean v7, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 305
    .line 306
    if-eqz v7, :cond_e

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_e
    const-string v7, "Round 2: toggle accessibility off/on for rebind"

    .line 310
    .line 311
    invoke-static {v4, v7}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v7, "settings put secure accessibility_enabled 0"

    .line 315
    .line 316
    invoke-static {v7, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 320
    .line 321
    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-static {v7, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 341
    .line 342
    .line 343
    invoke-static {v2, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move v7, v5

    .line 347
    :goto_4
    if-ge v7, v8, :cond_10

    .line 348
    .line 349
    iget-boolean v14, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 350
    .line 351
    if-nez v14, :cond_10

    .line 352
    .line 353
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 354
    .line 355
    .line 356
    move-result v14

    .line 357
    if-eqz v14, :cond_f

    .line 358
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v2, "Service alive after Round 2 toggle, wait "

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_f
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 381
    .line 382
    .line 383
    add-int/lit8 v7, v7, 0x1

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_10
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-nez v7, :cond_b

    .line 391
    .line 392
    iget-boolean v7, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 393
    .line 394
    if-eqz v7, :cond_11

    .line 395
    .line 396
    goto :goto_3

    .line 397
    :cond_11
    const-string v7, "Round 3: force-stop for system rebind (last resort)"

    .line 398
    .line 399
    invoke-static {v4, v7}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-class v1, Lcom/byd/launcher/MusicNotificationListener;

    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v8, "cmd notification disallow_listener "

    .line 436
    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-static {v1, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 451
    .line 452
    .line 453
    :catch_0
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v1, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    invoke-static {v2, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    const-wide/16 v1, 0xc8

    .line 475
    .line 476
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 477
    .line 478
    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    const-string v2, "am force-stop "

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const/16 v2, 0xbb8

    .line 501
    .line 502
    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 503
    .line 504
    .line 505
    goto/16 :goto_3

    .line 506
    .line 507
    :goto_5
    :try_start_8
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 508
    .line 509
    .line 510
    goto :goto_7

    .line 511
    :catchall_0
    move-exception v1

    .line 512
    sget-object v2, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 513
    .line 514
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 515
    .line 516
    .line 517
    throw v1

    .line 518
    :cond_12
    :goto_6
    const-string v1, "ADB connection failed"

    .line 519
    .line 520
    invoke-static {v4, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 521
    .line 522
    .line 523
    goto :goto_7

    .line 524
    :catchall_1
    move-exception v1

    .line 525
    goto :goto_8

    .line 526
    :catch_1
    move-exception v1

    .line 527
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    const-string v3, "BackgroundInit error: "

    .line 533
    .line 534
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-static {v4, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    sget-object v1, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 552
    .line 553
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 554
    .line 555
    .line 556
    :cond_13
    :goto_7
    iput-boolean v5, v0, Lcom/byd/launcher/MainActivity;->ͻ:Z

    .line 557
    .line 558
    return-void

    .line 559
    :goto_8
    iput-boolean v5, v0, Lcom/byd/launcher/MainActivity;->ͻ:Z

    .line 560
    .line 561
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 15
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;
    iget-boolean v0, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z
    if-eqz v0, :stability_activity_alive
    return-void
    :stability_activity_alive

    .line 1
    iget v0, p0, Lo/y7;->Ͱ:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const-string v2, "wallpapers"

    .line 6
    .line 7
    const-string v3, "MainActivity"

    .line 8
    .line 9
    const-string v4, "/sdcard/launcher/wallpapers"

    .line 10
    .line 11
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 12
    .line 13
    const-wide/16 v6, 0xc8

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x1

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_19

    .line 24
    .line 25
    :pswitch_0
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v2, v0, Lcom/byd/launcher/MainActivity;->ͳ:Lo/e8;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 36
    .line 37
    .line 38
    iput-object v11, v0, Lcom/byd/launcher/MainActivity;->ͳ:Lo/e8;

    .line 39
    .line 40
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 41
    .line 42
    new-instance v2, Lo/y7;

    .line 43
    .line 44
    const/16 v3, 0xc

    .line 45
    .line 46
    invoke-direct {v2, v0, v3}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 47
    .line 48
    .line 49
    const-string v0, "WallpaperLoad"

    .line 50
    .line 51
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ί()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    invoke-direct {p0}, Lo/y7;->ˋ()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v5, Ljava/io/File;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 92
    .line 93
    .line 94
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const-string v6, "file:"

    .line 96
    .line 97
    const-string v7, "Found "

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    :try_start_1
    new-instance v2, Lo/b8;

    .line 102
    .line 103
    invoke-direct {v2, v10}, Lo/b8;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    array-length v5, v2

    .line 113
    if-lez v5, :cond_2

    .line 114
    .line 115
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    array-length v5, v2

    .line 119
    move v8, v10

    .line 120
    :goto_0
    if-ge v8, v5, :cond_1

    .line 121
    .line 122
    aget-object v11, v2, v8

    .line 123
    .line 124
    new-instance v13, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 v8, v8, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    array-length v2, v2

    .line 158
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, " wallpapers in app local dir"

    .line 162
    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    new-instance v2, Ljava/io/File;

    .line 180
    .line 181
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-nez v5, :cond_3

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 191
    .line 192
    .line 193
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_5

    .line 198
    .line 199
    new-instance v5, Lo/b8;

    .line 200
    .line 201
    invoke-direct {v5, v12}, Lo/b8;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-eqz v2, :cond_5

    .line 209
    .line 210
    array-length v5, v2

    .line 211
    if-lez v5, :cond_5

    .line 212
    .line 213
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    array-length v5, v2

    .line 217
    move v8, v10

    .line 218
    :goto_1
    if-ge v8, v5, :cond_4

    .line 219
    .line 220
    aget-object v11, v2, v8

    .line 221
    .line 222
    new-instance v12, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/lit8 v8, v8, 0x1

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    array-length v2, v2

    .line 256
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, " wallpapers directly from "

    .line 260
    .line 261
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_8

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const-string v4, "wallpaper"

    .line 285
    .line 286
    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    if-eqz v2, :cond_8

    .line 291
    .line 292
    array-length v4, v2

    .line 293
    move v5, v10

    .line 294
    :goto_2
    if-ge v5, v4, :cond_7

    .line 295
    .line 296
    aget-object v6, v2, v5

    .line 297
    .line 298
    invoke-static {v6}, Lcom/byd/launcher/MainActivity;->ͻ(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_6

    .line 303
    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v8, "wallpaper/"

    .line 310
    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 328
    .line 329
    .line 330
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-nez v2, :cond_9

    .line 335
    .line 336
    const-string v2, "launcher_prefs"

    .line 337
    .line 338
    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    const-string v4, "wallpaper_pos"

    .line 343
    .line 344
    invoke-interface {v2, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    iget-object v4, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 349
    .line 350
    new-instance v5, Lo/h2;

    .line 351
    .line 352
    invoke-direct {v5, v0, v1, v2, v9}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const-string v1, "Failed to load wallpapers"

    .line 361
    .line 362
    invoke-static {v3, v1, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 363
    .line 364
    .line 365
    :cond_9
    :goto_3
    return-void

    .line 366
    :pswitch_4
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 367
    .line 368
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :pswitch_5
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 375
    .line 376
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ί()V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :pswitch_6
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 383
    .line 384
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :pswitch_7
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 391
    .line 392
    sget-object v1, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    const-string v1, ": "

    .line 398
    .line 399
    new-instance v5, Ljava/io/File;

    .line 400
    .line 401
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-nez v2, :cond_a

    .line 413
    .line 414
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 415
    .line 416
    .line 417
    :cond_a
    :try_start_2
    new-instance v2, Ljava/io/File;

    .line 418
    .line 419
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    if-nez v6, :cond_b

    .line 427
    .line 428
    const-string v2, "syncWallpapersDirect: dir not accessible: /sdcard/launcher/wallpapers"

    .line 429
    .line 430
    goto/16 :goto_a

    .line 431
    .line 432
    :cond_b
    new-instance v6, Lo/b8;

    .line 433
    .line 434
    invoke-direct {v6, v9}, Lo/b8;-><init>(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    if-eqz v2, :cond_f

    .line 442
    .line 443
    array-length v6, v2

    .line 444
    if-nez v6, :cond_c

    .line 445
    .line 446
    goto/16 :goto_9

    .line 447
    .line 448
    :cond_c
    invoke-static {v5}, Lcom/byd/launcher/MainActivity;->Ͷ(Ljava/io/File;)V

    .line 449
    .line 450
    .line 451
    array-length v6, v2

    .line 452
    move v7, v10

    .line 453
    :goto_4
    if-ge v7, v6, :cond_e

    .line 454
    .line 455
    aget-object v8, v2, v7

    .line 456
    .line 457
    new-instance v9, Ljava/io/File;

    .line 458
    .line 459
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    invoke-direct {v9, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 464
    .line 465
    .line 466
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    .line 467
    .line 468
    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 469
    .line 470
    .line 471
    :try_start_4
    new-instance v13, Ljava/io/FileOutputStream;

    .line 472
    .line 473
    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 474
    .line 475
    .line 476
    const/16 v9, 0x2000

    .line 477
    .line 478
    :try_start_5
    new-array v9, v9, [B

    .line 479
    .line 480
    :goto_5
    invoke-virtual {v11, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 481
    .line 482
    .line 483
    move-result v14

    .line 484
    if-lez v14, :cond_d

    .line 485
    .line 486
    invoke-virtual {v13, v9, v10, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 487
    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string v14, "syncWallpapersDirect: copied "

    .line 496
    .line 497
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v14

    .line 504
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    invoke-static {v3, v9}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 512
    .line 513
    .line 514
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 515
    .line 516
    .line 517
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 518
    .line 519
    .line 520
    goto :goto_8

    .line 521
    :catchall_0
    move-exception v9

    .line 522
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 523
    .line 524
    .line 525
    goto :goto_6

    .line 526
    :catchall_1
    move-exception v13

    .line 527
    :try_start_9
    invoke-virtual {v9, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 528
    .line 529
    .line 530
    :goto_6
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 531
    :catchall_2
    move-exception v9

    .line 532
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 533
    .line 534
    .line 535
    goto :goto_7

    .line 536
    :catchall_3
    move-exception v11

    .line 537
    :try_start_b
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 538
    .line 539
    .line 540
    :goto_7
    throw v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 541
    :catch_1
    move-exception v9

    .line 542
    :try_start_c
    new-instance v11, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .line 546
    .line 547
    const-string v13, "syncWallpapersDirect: copy failed for "

    .line 548
    .line 549
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    invoke-static {v3, v8}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 577
    .line 578
    goto :goto_4

    .line 579
    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    if-eqz v2, :cond_10

    .line 584
    .line 585
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    array-length v2, v2

    .line 590
    if-lez v2, :cond_10

    .line 591
    .line 592
    move v2, v12

    .line 593
    goto :goto_c

    .line 594
    :cond_f
    :goto_9
    const-string v2, "syncWallpapersDirect: no wallpaper files in /sdcard/launcher/wallpapers"

    .line 595
    .line 596
    :goto_a
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 597
    .line 598
    .line 599
    goto :goto_b

    .line 600
    :catch_2
    move-exception v2

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v7, "syncWallpapersDirect failed: "

    .line 604
    .line 605
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-static {v2, v6, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    :cond_10
    :goto_b
    move v2, v10

    .line 612
    :goto_c
    if-nez v2, :cond_19

    .line 613
    .line 614
    :try_start_d
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 615
    .line 616
    if-eqz v2, :cond_11

    .line 617
    .line 618
    iget-object v2, v2, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_11
    const/4 v2, 0x0

    .line 622
    :goto_d
    if-eqz v2, :cond_17

    .line 623
    .line 624
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 625
    .line 626
    .line 627
    move-result v6

    .line 628
    if-nez v6, :cond_12

    .line 629
    .line 630
    goto/16 :goto_11

    .line 631
    .line 632
    :cond_12
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 633
    .line 634
    invoke-direct {v6, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 635
    .line 636
    .line 637
    new-array v7, v12, [Lorg/json/JSONArray;

    .line 638
    .line 639
    new-instance v8, Lorg/json/JSONObject;

    .line 640
    .line 641
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 642
    .line 643
    .line 644
    const-string v9, "dir"

    .line 645
    .line 646
    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    .line 648
    .line 649
    const-string v4, "listWallpapers"

    .line 650
    .line 651
    new-instance v9, Lo/f8;

    .line 652
    .line 653
    invoke-direct {v9, v0, v7, v10, v6}, Lo/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v4, v8, v9}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 657
    .line 658
    .line 659
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 660
    .line 661
    const-wide/16 v8, 0x5

    .line 662
    .line 663
    invoke-virtual {v6, v8, v9, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 664
    .line 665
    .line 666
    aget-object v4, v7, v10

    .line 667
    .line 668
    if-eqz v4, :cond_16

    .line 669
    .line 670
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    if-nez v6, :cond_13

    .line 675
    .line 676
    goto :goto_10

    .line 677
    :cond_13
    invoke-static {v5}, Lcom/byd/launcher/MainActivity;->Ͷ(Ljava/io/File;)V

    .line 678
    .line 679
    .line 680
    move v6, v10

    .line 681
    :goto_e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    if-ge v6, v7, :cond_15

    .line 686
    .line 687
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v7

    .line 691
    new-instance v11, Ljava/io/File;

    .line 692
    .line 693
    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v11

    .line 700
    invoke-static {v11}, Lcom/byd/launcher/MainActivity;->ͻ(Ljava/lang/String;)Z

    .line 701
    .line 702
    .line 703
    move-result v11

    .line 704
    if-nez v11, :cond_14

    .line 705
    .line 706
    goto :goto_f

    .line 707
    :cond_14
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    .line 708
    .line 709
    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 710
    .line 711
    .line 712
    new-instance v13, Lorg/json/JSONObject;

    .line 713
    .line 714
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 715
    .line 716
    .line 717
    const-string v14, "src"

    .line 718
    .line 719
    invoke-virtual {v13, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    .line 721
    .line 722
    const-string v7, "destDir"

    .line 723
    .line 724
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v14

    .line 728
    invoke-virtual {v13, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    .line 730
    .line 731
    const-string v7, "copyWallpaperToApp"

    .line 732
    .line 733
    new-instance v14, Lo/g8;

    .line 734
    .line 735
    invoke-direct {v14, v10, v0, v11}, Lo/g8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2, v7, v13, v14}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 739
    .line 740
    .line 741
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 742
    .line 743
    invoke-virtual {v11, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 744
    .line 745
    .line 746
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 747
    .line 748
    goto :goto_e

    .line 749
    :cond_15
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    if-eqz v2, :cond_18

    .line 754
    .line 755
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    array-length v2, v2

    .line 760
    if-lez v2, :cond_18

    .line 761
    .line 762
    move v2, v12

    .line 763
    goto :goto_13

    .line 764
    :cond_16
    :goto_10
    const-string v2, "syncWallpapersViaIpc: no files found"

    .line 765
    .line 766
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    goto :goto_12

    .line 770
    :cond_17
    :goto_11
    const-string v2, "syncWallpapersViaIpc: CoreService not connected"

    .line 771
    .line 772
    invoke-static {v3, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 773
    .line 774
    .line 775
    goto :goto_12

    .line 776
    :catch_3
    move-exception v2

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    const-string v6, "syncWallpapersViaIpc error: "

    .line 780
    .line 781
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-static {v2, v4, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    :cond_18
    :goto_12
    move v2, v10

    .line 788
    :cond_19
    :goto_13
    if-nez v2, :cond_1f

    .line 789
    .line 790
    :try_start_e
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͼ()Ljava/util/ArrayList;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    if-eqz v4, :cond_1a

    .line 799
    .line 800
    const-string v1, "syncWallpapersViaShell: no files found"

    .line 801
    .line 802
    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_15

    .line 806
    .line 807
    :cond_1a
    invoke-static {v5}, Lcom/byd/launcher/MainActivity;->Ͷ(Ljava/io/File;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    if-eqz v4, :cond_1d

    .line 819
    .line 820
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    check-cast v4, Ljava/lang/String;

    .line 825
    .line 826
    new-instance v6, Ljava/io/File;

    .line 827
    .line 828
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v6

    .line 835
    invoke-static {v6}, Lcom/byd/launcher/MainActivity;->ͻ(Ljava/lang/String;)Z

    .line 836
    .line 837
    .line 838
    move-result v7

    .line 839
    if-nez v7, :cond_1b

    .line 840
    .line 841
    goto :goto_14

    .line 842
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v8

    .line 851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string v8, "/"

    .line 855
    .line 856
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 866
    :try_start_f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 867
    .line 868
    .line 869
    move-result-object v8

    .line 870
    const/4 v9, 0x3

    .line 871
    new-array v9, v9, [Ljava/lang/String;

    .line 872
    .line 873
    const-string v11, "cp"

    .line 874
    .line 875
    aput-object v11, v9, v10

    .line 876
    .line 877
    aput-object v4, v9, v12

    .line 878
    .line 879
    const/4 v4, 0x2

    .line 880
    aput-object v7, v9, v4

    .line 881
    .line 882
    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    if-nez v4, :cond_1c

    .line 891
    .line 892
    new-instance v4, Ljava/io/File;

    .line 893
    .line 894
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v4, v12, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 898
    .line 899
    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    .line 901
    .line 902
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .line 904
    .line 905
    const-string v7, "syncWallpapersViaShell: copied "

    .line 906
    .line 907
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    invoke-static {v3, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    goto :goto_14

    .line 921
    :cond_1c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .line 925
    .line 926
    const-string v8, "syncWallpapersViaShell: cp failed for "

    .line 927
    .line 928
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string v8, " exit="

    .line 935
    .line 936
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 947
    .line 948
    .line 949
    goto/16 :goto_14

    .line 950
    .line 951
    :catch_4
    move-exception v4

    .line 952
    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .line 956
    .line 957
    const-string v8, "syncWallpapersViaShell: cp exception for "

    .line 958
    .line 959
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v4

    .line 979
    invoke-static {v3, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    goto/16 :goto_14

    .line 983
    .line 984
    :cond_1d
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    if-eqz v1, :cond_1e

    .line 989
    .line 990
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    array-length v1, v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 995
    if-lez v1, :cond_1e

    .line 996
    .line 997
    move v10, v12

    .line 998
    goto :goto_15

    .line 999
    :catch_5
    move-exception v1

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    const-string v4, "syncWallpapersViaShell error: "

    .line 1003
    .line 1004
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v1, v2, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    :cond_1e
    :goto_15
    move v2, v10

    .line 1011
    :cond_1f
    if-eqz v2, :cond_20

    .line 1012
    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    const-string v2, "syncWallpapers: done, local files="

    .line 1016
    .line 1017
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v2

    .line 1024
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    invoke-static {v3, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_16

    .line 1039
    :cond_20
    const-string v1, "syncWallpapers: all strategies failed for /sdcard/launcher/wallpapers"

    .line 1040
    .line 1041
    invoke-static {v3, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    :goto_16
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 1045
    .line 1046
    new-instance v2, Lo/y7;

    .line 1047
    .line 1048
    const/16 v3, 0xf

    .line 1049
    .line 1050
    invoke-direct {v2, v0, v3}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1054
    .line 1055
    .line 1056
    return-void

    .line 1057
    :pswitch_8
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 1058
    .line 1059
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1060
    .line 1061
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 1062
    .line 1063
    .line 1064
    return-void

    .line 1065
    :pswitch_9
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1066
    .line 1067
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 1068
    .line 1069
    if-nez v1, :cond_21

    .line 1070
    .line 1071
    goto :goto_17

    .line 1072
    :cond_21
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    instance-of v2, v1, Lo/ak;

    .line 1077
    .line 1078
    if-eqz v2, :cond_22

    .line 1079
    .line 1080
    check-cast v1, Lo/ak;

    .line 1081
    .line 1082
    iget-object v2, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 1083
    .line 1084
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 1085
    .line 1086
    .line 1087
    move-result v2

    .line 1088
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/MainActivity;->ͽ(Lo/ak;I)V

    .line 1089
    .line 1090
    .line 1091
    :cond_22
    :goto_17
    return-void

    .line 1092
    :pswitch_a
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1093
    .line 1094
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    .line 1095
    .line 1096
    if-eqz v1, :cond_23

    .line 1097
    .line 1098
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1103
    .line 1104
    .line 1105
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    .line 1106
    .line 1107
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v1

    .line 1111
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 1120
    .line 1121
    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    new-instance v2, Lo/y7;

    .line 1133
    .line 1134
    const/16 v3, 0xb

    .line 1135
    .line 1136
    invoke-direct {v2, v0, v3}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1144
    .line 1145
    .line 1146
    :cond_23
    return-void

    .line 1147
    :pswitch_b
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1148
    .line 1149
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    .line 1150
    .line 1151
    if-eqz v1, :cond_24

    .line 1152
    .line 1153
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1158
    .line 1159
    .line 1160
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    .line 1161
    .line 1162
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v1

    .line 1174
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 1175
    .line 1176
    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    new-instance v2, Lo/y7;

    .line 1188
    .line 1189
    const/16 v3, 0x9

    .line 1190
    .line 1191
    invoke-direct {v2, v0, v3}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1199
    .line 1200
    .line 1201
    :cond_24
    return-void

    .line 1202
    :pswitch_c
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 1203
    .line 1204
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ί()V

    .line 1207
    .line 1208
    .line 1209
    return-void

    .line 1210
    :pswitch_d
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1211
    .line 1212
    iget-boolean v1, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 1213
    .line 1214
    if-eqz v1, :cond_25

    .line 1215
    .line 1216
    goto :goto_18

    .line 1217
    :cond_25
    invoke-static {}, Lcom/byd/launcher/NavBarService;->β()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v1

    .line 1221
    if-eqz v1, :cond_26

    .line 1222
    .line 1223
    goto :goto_18

    .line 1224
    :cond_26
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    .line 1225
    .line 1226
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    .line 1228
    .line 1229
    :goto_18
    return-void

    .line 1230
    :pswitch_e
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 1231
    .line 1232
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1233
    .line 1234
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->ͱ()V

    .line 1235
    .line 1236
    .line 1237
    return-void

    .line 1238
    :pswitch_f
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1239
    .line 1240
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 1241
    .line 1242
    iget-object v2, v0, Lcom/byd/launcher/MainActivity;->ˏ:Lo/y7;

    .line 1243
    .line 1244
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1245
    .line 1246
    .line 1247
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ͱ:Lo/y7;

    .line 1248
    .line 1249
    if-eqz v1, :cond_27

    .line 1250
    .line 1251
    iget-object v2, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 1252
    .line 1253
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1254
    .line 1255
    .line 1256
    :cond_27
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1257
    .line 1258
    if-eqz v1, :cond_28

    .line 1259
    .line 1260
    const/4 v2, 0x0

    .line 1261
    iput-object v2, v1, Lcom/byd/launcher/NavBarService;->ϛ:Landroid/graphics/Bitmap;

    .line 1262
    .line 1263
    iput-object v2, v1, Lcom/byd/launcher/NavBarService;->Ϝ:Landroid/graphics/drawable/BitmapDrawable;

    .line 1264
    .line 1265
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1266
    .line 1267
    new-instance v3, Lo/ea;

    .line 1268
    .line 1269
    const/16 v4, 0x12

    .line 1270
    .line 1271
    invoke-direct {v3, v1, v4}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->ί()V

    .line 1278
    .line 1279
    .line 1280
    :cond_28
    new-instance v1, Lo/y7;

    .line 1281
    .line 1282
    const/4 v2, 0x7

    .line 1283
    invoke-direct {v1, v0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 1284
    .line 1285
    .line 1286
    iput-object v1, v0, Lcom/byd/launcher/MainActivity;->Ͱ:Lo/y7;

    .line 1287
    .line 1288
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 1289
    .line 1290
    const-wide/16 v2, 0x96

    .line 1291
    .line 1292
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1293
    .line 1294
    .line 1295
    return-void

    .line 1296
    :goto_19
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 1297
    .line 1298
    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;

    .line 1299
    .line 1300
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ί()V

    .line 1301
    .line 1302
    .line 1303
    return-void

    .line 1304
    nop

    .line 1305
    :pswitch_data_0
    .packed-switch 0x0
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
