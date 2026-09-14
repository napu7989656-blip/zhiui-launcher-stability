.class public final synthetic Lo/y9;
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
    iput p2, p0, Lo/y9;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

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
    .locals 14

    .line 1
    iget v0, p0, Lo/y9;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x4

    .line 8
    const-string v6, "NavBarSvc"

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :pswitch_0
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 16
    .line 17
    iget-object v0, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    if-eqz v7, :cond_5

    .line 27
    .line 28
    iget-object v7, v7, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    .line 29
    .line 30
    if-nez v7, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v8, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 41
    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    iget-object v8, v8, Lo/oj;->Ͳ:Landroid/view/View;

    .line 45
    .line 46
    if-eqz v8, :cond_2

    .line 47
    .line 48
    sget v3, Lo/if;->vehicle_content:I

    .line 49
    .line 50
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_2
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-array v8, v1, [I

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    .line 67
    .line 68
    aget v9, v8, v2

    .line 69
    .line 70
    aget v8, v8, v4

    .line 71
    .line 72
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    add-int/2addr v10, v9

    .line 77
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    add-int/2addr v11, v8

    .line 82
    new-array v1, v1, [I

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 85
    .line 86
    .line 87
    aget v12, v1, v2

    .line 88
    .line 89
    aget v1, v1, v4

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    add-int/2addr v13, v12

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    add-int/2addr v3, v1

    .line 101
    if-ge v9, v13, :cond_4

    .line 102
    .line 103
    if-le v10, v12, :cond_4

    .line 104
    .line 105
    if-ge v8, v3, :cond_4

    .line 106
    .line 107
    if-le v11, v1, :cond_4

    .line 108
    .line 109
    move v2, v4

    .line 110
    :cond_4
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iput-boolean v4, v0, Lcom/byd/launcher/NavBarService;->ϲ:Z

    .line 113
    .line 114
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "hideClockIfOverlapping failed"

    .line 120
    .line 121
    invoke-static {v6, v1, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_0
    return-void

    .line 125
    :pswitch_1
    iget-object v0, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 126
    .line 127
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 139
    .line 140
    const/16 v4, 0x8

    .line 141
    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_8
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 160
    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lo/vl;->Ρ(Z)V

    .line 164
    .line 165
    .line 166
    :cond_9
    return-void

    .line 167
    :pswitch_2
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 168
    .line 169
    iget-object v0, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 187
    .line 188
    new-instance v6, Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    .line 195
    .line 196
    const/16 v7, 0x11

    .line 197
    .line 198
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 199
    .line 200
    .line 201
    const/high16 v8, 0x41c00000    # 24.0f

    .line 202
    .line 203
    mul-float/2addr v8, v5

    .line 204
    float-to-int v8, v8

    .line 205
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    .line 207
    .line 208
    new-instance v8, Landroid/widget/ImageView;

    .line 209
    .line 210
    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    const-string v11, "ic_trunk"

    .line 222
    .line 223
    const-string v12, "drawable"

    .line 224
    .line 225
    invoke-virtual {v9, v11, v12, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_a

    .line 230
    .line 231
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    .line 233
    .line 234
    :cond_a
    if-eqz v1, :cond_b

    .line 235
    .line 236
    const v9, -0xe1771b

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_b
    const v9, -0x9b4a0a

    .line 241
    .line 242
    .line 243
    :goto_1
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 248
    .line 249
    .line 250
    const/high16 v9, 0x42400000    # 48.0f

    .line 251
    .line 252
    mul-float/2addr v9, v5

    .line 253
    float-to-int v9, v9

    .line 254
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .line 256
    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .line 258
    .line 259
    const/high16 v9, 0x41400000    # 12.0f

    .line 260
    .line 261
    mul-float/2addr v9, v5

    .line 262
    float-to-int v9, v9

    .line 263
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 264
    .line 265
    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    new-instance v8, Landroid/widget/TextView;

    .line 269
    .line 270
    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    const-string v9, "\u6253\u5f00\u540e\u5907\u7bb1"

    .line 274
    .line 275
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    const/high16 v9, 0x41900000    # 18.0f

    .line 279
    .line 280
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 284
    .line 285
    .line 286
    if-eqz v1, :cond_c

    .line 287
    .line 288
    const/high16 v4, -0x1000000

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_c
    const/4 v4, -0x1

    .line 292
    :goto_2
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    .line 297
    .line 298
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    .line 300
    const/4 v9, -0x2

    .line 301
    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    .line 303
    .line 304
    const/high16 v10, 0x41000000    # 8.0f

    .line 305
    .line 306
    mul-float/2addr v10, v5

    .line 307
    float-to-int v10, v10

    .line 308
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 309
    .line 310
    invoke-virtual {v6, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .line 312
    .line 313
    new-instance v4, Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    const-string v8, "\u8bf7\u786e\u8ba4\u8f66\u8f86\u5468\u56f4\u5b89\u5168\u540e\u518d\u64cd\u4f5c"

    .line 319
    .line 320
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    const/high16 v8, 0x41600000    # 14.0f

    .line 324
    .line 325
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 326
    .line 327
    .line 328
    if-eqz v1, :cond_d

    .line 329
    .line 330
    const/high16 v8, -0x67000000

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_d
    const v8, -0x66000001

    .line 334
    .line 335
    .line 336
    :goto_3
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 340
    .line 341
    .line 342
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 343
    .line 344
    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    .line 346
    .line 347
    const/high16 v9, 0x41a00000    # 20.0f

    .line 348
    .line 349
    mul-float/2addr v5, v9

    .line 350
    float-to-int v5, v5

    .line 351
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 352
    .line 353
    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .line 355
    .line 356
    new-instance v4, Landroid/widget/LinearLayout;

    .line 357
    .line 358
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 365
    .line 366
    .line 367
    if-eqz v1, :cond_e

    .line 368
    .line 369
    const v1, 0x10302d2

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_e
    const v1, 0x10302d1

    .line 374
    .line 375
    .line 376
    :goto_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 377
    .line 378
    invoke-direct {v4, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    new-instance v4, Lo/z9;

    .line 386
    .line 387
    invoke-direct {v4, v2, v0}, Lo/z9;-><init>(ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    const-string v0, "\u786e\u8ba4\u6253\u5f00"

    .line 391
    .line 392
    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const-string v1, "\u53d6\u6d88"

    .line 397
    .line 398
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    if-eqz v1, :cond_f

    .line 411
    .line 412
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    const/16 v2, 0x7f0

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 419
    .line 420
    .line 421
    :cond_f
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :pswitch_3
    iget-object v0, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 426
    .line 427
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ϩ:Z

    .line 428
    .line 429
    if-eqz v2, :cond_10

    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_10
    :try_start_1
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    if-eqz v2, :cond_11

    .line 437
    .line 438
    const-string v7, "\u65c5\u7a0b\u62a5\u544a"

    .line 439
    .line 440
    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 445
    .line 446
    .line 447
    if-eqz v7, :cond_11

    .line 448
    .line 449
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-nez v2, :cond_11

    .line 454
    .line 455
    iput-boolean v4, v0, Lcom/byd/launcher/NavBarService;->ϩ:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :catch_1
    :cond_11
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 467
    .line 468
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 469
    .line 470
    div-int/2addr v2, v1

    .line 471
    div-int/lit8 v1, v4, 0x4

    .line 472
    .line 473
    mul-int/lit8 v4, v4, 0x3

    .line 474
    .line 475
    div-int/2addr v4, v5

    .line 476
    new-instance v8, Landroid/graphics/Path;

    .line 477
    .line 478
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 479
    .line 480
    .line 481
    int-to-float v1, v1

    .line 482
    int-to-float v2, v2

    .line 483
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 484
    .line 485
    .line 486
    int-to-float v1, v4

    .line 487
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    .line 489
    .line 490
    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 491
    .line 492
    const-wide/16 v9, 0x0

    .line 493
    .line 494
    const-wide/16 v11, 0xfa

    .line 495
    .line 496
    move-object v7, v1

    .line 497
    invoke-direct/range {v7 .. v12}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 498
    .line 499
    .line 500
    new-instance v2, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 501
    .line 502
    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2, v1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {v0, v1, v3, v3}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 514
    .line 515
    .line 516
    goto :goto_5

    .line 517
    :catch_2
    move-exception v0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v2, "swipeToNegativeScreen failed: "

    .line 521
    .line 522
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v0, v1, v6}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :goto_5
    return-void

    .line 529
    :pswitch_4
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 530
    .line 531
    iget-object v0, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    :try_start_3
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 537
    .line 538
    .line 539
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_12

    .line 544
    .line 545
    const-string v0, "settings put global policy_control immersive.status=com.byd.launcher"

    .line 546
    .line 547
    const/16 v1, 0x3e8

    .line 548
    .line 549
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    .line 551
    .line 552
    goto :goto_6

    .line 553
    :catchall_0
    move-exception v0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    const-string v2, "enterScreenOffMode: hide system bars failed: "

    .line 557
    .line 558
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-static {v0, v1, v6}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    :cond_12
    :goto_6
    return-void

    .line 565
    :goto_7
    iget-object v0, p0, Lo/y9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 566
    .line 567
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ό()V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
