.class public final synthetic Lo/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilityThemeRead:Lcom/byd/launcher/stability/ThemeRead;
.field public final stabilitySocRead:Lcom/byd/launcher/stability/SocRead;
.field public final stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
.field public final stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;


# direct methods
.method public synthetic constructor <init>(Lo/ff;I)V
    .locals 2

    .line 1
    iput p2, p0, Lo/ie;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ie;->ͱ:Lo/ff;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c
    if-ne p2, v0, :instrument_capture_done
    iget-object v0, p1, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/byd/launcher/stability/InstrumentReads;->begin(Z)Lcom/byd/launcher/stability/InstrumentReads$Request;
    move-result-object v0
    iput-object v0, p0, Lo/ie;->stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;
    :instrument_capture_done

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x16
    if-ne p2, v0, :tile_capture_done
    iget-object v0, p1, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1, v0}, Lcom/byd/launcher/stability/TileSnapshots;->capture(Lo/ff;Ljava/util/List;)Lcom/byd/launcher/stability/TileBatch;
    move-result-object v0
    iput-object v0, p0, Lo/ie;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    :tile_capture_done
    const/16 v0, 0x18
    if-ne p2, v0, :soc_capture_done
    move-object v0, p1
    check-cast v0, Lo/ff;
    new-instance v1, Lcom/byd/launcher/stability/SocRead;
    invoke-direct {v1, v0}, Lcom/byd/launcher/stability/SocRead;-><init>(Lo/ff;)V
    iput-object v1, p0, Lo/ie;->stabilitySocRead:Lcom/byd/launcher/stability/SocRead;
    :soc_capture_done
    const/4 v0, 0x6
    if-ne p2, v0, :theme_capture_done
    new-instance v0, Lcom/byd/launcher/stability/ThemeRead;
    invoke-direct {v0, p1}, Lcom/byd/launcher/stability/ThemeRead;-><init>(Lo/ff;)V
    iput-object v0, p0, Lo/ie;->stabilityThemeRead:Lcom/byd/launcher/stability/ThemeRead;
    :theme_capture_done
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ie;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ie;->Ͱ:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    const/16 v2, 0xbb8

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const-string v4, "value"

    .line 9
    .line 10
    const-string v5, "screen_brightness"

    .line 11
    .line 12
    const-string v6, "audio"

    .line 13
    .line 14
    const-wide/16 v7, 0x1f4

    .line 15
    .line 16
    const/4 v9, 0x3

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x2

    .line 19
    const-string v12, "QuickSettingsMgr"

    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x1

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1b

    .line 27
    .line 28
    :pswitch_0
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v2, " out of valid range [12,22], skip UI update"

    .line 34
    .line 35
    const-string v4, "refreshInstBrt: rawApi="

    .line 36
    .line 37
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 50
    .line 51
    invoke-direct {v6, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 52
    .line 53
    .line 54
    filled-new-array {v3}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v7, "getBacklightBrightness"

    .line 59
    .line 60
    new-instance v8, Lo/te;

    .line 61
    .line 62
    invoke-direct {v8, v3, v6, v14}, Lo/te;-><init>([ILjava/util/concurrent/CountDownLatch;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v7, v10, v8}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 66
    .line 67
    .line 68
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    const-wide/16 v7, 0x2

    .line 71
    .line 72
    invoke-virtual {v6, v7, v8, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    move-result v5
    if-nez v5, :wait_completed
    const/4 v3, -0x1
    goto :wait_value_ready
    :wait_completed

    .line 73
    .line 74
    .line 75
    aget v3, v3, v13
    :wait_value_ready

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v12, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/16 v5, 0xc

    .line 93
    .line 94
    if-lt v3, v5, :cond_0

    .line 95
    .line 96
    if-gt v3, v1, :cond_0

    .line 97
    .line 98
    invoke-static {v3}, Lo/ff;->ͺ(I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    # Instrument cache/retry state commits with accepted main-thread result.

    .line 103
    .line 104
    # Instrument cache/retry state commits with accepted main-thread result.

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, " -> step="

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, " -> display="

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    mul-int/lit8 v3, v1, 0xa

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v12, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lo/ie;->stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;

    .line 140
    .line 141
    new-instance v3, Lo/de;

    .line 142
    .line 143
    invoke-direct {v3, v0, v1, v11}, Lo/de;-><init>(Lo/ff;II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1, v3}, Lcom/byd/launcher/stability/InstrumentReads$Request;->complete(ILjava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v12, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lo/ie;->stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;
    invoke-virtual {v1}, Lcom/byd/launcher/stability/InstrumentReads$Request;->invalid()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :wait_interrupted
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v2, "refreshInstrumentBrightness: "

    .line 206
    .line 207
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v1, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_1
    :goto_0
    return-void

    .line 214
    :pswitch_1
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    :try_start_1
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-eqz v1, :cond_2

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_2

    .line 230
    .line 231
    const-string v2, "bydScreenOff"

    .line 232
    .line 233
    new-instance v3, Lo/we;

    .line 234
    .line 235
    invoke-direct {v3, v14, v0}, Lo/we;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2, v10, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_2
    const-string v0, "toggleScreenOff: CoreServiceClient not connected"

    .line 243
    .line 244
    invoke-static {v12, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :catch_1
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v2, "toggleScreenOff: "

    .line 252
    .line 253
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v0, v1, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_1
    return-void

    .line 260
    :pswitch_2
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    :try_start_2
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Landroid/media/AudioManager;

    .line 272
    .line 273
    if-eqz v1, :cond_4

    .line 274
    .line 275
    iget-boolean v3, v0, Lo/ff;->ͻ:Z

    .line 276
    .line 277
    if-eqz v3, :cond_3

    .line 278
    .line 279
    const/16 v3, -0x64

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_3
    const/16 v3, 0x64

    .line 283
    .line 284
    :goto_2
    invoke-virtual {v1, v9, v3, v13}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :catch_2
    move-exception v1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v4, "toggleMute: "

    .line 292
    .line 293
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v3, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_4
    :goto_3
    :try_start_3
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 300
    .line 301
    invoke-static {v1}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 305
    .line 306
    .line 307
    iget-boolean v1, v0, Lo/ff;->ͻ:Z

    .line 308
    .line 309
    if-eqz v1, :cond_5

    .line 310
    .line 311
    const-string v1, "media volume --stream 3 --adj mute"

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_5
    const-string v1, "media volume --stream 3 --adj unmute"

    .line 315
    .line 316
    :goto_4
    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catch_3
    move-exception v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v3, "toggleMute adb: "

    .line 324
    .line 325
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v1, v2, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :goto_5
    iget-boolean v1, v0, Lo/ff;->ͻ:Z

    .line 332
    .line 333
    if-nez v1, :cond_6

    .line 334
    .line 335
    iget-object v1, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 336
    .line 337
    new-instance v2, Lo/ee;

    .line 338
    .line 339
    invoke-direct {v2, v0, v11}, Lo/ee;-><init>(Lo/ff;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    .line 344
    .line 345
    :cond_6
    return-void

    .line 346
    :pswitch_3
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 347
    .line 348
    iget-object v1, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 349
    .line 350
    if-nez v1, :cond_7

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_7
    sget v2, Lo/if;->qs_volume_slider:I

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Landroid/widget/SeekBar;

    .line 360
    .line 361
    iget-object v0, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 362
    .line 363
    sget v2, Lo/if;->qs_volume_value:I

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroid/widget/TextView;

    .line 370
    .line 371
    if-eqz v1, :cond_8

    .line 372
    .line 373
    invoke-virtual {v1, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 374
    .line 375
    .line 376
    :cond_8
    if-eqz v0, :cond_9

    .line 377
    .line 378
    const-string v1, "0"

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    :cond_9
    :goto_6
    return-void

    .line 384
    :pswitch_4
    iget-object v0, p0, Lo/ie;->stabilitySocRead:Lcom/byd/launcher/stability/SocRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/SocRead;->current()Z
    move-result v0
    if-nez v0, :soc_worker_current
    return-void
    :soc_worker_current
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    const-string v1, "getSOCTarget"

    .line 390
    .line 391
    invoke-static {v1, v4}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    const/16 v2, 0x19

    .line 396
    .line 397
    if-lt v1, v2, :cond_a

    .line 398
    .line 399
    const/16 v2, 0x46

    .line 400
    .line 401
    if-gt v1, v2, :cond_a

    .line 402
    .line 403
    iget-object v2, p0, Lo/ie;->stabilitySocRead:Lcom/byd/launcher/stability/SocRead;

    .line 404
    .line 405
    new-instance v3, Lo/de;

    .line 406
    .line 407
    invoke-direct {v3, v0, v1, v9}, Lo/de;-><init>(Lo/ff;II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v3}, Lcom/byd/launcher/stability/SocRead;->post(Ljava/lang/Runnable;)V

    .line 411
    .line 412
    .line 413
    :cond_a
    return-void

    .line 414
    :pswitch_5
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v2, Ljava/lang/Thread;

    .line 420
    .line 421
    new-instance v3, Lo/ie;

    .line 422
    .line 423
    invoke-direct {v3, v0, v1}, Lo/ie;-><init>(Lo/ff;I)V

    .line 424
    .line 425
    .line 426
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :pswitch_6
    iget-object v0, p0, Lo/ie;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v0
    if-nez v0, :tile_worker_usable
    return-void
    :tile_worker_usable
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 434
    .line 435
    iget-object v1, v0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_f

    .line 446
    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    move-object v6, v2

    .line 452
    check-cast v6, Lo/df;

    .line 453
    .line 454
    :try_start_4
    iget-object v2, v6, Lo/df;->Ͷ:Landroid/widget/FrameLayout;

    .line 455
    .line 456
    if-nez v2, :cond_b

    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 460
    .line 461
    .line 462
    move-result-wide v2

    .line 463
    iget-wide v4, v6, Lo/df;->ͼ:J

    .line 464
    .line 465
    sub-long/2addr v2, v4

    .line 466
    const-wide/16 v4, 0xbb8

    .line 467
    .line 468
    cmp-long v2, v2, v4

    .line 469
    .line 470
    if-gez v2, :cond_c

    .line 471
    .line 472
    goto :goto_7

    .line 473
    :cond_c
    iget-object v2, v6, Lo/df;->ͳ:Lo/ef;

    .line 474
    .line 475
    if-eqz v2, :cond_d

    .line 476
    .line 477
    iget-object v3, p0, Lo/ie;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v3, v6, v2}, Lcom/byd/launcher/stability/TileSnapshots;->read(Lcom/byd/launcher/stability/TileBatch;Lo/df;Lo/ef;)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-eqz v2, :cond_d

    .line 482
    .line 483
    move v7, v14

    .line 484
    goto :goto_8

    .line 485
    :cond_d
    move v7, v13

    .line 486
    :goto_8
    iget-object v2, v6, Lo/df;->ʹ:Lo/bf;

    .line 487
    .line 488
    if-eqz v2, :cond_e

    .line 489
    .line 490
    check-cast v2, Lo/ke;

    .line 491
    .line 492
    invoke-virtual {v2}, Lo/ke;->ˏ()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    move-object v8, v2

    .line 497
    goto :goto_9

    .line 498
    :cond_e
    move-object v8, v10

    .line 499
    :goto_9
    iget-object v2, p0, Lo/ie;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;

    .line 500
    .line 501
    new-instance v3, Lo/fe;

    .line 502
    .line 503
    const/4 v9, 0x0

    .line 504
    move-object v4, v3

    .line 505
    move-object v5, v0

    .line 506
    invoke-direct/range {v4 .. v9}, Lo/fe;-><init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V

    .line 507
    .line 508
    .line 509
    invoke-static {v2, v3}, Lcom/byd/launcher/stability/TileSnapshots;->post(Lcom/byd/launcher/stability/TileBatch;Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 510
    .line 511
    .line 512
    goto :goto_7

    .line 513
    :catch_4
    move-exception v2

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v4, "refreshAllTiles: "

    .line 517
    .line 518
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v2, v3, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    goto :goto_7

    .line 525
    :cond_f
    return-void

    .line 526
    :pswitch_7
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 527
    .line 528
    iget-boolean v1, v0, Lo/ff;->Μ:Z

    .line 529
    .line 530
    xor-int/2addr v1, v14

    .line 531
    iput-boolean v1, v0, Lo/ff;->Μ:Z

    .line 532
    .line 533
    iget-boolean v1, v0, Lo/ff;->Μ:Z

    .line 534
    .line 535
    new-instance v2, Ljava/lang/Thread;

    .line 536
    .line 537
    new-instance v3, Lo/ae;

    .line 538
    .line 539
    invoke-direct {v3, v0, v1, v11}, Lo/ae;-><init>(Lo/ff;ZI)V

    .line 540
    .line 541
    .line 542
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :pswitch_8
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 550
    .line 551
    invoke-virtual {v0}, Lo/ff;->ʹ()V

    .line 552
    .line 553
    .line 554
    new-instance v1, Ljava/lang/Thread;

    .line 555
    .line 556
    new-instance v2, Lo/ee;

    .line 557
    .line 558
    invoke-direct {v2, v0, v13}, Lo/ee;-><init>(Lo/ff;I)V

    .line 559
    .line 560
    .line 561
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 565
    .line 566
    .line 567
    return-void

    .line 568
    :pswitch_9
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    :try_start_5
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 574
    .line 575
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    const-string v2, "wifi"

    .line 580
    .line 581
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 586
    .line 587
    if-eqz v1, :cond_10

    .line 588
    .line 589
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 590
    .line 591
    .line 592
    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 593
    if-eqz v1, :cond_10

    .line 594
    .line 595
    move v13, v14

    .line 596
    :catch_5
    :cond_10
    new-instance v1, Ljava/lang/Thread;

    .line 597
    .line 598
    new-instance v2, Lo/ae;

    .line 599
    .line 600
    invoke-direct {v2, v0, v13, v14}, Lo/ae;-><init>(Lo/ff;ZI)V

    .line 601
    .line 602
    .line 603
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :pswitch_a
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 611
    .line 612
    invoke-virtual {v0}, Lo/ff;->ʹ()V

    .line 613
    .line 614
    .line 615
    new-instance v1, Ljava/lang/Thread;

    .line 616
    .line 617
    new-instance v2, Lo/ie;

    .line 618
    .line 619
    const/16 v3, 0x1d

    .line 620
    .line 621
    invoke-direct {v2, v0, v3}, Lo/ie;-><init>(Lo/ff;I)V

    .line 622
    .line 623
    .line 624
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 628
    .line 629
    .line 630
    return-void

    .line 631
    :pswitch_b
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 632
    .line 633
    iget-object v1, v0, Lo/ff;->Ύ:Lo/cf;

    .line 634
    .line 635
    invoke-virtual {v0}, Lo/ff;->ʹ()V

    .line 636
    .line 637
    .line 638
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 639
    .line 640
    new-instance v2, Lo/td;

    .line 641
    .line 642
    const/16 v3, 0x11

    .line 643
    .line 644
    invoke-direct {v2, v3, v1}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    .line 649
    .line 650
    return-void

    .line 651
    :pswitch_c
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 652
    .line 653
    iget-object v1, v0, Lo/ff;->Δ:Lo/xe;

    .line 654
    .line 655
    if-eqz v1, :cond_11

    .line 656
    .line 657
    goto :goto_a

    .line 658
    :cond_11
    iput-boolean v13, v0, Lo/ff;->ͺ:Z

    .line 659
    .line 660
    invoke-virtual {v0}, Lo/ff;->Ά()V

    .line 661
    .line 662
    .line 663
    iget-object v1, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 664
    .line 665
    new-instance v2, Lo/ee;

    .line 666
    .line 667
    invoke-direct {v2, v0, v14}, Lo/ee;-><init>(Lo/ff;I)V

    .line 668
    .line 669
    .line 670
    const-wide/16 v3, 0xdc

    .line 671
    .line 672
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 673
    .line 674
    .line 675
    :goto_a
    return-void

    .line 676
    :pswitch_d
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    new-instance v1, Ljava/lang/Thread;

    .line 682
    .line 683
    new-instance v2, Lo/ie;

    .line 684
    .line 685
    const/16 v3, 0x1b

    .line 686
    .line 687
    invoke-direct {v2, v0, v3}, Lo/ie;-><init>(Lo/ff;I)V

    .line 688
    .line 689
    .line 690
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_e
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 698
    .line 699
    iget-boolean v1, v0, Lo/ff;->Π:Z

    .line 700
    .line 701
    xor-int/2addr v1, v14

    .line 702
    iput-boolean v1, v0, Lo/ff;->Π:Z

    .line 703
    .line 704
    iget-boolean v1, v0, Lo/ff;->Π:Z

    .line 705
    .line 706
    const-string v2, "setHDCState"

    .line 707
    .line 708
    invoke-virtual {v0, v1, v2}, Lo/ff;->Ή(ILjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    return-void

    .line 712
    :pswitch_f
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 713
    .line 714
    iget-boolean v1, v0, Lo/ff;->Ξ:Z

    .line 715
    .line 716
    xor-int/2addr v1, v14

    .line 717
    iput-boolean v1, v0, Lo/ff;->Ξ:Z

    .line 718
    .line 719
    iget-boolean v1, v0, Lo/ff;->Ξ:Z

    .line 720
    .line 721
    if-eqz v1, :cond_12

    .line 722
    .line 723
    goto :goto_b

    .line 724
    :cond_12
    move v11, v14

    .line 725
    :goto_b
    const-string v1, "setSocSaveSwitch"

    .line 726
    .line 727
    invoke-virtual {v0, v11, v1}, Lo/ff;->Ή(ILjava/lang/String;)V

    .line 728
    .line 729
    .line 730
    return-void

    .line 731
    :pswitch_10
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 732
    .line 733
    iget-boolean v1, v0, Lo/ff;->Ν:Z

    .line 734
    .line 735
    xor-int/2addr v1, v14

    .line 736
    iput-boolean v1, v0, Lo/ff;->Ν:Z

    .line 737
    .line 738
    iget-boolean v1, v0, Lo/ff;->Ν:Z

    .line 739
    .line 740
    if-eqz v1, :cond_13

    .line 741
    .line 742
    goto :goto_c

    .line 743
    :cond_13
    move v11, v14

    .line 744
    :goto_c
    const-string v1, "setEnergyFeedback"

    .line 745
    .line 746
    invoke-virtual {v0, v11, v1}, Lo/ff;->Ή(ILjava/lang/String;)V

    .line 747
    .line 748
    .line 749
    const-string v1, "energy_feedback"

    .line 750
    .line 751
    iget-boolean v0, v0, Lo/ff;->Ν:Z

    .line 752
    .line 753
    :try_start_6
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 754
    .line 755
    if-eqz v2, :cond_14

    .line 756
    .line 757
    iget-object v3, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 758
    .line 759
    new-instance v4, Lo/x9;

    .line 760
    .line 761
    invoke-direct {v4, v2, v1, v0, v13}, Lo/x9;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 765
    .line 766
    .line 767
    :catchall_0
    :cond_14
    return-void

    .line 768
    :pswitch_11
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 769
    .line 770
    iget-boolean v1, v0, Lo/ff;->Ο:Z

    .line 771
    .line 772
    xor-int/2addr v1, v14

    .line 773
    iput-boolean v1, v0, Lo/ff;->Ο:Z

    .line 774
    .line 775
    iget-boolean v1, v0, Lo/ff;->Ο:Z

    .line 776
    .line 777
    const-string v2, "setEngineVoiceSimulatorState"

    .line 778
    .line 779
    invoke-virtual {v0, v1, v2}, Lo/ff;->Ή(ILjava/lang/String;)V

    .line 780
    .line 781
    .line 782
    const-string v1, "engine_voice"

    .line 783
    .line 784
    iget-boolean v0, v0, Lo/ff;->Ο:Z

    .line 785
    .line 786
    :try_start_7
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 787
    .line 788
    if-eqz v2, :cond_15

    .line 789
    .line 790
    iget-object v3, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 791
    .line 792
    new-instance v4, Lo/x9;

    .line 793
    .line 794
    invoke-direct {v4, v2, v1, v0, v13}, Lo/x9;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 798
    .line 799
    .line 800
    :catchall_1
    :cond_15
    return-void

    .line 801
    :pswitch_12
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 802
    .line 803
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 804
    .line 805
    invoke-static {v1}, Lo/ci;->Ͱ(Landroid/content/Context;)I

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    if-eqz v1, :cond_17

    .line 810
    .line 811
    if-eq v1, v14, :cond_16

    .line 812
    .line 813
    move v2, v13

    .line 814
    goto :goto_d

    .line 815
    :cond_16
    move v2, v11

    .line 816
    goto :goto_d

    .line 817
    :cond_17
    move v2, v14

    .line 818
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    const-string v4, "toggleDarkMode: "

    .line 821
    .line 822
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    const-string v1, " -> "

    .line 829
    .line 830
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-static {v12, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 844
    .line 845
    invoke-static {v1, v2}, Lo/ci;->Ͷ(Landroid/content/Context;I)V

    .line 846
    .line 847
    .line 848
    if-ne v2, v11, :cond_18

    .line 849
    .line 850
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    const/16 v3, 0xb

    .line 855
    .line 856
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    const/4 v3, 0x7

    .line 861
    if-lt v1, v3, :cond_19

    .line 862
    .line 863
    const/16 v3, 0x13

    .line 864
    .line 865
    if-ge v1, v3, :cond_19

    .line 866
    .line 867
    goto :goto_e

    .line 868
    :cond_18
    if-ne v2, v14, :cond_19

    .line 869
    .line 870
    :goto_e
    move v13, v14

    .line 871
    :cond_19
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 872
    .line 873
    if-eqz v1, :cond_1a

    .line 874
    .line 875
    invoke-virtual {v1, v13}, Lcom/byd/launcher/NavBarService;->Ύ(Z)V

    .line 876
    .line 877
    .line 878
    :cond_1a
    iput-boolean v13, v0, Lo/ff;->Ά:Z

    .line 879
    .line 880
    invoke-virtual {v0}, Lo/ff;->ˏ()V

    .line 881
    .line 882
    .line 883
    iget-object v1, v0, Lo/ff;->ʹ:Landroid/view/View;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Lo/ff;->ˋ(Landroid/view/View;)V

    .line 886
    .line 887
    .line 888
    iget-object v1, v0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    if-eqz v3, :cond_1c

    .line 899
    .line 900
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    check-cast v3, Lo/df;

    .line 905
    .line 906
    iget-object v4, v3, Lo/df;->ͷ:Landroid/widget/TextView;

    .line 907
    .line 908
    if-eqz v4, :cond_1b

    .line 909
    .line 910
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 911
    .line 912
    .line 913
    move-result-object v4

    .line 914
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    goto :goto_10

    .line 919
    :cond_1b
    iget-object v4, v3, Lo/df;->ˏ:Ljava/lang/String;

    .line 920
    .line 921
    :goto_10
    iget-boolean v5, v3, Lo/df;->ͻ:Z

    .line 922
    .line 923
    invoke-virtual {v0, v3, v5, v4}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    .line 924
    .line 925
    .line 926
    goto :goto_f

    .line 927
    :cond_1c
    new-instance v1, Ljava/lang/Thread;

    .line 928
    .line 929
    new-instance v3, Lo/lb;

    .line 930
    .line 931
    invoke-direct {v3, v0, v13, v2, v11}, Lo/lb;-><init>(Ljava/lang/Object;ZII)V

    .line 932
    .line 933
    .line 934
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 938
    .line 939
    .line 940
    return-void

    .line 941
    :pswitch_13
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 942
    .line 943
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    .line 945
    .line 946
    :try_start_8
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 947
    .line 948
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    check-cast v1, Landroid/media/AudioManager;

    .line 953
    .line 954
    if-eqz v1, :cond_1d

    .line 955
    .line 956
    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 957
    .line 958
    .line 959
    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 960
    goto :goto_11

    .line 961
    :catch_6
    :cond_1d
    iget-boolean v1, v0, Lo/ff;->ͻ:Z

    .line 962
    .line 963
    :goto_11
    xor-int/2addr v1, v14

    .line 964
    iput-boolean v1, v0, Lo/ff;->ͻ:Z

    .line 965
    .line 966
    iget-boolean v1, v0, Lo/ff;->ͻ:Z

    .line 967
    .line 968
    if-eqz v1, :cond_1e

    .line 969
    .line 970
    iget-object v1, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 971
    .line 972
    new-instance v2, Lo/ie;

    .line 973
    .line 974
    const/16 v3, 0x19

    .line 975
    .line 976
    invoke-direct {v2, v0, v3}, Lo/ie;-><init>(Lo/ff;I)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 980
    .line 981
    .line 982
    :cond_1e
    new-instance v1, Ljava/lang/Thread;

    .line 983
    .line 984
    new-instance v2, Lo/ie;

    .line 985
    .line 986
    const/16 v3, 0x1a

    .line 987
    .line 988
    invoke-direct {v2, v0, v3}, Lo/ie;-><init>(Lo/ff;I)V

    .line 989
    .line 990
    .line 991
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 995
    .line 996
    .line 997
    return-void

    .line 998
    :pswitch_14
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 999
    .line 1000
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1001
    .line 1002
    .line 1003
    :try_start_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    if-eqz v1, :cond_1f

    .line 1008
    .line 1009
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 1010
    .line 1011
    .line 1012
    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1013
    if-eqz v1, :cond_1f

    .line 1014
    .line 1015
    goto :goto_12

    .line 1016
    :catch_7
    :cond_1f
    move v14, v13

    .line 1017
    :goto_12
    new-instance v1, Ljava/lang/Thread;

    .line 1018
    .line 1019
    new-instance v2, Lo/ae;

    .line 1020
    .line 1021
    invoke-direct {v2, v0, v14, v13}, Lo/ae;-><init>(Lo/ff;ZI)V

    .line 1022
    .line 1023
    .line 1024
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1028
    .line 1029
    .line 1030
    return-void

    .line 1031
    :pswitch_15
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Lo/ff;->ͳ()V

    .line 1034
    .line 1035
    .line 1036
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 1037
    .line 1038
    iget-object v2, v0, Lo/ff;->Ή:Lo/af;

    .line 1039
    .line 1040
    iget-object v3, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 1041
    .line 1042
    if-nez v2, :cond_20

    .line 1043
    .line 1044
    new-instance v2, Lo/af;

    .line 1045
    .line 1046
    invoke-direct {v2, v0, v3, v13}, Lo/af;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 1047
    .line 1048
    .line 1049
    iput-object v2, v0, Lo/ff;->Ή:Lo/af;

    .line 1050
    .line 1051
    :cond_20
    :try_start_a
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v4

    .line 1059
    iget-object v5, v0, Lo/ff;->Ή:Lo/af;

    .line 1060
    .line 1061
    invoke-virtual {v4, v2, v13, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1062
    .line 1063
    .line 1064
    goto :goto_13

    .line 1065
    :catch_8
    move-exception v2

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    const-string v5, "registerBrightnessObserver: "

    .line 1069
    .line 1070
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v2, v4, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    :goto_13
    iget-object v2, v0, Lo/ff;->Ί:Lo/qe;

    .line 1077
    .line 1078
    if-nez v2, :cond_21

    .line 1079
    .line 1080
    new-instance v2, Lo/qe;

    .line 1081
    .line 1082
    invoke-direct {v2, v0}, Lo/qe;-><init>(Lo/ff;)V

    .line 1083
    .line 1084
    .line 1085
    iput-object v2, v0, Lo/ff;->Ί:Lo/qe;

    .line 1086
    .line 1087
    :cond_21
    :try_start_b
    new-instance v2, Landroid/content/IntentFilter;

    .line 1088
    .line 1089
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    .line 1090
    .line 1091
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    iget-object v4, v0, Lo/ff;->Ί:Lo/qe;

    .line 1095
    .line 1096
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1097
    .line 1098
    .line 1099
    goto :goto_14

    .line 1100
    :catch_9
    move-exception v1

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    const-string v4, "registerVolumeReceiver: "

    .line 1104
    .line 1105
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-static {v1, v2, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    :goto_14
    iget-object v1, v0, Lo/ff;->Έ:Lo/ie;

    .line 1112
    .line 1113
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1114
    .line 1115
    .line 1116
    new-instance v2, Lo/ie;

    .line 1117
    .line 1118
    const/16 v4, 0x17

    .line 1119
    .line 1120
    invoke-direct {v2, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    .line 1125
    .line 1126
    const-wide/16 v4, 0x1f40

    .line 1127
    .line 1128
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1129
    .line 1130
    .line 1131
    return-void

    .line 1132
    :pswitch_16
    iget-object v0, p0, Lo/ie;->stabilityThemeRead:Lcom/byd/launcher/stability/ThemeRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/ThemeRead;->current()Z
    move-result v0
    if-nez v0, :theme_worker_current
    return-void
    :theme_worker_current
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1133
    .line 1134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1135
    .line 1136
    .line 1137
    const-string v1, "syncSystemThemeMode: sys="

    .line 1138
    .line 1139
    :try_start_c
    iget-object v2, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 1140
    .line 1141
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v5

    .line 1145
    const-string v2, "content://carsettings/global"

    .line 1146
    .line 1147
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v6

    .line 1151
    const/4 v7, 0x0

    .line 1152
    const-string v8, "key=?"

    .line 1153
    .line 1154
    new-array v9, v14, [Ljava/lang/String;

    .line 1155
    .line 1156
    const-string v2, "sys_screen_mode"

    .line 1157
    .line 1158
    aput-object v2, v9, v13

    .line 1159
    .line 1160
    const/4 v10, 0x0

    .line 1161
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 1165
    if-eqz v2, :cond_28

    .line 1166
    .line 1167
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1168
    .line 1169
    .line 1170
    move-result v5

    .line 1171
    if-eqz v5, :cond_27

    .line 1172
    .line 1173
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1174
    .line 1175
    .line 1176
    move-result v4

    .line 1177
    if-ltz v4, :cond_27

    .line 1178
    .line 1179
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 1180
    .line 1181
    .line 1182
    move-result v4

    .line 1183
    if-eqz v4, :cond_24

    .line 1184
    .line 1185
    if-eq v4, v14, :cond_23

    .line 1186
    .line 1187
    if-eq v4, v11, :cond_22

    .line 1188
    .line 1189
    goto :goto_15

    .line 1190
    :cond_22
    move v3, v13

    .line 1191
    goto :goto_15

    .line 1192
    :cond_23
    move v3, v14

    .line 1193
    goto :goto_15

    .line 1194
    :cond_24
    move v3, v11

    .line 1195
    :goto_15
    iget-object v5, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 1196
    .line 1197
    invoke-static {v5}, Lo/ci;->Ͱ(Landroid/content/Context;)I

    .line 1198
    .line 1199
    .line 1200
    move-result v5

    # Preserve the preference observed by this read until main-thread publication.
    move v6, v5

    .line 1201
    if-ltz v3, :cond_27

    .line 1202
    .line 1203
    if-eq v3, v5, :cond_27

    .line 1204
    .line 1205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    const-string v1, " -> launcher="

    .line 1214
    .line 1215
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    invoke-static {v12, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    new-instance v1, Lcom/byd/launcher/stability/QuickSettingsThemeApply;
    invoke-direct {v1, v0, v3, v6}, Lcom/byd/launcher/stability/QuickSettingsThemeApply;-><init>(Lo/ff;II)V
    iget-object v0, p0, Lo/ie;->stabilityThemeRead:Lcom/byd/launcher/stability/ThemeRead;
    invoke-virtual {v0, v1}, Lcom/byd/launcher/stability/ThemeRead;->post(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1261
    .line 1262
    .line 1263
    :cond_27
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1264
    .line 1265
    .line 1266
    goto :goto_17

    .line 1267
    :catchall_2
    move-exception v0

    .line 1268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1269
    .line 1270
    .line 1271
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 1272
    :catch_a
    move-exception v0

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    const-string v2, "syncSystemThemeMode error: "

    .line 1276
    .line 1277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-static {v0, v1, v12}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    :cond_28
    :goto_17
    return-void

    .line 1284
    :pswitch_17
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1285
    .line 1286
    iget-boolean v2, v0, Lo/ff;->ͷ:Z

    .line 1287
    .line 1288
    if-eqz v2, :cond_2e

    .line 1289
    .line 1290
    iget-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1291
    .line 1292
    if-nez v2, :cond_29

    .line 1293
    .line 1294
    goto/16 :goto_19

    .line 1295
    .line 1296
    :cond_29
    iget-object v2, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 1297
    .line 1298
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v3

    .line 1302
    check-cast v3, Landroid/media/AudioManager;

    .line 1303
    .line 1304
    iget-object v4, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1305
    .line 1306
    sget v6, Lo/if;->qs_volume_slider:I

    .line 1307
    .line 1308
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v4

    .line 1312
    check-cast v4, Landroid/widget/SeekBar;

    .line 1313
    .line 1314
    iget-object v6, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1315
    .line 1316
    sget v7, Lo/if;->qs_volume_value:I

    .line 1317
    .line 1318
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v6

    .line 1322
    check-cast v6, Landroid/widget/TextView;

    .line 1323
    .line 1324
    if-eqz v3, :cond_2a

    .line 1325
    .line 1326
    if-eqz v4, :cond_2a

    .line 1327
    .line 1328
    invoke-virtual {v3, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 1329
    .line 1330
    .line 1331
    move-result v3

    .line 1332
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1333
    .line 1334
    .line 1335
    if-eqz v6, :cond_2a

    .line 1336
    .line 1337
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v3

    .line 1341
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    .line 1343
    .line 1344
    :cond_2a
    iget-object v3, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1345
    .line 1346
    sget v4, Lo/if;->qs_nav_volume_slider:I

    .line 1347
    .line 1348
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    check-cast v3, Landroid/widget/SeekBar;

    .line 1353
    .line 1354
    iget-object v4, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1355
    .line 1356
    sget v6, Lo/if;->qs_nav_volume_value:I

    .line 1357
    .line 1358
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v4

    .line 1362
    check-cast v4, Landroid/widget/TextView;

    .line 1363
    .line 1364
    if-eqz v3, :cond_2b

    .line 1365
    .line 1366
    const/4 v6, 0x2

    .line 1367
    .line 1368
    new-instance v7, Lo/je;

    .line 1369
    .line 1370
    invoke-direct {v7, v0, v3, v4, v11}, Lo/je;-><init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 1371
    .line 1372
    .line 1373
    invoke-static {v0, v6, v7}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 1374
    .line 1375
    .line 1376


    .line 1377
    .line 1378
    .line 1379
    :cond_2b
    iget-object v3, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1380
    .line 1381
    sget v4, Lo/if;->qs_brightness_slider:I

    .line 1382
    .line 1383
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    check-cast v3, Landroid/widget/SeekBar;

    .line 1388
    .line 1389
    iget-object v4, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1390
    .line 1391
    sget v6, Lo/if;->qs_brightness_value:I

    .line 1392
    .line 1393
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v4

    .line 1397
    check-cast v4, Landroid/widget/TextView;

    .line 1398
    .line 1399
    if-eqz v3, :cond_2c

    .line 1400
    .line 1401
    :try_start_f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    const/16 v6, 0x80

    .line 1406
    .line 1407
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1408
    .line 1409
    .line 1410
    move-result v2

    .line 1411
    invoke-static {v2}, Lo/ff;->ͱ(I)I

    .line 1412
    .line 1413
    .line 1414
    move-result v2

    .line 1415
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1416
    .line 1417
    .line 1418
    if-eqz v4, :cond_2c

    .line 1419
    .line 1420
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v2

    .line 1424
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 1425
    .line 1426
    .line 1427
    :catch_b
    :cond_2c
    invoke-virtual {v0}, Lo/ff;->ͽ()V

    .line 1428
    .line 1429
    .line 1430
    iget-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1431
    .line 1432
    if-nez v2, :cond_2d

    .line 1433
    .line 1434
    goto :goto_18

    .line 1435
    :cond_2d
    const/4 v2, 0x5

    .line 1436
    .line 1437
    new-instance v3, Lo/ie;

    .line 1438
    .line 1439
    const/16 v4, 0x18

    .line 1440
    .line 1441
    invoke-direct {v3, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    .line 1442
    .line 1443
    .line 1444
    invoke-static {v0, v2, v3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 1445
    .line 1446
    .line 1447


    .line 1448
    .line 1449
    .line 1450
    :goto_18
    const/4 v2, 0x6

    .line 1451
    .line 1452
    new-instance v3, Lo/ie;

    .line 1453
    .line 1454
    invoke-direct {v3, v0, v1}, Lo/ie;-><init>(Lo/ff;I)V

    .line 1455
    .line 1456
    .line 1457
    invoke-static {v0, v2, v3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 1458
    .line 1459
    .line 1460


    .line 1461
    .line 1462
    .line 1463
    iget-boolean v1, v0, Lo/ff;->ͷ:Z

    .line 1464
    .line 1465
    if-eqz v1, :cond_2e

    .line 1466
    .line 1467
    iget-object v1, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 1468
    .line 1469
    iget-object v0, v0, Lo/ff;->Έ:Lo/ie;

    .line 1470
    .line 1471
    const-wide/16 v2, 0x1f40

    .line 1472
    .line 1473
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1474
    .line 1475
    .line 1476
    :cond_2e
    :goto_19
    return-void

    .line 1477
    :pswitch_18
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1478
    .line 1479
    invoke-virtual {v0}, Lo/ff;->ͻ()V

    .line 1480
    .line 1481
    .line 1482
    return-void

    .line 1483
    :pswitch_19
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1484
    .line 1485
    invoke-virtual {v0}, Lo/ff;->ͳ()V

    .line 1486
    .line 1487
    .line 1488
    return-void

    .line 1489
    :pswitch_1a
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1490
    .line 1491
    invoke-virtual {v0}, Lo/ff;->ͳ()V

    .line 1492
    .line 1493
    .line 1494
    return-void

    .line 1495
    :pswitch_1b
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1496
    .line 1497
    iget-object v0, v0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 1498
    .line 1499
    if-eqz v0, :cond_2f

    .line 1500
    .line 1501
    invoke-virtual {v0, v13, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1502
    .line 1503
    .line 1504
    :cond_2f
    return-void

    .line 1505
    :pswitch_1c
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1506
    .line 1507
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 1508
    .line 1509
    iget-boolean v2, v0, Lo/ff;->ΐ:Z

    .line 1510
    .line 1511
    if-eqz v2, :cond_30

    .line 1512
    .line 1513
    iget-object v2, v0, Lo/ff;->Ώ:Landroid/view/View;

    .line 1514
    .line 1515
    if-eqz v2, :cond_30

    .line 1516
    .line 1517
    goto :goto_1a

    .line 1518
    :cond_30
    :try_start_10
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 1519
    .line 1520
    sget v3, Lo/lf;->Theme_NavDemo:I

    .line 1521
    .line 1522
    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1523
    .line 1524
    .line 1525
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v2

    .line 1529
    sget v3, Lo/jf;->quick_settings_panel:I

    .line 1530
    .line 1531
    invoke-virtual {v2, v3, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v2

    .line 1535
    iput-object v2, v0, Lo/ff;->Ώ:Landroid/view/View;

    .line 1536
    .line 1537
    sget v3, Lo/if;->qs_panel:I

    .line 1538
    .line 1539
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1540
    .line 1541
    .line 1542
    iget-object v2, v0, Lo/ff;->Ώ:Landroid/view/View;

    .line 1543
    .line 1544
    sget v3, Lo/if;->qs_dim_bg:I

    .line 1545
    .line 1546
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1547
    .line 1548
    .line 1549
    iget-object v2, v0, Lo/ff;->Ώ:Landroid/view/View;

    .line 1550
    .line 1551
    iput-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1552
    .line 1553
    new-instance v2, Landroid/graphics/Point;

    .line 1554
    .line 1555
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1556
    .line 1557
    .line 1558
    iget-object v3, v0, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 1559
    .line 1560
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v3

    .line 1564
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1565
    .line 1566
    .line 1567
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1568
    .line 1569
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1570
    .line 1571
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 1572
    .line 1573
    .line 1574
    move-result v2

    .line 1575
    iget v3, v0, Lo/ff;->Α:I

    .line 1576
    .line 1577
    if-lez v3, :cond_31

    .line 1578
    .line 1579
    sub-int/2addr v2, v3

    .line 1580
    :cond_31
    div-int/lit8 v2, v2, 0x6

    .line 1581
    .line 1582
    iput v2, v0, Lo/ff;->ͼ:I

    .line 1583
    .line 1584
    invoke-virtual {v0}, Lo/ff;->Ό()V

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v0}, Lo/ff;->Ί()V

    .line 1588
    .line 1589
    .line 1590
    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v1

    .line 1594
    iput-boolean v1, v0, Lo/ff;->Ά:Z

    .line 1595
    .line 1596
    iput-object v10, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 1597
    .line 1598
    iget-object v1, v0, Lo/ff;->Ώ:Landroid/view/View;

    .line 1599
    .line 1600
    const-string v2, "prepared"

    .line 1601
    .line 1602
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1603
    .line 1604
    .line 1605
    iput-boolean v14, v0, Lo/ff;->ΐ:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 1606
    .line 1607
    goto :goto_1a

    .line 1608
    :catch_c
    move-exception v1

    .line 1609
    const-string v2, "preparePanel failed"

    .line 1610
    .line 1611
    invoke-static {v12, v2, v1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1612
    .line 1613
    .line 1614
    iput-object v10, v0, Lo/ff;->Ώ:Landroid/view/View;

    .line 1615
    .line 1616
    :goto_1a
    return-void

    .line 1617
    :goto_1b
    iget-object v0, p0, Lo/ie;->ͱ:Lo/ff;

    .line 1618
    .line 1619
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1620
    .line 1621
    .line 1622
    const-wide/16 v3, 0x12c

    .line 1623
    .line 1624
    :try_start_11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_d

    .line 1625
    .line 1626
    .line 1627
    :catch_d
    :try_start_12
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 1628
    .line 1629
    invoke-static {v1}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 1630
    .line 1631
    .line 1632
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 1633
    .line 1634
    .line 1635
    const-string v1, "am start -n com.byd.btsetting/.BluetoothManagerDialog"

    .line 1636
    .line 1637
    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    const-string v1, "openBluetoothSettings via adb"

    .line 1641
    .line 1642
    invoke-static {v12, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 1643
    .line 1644
    .line 1645
    goto :goto_1c

    .line 1646
    :catch_e
    move-exception v1

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1648
    .line 1649
    const-string v3, "openBluetoothSettings adb: "

    .line 1650
    .line 1651
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v1

    .line 1658
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v1

    .line 1665
    invoke-static {v12, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    new-instance v1, Landroid/os/Handler;

    .line 1669
    .line 1670
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v2

    .line 1674
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1675
    .line 1676
    .line 1677
    new-instance v2, Lo/ee;

    .line 1678
    .line 1679
    const/4 v3, 0x6

    .line 1680
    invoke-direct {v2, v0, v3}, Lo/ee;-><init>(Lo/ff;I)V

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1684
    .line 1685
    .line 1686
    :goto_1c
    return-void

    .line 1687
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
    :wait_interrupted
    move-exception v0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    return-void
.end method
