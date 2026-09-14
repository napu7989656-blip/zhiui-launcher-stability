.class public final synthetic Lo/sj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilitySocRead:Lcom/byd/launcher/stability/SocRead;
.field public final synthetic ʹ:Ljava/lang/Object;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    .line 1
    iput p5, p0, Lo/sj;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x3
    if-ne p5, v0, :soc_capture_done
    move-object v0, p1
    check-cast v0, Lo/ff;
    new-instance v1, Lcom/byd/launcher/stability/SocRead;
    invoke-direct {v1, v0}, Lcom/byd/launcher/stability/SocRead;-><init>(Lo/ff;)V
    iput-object v1, p0, Lo/sj;->stabilitySocRead:Lcom/byd/launcher/stability/SocRead;
    :soc_capture_done
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/sj;->ͳ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/sj;->Ͱ:I

    .line 2
    .line 3
    const-string v1, " - "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lo/q3;

    .line 14
    .line 15
    iget-object v1, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v4, v0, Lo/q3;->ˏ:Ljava/io/PrintWriter;

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lo/q3;->ͳ()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v4, v0, Lo/q3;->ˏ:Ljava/io/PrintWriter;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Lo/q3;->Ͷ()V

    .line 43
    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v5, v0, Lo/q3;->ͱ:Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    new-instance v6, Ljava/util/Date;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, " "

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "/"

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ": "

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v0, v0, Lo/q3;->ˏ:Ljava/io/PrintWriter;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "write failed: "

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "FileLogger"

    .line 118
    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :goto_0
    return-void

    .line 123
    :pswitch_1
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lo/hd;

    .line 126
    .line 127
    iget-object v2, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Ljava/lang/String;

    .line 130
    .line 131
    iget-object v3, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, Ljava/lang/String;

    .line 134
    .line 135
    iget-object v4, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v4, Landroid/graphics/Bitmap;

    .line 138
    .line 139
    iget-object v0, v0, Lo/hd;->ˋ:Lo/nd;

    .line 140
    .line 141
    iget-object v5, v0, Lo/nd;->ͽ:Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v5, :cond_4

    .line 144
    .line 145
    if-eqz v2, :cond_2

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const-string v2, "\u672a\u5728\u64ad\u653e"

    .line 149
    .line 150
    :goto_1
    if-eqz v3, :cond_3

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_3

    .line 157
    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :cond_3
    iget-object v1, v0, Lo/nd;->ͽ:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    iget-object v0, v0, Lo/nd;->Ύ:Landroid/widget/ImageView;

    .line 182
    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    if-eqz v4, :cond_5

    .line 186
    .line 187
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    return-void

    .line 191
    :pswitch_2
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Lo/ff;

    .line 194
    .line 195
    iget-object v1, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, Ljava/util/List;

    .line 198
    .line 199
    iget-object v3, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v3, [Z

    .line 202
    .line 203
    iget-object v4, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v4, [Ljava/lang/String;

    .line 206
    .line 207
    sget-object v5, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-ge v2, v5, :cond_6

    .line 217
    .line 218
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lo/df;

    .line 223
    .line 224
    aget-boolean v6, v3, v2

    .line 225
    .line 226
    aget-object v7, v4, v2

    .line 227
    .line 228
    invoke-virtual {v0, v5, v6, v7}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    add-int/lit8 v2, v2, 0x1

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_6
    return-void

    .line 235
    :pswitch_3
    iget-object v0, p0, Lo/sj;->stabilitySocRead:Lcom/byd/launcher/stability/SocRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/SocRead;->current()Z
    move-result v0
    if-nez v0, :soc_worker_current
    return-void
    :soc_worker_current
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 236
    .line 237
    move-object v2, v0

    .line 238
    check-cast v2, Lo/ff;

    .line 239
    .line 240
    iget-object v0, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 241
    .line 242
    move-object v3, v0

    .line 243
    check-cast v3, Landroid/widget/SeekBar;

    .line 244
    .line 245
    iget-object v0, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 246
    .line 247
    move-object v5, v0

    .line 248
    check-cast v5, Landroid/widget/TextView;

    .line 249
    .line 250
    iget-object v0, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 251
    .line 252
    move-object v6, v0

    .line 253
    check-cast v6, Landroid/widget/ImageView;

    .line 254
    .line 255
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const-string v0, "getSOCTarget"

    .line 261
    .line 262
    const-string v1, "value"

    .line 263
    .line 264
    invoke-static {v0, v1}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    const/16 v0, 0x19

    .line 269
    .line 270
    if-lt v4, v0, :cond_7

    .line 271
    .line 272
    const/16 v0, 0x46

    .line 273
    .line 274
    if-gt v4, v0, :cond_7

    .line 275
    .line 276
    iget-object v0, p0, Lo/sj;->stabilitySocRead:Lcom/byd/launcher/stability/SocRead;

    .line 277
    .line 278
    new-instance v7, Lo/ϓ;

    .line 279
    .line 280
    move-object v1, v7

    .line 281
    invoke-direct/range {v1 .. v6}, Lo/ϓ;-><init>(Lo/ff;Landroid/widget/SeekBar;ILandroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v7}, Lcom/byd/launcher/stability/SocRead;->post(Ljava/lang/Runnable;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    return-void

    .line 288
    :pswitch_4
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 289
    .line 290
    move-object v2, v0

    .line 291
    check-cast v2, Lo/a9;

    .line 292
    .line 293
    iget-object v0, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Ljava/lang/String;

    .line 296
    .line 297
    iget-object v1, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 298
    .line 299
    move-object v3, v1

    .line 300
    check-cast v3, Ljava/lang/String;

    .line 301
    .line 302
    iget-object v1, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 303
    .line 304
    move-object v4, v1

    .line 305
    check-cast v4, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v2, v0}, Lo/a9;->ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    if-nez v1, :cond_8

    .line 312
    .line 313
    invoke-virtual {v2}, Lo/a9;->ͳ()Landroid/graphics/Bitmap;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :cond_8
    if-nez v1, :cond_9

    .line 318
    .line 319
    const-wide/16 v5, 0x96

    .line 320
    .line 321
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v0}, Lo/a9;->ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-nez v1, :cond_9

    .line 329
    .line 330
    invoke-virtual {v2}, Lo/a9;->ͳ()Landroid/graphics/Bitmap;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    :cond_9
    if-eqz v1, :cond_a

    .line 335
    .line 336
    invoke-static {v1}, Lo/a9;->ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    iput-object v5, v2, Lo/a9;->ͽ:Landroid/graphics/Bitmap;

    .line 341
    .line 342
    iget-object v0, v2, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 343
    .line 344
    new-instance v7, Lo/w8;

    .line 345
    .line 346
    const/4 v6, 0x2

    .line 347
    move-object v1, v7

    .line 348
    invoke-direct/range {v1 .. v6}, Lo/w8;-><init>(Lo/a9;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    .line 353
    .line 354
    :catch_0
    :cond_a
    return-void

    .line 355
    :pswitch_5
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 358
    .line 359
    iget-object v1, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v1, Ljava/lang/String;

    .line 362
    .line 363
    iget-object v2, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v2, Ljava/lang/String;

    .line 366
    .line 367
    iget-object v3, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v3, Lcom/byd/launcher/ipc/ICoreServiceCallback;

    .line 370
    .line 371
    invoke-static {v0, v1, v2, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->ˋ(Lcom/byd/launcher/ipc/CoreServiceClient;Ljava/lang/String;Ljava/lang/String;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :pswitch_6
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Lo/ak;
    iget-boolean v1, v0, Lo/ak;->Ͳ:Z
    if-nez v1, :cond_c

    .line 378
    .line 379
    iget-object v1, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v1, Ljava/lang/String;

    .line 382
    .line 383
    iget-object v2, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v2, Ljava/lang/String;

    .line 386
    .line 387
    iget-object v3, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v3, Landroid/widget/ImageView;

    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    :try_start_2
    # BASE-03: owned helper releases on both normal and exceptional paths.
    invoke-static {v1}, Lcom/byd/launcher/stability/VideoThumbnail;->read(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v1
    invoke-static {v0, v2, v1, v3}, Lcom/byd/launcher/stability/WallpaperFrameApply;->submit(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 458
    .line 459
    .line 460
    :catch_1
    :cond_c
    return-void

    .line 461
    :goto_3
    iget-object v0, p0, Lo/sj;->ͳ:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v0, Lo/vl;

    .line 464
    .line 465
    iget-object v3, p0, Lo/sj;->ͱ:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v3, Ljava/lang/String;

    .line 468
    .line 469
    iget-object v4, p0, Lo/sj;->Ͳ:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v4, Ljava/lang/String;

    .line 472
    .line 473
    iget-object v5, p0, Lo/sj;->ʹ:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v5, Landroid/graphics/Bitmap;

    .line 476
    .line 477
    sget-object v6, Lo/vl;->Χ:[Lo/ul;

    .line 478
    .line 479
    invoke-virtual {v0}, Lo/vl;->Έ()Lo/dm;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    if-nez v6, :cond_d

    .line 484
    .line 485
    goto/16 :goto_5

    .line 486
    .line 487
    :cond_d
    iget-object v7, v6, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    .line 488
    .line 489
    if-eqz v7, :cond_f

    .line 490
    .line 491
    iget-object v8, v0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 492
    .line 493
    invoke-static {v8}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    const-string v9, "com.byd.mediacenter"

    .line 498
    .line 499
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v8

    .line 503
    if-eqz v8, :cond_e

    .line 504
    .line 505
    const/16 v2, 0x8

    .line 506
    .line 507
    :cond_e
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    .line 509
    .line 510
    :cond_f
    const-string v2, "\u7b49\u5f85\u64ad\u653e"

    .line 511
    .line 512
    if-eqz v3, :cond_10

    .line 513
    .line 514
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-nez v7, :cond_10

    .line 519
    .line 520
    move-object v7, v3

    .line 521
    goto :goto_4

    .line 522
    :cond_10
    move-object v7, v2

    .line 523
    :goto_4
    if-eqz v4, :cond_11

    .line 524
    .line 525
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    if-nez v8, :cond_11

    .line 530
    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    :cond_11
    iget-object v1, v6, Lo/dm;->ˏ:Landroid/widget/TextView;

    .line 550
    .line 551
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    iget-boolean v0, v0, Lo/vl;->Ά:Z

    .line 555
    .line 556
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 557
    .line 558
    .line 559
    iget-object v0, v6, Lo/dm;->ʹ:Landroid/widget/ImageView;

    .line 560
    .line 561
    if-eqz v0, :cond_14

    .line 562
    .line 563
    const-string v1, "album_art"

    .line 564
    .line 565
    if-eqz v5, :cond_12

    .line 566
    .line 567
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    goto :goto_5

    .line 574
    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    const-string v3, "default_set"

    .line 579
    .line 580
    if-nez v2, :cond_13

    .line 581
    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-nez v1, :cond_14

    .line 591
    .line 592
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-nez v1, :cond_14

    .line 601
    .line 602
    :cond_13
    :try_start_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-static {v1}, Lo/km;->ˏ(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    if-eqz v1, :cond_14

    .line 611
    .line 612
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 616
    .line 617
    .line 618
    :catch_2
    :cond_14
    :goto_5
    return-void

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
