.class public final synthetic Lo/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;


# direct methods
.method public synthetic constructor <init>(Lo/ff;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ee;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ee;->ͱ:Lo/ff;

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
    .locals 22

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ee;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo/ee;->Ͱ:I

    .line 4
    .line 5
    const/high16 v2, 0x10000000

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "QuickSettingsMgr"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :pswitch_0
    iget-object v0, v1, Lo/ee;->ͱ:Lo/ff;

    .line 17
    .line 18
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 19
    .line 20
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "com.byd.btsetting"

    .line 26
    .line 27
    const-string v6, "com.byd.btsetting.BluetoothManagerDialog"

    .line 28
    .line 29
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    .line 40
    .line 41
    const-string v4, "android.settings.BLUETOOTH_SETTINGS"

    .line 42
    .line 43
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "openBluetoothSettings fallback: "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :pswitch_1
    iget-object v0, v1, Lo/ee;->ͱ:Lo/ff;

    .line 66
    .line 67
    iget-object v0, v0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void

    .line 75
    :pswitch_2
    iget-object v0, v1, Lo/ee;->ͱ:Lo/ff;

    .line 76
    .line 77
    iput-boolean v4, v0, Lo/ff;->ͺ:Z

    .line 78
    .line 79
    iget-object v0, v0, Lo/ff;->ʹ:Landroid/view/View;

    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void

    .line 87
    :pswitch_3
    iget-object v0, v1, Lo/ee;->ͱ:Lo/ff;

    .line 88
    .line 89
    iput-boolean v4, v0, Lo/ff;->Θ:Z

    .line 90
    .line 91
    invoke-virtual {v0}, Lo/ff;->ͽ()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_4
    iget-object v0, v1, Lo/ee;->ͱ:Lo/ff;

    .line 96
    .line 97
    iget-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 98
    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget-object v2, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 103
    .line 104
    const-string v3, "audio"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/media/AudioManager;

    .line 111
    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v3, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 116
    .line 117
    sget v4, Lo/if;->qs_volume_slider:I

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/widget/SeekBar;

    .line 124
    .line 125
    iget-object v0, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 126
    .line 127
    sget v4, Lo/if;->qs_volume_value:I

    .line 128
    .line 129
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .line 134
    .line 135
    const/4 v4, 0x3

    .line 136
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v3, :cond_4

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 143
    .line 144
    .line 145
    :cond_4
    if-eqz v0, :cond_5

    .line 146
    .line 147
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_1
    return-void

    .line 155
    :pswitch_5
    iget-object v2, v1, Lo/ee;->ͱ:Lo/ff;

    .line 156
    .line 157
    iget-object v0, v2, Lo/ff;->Δ:Lo/xe;

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_6
    :try_start_2
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 164
    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Μ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .line 169
    .line 170
    :catchall_0
    :cond_7
    :try_start_3
    new-instance v0, Lo/xe;

    .line 171
    .line 172
    iget-object v6, v2, Lo/ff;->ˋ:Landroid/content/Context;

    .line 173
    .line 174
    invoke-direct {v0, v6}, Lo/xe;-><init>(Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    const/high16 v6, -0x1000000

    .line 178
    .line 179
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    .line 181
    .line 182
    new-instance v6, Lo/oe;

    .line 183
    .line 184
    const/4 v7, 0x1

    .line 185
    invoke-direct {v6, v7}, Lo/oe;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    .line 190
    .line 191
    new-instance v14, Landroid/widget/TextView;

    .line 192
    .line 193
    iget-object v6, v2, Lo/ff;->ˋ:Landroid/content/Context;

    .line 194
    .line 195
    invoke-direct {v14, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 196
    .line 197
    .line 198
    const-string v6, "\u957f\u6309 3s \u540e\u9000\u51fa"

    .line 199
    .line 200
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    const/4 v6, -0x1

    .line 204
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    .line 206
    .line 207
    const/high16 v6, 0x41b00000    # 22.0f

    .line 208
    .line 209
    const/4 v8, 0x2

    .line 210
    invoke-virtual {v14, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    .line 212
    .line 213
    const/16 v6, 0x11

    .line 214
    .line 215
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    .line 217
    .line 218
    iget-object v9, v2, Lo/ff;->ˋ:Landroid/content/Context;

    .line 219
    .line 220
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 229
    .line 230
    const/high16 v10, 0x42600000    # 56.0f

    .line 231
    .line 232
    mul-float/2addr v10, v9

    .line 233
    float-to-int v10, v10

    .line 234
    const/high16 v11, 0x41e00000    # 28.0f

    .line 235
    .line 236
    mul-float/2addr v11, v9

    .line 237
    float-to-int v11, v11

    .line 238
    invoke-virtual {v14, v10, v11, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 239
    .line 240
    .line 241
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    .line 242
    .line 243
    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 244
    .line 245
    .line 246
    const v11, 0x40ffffff    # 7.9999995f

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 250
    .line 251
    .line 252
    const/high16 v11, 0x40000000    # 2.0f

    .line 253
    .line 254
    mul-float/2addr v11, v9

    .line 255
    float-to-int v11, v11

    .line 256
    const v12, -0x7f000001

    .line 257
    .line 258
    .line 259
    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 260
    .line 261
    .line 262
    const/high16 v11, 0x42400000    # 48.0f

    .line 263
    .line 264
    mul-float/2addr v9, v11

    .line 265
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 266
    .line 267
    .line 268
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    .line 269
    .line 270
    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 271
    .line 272
    .line 273
    const v12, -0x33000001    # -1.3421772E8f

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 280
    .line 281
    .line 282
    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    .line 283
    .line 284
    const v9, 0x800003

    .line 285
    .line 286
    .line 287
    invoke-direct {v12, v11, v9, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 291
    .line 292
    .line 293
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    .line 294
    .line 295
    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    aput-object v10, v8, v4

    .line 298
    .line 299
    aput-object v12, v8, v7

    .line 300
    .line 301
    invoke-direct {v9, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v14, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    filled-new-array {v3}, [Landroid/animation/ValueAnimator;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    .line 313
    const/4 v9, -0x2

    .line 314
    invoke-direct {v8, v9, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    new-array v8, v7, [J

    .line 321
    .line 322
    const-wide/16 v6, 0x0

    .line 323
    .line 324
    aput-wide v6, v8, v4

    .line 325
    .line 326
    filled-new-array {v3}, [Ljava/lang/Runnable;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    new-instance v15, Lo/ge;

    .line 331
    .line 332
    move-object v6, v15

    .line 333
    move-object v7, v2

    .line 334
    move-object v9, v10

    .line 335
    move-object v10, v11

    .line 336
    move-object v11, v12

    .line 337
    move-object v12, v4

    .line 338
    move-object v13, v14

    .line 339
    invoke-direct/range {v6 .. v13}, Lo/ge;-><init>(Lo/ff;[JLandroid/graphics/drawable/GradientDrawable;[Landroid/animation/ValueAnimator;Landroid/graphics/drawable/ClipDrawable;[Ljava/lang/Runnable;Landroid/widget/TextView;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    .line 344
    .line 345
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 346
    .line 347
    const/16 v17, -0x1

    .line 348
    .line 349
    const/16 v18, -0x1

    .line 350
    .line 351
    const/16 v19, 0x7f6

    .line 352
    .line 353
    const v20, 0x1000380

    .line 354
    .line 355
    .line 356
    const/16 v21, -0x1

    .line 357
    .line 358
    move-object/from16 v16, v4

    .line 359
    .line 360
    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 361
    .line 362
    .line 363
    const v6, 0x800033

    .line 364
    .line 365
    .line 366
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    .line 368
    const/16 v6, 0x1706

    .line 369
    .line 370
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 371
    .line 372
    iget-object v6, v2, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 373
    .line 374
    invoke-interface {v6, v0, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    iput-object v0, v2, Lo/ff;->Δ:Lo/xe;

    .line 378
    .line 379
    const-string v0, "enterCleanMode: overlay added"

    .line 380
    .line 381
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 382
    .line 383
    .line 384
    goto :goto_2

    .line 385
    :catch_2
    move-exception v0

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v6, "enterCleanMode failed: "

    .line 389
    .line 390
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v0, v4, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iput-object v3, v2, Lo/ff;->Δ:Lo/xe;

    .line 397
    .line 398
    :goto_2
    return-void

    .line 399
    :pswitch_6
    iget-object v2, v1, Lo/ee;->ͱ:Lo/ff;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    const-wide/16 v3, 0x12c

    .line 405
    .line 406
    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 407
    .line 408
    .line 409
    :catch_3
    :try_start_5
    iget-object v0, v2, Lo/ff;->ˋ:Landroid/content/Context;

    .line 410
    .line 411
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 412
    .line 413
    .line 414
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 415
    .line 416
    .line 417
    const-string v0, "am start -n com.byd.systemsettings/com.byd.systemsettings.wifi.WIFISettings"

    .line 418
    .line 419
    const/16 v3, 0xbb8

    .line 420
    .line 421
    invoke-static {v0, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    const-string v0, "openWifiSettings via adb"

    .line 425
    .line 426
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 427
    .line 428
    .line 429
    goto :goto_3

    .line 430
    :catch_4
    move-exception v0

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v4, "openWifiSettings adb: "

    .line 434
    .line 435
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-instance v0, Landroid/os/Handler;

    .line 453
    .line 454
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 459
    .line 460
    .line 461
    new-instance v3, Lo/ee;

    .line 462
    .line 463
    const/4 v4, 0x7

    .line 464
    invoke-direct {v3, v2, v4}, Lo/ee;-><init>(Lo/ff;I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    .line 469
    .line 470
    :goto_3
    return-void

    .line 471
    :goto_4
    iget-object v0, v1, Lo/ee;->ͱ:Lo/ff;

    .line 472
    .line 473
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 474
    .line 475
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    .line 476
    .line 477
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 478
    .line 479
    .line 480
    new-instance v4, Landroid/content/ComponentName;

    .line 481
    .line 482
    const-string v6, "com.byd.systemsettings"

    .line 483
    .line 484
    const-string v7, "com.byd.systemsettings.wifi.WIFISettings"

    .line 485
    .line 486
    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 496
    .line 497
    .line 498
    goto :goto_5

    .line 499
    :catch_5
    :try_start_7
    new-instance v3, Landroid/content/Intent;

    .line 500
    .line 501
    const-string v4, "android.settings.WIFI_SETTINGS"

    .line 502
    .line 503
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 510
    .line 511
    .line 512
    goto :goto_5

    .line 513
    :catch_6
    move-exception v0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v3, "openWifiSettings fallback: "

    .line 517
    .line 518
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v0, v2, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :goto_5
    return-void

    .line 525
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
