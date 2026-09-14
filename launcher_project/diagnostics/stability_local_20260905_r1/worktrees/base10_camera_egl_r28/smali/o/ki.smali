.class public final synthetic Lo/ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/qi;


# direct methods
.method public synthetic constructor <init>(Lo/qi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ki;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ki;->ͱ:Lo/qi;

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
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo/ki;->Ͱ:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_8

    .line 13
    .line 14
    :pswitch_0
    iget-object v3, v1, Lo/ki;->ͱ:Lo/qi;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v4, "TurnSignalCamera"

    .line 20
    .line 21
    const-string v0, "Failed to open camera "

    .line 22
    .line 23
    :try_start_0
    iget-object v6, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 24
    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    new-instance v6, Lo/ˏ;

    .line 28
    .line 29
    iget-object v7, v3, Lo/qi;->ˋ:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v6, v7}, Lo/ˏ;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v6, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 35
    .line 36
    iget-boolean v6, v6, Lo/ˏ;->ͱ:Z

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    const-string v0, "AVMCamera not available"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-boolean v6, v3, Lo/qi;->ͳ:Z

    .line 44
    .line 45
    if-nez v6, :cond_6

    .line 46
    .line 47
    invoke-virtual {v3}, Lo/qi;->ͳ()V

    .line 48
    .line 49
    .line 50
    iget-object v6, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 51
    .line 52
    iget v7, v6, Lo/ˏ;->Ͳ:I

    .line 53
    .line 54
    if-ltz v7, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v7, v6, Lo/ˏ;->ͳ:I

    .line 58
    .line 59
    if-ltz v7, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v7, v5

    .line 63
    :goto_0
    invoke-virtual {v6, v7}, Lo/ˏ;->Ͱ(I)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_3

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_1
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_3
    iget-object v0, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 87
    .line 88
    invoke-virtual {v0}, Lo/ˏ;->Ͳ()V

    .line 89
    .line 90
    .line 91
    iget-object v0, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 92
    .line 93
    iget-object v6, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    if-nez v6, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :try_start_1
    iget-object v6, v0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 99
    .line 100
    const-string v7, "setCameraFps"

    .line 101
    .line 102
    new-array v8, v2, [Ljava/lang/Class;

    .line 103
    .line 104
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v9, v8, v5

    .line 107
    .line 108
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iget-object v0, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    .line 113
    .line 114
    new-array v7, v2, [Ljava/lang/Object;

    .line 115
    .line 116
    const/16 v8, 0x19

    .line 117
    .line 118
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    aput-object v8, v7, v5

    .line 123
    .line 124
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    :catchall_0
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lo/qi;->Ͳ()V

    .line 134
    .line 135
    .line 136
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 137
    .line 138
    invoke-direct {v0, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 139
    .line 140
    .line 141
    iput-object v0, v3, Lo/qi;->Ή:Landroid/graphics/SurfaceTexture;

    .line 142
    .line 143
    new-instance v6, Lo/mi;

    .line 144
    .line 145
    invoke-direct {v6}, Lo/mi;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v6}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Landroid/view/Surface;

    .line 152
    .line 153
    iget-object v6, v3, Lo/qi;->Ή:Landroid/graphics/SurfaceTexture;

    .line 154
    .line 155
    invoke-direct {v0, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, v3, Lo/qi;->Ί:Landroid/view/Surface;

    .line 159
    .line 160
    iget-object v6, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 161
    .line 162
    invoke-virtual {v6, v0}, Lo/ˏ;->ͳ(Landroid/view/Surface;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 166
    .line 167
    new-instance v6, Lo/v5;

    .line 168
    .line 169
    invoke-direct {v6, v2, v3}, Lo/v5;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v6}, Lo/ˏ;->ͱ(Lo/v5;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 176
    .line 177
    invoke-virtual {v0}, Lo/ˏ;->ˋ()V

    .line 178
    .line 179
    .line 180
    const-string v0, "Using native NEON CPU path (GPU unavailable)"

    .line 181
    .line 182
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-wide/16 v6, 0x0

    .line 186
    .line 187
    iput-wide v6, v3, Lo/qi;->Β:J

    .line 188
    .line 189
    const-wide/16 v6, 0x10

    .line 190
    .line 191
    iput-wide v6, v3, Lo/qi;->Γ:J

    .line 192
    .line 193
    iget-object v0, v3, Lo/qi;->Ͳ:Lo/ˏ;

    .line 194
    .line 195
    iget-object v6, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .line 197
    if-nez v6, :cond_5

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_5
    :try_start_3
    iget-object v6, v0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 201
    .line 202
    const-string v7, "startPreview"

    .line 203
    .line 204
    new-array v8, v5, [Ljava/lang/Class;

    .line 205
    .line 206
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    iget-object v0, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    .line 211
    .line 212
    new-array v5, v5, [Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v6, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :catchall_1
    move-exception v0

    .line 225
    :try_start_4
    const-string v5, "AVMCameraHelper"

    .line 226
    .line 227
    const-string v6, "startPreview failed"

    .line 228
    .line 229
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .line 231
    .line 232
    :goto_3
    iput-boolean v2, v3, Lo/qi;->ͳ:Z

    .line 233
    .line 234
    const-string v0, "Camera started"

    .line 235
    .line 236
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v3, "startCamera error: "

    .line 244
    .line 245
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v2, v4}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_6
    :goto_4
    return-void

    .line 252
    :pswitch_1
    iget-object v0, v1, Lo/ki;->ͱ:Lo/qi;

    .line 253
    .line 254
    iput-object v3, v0, Lo/qi;->Ό:Lo/ki;

    .line 255
    .line 256
    invoke-virtual {v0}, Lo/qi;->Ͱ()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lo/qi;->ˋ()V

    .line 260
    .line 261
    .line 262
    iput v4, v0, Lo/qi;->ͷ:I

    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_2
    iget-object v2, v1, Lo/ki;->ͱ:Lo/qi;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    :try_start_5
    iget-object v0, v2, Lo/qi;->Ͳ:Lo/ˏ;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 271
    .line 272
    if-eqz v0, :cond_9

    .line 273
    .line 274
    :try_start_6
    invoke-virtual {v0, v3}, Lo/ˏ;->ͱ(Lo/v5;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 275
    .line 276
    .line 277
    :catch_1
    :try_start_7
    iget-object v0, v2, Lo/qi;->Ͳ:Lo/ˏ;

    .line 278
    .line 279
    iget-object v4, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 280
    .line 281
    if-nez v4, :cond_7

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_7
    :try_start_8
    iget-object v4, v0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 285
    .line 286
    const-string v6, "stopPreview"

    .line 287
    .line 288
    new-array v7, v5, [Ljava/lang/Class;

    .line 289
    .line 290
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    iget-object v0, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    .line 295
    .line 296
    new-array v6, v5, [Ljava/lang/Object;

    .line 297
    .line 298
    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Ljava/lang/Boolean;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :catchall_2
    move-exception v0

    .line 309
    :try_start_9
    const-string v4, "AVMCameraHelper"

    .line 310
    .line 311
    const-string v6, "stopPreview failed"

    .line 312
    .line 313
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .line 315
    .line 316
    :goto_5
    iget-object v0, v2, Lo/qi;->Ͳ:Lo/ˏ;

    .line 317
    .line 318
    iget-object v4, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 319
    .line 320
    if-nez v4, :cond_8

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_8
    :try_start_a
    iget-object v4, v0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 324
    .line 325
    const-string v6, "close"

    .line 326
    .line 327
    new-array v7, v5, [Ljava/lang/Class;

    .line 328
    .line 329
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    iget-object v6, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    .line 334
    .line 335
    new-array v5, v5, [Ljava/lang/Object;

    .line 336
    .line 337
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 338
    .line 339
    .line 340
    :catchall_3
    :try_start_b
    iput-object v3, v0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    .line 341
    .line 342
    iput-object v3, v0, Lo/ˏ;->Ͷ:Ljava/lang/Object;

    .line 343
    .line 344
    :cond_9
    :goto_6
    iget-object v0, v2, Lo/qi;->Ί:Landroid/view/Surface;

    .line 345
    .line 346
    if-eqz v0, :cond_a

    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 349
    .line 350
    .line 351
    iput-object v3, v2, Lo/qi;->Ί:Landroid/view/Surface;

    .line 352
    .line 353
    :cond_a
    iget-object v0, v2, Lo/qi;->Ή:Landroid/graphics/SurfaceTexture;

    .line 354
    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, v2, Lo/qi;->Ή:Landroid/graphics/SurfaceTexture;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 363
    .line 364
    .line 365
    iput-object v3, v2, Lo/qi;->Ή:Landroid/graphics/SurfaceTexture;

    .line 366
    .line 367
    :cond_b
    invoke-virtual {v2}, Lo/qi;->ͺ()V

    .line 368
    .line 369
    .line 370
    iget-object v4, v2, Lo/qi;->Έ:Ljava/lang/Object;

    .line 371
    .line 372
    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 373
    :try_start_c
    iput-object v3, v2, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    :cond_c
    iput-object v3, v2, Lo/qi;->Η:Landroid/graphics/Bitmap;

    .line 391
    .line 392
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 393
    :try_start_d
    iput-object v3, v2, Lo/qi;->Δ:[I

    .line 394
    .line 395
    const-string v0, "TurnSignalCamera"

    .line 396
    .line 397
    const-string v2, "Camera closed and resources released"

    .line 398
    .line 399
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :catchall_4
    move-exception v0

    .line 404
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 405
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 406
    :catch_2
    move-exception v0

    .line 407
    const-string v2, "TurnSignalCamera"

    .line 408
    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v4, "closeCamera error: "

    .line 412
    .line 413
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v0, v3, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :goto_7
    return-void

    .line 420
    :pswitch_3
    iget-object v0, v1, Lo/ki;->ͱ:Lo/qi;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    const-string v2, "TurnSignalCamera"

    .line 426
    .line 427
    const-string v5, "AVC entered foreground, dismissing turn signal overlay"

    .line 428
    .line 429
    invoke-static {v2, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-object v2, v0, Lo/qi;->Ό:Lo/ki;

    .line 433
    .line 434
    if-eqz v2, :cond_d

    .line 435
    .line 436
    iget-object v5, v0, Lo/qi;->Ͱ:Landroid/os/Handler;

    .line 437
    .line 438
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    .line 440
    .line 441
    iput-object v3, v0, Lo/qi;->Ό:Lo/ki;

    .line 442
    .line 443
    :cond_d
    invoke-virtual {v0}, Lo/qi;->Ͱ()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Lo/qi;->ˋ()V

    .line 447
    .line 448
    .line 449
    iput v4, v0, Lo/qi;->ͷ:I

    .line 450
    .line 451
    return-void

    .line 452
    :pswitch_4
    iget-object v0, v1, Lo/ki;->ͱ:Lo/qi;

    .line 453
    .line 454
    iput-boolean v5, v0, Lo/qi;->Θ:Z

    .line 455
    .line 456
    iget-object v2, v0, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 457
    .line 458
    if-eqz v2, :cond_e

    .line 459
    .line 460
    iget-boolean v2, v0, Lo/qi;->Ͷ:Z

    .line 461
    .line 462
    if-eqz v2, :cond_e

    .line 463
    .line 464
    iget-boolean v2, v0, Lo/qi;->Ύ:Z

    .line 465
    .line 466
    if-nez v2, :cond_e

    .line 467
    .line 468
    iget-object v2, v0, Lo/qi;->Η:Landroid/graphics/Bitmap;

    .line 469
    .line 470
    if-eqz v2, :cond_e

    .line 471
    .line 472
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-nez v3, :cond_e

    .line 477
    .line 478
    iget-object v0, v0, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    .line 482
    .line 483
    :cond_e
    return-void

    .line 484
    :goto_8
    iget-object v0, v1, Lo/ki;->ͱ:Lo/qi;

    .line 485
    .line 486
    iget-object v3, v0, Lo/qi;->ˋ:Landroid/content/Context;

    .line 487
    .line 488
    :try_start_10
    new-instance v6, Landroid/widget/FrameLayout;

    .line 489
    .line 490
    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 491
    .line 492
    .line 493
    const/high16 v7, -0x80000000

    .line 494
    .line 495
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 496
    .line 497
    .line 498
    new-instance v8, Landroid/view/View;

    .line 499
    .line 500
    invoke-direct {v8, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 501
    .line 502
    .line 503
    const v9, 0x6600aaff

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 507
    .line 508
    .line 509
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .line 511
    iget v10, v0, Lo/qi;->ͻ:I

    .line 512
    .line 513
    invoke-virtual {v0, v10}, Lo/qi;->ͱ(I)I

    .line 514
    .line 515
    .line 516
    move-result v10

    .line 517
    iget v11, v0, Lo/qi;->ͼ:I

    .line 518
    .line 519
    invoke-virtual {v0, v11}, Lo/qi;->ͱ(I)I

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 524
    .line 525
    .line 526
    iget v10, v0, Lo/qi;->ͽ:I

    .line 527
    .line 528
    invoke-virtual {v0, v10}, Lo/qi;->ͱ(I)I

    .line 529
    .line 530
    .line 531
    move-result v10

    .line 532
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 533
    .line 534
    iget v10, v0, Lo/qi;->Ά:I

    .line 535
    .line 536
    invoke-virtual {v0, v10}, Lo/qi;->ͱ(I)I

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 541
    .line 542
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    .line 544
    .line 545
    new-instance v9, Landroid/widget/TextView;

    .line 546
    .line 547
    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    .line 552
    .line 553
    const/high16 v10, 0x41600000    # 14.0f

    .line 554
    .line 555
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 559
    .line 560
    .line 561
    const/16 v7, 0x8

    .line 562
    .line 563
    invoke-virtual {v0, v7}, Lo/qi;->ͱ(I)I

    .line 564
    .line 565
    .line 566
    move-result v10

    .line 567
    const/4 v11, 0x4

    .line 568
    invoke-virtual {v0, v11}, Lo/qi;->ͱ(I)I

    .line 569
    .line 570
    .line 571
    move-result v12

    .line 572
    invoke-virtual {v0, v7}, Lo/qi;->ͱ(I)I

    .line 573
    .line 574
    .line 575
    move-result v13

    .line 576
    invoke-virtual {v0, v11}, Lo/qi;->ͱ(I)I

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    invoke-virtual {v9, v10, v12, v13, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 581
    .line 582
    .line 583
    iget v10, v0, Lo/qi;->ͻ:I

    .line 584
    .line 585
    iget v11, v0, Lo/qi;->ͼ:I

    .line 586
    .line 587
    invoke-static {v9, v10, v11}, Lo/qi;->ͻ(Landroid/widget/TextView;II)V

    .line 588
    .line 589
    .line 590
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 591
    .line 592
    const/4 v11, -0x2

    .line 593
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 594
    .line 595
    .line 596
    const/16 v11, 0x31

    .line 597
    .line 598
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 599
    .line 600
    invoke-virtual {v0, v7}, Lo/qi;->ͱ(I)I

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 605
    .line 606
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    .line 608
    .line 609
    new-instance v7, Landroid/widget/LinearLayout;

    .line 610
    .line 611
    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 615
    .line 616
    .line 617
    const/16 v3, 0x11

    .line 618
    .line 619
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 620
    .line 621
    .line 622
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 623
    .line 624
    const/16 v10, 0x38

    .line 625
    .line 626
    invoke-virtual {v0, v10}, Lo/qi;->ͱ(I)I

    .line 627
    .line 628
    .line 629
    move-result v10

    .line 630
    invoke-direct {v3, v4, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 631
    .line 632
    .line 633
    const/16 v4, 0x50

    .line 634
    .line 635
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 636
    .line 637
    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    .line 639
    .line 640
    const v3, -0x33e5e5e6    # -4.0396904E7f

    .line 641
    .line 642
    .line 643
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 644
    .line 645
    .line 646
    const-string v3, "\u7f29\u5c0f"

    .line 647
    .line 648
    invoke-virtual {v0, v3}, Lo/qi;->ˏ(Ljava/lang/String;)Landroid/widget/TextView;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    const-string v4, "\u653e\u5927"

    .line 653
    .line 654
    invoke-virtual {v0, v4}, Lo/qi;->ˏ(Ljava/lang/String;)Landroid/widget/TextView;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    const-string v10, "\u4fdd\u5b58"

    .line 659
    .line 660
    invoke-virtual {v0, v10}, Lo/qi;->ˏ(Ljava/lang/String;)Landroid/widget/TextView;

    .line 661
    .line 662
    .line 663
    move-result-object v10

    .line 664
    const-string v11, "\u53d6\u6d88"

    .line 665
    .line 666
    invoke-virtual {v0, v11}, Lo/qi;->ˏ(Ljava/lang/String;)Landroid/widget/TextView;

    .line 667
    .line 668
    .line 669
    move-result-object v11

    .line 670
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 689
    .line 690
    .line 691
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 692
    .line 693
    const/4 v13, -0x1

    .line 694
    const/4 v14, -0x1

    .line 695
    const/16 v15, 0x7f0

    .line 696
    .line 697
    const/16 v16, 0x120

    .line 698
    .line 699
    const/16 v17, -0x3

    .line 700
    .line 701
    move-object v12, v7

    .line 702
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 703
    .line 704
    .line 705
    const v12, 0x800033

    .line 706
    .line 707
    .line 708
    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 709
    .line 710
    iget-object v12, v0, Lo/qi;->ˏ:Landroid/view/WindowManager;

    .line 711
    .line 712
    invoke-interface {v12, v6, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    .line 714
    .line 715
    const/4 v7, 0x2

    .line 716
    new-array v12, v7, [I

    .line 717
    .line 718
    new-array v7, v7, [I

    .line 719
    .line 720
    new-instance v13, Lo/ni;

    .line 721
    .line 722
    invoke-direct {v13, v12, v7}, Lo/ni;-><init>([I[I)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v8, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 726
    .line 727
    .line 728
    new-instance v7, Lo/oi;

    .line 729
    .line 730
    invoke-direct {v7, v0, v8, v9, v5}, Lo/oi;-><init>(Lo/qi;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    .line 735
    .line 736
    new-instance v3, Lo/oi;

    .line 737
    .line 738
    invoke-direct {v3, v0, v8, v9, v2}, Lo/oi;-><init>(Lo/qi;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    .line 743
    .line 744
    new-instance v2, Lo/pi;

    .line 745
    .line 746
    invoke-direct {v2, v0, v8, v5, v6}, Lo/pi;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    .line 751
    .line 752
    new-instance v2, Lo/Ϙ;

    .line 753
    .line 754
    const/4 v3, 0x3

    .line 755
    invoke-direct {v2, v3, v0, v6}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 759
    .line 760
    .line 761
    goto :goto_9

    .line 762
    :catch_3
    move-exception v0

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    const-string v3, "showWindowAdjustMode error: "

    .line 766
    .line 767
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const-string v3, "TurnSignalCamera"

    .line 771
    .line 772
    invoke-static {v0, v2, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    :goto_9
    return-void

    .line 776
    nop

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
