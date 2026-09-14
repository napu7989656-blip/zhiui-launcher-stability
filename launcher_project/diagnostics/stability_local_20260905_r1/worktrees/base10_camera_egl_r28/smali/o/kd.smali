.class public final Lo/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic ˋ:Lo/nd;


# direct methods
.method public constructor <init>(Lo/nd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/kd;->ˋ:Lo/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/kd;->ˋ:Lo/nd;

    iget-object p2, p1, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    if-eqz p2, :cond_0

    const/16 v0, 0x64

    if-lt p3, v0, :cond_0

    if-lt p4, v0, :cond_0

    invoke-virtual {p1}, Lo/nd;->ͱ()I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    iput p3, p1, Lo/nd;->ε:I

    iput p4, p1, Lo/nd;->ζ:I

    const/4 p2, 0x0

    iput p2, p1, Lo/nd;->γ:I

    iput p2, p1, Lo/nd;->δ:I

    :cond_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 17

    .line 1
    const-string v0, "surfaceCreated -> reattach Surface to existing VD "

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v9

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object/from16 v10, p0

    .line 16
    .line 17
    iget-object v11, v10, Lo/kd;->ˋ:Lo/nd;

    .line 18
    .line 19
    iget-object v2, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    const-string v13, "PiPManager"

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x64

    .line 34
    .line 35
    if-lt v9, v2, :cond_0

    .line 36
    .line 37
    if-lt v1, v2, :cond_0

    .line 38
    .line 39
    iget-object v2, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 40
    .line 41
    invoke-virtual {v11}, Lo/nd;->ͱ()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v9, v1, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iput v9, v11, Lo/nd;->ε:I

    .line 49
    .line 50
    iput v1, v11, Lo/nd;->ζ:I

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "x"

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "surfaceCreated reattach failed, fallback to recreate: "

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2, v13}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    move-object v2, v0

    .line 97
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    :goto_0
    iput-object v12, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 101
    .line 102
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-virtual {v11}, Lo/nd;->ͱ()I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const/16 v2, 0x1e

    .line 113
    .line 114
    if-lt v0, v2, :cond_2

    .line 115
    .line 116
    :try_start_2
    invoke-static {v14}, Lo/Κ;->Ό(Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    .line 119
    :catch_1
    :cond_2
    const/16 v8, 0x1c0b

    .line 120
    .line 121
    :try_start_3
    iget-object v2, v11, Lo/nd;->Ͱ:Landroid/hardware/display/DisplayManager;

    .line 122
    .line 123
    const-string v3, "BYD-PiP-Map"

    .line 124
    .line 125
    move v4, v9

    .line 126
    move v5, v1

    .line 127
    move v6, v15

    .line 128
    move-object v7, v14

    .line 129
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    const-string v0, "VD created via Try1 (full flags incl. OWN_DISPLAY_GROUP)"

    .line 138
    .line 139
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v9, v1}, Lo/nd;->ͻ(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :catch_2
    move-exception v0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v3, "VD creation with full flags failed: "

    .line 151
    .line 152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    const/16 v8, 0xc0b

    .line 159
    .line 160
    :try_start_4
    iget-object v2, v11, Lo/nd;->Ͱ:Landroid/hardware/display/DisplayManager;

    .line 161
    .line 162
    const-string v3, "BYD-PiP-Map"

    .line 163
    .line 164
    move v4, v9

    .line 165
    move v5, v1

    .line 166
    move v6, v15

    .line 167
    move-object v7, v14

    .line 168
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 173
    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    const-string v0, "VD created via Try1.5 (no ALWAYS_UNLOCKED)"

    .line 177
    .line 178
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v9, v1}, Lo/nd;->ͻ(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :catch_3
    move-exception v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "VD creation Try1.5 failed: "

    .line 190
    .line 191
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    const/16 v8, 0x80b

    .line 198
    .line 199
    :try_start_5
    iget-object v2, v11, Lo/nd;->Ͱ:Landroid/hardware/display/DisplayManager;

    .line 200
    .line 201
    const-string v3, "BYD-PiP-Map"

    .line 202
    .line 203
    move v4, v9

    .line 204
    move v5, v1

    .line 205
    move v6, v15

    .line 206
    move-object v7, v14

    .line 207
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 212
    .line 213
    if-eqz v0, :cond_5

    .line 214
    .line 215
    const-string v0, "VD created via Try1.7 (no TRUSTED)"

    .line 216
    .line 217
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11, v9, v1}, Lo/nd;->ͻ(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :catch_4
    move-exception v0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v3, "VD creation Try1.7 failed: "

    .line 229
    .line 230
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_5
    const/16 v8, 0x80a

    .line 237
    .line 238
    :try_start_6
    iget-object v2, v11, Lo/nd;->Ͱ:Landroid/hardware/display/DisplayManager;

    .line 239
    .line 240
    const-string v3, "BYD-PiP-Map"

    .line 241
    .line 242
    move v4, v9

    .line 243
    move v5, v1

    .line 244
    move v6, v15

    .line 245
    move-object v7, v14

    .line 246
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 251
    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    const-string v0, "VD created via Try1.8 (private + OWN_DISPLAY_GROUP)"

    .line 255
    .line 256
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11, v9, v1}, Lo/nd;->ͻ(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :catch_5
    move-exception v0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v3, "VD creation Try1.8 failed: "

    .line 268
    .line 269
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_6
    const/16 v8, 0xa

    .line 276
    .line 277
    :try_start_7
    iget-object v2, v11, Lo/nd;->Ͱ:Landroid/hardware/display/DisplayManager;

    .line 278
    .line 279
    const-string v3, "BYD-PiP-Map"

    .line 280
    .line 281
    move v4, v9

    .line 282
    move v5, v1

    .line 283
    move v6, v15

    .line 284
    move-object v7, v14

    .line 285
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iput-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 290
    .line 291
    if-eqz v0, :cond_7

    .line 292
    .line 293
    const-string v0, "VD created via Try2 WITHOUT OWN_DISPLAY_GROUP \u2014 PiP may be relocated to default display on tap"

    .line 294
    .line 295
    invoke-static {v13, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v11, v9, v1}, Lo/nd;->ͻ(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :catch_6
    move-exception v0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v3, "VD creation with PRESENTATION flag failed: "

    .line 306
    .line 307
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    :try_start_8
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 314
    .line 315
    const-string v2, "createVirtualDisplay"

    .line 316
    .line 317
    const/4 v3, 0x5

    .line 318
    new-array v4, v3, [Ljava/lang/Class;

    .line 319
    .line 320
    const-class v5, Ljava/lang/String;

    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    aput-object v5, v4, v6

    .line 324
    .line 325
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    const/4 v7, 0x1

    .line 328
    aput-object v5, v4, v7

    .line 329
    .line 330
    const/4 v8, 0x2

    .line 331
    aput-object v5, v4, v8

    .line 332
    .line 333
    const/4 v15, 0x3

    .line 334
    aput-object v5, v4, v15

    .line 335
    .line 336
    const-class v5, Landroid/view/Surface;

    .line 337
    .line 338
    const/16 v16, 0x4

    .line 339
    .line 340
    aput-object v5, v4, v16

    .line 341
    .line 342
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-array v2, v3, [Ljava/lang/Object;

    .line 347
    .line 348
    const-string v3, "BYD-PiP-Map"

    .line 349
    .line 350
    aput-object v3, v2, v6

    .line 351
    .line 352
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    aput-object v3, v2, v7

    .line 357
    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    aput-object v3, v2, v8

    .line 363
    .line 364
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    aput-object v3, v2, v15

    .line 369
    .line 370
    aput-object v14, v2, v16

    .line 371
    .line 372
    invoke-virtual {v0, v12, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Landroid/hardware/display/VirtualDisplay;

    .line 377
    .line 378
    iput-object v0, v11, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 379
    .line 380
    if-eqz v0, :cond_8

    .line 381
    .line 382
    invoke-virtual {v11, v9, v1}, Lo/nd;->ͻ(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :catch_7
    move-exception v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v2, "VD creation via reflection failed: "

    .line 390
    .line 391
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v0, v1, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_8
    const-string v0, "All VD creation methods failed"

    .line 398
    .line 399
    invoke-static {v13, v0, v12}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    :goto_1
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const-string p1, "PiPManager"

    .line 2
    .line 3
    iget-object v0, p0, Lo/kd;->ˋ:Lo/nd;

    .line 4
    .line 5
    iget-boolean v0, v0, Lo/nd;->Ω:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lo/kd;->ˋ:Lo/nd;

    .line 11
    .line 12
    iget-object v0, v0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "surfaceDestroyed -> detach Surface (VD kept alive)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "surfaceDestroyed setSurface(null) failed: "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2, p1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lo/kd;->ˋ:Lo/nd;

    .line 37
    .line 38
    iget-object v0, p1, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    :goto_0
    iput-object v1, p1, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 51
    .line 52
    :cond_1
    return-void
.end method
