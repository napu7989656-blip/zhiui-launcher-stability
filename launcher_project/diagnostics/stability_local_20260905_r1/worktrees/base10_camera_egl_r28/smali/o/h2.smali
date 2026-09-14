.class public final synthetic Lo/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/h2;->Ͱ:I

    iput-object p1, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    iput p2, p0, Lo/h2;->ͱ:I

    iput-object p3, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Lo/h2;->Ͱ:I

    iput-object p1, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    iput p3, p0, Lo/h2;->ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/h2;->Ͳ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/h2;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1f4

    .line 5
    .line 6
    const/4 v4, 0x5

    .line 7
    const-string v5, "MainActivity"

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_12

    .line 15
    .line 16
    :pswitch_0
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lo/nd;

    .line 19
    .line 20
    iget-object v1, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroid/view/View;

    .line 23
    .line 24
    sget-object v2, Lo/nd;->χ:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-boolean v2, v0, Lo/nd;->Ψ:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, v0, Lo/nd;->Χ:Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lo/nd;->Χ:Landroid/view/ViewGroup;

    .line 41
    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, v0, Lo/nd;->ˏ:Landroid/view/WindowManager;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v1, v0, Lo/nd;->Τ:Lo/ia;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Lo/ia;->Ͳ()V

    .line 63
    .line 64
    .line 65
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    .line 66
    .line 67
    new-instance v2, Lo/bg;

    .line 68
    .line 69
    iget v3, p0, Lo/h2;->ͱ:I

    .line 70
    .line 71
    invoke-direct {v2, v0, v3, v4}, Lo/bg;-><init>(Ljava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lo/mj;

    .line 84
    .line 85
    iget-object v1, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lo/lj;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iget v3, p0, Lo/h2;->ͱ:I

    .line 97
    .line 98
    if-ne v2, v3, :cond_2

    .line 99
    .line 100
    iget-object v1, v1, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    .line 101
    .line 102
    invoke-virtual {v0}, Lo/mj;->ͱ()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :pswitch_2
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lo/g8;

    .line 113
    .line 114
    iget-object v1, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Lo/nj;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lo/h2;->ͱ:I

    .line 122
    .line 123
    if-lez v2, :cond_3

    .line 124
    .line 125
    move v6, v7

    .line 126
    :cond_3
    iput-boolean v6, v1, Lo/nj;->Ͷ:Z

    .line 127
    .line 128
    if-lez v2, :cond_4

    .line 129
    .line 130
    const-string v2, "\u5df2\u6253\u5f00"

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    const-string v2, "\u5df2\u5173\u95ed"

    .line 134
    .line 135
    :goto_1
    iput-object v2, v1, Lo/nj;->ͷ:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v0, v0, Lo/g8;->Ͱ:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lo/oj;

    .line 140
    .line 141
    iget-object v2, v0, Lo/oj;->ͺ:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-ltz v1, :cond_5

    .line 148
    .line 149
    invoke-static {v0, v1}, Lo/oj;->Ͱ(Lo/oj;I)V

    .line 150
    .line 151
    .line 152
    :cond_5
    return-void

    .line 153
    :pswitch_3
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lo/ff;

    .line 156
    .line 157
    iget v1, p0, Lo/h2;->ͱ:I

    .line 158
    .line 159
    iget-object v2, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Ljava/lang/String;

    .line 162
    .line 163
    sget-object v3, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    :try_start_1
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_6

    .line 179
    .line 180
    new-instance v3, Lorg/json/JSONObject;

    .line 181
    .line 182
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v4, "value"

    .line 186
    .line 187
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_1
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v3, "sendCoreCommand "

    .line 198
    .line 199
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, ": "

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, "QuickSettingsMgr"

    .line 211
    .line 212
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_2
    return-void

    .line 216
    :pswitch_4
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lo/e8;

    .line 219
    .line 220
    iget-object v2, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Lo/ak;

    .line 223
    .line 224
    iget v3, p0, Lo/h2;->ͱ:I

    .line 225
    .line 226
    iget-object v4, v0, Lo/e8;->ˏ:Lcom/byd/launcher/MainActivity;

    .line 227
    .line 228
    iput-object v1, v4, Lcom/byd/launcher/MainActivity;->ʹ:Ljava/lang/Runnable;

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Lo/ak;->Ͳ(I)V

    .line 231
    .line 232
    .line 233
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 234
    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    iput-object v1, v2, Lcom/byd/launcher/NavBarService;->ϛ:Landroid/graphics/Bitmap;

    .line 238
    .line 239
    iput-object v1, v2, Lcom/byd/launcher/NavBarService;->Ϝ:Landroid/graphics/drawable/BitmapDrawable;

    .line 240
    .line 241
    iget-object v1, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 242
    .line 243
    new-instance v3, Lo/ea;

    .line 244
    .line 245
    const/16 v4, 0x12

    .line 246
    .line 247
    invoke-direct {v3, v2, v4}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->ί()V

    .line 254
    .line 255
    .line 256
    :cond_7
    iget-object v0, v0, Lo/e8;->ˏ:Lcom/byd/launcher/MainActivity;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_5
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 265
    .line 266
    iget-object v1, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Lo/ak;

    .line 269
    .line 270
    sget-object v2, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 271
    .line 272
    iget v2, p0, Lo/h2;->ͱ:I

    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/MainActivity;->ͽ(Lo/ak;I)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_6
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 281
    .line 282
    iget-object v1, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v1, Ljava/util/List;

    .line 285
    .line 286
    iget v4, p0, Lo/h2;->ͱ:I

    .line 287
    .line 288
    const-string v8, "mRecyclerView"

    .line 289
    .line 290
    const-class v9, Landroidx/viewpager2/widget/ViewPager2;

    .line 291
    .line 292
    iget-boolean v10, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 293
    .line 294
    if-nez v10, :cond_11

    .line 295
    .line 296
    new-instance v10, Lo/ak;

    .line 297
    .line 298
    invoke-direct {v10, v0, v1}, Lo/ak;-><init>(Lcom/byd/launcher/MainActivity;Ljava/util/List;)V

    .line 299
    .line 300
    .line 301
    iget-object v11, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 302
    .line 303
    invoke-virtual {v11, v10}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    if-eqz v12, :cond_b

    .line 315
    .line 316
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    check-cast v12, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    const-string v13, ".mp4"

    .line 327
    .line 328
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    if-nez v13, :cond_a

    .line 333
    .line 334
    const-string v13, ".webm"

    .line 335
    .line 336
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v12

    .line 340
    if-eqz v12, :cond_9

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_9
    move v12, v6

    .line 344
    goto :goto_4

    .line 345
    :cond_a
    :goto_3
    move v12, v7

    .line 346
    :goto_4
    if-eqz v12, :cond_8

    .line 347
    .line 348
    move v11, v7

    .line 349
    goto :goto_5

    .line 350
    :cond_b
    move v11, v6

    .line 351
    :goto_5
    iget-object v12, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 352
    .line 353
    if-eqz v11, :cond_c

    .line 354
    .line 355
    move v11, v7

    .line 356
    goto :goto_6

    .line 357
    :cond_c
    const/4 v11, 0x2

    .line 358
    :goto_6
    invoke-virtual {v12, v11}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 359
    .line 360
    .line 361
    iget-object v11, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 362
    .line 363
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 364
    .line 365
    .line 366
    iget-object v11, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 367
    .line 368
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 369
    .line 370
    .line 371
    :try_start_2
    invoke-virtual {v9, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    invoke-virtual {v11, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 376
    .line 377
    .line 378
    iget-object v12, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 379
    .line 380
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v11

    .line 384
    check-cast v11, Landroid/view/View;

    .line 385
    .line 386
    instance-of v12, v11, Landroid/view/ViewGroup;

    .line 387
    .line 388
    if-eqz v12, :cond_d

    .line 389
    .line 390
    move-object v12, v11

    .line 391
    check-cast v12, Landroid/view/ViewGroup;

    .line 392
    .line 393
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 394
    .line 395
    .line 396
    check-cast v11, Landroid/view/ViewGroup;

    .line 397
    .line 398
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 399
    .line 400
    .line 401
    :catch_2
    :cond_d
    iget-object v11, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 402
    .line 403
    new-instance v12, Lo/w7;

    .line 404
    .line 405
    invoke-direct {v12}, Lo/w7;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v11, v12}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 409
    .line 410
    .line 411
    if-ltz v4, :cond_e

    .line 412
    .line 413
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-ge v4, v1, :cond_e

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_e
    move v4, v6

    .line 421
    :goto_7
    iget-object v1, v10, Lo/ak;->ˋ:Ljava/util/List;

    .line 422
    .line 423
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 424
    .line 425
    .line 426
    move-result v11

    .line 427
    if-eqz v11, :cond_f

    .line 428
    .line 429
    move v1, v6

    .line 430
    goto :goto_8

    .line 431
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    mul-int/lit8 v1, v1, 0x32

    .line 436
    .line 437
    add-int/2addr v1, v4

    .line 438
    :goto_8
    iget-object v4, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 439
    .line 440
    invoke-virtual {v4, v1, v6}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v10, v1}, Lo/ak;->Ͳ(I)V

    .line 444
    .line 445
    .line 446
    iget-object v4, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 447
    .line 448
    new-instance v6, Lo/h2;

    .line 449
    .line 450
    const/4 v11, 0x3

    .line 451
    invoke-direct {v6, v0, v10, v1, v11}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 452
    .line 453
    .line 454
    const-wide/16 v12, 0xc8

    .line 455
    .line 456
    invoke-virtual {v4, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    .line 458
    .line 459
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 460
    .line 461
    new-instance v4, Lo/y7;

    .line 462
    .line 463
    const/16 v6, 0x10

    .line 464
    .line 465
    invoke-direct {v4, v0, v6}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    .line 470
    .line 471
    new-instance v1, Lo/e8;

    .line 472
    .line 473
    invoke-direct {v1, v0, v10}, Lo/e8;-><init>(Lcom/byd/launcher/MainActivity;Lo/ak;)V

    .line 474
    .line 475
    .line 476
    iput-object v1, v0, Lcom/byd/launcher/MainActivity;->ͳ:Lo/e8;

    .line 477
    .line 478
    iget-object v2, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 479
    .line 480
    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 481
    .line 482
    .line 483
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 484
    .line 485
    const-string v2, "ViewPager2 swipe threshold: "

    .line 486
    .line 487
    :try_start_3
    invoke-virtual {v9, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 499
    .line 500
    if-eqz v1, :cond_11

    .line 501
    .line 502
    const-class v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 503
    .line 504
    const-string v4, "mTouchSlop"

    .line 505
    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 511
    .line 512
    .line 513
    iget v4, v0, Lcom/byd/launcher/MainActivity;->ͽ:I

    .line 514
    .line 515
    if-gez v4, :cond_10

    .line 516
    .line 517
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    iput v4, v0, Lcom/byd/launcher/MainActivity;->ͽ:I

    .line 522
    .line 523
    :cond_10
    iget v4, v0, Lcom/byd/launcher/MainActivity;->ͽ:I

    .line 524
    .line 525
    mul-int/2addr v4, v11

    .line 526
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 527
    .line 528
    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget v2, v0, Lcom/byd/launcher/MainActivity;->ͽ:I

    .line 535
    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v2, " -> "

    .line 540
    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget v0, v0, Lcom/byd/launcher/MainActivity;->ͽ:I

    .line 545
    .line 546
    mul-int/2addr v0, v11

    .line 547
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 555
    .line 556
    .line 557
    goto :goto_9

    .line 558
    :catch_3
    move-exception v0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    const-string v2, "increaseViewPagerSwipeThreshold failed: "

    .line 562
    .line 563
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v0, v1, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    :cond_11
    :goto_9
    return-void

    .line 570
    :pswitch_7
    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->workerCurrent()Z
    move-result v0
    if-nez v0, :blur_worker_alive
    return-void
    :blur_worker_alive
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 571
    .line 572
    move-object v8, v0

    .line 573
    check-cast v8, Lcom/byd/launcher/MainActivity;

    .line 574
    .line 575
    iget-object v0, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v0, Landroid/graphics/Bitmap;

    .line 578
    .line 579
    iget v9, p0, Lo/h2;->ͱ:I

    .line 580
    .line 581
    sget-object v1, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 582
    .line 583
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    const-string v1, "android"

    .line 587
    .line 588
    const-string v7, "dimen"

    .line 589
    .line 590
    const-string v10, "updateBarBlurBackgrounds: svc="

    .line 591
    .line 592
    if-eqz v0, :cond_13

    .line 593
    .line 594
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    if-eqz v11, :cond_12

    .line 599
    .line 600
    goto :goto_a

    .line 601
    :cond_12
    move-object v11, v0

    .line 602
    goto :goto_b

    .line 603
    :cond_13
    :goto_a
    sget-object v11, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 604
    .line 605
    :goto_b
    if-eqz v11, :cond_1d

    .line 606
    .line 607
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    if-eqz v12, :cond_14

    .line 612
    .line 613
    goto/16 :goto_10

    .line 614
    .line 615
    :cond_14
    if-nez v0, :cond_15

    .line 616
    .line 617
    iget-object v0, v8, Lcom/byd/launcher/MainActivity;->Κ:Landroid/graphics/Bitmap;

    .line 618
    .line 619
    if-ne v11, v0, :cond_15

    .line 620
    .line 621
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-nez v0, :cond_15

    .line 626
    .line 627
    goto/16 :goto_11

    .line 628
    .line 629
    :cond_15
    invoke-static {v11}, Lcom/byd/launcher/stability/BlurPipeline;->source(Ljava/lang/Object;)V

    .line 630
    .line 631
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 632
    .line 633
    .line 634
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 635
    .line 636
    .line 637
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 646
    .line 647
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 648
    .line 649
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 654
    .line 655
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 656
    .line 657
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    const-string v12, "navigation_bar_height"

    .line 666
    .line 667
    invoke-virtual {v4, v12, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-lez v4, :cond_16

    .line 672
    .line 673
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 674
    .line 675
    .line 676
    move-result-object v12

    .line 677
    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    goto :goto_c

    .line 682
    :cond_16
    move v4, v6

    .line 683
    :goto_c
    sget-object v12, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 684
    .line 685
    if-eqz v12, :cond_17

    .line 686
    .line 687
    iget v13, v12, Lcom/byd/launcher/NavBarService;->ͺ:I

    .line 688
    .line 689
    if-lez v13, :cond_17

    .line 690
    .line 691
    move v4, v13

    .line 692
    :cond_17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 693
    .line 694
    const/high16 v13, 0x42ce0000    # 103.0f

    .line 695
    .line 696
    mul-float/2addr v0, v13

    .line 697
    float-to-int v0, v0

    .line 698
    sub-int v13, v3, v4

    .line 699
    .line 700
    sub-int v14, v13, v0

    .line 701
    .line 702
    invoke-static {v11, v2, v3, v14, v0}, Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 703
    .line 704
    .line 705
    move-result-object v0
    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->unused(Ljava/lang/Object;)V

    .line 706
    invoke-static {v11, v2, v3, v13, v4}, Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 707
    .line 708
    .line 709
    move-result-object v4
    invoke-static {v4}, Lcom/byd/launcher/stability/BlurPipeline;->retain(Ljava/lang/Object;)V

    .line 710
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 711
    .line 712
    .line 713
    move-result-object v13

    .line 714
    const-string v14, "status_bar_height"

    .line 715
    .line 716
    invoke-virtual {v13, v14, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-lez v1, :cond_18

    .line 721
    .line 722
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 723
    .line 724
    .line 725
    move-result-object v7

    .line 726
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    goto :goto_d

    .line 731
    :cond_18
    move v1, v6

    .line 732
    :goto_d
    if-lez v1, :cond_19

    .line 733
    .line 734
    invoke-static {v11, v2, v3, v6, v1}, Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 735
    .line 736
    .line 737
    move-result-object v1
    invoke-static {v1}, Lcom/byd/launcher/stability/BlurPipeline;->retain(Ljava/lang/Object;)V

    .line 738
    goto :goto_e

    .line 739
    :cond_19
    const/4 v1, 0x0

    .line 740
    :goto_e
    move-object v13, v1

    .line 741
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    div-int/lit8 v1, v1, 0x40

    .line 746
    .line 747
    const/4 v2, 0x2

    .line 748
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 753
    .line 754
    .line 755
    move-result v3

    .line 756
    div-int/lit8 v3, v3, 0x40

    .line 757
    .line 758
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    const/4 v3, 0x1

    .line 763
    invoke-static {v11, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 764
    .line 765
    .line 766
    move-result-object v1
    invoke-static {v1}, Lcom/byd/launcher/stability/BlurPipeline;->retain(Ljava/lang/Object;)V

    .line 767
    invoke-static {v1, v3}, Lo/a2;->Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 768
    .line 769
    .line 770
    move-result-object v2
    invoke-static {v2}, Lcom/byd/launcher/stability/BlurPipeline;->blurred(Ljava/lang/Object;)V

    .line 771
    if-eq v2, v1, :cond_1a

    .line 772
    .line 773
    if-eq v1, v11, :cond_1a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 774
    .line 775
    .line 776
    :cond_1a

    .line 777
    .line 778
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 779
    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    if-eqz v1, :cond_1b

    .line 786
    .line 787
    const/4 v1, 0x1

    .line 788
    goto :goto_f

    .line 789
    :cond_1b
    move v1, v6

    .line 790
    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v1, " navBlur="

    .line 794
    .line 795
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    if-eqz v4, :cond_1c

    .line 799
    .line 800
    const/4 v6, 0x1

    .line 801
    :cond_1c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    invoke-static {v5, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    iget-object v1, v8, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 812
    .line 813
    new-instance v2, Lo/a8;

    .line 814
    .line 815
    move-object v7, v2

    .line 816
    move-object v10, v12

    .line 817
    move-object v11, v0

    .line 818
    move-object v12, v4

    .line 819
    invoke-direct/range {v7 .. v13}, Lo/a8;-><init>(Lcom/byd/launcher/MainActivity;ILcom/byd/launcher/NavBarService;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 820
    .line 821
    .line 822
    invoke-static {v2}, Lcom/byd/launcher/stability/BlurPipeline;->publish(Ljava/lang/Runnable;)V

    .line 823
    .line 824
    .line 825
    goto :goto_11

    .line 826
    :cond_1d
    :goto_10
    new-instance v1, Lo/y7;
    const/16 v4, 0xe
    invoke-direct {v1, v8, v4}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V
    invoke-static {v1, v2, v3}, Lcom/byd/launcher/stability/BlurPipeline;->retry(Ljava/lang/Runnable;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 846
    .line 847
    .line 848
    goto :goto_11

    .line 849
    :catch_4
    move-exception v0

    .line 850
    const-string v1, "updateBarBlurBackgrounds failed"

    .line 851
    .line 852
    invoke-static {v5, v1, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 853
    .line 854
    .line 855
    :cond_1e
    :goto_11
    return-void

    .line 856
    :pswitch_8
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v0, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 859
    .line 860
    iget v1, p0, Lo/h2;->ͱ:I

    .line 861
    .line 862
    iget-object v2, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 863
    .line 864
    invoke-static {v0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->ˋ(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :goto_12
    iget-object v0, p0, Lo/h2;->Ͳ:Ljava/lang/Object;

    .line 869
    .line 870
    check-cast v0, Lo/nd;

    .line 871
    .line 872
    iget-object v1, p0, Lo/h2;->ͳ:Ljava/lang/Object;

    .line 873
    .line 874
    check-cast v1, Ljava/lang/String;

    .line 875
    .line 876
    iget v2, p0, Lo/h2;->ͱ:I

    .line 877
    .line 878
    iget-object v3, v0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 879
    .line 880
    const-string v4, "/"

    .line 881
    .line 882
    const-string v5, "am start --display 0 -n "

    .line 883
    .line 884
    const-string v7, "am start --display 0 "

    .line 885
    .line 886
    const-string v8, "am start --display "

    .line 887
    .line 888
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 889
    .line 890
    .line 891
    move-result v9

    .line 892
    if-eqz v9, :cond_1f

    .line 893
    .line 894
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v9

    .line 898
    aget-object v6, v9, v6

    .line 899
    .line 900
    goto :goto_13

    .line 901
    :cond_1f
    move-object v6, v1

    .line 902
    :goto_13
    invoke-virtual {v0, v6}, Lo/nd;->Ͷ(Ljava/lang/String;)Z

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    xor-int/lit8 v0, v0, 0x1

    .line 907
    .line 908
    const/16 v6, 0x1388

    .line 909
    .line 910
    if-eqz v0, :cond_20

    .line 911
    .line 912
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-static {v0, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 917
    .line 918
    .line 919
    const-wide/16 v9, 0x384

    .line 920
    .line 921
    :try_start_6
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 922
    .line 923
    .line 924
    :catch_5
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 925
    .line 926
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v5

    .line 933
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v3

    .line 943
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    const-string v3, ".MainActivity"

    .line 947
    .line 948
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    const/16 v3, 0xbb8

    .line 956
    .line 957
    invoke-static {v0, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 958
    .line 959
    .line 960
    const-wide/16 v3, 0x15e

    .line 961
    .line 962
    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 963
    .line 964
    .line 965
    :catch_6
    :cond_20
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 966
    .line 967
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    const-string v2, " "

    .line 974
    .line 975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-static {v0, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 986
    .line 987
    .line 988
    goto :goto_14

    .line 989
    :catch_7
    move-exception v0

    .line 990
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    :goto_14
    return-void

    .line 994
    nop

    .line 995
    :pswitch_data_0
    .packed-switch 0x0
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
