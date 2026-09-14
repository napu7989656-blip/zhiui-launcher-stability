.class public final synthetic Lo/ˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic ˋ:Lo/ˏ;


# direct methods
.method public synthetic constructor <init>(Lo/ˏ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ˋ;->ˋ:Lo/ˏ;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lo/ˋ;->ˋ:Lo/ˏ;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v2, "onPreview"

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_14

    .line 18
    .line 19
    iget-object v2, v0, Lo/ˏ;->ʹ:Lo/v5;

    .line 20
    .line 21
    if-eqz v2, :cond_14

    .line 22
    .line 23
    if-eqz p3, :cond_14

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    aget-object v3, p3, v2

    .line 27
    .line 28
    move-object v5, v3

    .line 29
    check-cast v5, [B

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    aget-object v4, p3, v3

    .line 33
    .line 34
    check-cast v4, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v4, 0x3

    .line 41
    aget-object v7, p3, v4

    .line 42
    .line 43
    check-cast v7, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v8, 0x4

    .line 50
    aget-object v8, p3, v8

    .line 51
    .line 52
    check-cast v8, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    const/4 v8, 0x5

    .line 58
    aget-object v9, p3, v8

    .line 59
    .line 60
    check-cast v9, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    const/4 v9, 0x6

    .line 66
    aget-object v9, p3, v9

    .line 67
    .line 68
    check-cast v9, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    const/4 v9, 0x7

    .line 74
    aget-object v9, p3, v9

    .line 75
    .line 76
    check-cast v9, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v9

    .line 82
    const-wide v11, 0x38d7ea4c68000L

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    cmp-long v11, v9, v11

    .line 88
    .line 89
    if-lez v11, :cond_0

    .line 90
    .line 91
    const-wide/32 v11, 0xf4240

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-wide v11, 0xe8d4a51000L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    cmp-long v11, v9, v11

    .line 101
    .line 102
    if-lez v11, :cond_1

    .line 103
    .line 104
    const-wide v11, 0x9184e72a000L

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    cmp-long v11, v9, v11

    .line 110
    .line 111
    if-gez v11, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    const-wide/32 v11, 0x3b9aca00

    .line 115
    .line 116
    .line 117
    cmp-long v11, v9, v11

    .line 118
    .line 119
    if-lez v11, :cond_2

    .line 120
    .line 121
    const-wide/16 v11, 0x3e8

    .line 122
    .line 123
    :goto_0
    div-long/2addr v9, v11

    .line 124
    :cond_2
    :goto_1
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    int-to-long v9, v9

    .line 129
    iget-wide v11, v0, Lo/ˏ;->ͺ:J

    .line 130
    .line 131
    cmp-long v11, v9, v11

    .line 132
    .line 133
    const/4 v12, 0x0

    .line 134
    if-nez v11, :cond_3

    .line 135
    .line 136
    iget v9, v0, Lo/ˏ;->ͻ:I

    .line 137
    .line 138
    add-int/2addr v9, v2

    .line 139
    iput v9, v0, Lo/ˏ;->ͻ:I

    .line 140
    .line 141
    if-ne v9, v8, :cond_4

    .line 142
    .line 143
    array-length v8, v5

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    iput v12, v0, Lo/ˏ;->ͻ:I

    .line 146
    .line 147
    iput-wide v9, v0, Lo/ˏ;->ͺ:J

    .line 148
    .line 149
    :cond_4
    :goto_2
    iget-object v0, v0, Lo/ˏ;->ʹ:Lo/v5;

    .line 150
    .line 151
    iget-object v0, v0, Lo/v5;->ˏ:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lo/qi;

    .line 154
    .line 155
    iget-boolean v8, v0, Lo/qi;->Ͷ:Z

    .line 156
    .line 157
    if-eqz v8, :cond_14

    .line 158
    .line 159
    iget-boolean v8, v0, Lo/qi;->Ύ:Z

    .line 160
    .line 161
    if-nez v8, :cond_14

    .line 162
    .line 163
    iget-object v8, v0, Lo/qi;->ͺ:Landroid/widget/ImageView;

    .line 164
    .line 165
    if-nez v8, :cond_5

    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_5
    iget v8, v0, Lo/qi;->ͷ:I

    .line 170
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    iget-wide v13, v0, Lo/qi;->Β:J

    .line 176
    .line 177
    sub-long v13, v9, v13

    .line 178
    .line 179
    iget-wide v2, v0, Lo/qi;->Γ:J

    .line 180
    .line 181
    cmp-long v2, v13, v2

    .line 182
    .line 183
    if-gez v2, :cond_6

    .line 184
    .line 185
    goto/16 :goto_8

    .line 186
    .line 187
    :cond_6
    iput-wide v9, v0, Lo/qi;->Β:J

    .line 188
    .line 189
    iget-boolean v2, v0, Lo/qi;->Ͷ:Z

    .line 190
    .line 191
    if-eqz v2, :cond_14

    .line 192
    .line 193
    iget-boolean v2, v0, Lo/qi;->Ύ:Z

    .line 194
    .line 195
    if-nez v2, :cond_14

    .line 196
    .line 197
    if-eqz v5, :cond_14

    .line 198
    .line 199
    array-length v2, v5

    .line 200
    mul-int v3, v6, v7

    .line 201
    .line 202
    mul-int/2addr v3, v4

    .line 203
    const/4 v4, 0x2

    .line 204
    div-int/2addr v3, v4

    .line 205
    if-ge v2, v3, :cond_7

    .line 206
    .line 207
    goto/16 :goto_8

    .line 208
    .line 209
    :cond_7
    if-nez v8, :cond_8

    .line 210
    .line 211
    const/4 v9, 0x1

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    move v9, v4

    .line 214
    :goto_3
    :try_start_0
    sget-boolean v2, Lo/qi;->Ι:Z

    .line 215
    .line 216
    if-eqz v2, :cond_12

    .line 217
    .line 218
    iget-object v2, v0, Lo/qi;->Ε:[S

    .line 219
    .line 220
    const v3, 0x4b000

    .line 221
    .line 222
    .line 223
    if-eqz v2, :cond_9

    .line 224
    .line 225
    array-length v2, v2

    .line 226
    if-eq v2, v3, :cond_a

    .line 227
    .line 228
    :cond_9
    new-array v2, v3, [S

    .line 229
    .line 230
    iput-object v2, v0, Lo/qi;->Ε:[S

    .line 231
    .line 232
    :cond_a
    if-eqz v8, :cond_b

    .line 233
    .line 234
    const/4 v2, 0x1

    .line 235
    goto :goto_4

    .line 236
    :cond_b
    move v2, v12

    .line 237
    :goto_4
    if-eqz v2, :cond_c

    .line 238
    .line 239
    const/4 v8, 0x1

    .line 240
    goto :goto_5

    .line 241
    :cond_c
    move v8, v12

    .line 242
    :goto_5
    iget-object v2, v0, Lo/qi;->Ε:[S

    .line 243
    .line 244
    const/16 v10, 0x1e0

    .line 245
    .line 246
    const/16 v11, 0x280

    .line 247
    .line 248
    move-object v4, v5

    .line 249
    move v5, v6

    .line 250
    move v6, v7

    .line 251
    move v7, v9

    .line 252
    move-object v9, v2

    .line 253
    invoke-static/range {v4 .. v11}, Lcom/byd/launcher/camera/NativeYuvConverter;->nv21ToRgb565Rotated([BIIII[SII)V

    .line 254
    .line 255
    .line 256
    iget-object v2, v0, Lo/qi;->Έ:Ljava/lang/Object;

    .line 257
    .line 258
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    iget-boolean v3, v0, Lo/qi;->Ͷ:Z

    .line 260
    .line 261
    if-eqz v3, :cond_11

    .line 262
    .line 263
    iget-boolean v3, v0, Lo/qi;->Ύ:Z

    .line 264
    .line 265
    if-eqz v3, :cond_d

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_d
    iget-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 269
    .line 270
    const/16 v4, 0x280

    .line 271
    .line 272
    const/16 v5, 0x1e0

    .line 273
    .line 274
    if-eqz v3, :cond_e

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-nez v3, :cond_e

    .line 281
    .line 282
    iget-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 283
    .line 284
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-ne v3, v5, :cond_e

    .line 289
    .line 290
    iget-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 291
    .line 292
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-ne v3, v4, :cond_e

    .line 297
    .line 298
    iget-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 299
    .line 300
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 305
    .line 306
    if-eq v3, v6, :cond_10

    .line 307
    .line 308
    :cond_e
    :cond_f
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 324
    .line 325
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iput-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 330
    .line 331
    :cond_10
    iget-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 332
    .line 333
    iget-object v4, v0, Lo/qi;->Ε:[S

    .line 334
    .line 335
    invoke-static {v4}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 340
    .line 341
    .line 342
    iget-object v3, v0, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    .line 343
    .line 344
    iput-object v3, v0, Lo/qi;->Η:Landroid/graphics/Bitmap;

    .line 345
    .line 346
    monitor-exit v2

    .line 347
    goto :goto_7

    .line 348
    :cond_11
    :goto_6
    monitor-exit v2

    .line 349
    goto :goto_8

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    throw v0

    .line 353
    :cond_12
    move-object v4, v0

    .line 354
    invoke-virtual/range {v4 .. v9}, Lo/qi;->Ͷ([BIIII)V

    .line 355
    .line 356
    .line 357
    :goto_7
    iget-boolean v2, v0, Lo/qi;->Θ:Z

    .line 358
    .line 359
    if-eqz v2, :cond_13

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_13
    const/4 v2, 0x1

    .line 363
    iput-boolean v2, v0, Lo/qi;->Θ:Z

    .line 364
    .line 365
    iget-object v2, v0, Lo/qi;->Ͱ:Landroid/os/Handler;

    .line 366
    .line 367
    new-instance v3, Lo/ki;

    .line 368
    .line 369
    invoke-direct {v3, v0, v12}, Lo/ki;-><init>(Lo/qi;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 373
    .line 374
    .line 375
    :catch_0
    :cond_14
    :goto_8
    const/4 v0, 0x0

    .line 376
    return-object v0
.end method
