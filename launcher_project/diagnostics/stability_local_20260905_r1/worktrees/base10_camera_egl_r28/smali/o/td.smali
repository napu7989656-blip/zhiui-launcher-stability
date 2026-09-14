.class public final synthetic Lo/td;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/td;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/td;->ͱ:Ljava/lang/Object;

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
    .locals 29

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/td;->ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo/td;->Ͱ:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const-string v4, "CoreService"

    .line 9
    .line 10
    const-string v5, "NavBarSvc"

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v8, 0x1c

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_16

    .line 22
    .line 23
    :pswitch_0
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˋ(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lo/jl;

    .line 34
    .line 35
    iget-object v2, v0, Lo/jl;->ͱ:Lo/vl;

    .line 36
    .line 37
    iput-boolean v9, v2, Lo/vl;->Ί:Z

    .line 38
    .line 39
    iget-object v2, v0, Lo/jl;->ͱ:Lo/vl;

    .line 40
    .line 41
    iget-object v2, v2, Lo/vl;->ͳ:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2, v9, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lo/jl;->ͱ:Lo/vl;

    .line 49
    .line 50
    iget-object v2, v2, Lo/vl;->ͳ:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2, v9}, Landroid/view/View;->setHasTransientState(Z)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, v0, Lo/jl;->ͱ:Lo/vl;

    .line 56
    .line 57
    iget-object v3, v2, Lo/vl;->Ρ:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    iget-object v4, v2, Lo/vl;->Τ:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v4, v2, Lo/vl;->Σ:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v5, v2, Lo/vl;->Τ:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    invoke-virtual {v2, v5, v3, v4}, Lo/vl;->Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v8, v0, Lo/jl;->ͱ:Lo/vl;

    .line 74
    .line 75
    iget-wide v9, v8, Lo/vl;->Γ:D

    .line 76
    .line 77
    const-wide/16 v2, 0x1

    .line 78
    .line 79
    cmpl-double v0, v9, v2

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget v0, v8, Lo/vl;->Δ:I

    .line 84
    .line 85
    if-gez v0, :cond_2

    .line 86
    .line 87
    iget v0, v8, Lo/vl;->Ε:I

    .line 88
    .line 89
    if-gez v0, :cond_2

    .line 90
    .line 91
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iput v6, v0, Lcom/byd/launcher/NavBarService;->Ϡ:I

    .line 96
    .line 97
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v3, Lo/ea;

    .line 100
    .line 101
    const/16 v4, 0x17

    .line 102
    .line 103
    invoke-direct {v3, v0, v4}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iget v11, v8, Lo/vl;->Δ:I

    .line 111
    .line 112
    iget v12, v8, Lo/vl;->Ε:I

    .line 113
    .line 114
    iput-wide v9, v8, Lo/vl;->Γ:D

    .line 115
    .line 116
    iput v11, v8, Lo/vl;->Δ:I

    .line 117
    .line 118
    iput v12, v8, Lo/vl;->Ε:I

    .line 119
    .line 120
    iget-object v0, v8, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object v0, v8, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 126
    .line 127
    new-instance v2, Lo/xk;

    .line 128
    .line 129
    move-object v7, v2

    .line 130
    invoke-direct/range {v7 .. v12}, Lo/xk;-><init>(Lo/vl;DII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    return-void

    .line 137
    :pswitch_2
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lo/q3;

    .line 140
    .line 141
    invoke-virtual {v0}, Lo/q3;->ͳ()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_3
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Lo/gh;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    const-string v2, "SherpaOnnxTts"

    .line 153
    .line 154
    new-instance v3, Ljava/io/File;

    .line 155
    .line 156
    const-string v4, "/data/data/com.byd.launcher/cache/tts_audio"

    .line 157
    .line 158
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_b

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_5

    .line 172
    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :cond_5
    new-instance v4, Ljava/io/File;

    .line 176
    .line 177
    const-string v5, "keymap.txt"

    .line 178
    .line 179
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_6

    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :cond_6
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 191
    .line 192
    new-instance v5, Ljava/io/InputStreamReader;

    .line 193
    .line 194
    new-instance v6, Ljava/io/FileInputStream;

    .line 195
    .line 196
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 197
    .line 198
    .line 199
    const-string v4, "UTF-8"

    .line 200
    .line 201
    invoke-direct {v5, v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    if-eqz v4, :cond_9

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    if-eqz v5, :cond_8

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    iget-object v5, v0, Lo/gh;->ͷ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 225
    .line 226
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-nez v6, :cond_7

    .line 231
    .line 232
    invoke-static {v4}, Lo/gh;->ͳ(Ljava/lang/String;)Lo/fh;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    if-eqz v6, :cond_7

    .line 237
    .line 238
    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    add-int/lit8 v9, v9, 0x1

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_9
    if-lez v9, :cond_a

    .line 245
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v4, "Loaded "

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, " cached audio from disk"

    .line 260
    .line 261
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v2, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .line 270
    .line 271
    :cond_a
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    move-object v4, v0

    .line 277
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :catchall_1
    move-exception v0

    .line 282
    move-object v3, v0

    .line 283
    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    :goto_3
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v4, "Failed to load disk cache map: "

    .line 291
    .line 292
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v0, v3, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_b
    :goto_4
    return-void

    .line 299
    :pswitch_4
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lo/c8;

    .line 302
    .line 303
    iget-object v2, v0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 304
    .line 305
    const-string v3, "/3), relaunching"

    .line 306
    .line 307
    const-string v4, "Heartbeat: app "

    .line 308
    .line 309
    const-string v5, "am stack list | grep "

    .line 310
    .line 311
    :try_start_6
    move-object v6, v2

    .line 312
    check-cast v6, Lo/nd;

    .line 313
    .line 314
    iget-object v6, v6, Lo/nd;->ˋ:Landroid/content/Context;

    .line 315
    .line 316
    const-string v7, "pip_manager_prefs"

    .line 317
    .line 318
    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    const-string v7, "pip_right_app"

    .line 323
    .line 324
    const-string v11, "com.byd.automap/com.byd.automap.activity.StartupActivity"

    .line 325
    .line 326
    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    const-string v7, "/"

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    aget-object v7, v7, v9

    .line 337
    .line 338
    new-instance v11, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    const/16 v11, 0x7d0

    .line 351
    .line 352
    invoke-static {v5, v11}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    if-eqz v5, :cond_d

    .line 357
    .line 358
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-eqz v5, :cond_c

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_c
    check-cast v2, Lo/nd;

    .line 370
    .line 371
    iput v9, v2, Lo/nd;->έ:I

    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_d
    :goto_5
    move-object v5, v2

    .line 375
    check-cast v5, Lo/nd;

    .line 376
    .line 377
    iget v9, v5, Lo/nd;->έ:I

    .line 378
    .line 379
    add-int/2addr v9, v10

    .line 380
    iput v9, v5, Lo/nd;->έ:I

    .line 381
    .line 382
    const-string v5, "PiPManager"

    .line 383
    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v4, " not found ("

    .line 393
    .line 394
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    move-object v4, v2

    .line 398
    check-cast v4, Lo/nd;

    .line 399
    .line 400
    iget v4, v4, Lo/nd;->έ:I

    .line 401
    .line 402
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-static {v5, v3}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    check-cast v2, Lo/nd;

    .line 416
    .line 417
    iget-object v2, v2, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 418
    .line 419
    new-instance v3, Lo/ag;

    .line 420
    .line 421
    invoke-direct {v3, v8, v0, v6}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 425
    .line 426
    .line 427
    :catch_1
    :goto_6
    return-void

    .line 428
    :pswitch_5
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Lo/jd;

    .line 431
    .line 432
    iget-object v0, v0, Lo/jd;->ˋ:Lo/nd;

    .line 433
    .line 434
    iget-object v0, v0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 435
    .line 436
    if-eqz v0, :cond_e

    .line 437
    .line 438
    invoke-virtual {v0, v9, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 439
    .line 440
    .line 441
    :cond_e
    return-void

    .line 442
    :pswitch_6
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v0, Lo/kj;

    .line 445
    .line 446
    iget-object v2, v0, Lo/kj;->Ͳ:Landroidx/cardview/widget/CardView;

    .line 447
    .line 448
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-lez v2, :cond_f

    .line 453
    .line 454
    iget-object v3, v0, Lo/kj;->Ͳ:Landroidx/cardview/widget/CardView;

    .line 455
    .line 456
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    div-int/2addr v2, v6

    .line 461
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 462
    .line 463
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .line 465
    .line 466
    iput-boolean v10, v0, Lo/kj;->ͳ:Z

    .line 467
    .line 468
    :cond_f
    return-void

    .line 469
    :pswitch_7
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v0, Lo/ka;

    .line 472
    .line 473
    iget-object v0, v0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v0, Lo/oj;

    .line 476
    .line 477
    sget v2, Lo/oj;->Α:I

    .line 478
    .line 479
    const-string v2, "\u540e\u5907\u7bb1\u64cd\u4f5c\u5931\u8d25"

    .line 480
    .line 481
    invoke-virtual {v0, v2}, Lo/oj;->Δ(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :pswitch_8
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v0, Lo/we;

    .line 488
    .line 489
    iget-object v0, v0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v0, Lo/ff;

    .line 492
    .line 493
    invoke-virtual {v0}, Lo/ff;->ͳ()V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :pswitch_9
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v0, Lo/cf;

    .line 500
    .line 501
    sget-object v3, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 502
    .line 503
    if-eqz v0, :cond_10

    .line 504
    .line 505
    check-cast v0, Lo/ia;

    .line 506
    .line 507
    new-instance v3, Lo/td;

    .line 508
    .line 509
    invoke-direct {v3, v2, v0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 513
    .line 514
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 515
    .line 516
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 517
    .line 518
    .line 519
    :cond_10
    return-void

    .line 520
    :pswitch_a
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lo/y8;
    invoke-virtual {v0}, Lo/y8;->stabilityRecoveryCurrent()Z
    move-result v2
    if-nez v2, :session_recovery_alive
    return-void
    :session_recovery_alive

    .line 523
    .line 524
    iget-object v0, v0, Lo/y8;->Ͱ:Lo/a9;

    .line 525
    .line 526
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :pswitch_b
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v0, Lo/f4;

    .line 533
    .line 534
    invoke-virtual {v0}, Lo/f4;->ˏ()V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    :pswitch_c
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v0, Landroid/widget/ImageView;

    .line 541
    .line 542
    if-eqz v0, :cond_11

    .line 543
    .line 544
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    .line 546
    .line 547
    :cond_11
    return-void

    .line 548
    :pswitch_d
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v0, Lo/ma;

    .line 551
    .line 552
    iget-object v0, v0, Lo/ma;->Ͱ:Lcom/byd/launcher/NavBarService;

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->χ()V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :pswitch_e
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v0, Lo/nb;

    .line 561
    .line 562
    iget-object v0, v0, Lo/nb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 563
    .line 564
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->χ()V

    .line 565
    .line 566
    .line 567
    return-void

    .line 568
    :pswitch_f
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v0, Lo/gb;

    .line 571
    .line 572
    iget-object v0, v0, Lo/gb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 573
    .line 574
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 575
    .line 576
    if-eqz v0, :cond_12

    .line 577
    .line 578
    invoke-virtual {v0}, Lo/a9;->ͷ()V

    .line 579
    .line 580
    .line 581
    :cond_12
    return-void

    .line 582
    :pswitch_10
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v0, Lo/kb;

    .line 585
    .line 586
    sget v2, Lo/kb;->ˏ:I

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 592
    .line 593
    if-eqz v2, :cond_13

    .line 594
    .line 595
    iget-object v2, v0, Lo/kb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 596
    .line 597
    iget-object v2, v2, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 598
    .line 599
    if-nez v2, :cond_13

    .line 600
    .line 601
    const-string v2, "SCREEN_ON: nav bar lost, re-showing"

    .line 602
    .line 603
    invoke-static {v5, v2}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v2, v0, Lo/kb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 607
    .line 608
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->Ϟ()V

    .line 609
    .line 610
    .line 611
    :cond_13
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 612
    .line 613
    if-eqz v2, :cond_14

    .line 614
    .line 615
    iget-object v0, v0, Lo/kb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 616
    .line 617
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 618
    .line 619
    if-eqz v2, :cond_14

    .line 620
    .line 621
    const/4 v2, -0x1

    .line 622
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->ϣ(I)V

    .line 623
    .line 624
    .line 625
    :cond_14
    return-void

    .line 626
    :pswitch_11
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v0, Lo/cb;

    .line 629
    .line 630
    iget-object v2, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 631
    .line 632
    iput-object v7, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 633
    .line 634
    iget-boolean v2, v2, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 635
    .line 636
    if-eqz v2, :cond_15

    .line 637
    .line 638
    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 639
    .line 640
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ˏ(Lcom/byd/launcher/NavBarService;)V

    .line 641
    .line 642
    .line 643
    :cond_15
    return-void

    .line 644
    :pswitch_12
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 645
    .line 646
    move-object v13, v0

    .line 647
    check-cast v13, Lo/ia;

    .line 648
    .line 649
    iget-object v2, v13, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 650
    .line 651
    const-string v0, "screencap -p "

    .line 652
    .line 653
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 654
    .line 655
    const-string v8, "yyyyMMdd_HHmmss"

    .line 656
    .line 657
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 658
    .line 659
    invoke-direct {v4, v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 660
    .line 661
    .line 662
    new-instance v8, Ljava/util/Date;

    .line 663
    .line 664
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    const-string v8, "/sdcard/Screenshot_"

    .line 672
    .line 673
    const-string v11, ".png"

    .line 674
    .line 675
    invoke-static {v8, v4, v11}, Lo/v1;->ͳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v14

    .line 679
    :try_start_7
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 680
    .line 681
    .line 682
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    if-eqz v4, :cond_17

    .line 687
    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    const-wide/16 v11, 0x2710

    .line 701
    .line 702
    invoke-static {v0, v11, v12}, Lo/c0;->Ͱ(Ljava/lang/String;J)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    new-instance v0, Ljava/io/File;

    .line 706
    .line 707
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    if-eqz v0, :cond_16

    .line 715
    .line 716
    new-instance v0, Ljava/io/File;

    .line 717
    .line 718
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 722
    .line 723
    .line 724
    move-result-wide v11

    .line 725
    const-wide/16 v15, 0x0

    .line 726
    .line 727
    cmp-long v0, v11, v15

    .line 728
    .line 729
    if-lez v0, :cond_16

    .line 730
    .line 731
    move-object v4, v7

    .line 732
    move v8, v10

    .line 733
    goto :goto_8

    .line 734
    :cond_16
    const-string v0, "\u622a\u56fe\u6587\u4ef6\u672a\u751f\u6210"

    .line 735
    .line 736
    goto :goto_7

    .line 737
    :cond_17
    const-string v0, "ADB\u672a\u8fde\u63a5"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 738
    .line 739
    goto :goto_7

    .line 740
    :catch_2
    move-exception v0

    .line 741
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    new-instance v8, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v11, "screenshot CmdTools: "

    .line 748
    .line 749
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-static {v0, v8, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    move-object v0, v4

    .line 756
    :goto_7
    move-object v4, v0

    .line 757
    move v8, v9

    .line 758
    :goto_8
    if-nez v8, :cond_19

    .line 759
    .line 760
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    new-array v3, v3, [Ljava/lang/String;

    .line 765
    .line 766
    const-string v11, "/system/bin/screencap"

    .line 767
    .line 768
    aput-object v11, v3, v9

    .line 769
    .line 770
    const-string v9, "-p"

    .line 771
    .line 772
    aput-object v9, v3, v10

    .line 773
    .line 774
    aput-object v14, v3, v6

    .line 775
    .line 776
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-nez v0, :cond_18

    .line 785
    .line 786
    new-instance v0, Ljava/io/File;

    .line 787
    .line 788
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 792
    .line 793
    .line 794
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 795
    if-eqz v0, :cond_18

    .line 796
    .line 797
    goto :goto_9

    .line 798
    :cond_18
    move-object v7, v4

    .line 799
    move v10, v8

    .line 800
    :goto_9
    move-object v15, v7

    .line 801
    move/from16 v16, v10

    .line 802
    .line 803
    goto :goto_a

    .line 804
    :catch_3
    move-exception v0

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v6, "screenshot exec: "

    .line 808
    .line 809
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-static {v0, v3, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    :cond_19
    move-object v15, v4

    .line 816
    move/from16 v16, v8

    .line 817
    .line 818
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 819
    .line 820
    if-eqz v16, :cond_1a

    .line 821
    .line 822
    const-string v3, "Screenshot saved: "

    .line 823
    .line 824
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    new-instance v0, Landroid/content/Intent;

    .line 838
    .line 839
    new-instance v3, Ljava/io/File;

    .line 840
    .line 841
    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 849
    .line 850
    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 854
    .line 855
    .line 856
    goto :goto_b

    .line 857
    :cond_1a
    const-string v3, "Screenshot failed: "

    .line 858
    .line 859
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    :goto_b
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 873
    .line 874
    new-instance v2, Lo/ϕ;

    .line 875
    .line 876
    const/4 v12, 0x3

    .line 877
    move-object v11, v2

    .line 878
    invoke-direct/range {v11 .. v16}, Lo/ϕ;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_13
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 886
    .line 887
    check-cast v0, Lo/ia;

    .line 888
    .line 889
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 890
    .line 891
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 892
    .line 893
    invoke-virtual {v0}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 894
    .line 895
    .line 896
    return-void

    .line 897
    :pswitch_14
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 898
    .line 899
    check-cast v0, Lo/wa;
    invoke-virtual {v0}, Lo/wa;->stabilityCurrent()Z
    move-result v2
    if-nez v2, :home_callback_alive
    return-void
    :home_callback_alive


    .line 900
    .line 901
    iget-object v0, v0, Lo/wa;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 902
    .line 903
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 904
    .line 905
    if-eqz v2, :cond_1b

    .line 906
    .line 907
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Θ()V

    .line 908
    .line 909
    .line 910
    :cond_1b
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 911
    .line 912
    if-eqz v2, :cond_1d

    .line 913
    .line 914
    iget-object v2, v2, Lo/ff;->Γ:Lo/f4;

    .line 915
    .line 916
    if-eqz v2, :cond_1c

    .line 917
    .line 918
    iget-boolean v3, v2, Lo/f4;->Ͳ:Z

    .line 919
    .line 920
    if-eqz v3, :cond_1c

    .line 921
    .line 922
    move v3, v10

    .line 923
    goto :goto_c

    .line 924
    :cond_1c
    move v3, v9

    .line 925
    :goto_c
    if-eqz v3, :cond_1d

    .line 926
    .line 927
    if-eqz v2, :cond_1d

    .line 928
    .line 929
    iget-boolean v3, v2, Lo/f4;->Ͳ:Z

    .line 930
    .line 931
    if-eqz v3, :cond_1d

    .line 932
    .line 933
    invoke-virtual {v2}, Lo/f4;->ˋ()V

    .line 934
    .line 935
    .line 936
    :cond_1d
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 937
    .line 938
    if-eqz v0, :cond_1f

    .line 939
    .line 940
    iget-object v0, v0, Lo/oj;->Ώ:Lo/f4;

    .line 941
    .line 942
    if-eqz v0, :cond_1e

    .line 943
    .line 944
    iget-boolean v2, v0, Lo/f4;->Ͳ:Z

    .line 945
    .line 946
    if-eqz v2, :cond_1e

    .line 947
    .line 948
    move v9, v10

    .line 949
    :cond_1e
    if-eqz v9, :cond_1f

    .line 950
    .line 951
    if-eqz v0, :cond_1f

    .line 952
    .line 953
    iget-boolean v2, v0, Lo/f4;->Ͳ:Z

    .line 954
    .line 955
    if-eqz v2, :cond_1f

    .line 956
    .line 957
    invoke-virtual {v0}, Lo/f4;->ˋ()V

    .line 958
    .line 959
    .line 960
    :cond_1f
    return-void

    .line 961
    :pswitch_15
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast v0, Lo/ia;

    .line 964
    .line 965
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 966
    .line 967
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 968
    .line 969
    if-eqz v2, :cond_20

    .line 970
    .line 971
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 972
    .line 973
    invoke-virtual {v2, v0}, Lo/vl;->έ(Z)V

    .line 974
    .line 975
    .line 976
    :cond_20
    return-void

    .line 977
    :pswitch_16
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v0, Lo/ia;

    .line 980
    .line 981
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 982
    .line 983
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 984
    .line 985
    if-eqz v2, :cond_21

    .line 986
    .line 987
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->Ώ:Z

    .line 988
    .line 989
    invoke-virtual {v2, v0}, Lo/vl;->ή(Z)V

    .line 990
    .line 991
    .line 992
    :cond_21
    return-void

    .line 993
    :pswitch_17
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v0, Lo/ha;

    .line 996
    .line 997
    iget-object v2, v0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 998
    .line 999
    iget-object v2, v2, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 1000
    .line 1001
    if-eqz v2, :cond_22

    .line 1002
    .line 1003
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v2

    .line 1007
    if-nez v2, :cond_22

    .line 1008
    .line 1009
    iget-object v2, v0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 1010
    .line 1011
    iget-boolean v2, v2, Lcom/byd/launcher/NavBarService;->ΰ:Z

    .line 1012
    .line 1013
    if-nez v2, :cond_22

    .line 1014
    .line 1015
    const-string v2, "CoreService \u65ad\u5f00\uff0c\u5c1d\u8bd5\u81ea\u52a8\u91cd\u542f..."

    .line 1016
    .line 1017
    invoke-static {v5, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    iget-object v0, v0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 1021
    .line 1022
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    .line 1023
    .line 1024
    .line 1025
    :cond_22
    return-void

    .line 1026
    :pswitch_18
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 1027
    .line 1028
    move-object v2, v0

    .line 1029
    check-cast v2, Ljava/net/Socket;

    .line 1030
    .line 1031
    sget-boolean v0, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 1032
    .line 1033
    :try_start_9
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    new-array v5, v8, [B

    .line 1038
    .line 1039
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1044
    .line 1045
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    const-string v0, "Touch client connected"

    .line 1050
    .line 1051
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͱ()V

    .line 1055
    .line 1056
    .line 1057
    const-class v0, Landroid/view/InputEvent;

    .line 1058
    .line 1059
    const-string v7, "setDisplayId"

    .line 1060
    .line 1061
    new-array v11, v10, [Ljava/lang/Class;

    .line 1062
    .line 1063
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1064
    .line 1065
    aput-object v12, v11, v9

    .line 1066
    .line 1067
    invoke-virtual {v0, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v7

    .line 1071
    new-array v15, v10, [Landroid/view/MotionEvent$PointerProperties;

    .line 1072
    .line 1073
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    .line 1074
    .line 1075
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    aput-object v0, v15, v9

    .line 1079
    .line 1080
    iput v9, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1081
    .line 1082
    iput v10, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 1083
    .line 1084
    new-array v10, v10, [Landroid/view/MotionEvent$PointerCoords;

    .line 1085
    .line 1086
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 1087
    .line 1088
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1089
    .line 1090
    .line 1091
    aput-object v0, v10, v9

    .line 1092
    .line 1093
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1094
    .line 1095
    iput v11, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1096
    .line 1097
    const v11, 0x3c23d70a    # 0.01f

    .line 1098
    .line 1099
    .line 1100
    iput v11, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1101
    .line 1102
    :goto_d
    move v0, v9

    .line 1103
    :goto_e
    if-ge v0, v8, :cond_24

    .line 1104
    .line 1105
    rsub-int/lit8 v11, v0, 0x1c

    .line 1106
    .line 1107
    invoke-virtual {v3, v5, v0, v11}, Ljava/io/InputStream;->read([BII)I

    .line 1108
    .line 1109
    .line 1110
    move-result v11

    .line 1111
    if-gez v11, :cond_23

    .line 1112
    .line 1113
    goto/16 :goto_13

    .line 1114
    .line 1115
    :cond_23
    add-int/2addr v0, v11

    .line 1116
    goto :goto_e

    .line 1117
    :cond_24
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1121
    .line 1122
    .line 1123
    move-result v0

    .line 1124
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1125
    .line 1126
    .line 1127
    move-result v8

    .line 1128
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 1129
    .line 1130
    .line 1131
    move-result v11

    .line 1132
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 1133
    .line 1134
    .line 1135
    move-result v12

    .line 1136
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1137
    .line 1138
    .line 1139
    move-result-wide v13

    .line 1140
    move-object/from16 v27, v3

    .line 1141
    .line 1142
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1143
    .line 1144
    .line 1145
    move-result v3

    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1147
    .line 1148
    .line 1149
    move-result-wide v16

    .line 1150
    move-object/from16 v28, v5

    .line 1151
    .line 1152
    aget-object v5, v10, v9

    .line 1153
    .line 1154
    iput v11, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1155
    .line 1156
    iput v12, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1157
    .line 1158
    aget-object v5, v15, v9

    .line 1159
    .line 1160
    iput v3, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1161
    .line 1162
    const/4 v3, 0x1

    .line 1163
    const/16 v19, 0x0

    .line 1164
    .line 1165
    const/16 v20, 0x0

    .line 1166
    .line 1167
    const/high16 v21, 0x3f800000    # 1.0f

    .line 1168
    .line 1169
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1170
    .line 1171
    const/16 v23, 0x0

    .line 1172
    .line 1173
    const/16 v24, 0x0

    .line 1174
    .line 1175
    const/16 v25, 0x1002

    .line 1176
    .line 1177
    const/16 v26, 0x0

    .line 1178
    .line 1179
    move-wide v11, v13

    .line 1180
    move-wide/from16 v13, v16

    .line 1181
    .line 1182
    move-object v5, v15

    .line 1183
    move v15, v8

    .line 1184
    move/from16 v16, v3

    .line 1185
    .line 1186
    move-object/from16 v17, v5

    .line 1187
    .line 1188
    move-object/from16 v18, v10

    .line 1189
    .line 1190
    invoke-static/range {v11 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1194
    const/4 v11, 0x1

    .line 1195
    :try_start_a
    new-array v11, v11, [Ljava/lang/Object;

    .line 1196
    .line 1197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    aput-object v0, v11, v9

    .line 1202
    .line 1203
    invoke-virtual {v7, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    if-nez v8, :cond_25

    .line 1207
    .line 1208
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͽ()V

    .line 1209
    .line 1210
    .line 1211
    :cond_25
    sget-object v0, Lcom/byd/launcher/CoreService;->Ώ:Ljava/lang/reflect/Method;

    .line 1212
    .line 1213
    if-eqz v0, :cond_26

    .line 1214
    .line 1215
    sget-object v11, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    .line 1216
    .line 1217
    const/4 v12, 0x2

    .line 1218
    new-array v13, v12, [Ljava/lang/Object;

    .line 1219
    .line 1220
    aput-object v3, v13, v9

    .line 1221
    .line 1222
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v9

    .line 1226
    const/4 v12, 0x1

    .line 1227
    aput-object v9, v13, v12

    .line 1228
    .line 1229
    invoke-virtual {v0, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    goto :goto_f

    .line 1233
    :catch_4
    move-exception v0

    .line 1234
    goto :goto_10

    .line 1235
    :cond_26
    :goto_f
    const/4 v0, 0x1

    .line 1236
    const/4 v9, 0x3

    .line 1237
    if-eq v8, v0, :cond_27

    .line 1238
    .line 1239
    if-ne v8, v9, :cond_28

    .line 1240
    .line 1241
    :cond_27
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͽ()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1242
    .line 1243
    .line 1244
    goto :goto_11

    .line 1245
    :catchall_2
    move-exception v0

    .line 1246
    goto :goto_12

    .line 1247
    :goto_10
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v8

    .line 1251
    sget-wide v11, Lcom/byd/launcher/CoreService;->ˋ:J

    .line 1252
    .line 1253
    sub-long/2addr v8, v11

    .line 1254
    const-wide/16 v11, 0x3e8

    .line 1255
    .line 1256
    cmp-long v8, v8, v11

    .line 1257
    .line 1258
    if-lez v8, :cond_28

    .line 1259
    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v8

    .line 1264
    sput-wide v8, Lcom/byd/launcher/CoreService;->ˋ:J

    .line 1265
    .line 1266
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1269
    .line 1270
    .line 1271
    const-string v9, "Touch inject err: "

    .line 1272
    .line 1273
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v0

    .line 1287
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1288
    .line 1289
    .line 1290
    :cond_28
    :goto_11
    :try_start_c
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1291
    .line 1292
    .line 1293
    const/16 v8, 0x1c

    .line 1294
    .line 1295
    const/4 v9, 0x0

    .line 1296
    move-object v15, v5

    .line 1297
    move-object/from16 v3, v27

    .line 1298
    .line 1299
    move-object/from16 v5, v28

    .line 1300
    .line 1301
    goto/16 :goto_d

    .line 1302
    .line 1303
    :goto_12
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1304
    .line 1305
    .line 1306
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1307
    :catchall_3
    move-exception v0

    .line 1308
    goto :goto_14

    .line 1309
    :catch_5
    move-exception v0

    .line 1310
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1311
    .line 1312
    .line 1313
    :goto_13
    :try_start_e
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1314
    .line 1315
    .line 1316
    :catch_6
    return-void

    .line 1317
    :goto_14
    :try_start_f
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 1318
    .line 1319
    .line 1320
    :catch_7
    throw v0

    .line 1321
    :pswitch_19
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 1322
    .line 1323
    move-object v2, v0

    .line 1324
    check-cast v2, Ljava/lang/String;

    .line 1325
    .line 1326
    sget-boolean v0, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 1327
    .line 1328
    new-instance v0, Ljava/util/ArrayList;

    .line 1329
    .line 1330
    sget-object v3, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1331
    .line 1332
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v3

    .line 1336
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v3

    .line 1343
    :catchall_4
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v0

    .line 1347
    if-eqz v0, :cond_29

    .line 1348
    .line 1349
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v0

    .line 1353
    move-object v5, v0

    .line 1354
    check-cast v5, Lo/g1;

    .line 1355
    .line 1356
    :try_start_10
    invoke-virtual {v5, v2}, Lo/g1;->Ͱ(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1357
    .line 1358
    .line 1359
    goto :goto_15

    .line 1360
    :catchall_5
    move-exception v0

    .line 1361
    move-object v6, v0

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    const-string v7, "Error notifying client "

    .line 1365
    .line 1366
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    iget-object v7, v5, Lo/g1;->ͱ:Ljava/lang/String;

    .line 1370
    .line 1371
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    const-string v7, ": "

    .line 1375
    .line 1376
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v6

    .line 1383
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    invoke-static {v4, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    :try_start_11
    invoke-virtual {v5}, Lo/g1;->ˋ()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1394
    .line 1395
    .line 1396
    goto :goto_15

    .line 1397
    :cond_29
    return-void

    .line 1398
    :pswitch_1a
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 1399
    .line 1400
    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 1401
    .line 1402
    invoke-static {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->ˋ(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    .line 1403
    .line 1404
    .line 1405
    return-void

    .line 1406
    :goto_16
    iget-object v0, v1, Lo/td;->ͱ:Ljava/lang/Object;

    .line 1407
    .line 1408
    check-cast v0, Lcom/google/android/material/motion/MaterialBackOrchestrator;

    .line 1409
    .line 1410
    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->startListeningForBackCallbacksWithPriorityOverlay()V

    .line 1411
    .line 1412
    .line 1413
    return-void

    .line 1414
    nop

    .line 1415
    :pswitch_data_0
    .packed-switch 0x0
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
