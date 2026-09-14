.class public final synthetic Lo/tk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/vl;

.field public final synthetic Ͳ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Lo/vl;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/tk;->Ͱ:I

    .line 2
    .line 3
    iput-object p3, p0, Lo/tk;->ͱ:Lo/vl;

    .line 4
    .line 5
    iput-object p2, p0, Lo/tk;->Ͳ:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo/tk;->Ͱ:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v1, v0, Lo/tk;->ͱ:Lo/vl;

    .line 12
    .line 13
    iget-object v4, v0, Lo/tk;->Ͳ:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v1, v4}, Lo/vl;->Λ(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    iget-object v5, v1, Lo/vl;->Ό:Landroid/view/View;

    .line 22
    .line 23
    if-ne v4, v5, :cond_0

    .line 24
    .line 25
    iput-object v2, v1, Lo/vl;->Ό:Landroid/view/View;

    .line 26
    .line 27
    iput-object v2, v1, Lo/vl;->Ύ:Lo/pm;

    .line 28
    .line 29
    :cond_0
    iput-boolean v3, v1, Lo/vl;->Ώ:Z

    .line 30
    .line 31
    iget-object v1, v1, Lo/vl;->Έ:Lo/tl;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    check-cast v1, Lo/cb;

    .line 36
    .line 37
    iget-object v2, v1, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 38
    .line 39
    iget-object v3, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    new-instance v3, Lo/td;

    .line 49
    .line 50
    const/16 v4, 0x9

    .line 51
    .line 52
    invoke-direct {v3, v4, v1}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 56
    .line 57
    iget-object v1, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 58
    .line 59
    const-wide/16 v4, 0x12c

    .line 60
    .line 61
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void

    .line 65
    :pswitch_1
    iget-object v1, v0, Lo/tk;->Ͳ:Landroid/view/View;

    .line 66
    .line 67
    iget-object v2, v0, Lo/tk;->ͱ:Lo/vl;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :try_start_1
    iget-object v2, v2, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 73
    .line 74
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    :catch_1
    return-void

    .line 78
    :goto_0
    iget-object v1, v0, Lo/tk;->ͱ:Lo/vl;

    .line 79
    .line 80
    iget-object v10, v0, Lo/tk;->Ͳ:Landroid/view/View;

    .line 81
    .line 82
    iget-object v4, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 83
    .line 84
    if-eq v10, v4, :cond_3

    .line 85
    .line 86
    goto/16 :goto_18

    .line 87
    .line 88
    :cond_3
    sget v4, Lo/if;->spinner_map_app:I

    .line 89
    .line 90
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Landroid/widget/Spinner;

    .line 95
    .line 96
    const/16 v6, 0x8

    .line 97
    .line 98
    const-string v8, ""

    .line 99
    .line 100
    const-string v11, "launcher_prefs"

    .line 101
    .line 102
    if-nez v4, :cond_4

    .line 103
    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_4
    iget-object v9, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    new-instance v13, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v14, Lo/vl;->Ϋ:[[Ljava/lang/String;

    .line 118
    .line 119
    array-length v15, v14

    .line 120
    move v2, v3

    .line 121
    :goto_1
    if-ge v2, v15, :cond_5

    .line 122
    .line 123
    aget-object v5, v14, v2

    .line 124
    .line 125
    :try_start_2
    aget-object v7, v5, v3

    .line 126
    .line 127
    invoke-virtual {v12, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .line 132
    .line 133
    :catch_2
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_a

    .line 146
    .line 147
    :cond_6
    new-instance v2, Lo/sl;

    .line 148
    .line 149
    invoke-direct {v2, v9, v13}, Lo/sl;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v9}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 160
    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    const/4 v2, -0x1

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    const v2, -0xe5e5e6

    .line 166
    .line 167
    .line 168
    :goto_2
    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v11, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v5, "map_app_package"

    .line 179
    .line 180
    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    move v5, v3

    .line 185
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    if-ge v5, v12, :cond_9

    .line 190
    .line 191
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    check-cast v12, [Ljava/lang/String;

    .line 196
    .line 197
    aget-object v12, v12, v3

    .line 198
    .line 199
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-eqz v12, :cond_8

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_9
    :goto_4
    new-instance v2, Lo/bl;

    .line 213
    .line 214
    invoke-direct {v2, v1, v13, v3}, Lo/bl;-><init>(Lo/vl;Ljava/util/ArrayList;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 218
    .line 219
    .line 220
    sget v2, Lo/if;->spinner_music_app:I

    .line 221
    .line 222
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Landroid/widget/Spinner;

    .line 227
    .line 228
    if-nez v2, :cond_a

    .line 229
    .line 230
    goto/16 :goto_a

    .line 231
    .line 232
    :cond_a
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    new-instance v5, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    sget-object v12, Lo/vl;->ά:[[Ljava/lang/String;

    .line 242
    .line 243
    array-length v13, v12

    .line 244
    move v14, v3

    .line 245
    :goto_5
    if-ge v14, v13, :cond_b

    .line 246
    .line 247
    aget-object v15, v12, v14

    .line 248
    .line 249
    :try_start_3
    aget-object v7, v15, v3

    .line 250
    .line 251
    invoke-virtual {v4, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 255
    .line 256
    .line 257
    :catch_3
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_d

    .line 265
    .line 266
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    new-instance v4, Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    const-string v5, "\u672a\u68c0\u6d4b\u5230\u5df2\u5b89\u88c5\u7684\u97f3\u4e50\u8f6f\u4ef6"

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v9}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_c

    .line 284
    .line 285
    const v5, -0x666667

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_c
    const v5, -0x99999a

    .line 290
    .line 291
    .line 292
    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    .line 294
    .line 295
    const/high16 v5, 0x41500000    # 13.0f

    .line 296
    .line 297
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Landroid/view/ViewGroup;

    .line 305
    .line 306
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_d
    new-instance v4, Lo/sl;

    .line 311
    .line 312
    invoke-direct {v4, v9, v5}, Lo/sl;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v9}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 323
    .line 324
    if-eqz v4, :cond_e

    .line 325
    .line 326
    const/4 v4, -0x1

    .line 327
    goto :goto_7

    .line 328
    :cond_e
    const v4, -0xe5e5e6

    .line 329
    .line 330
    .line 331
    :goto_7
    invoke-direct {v7, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v11, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    const-string v7, "music_app_package"

    .line 342
    .line 343
    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    move v7, v3

    .line 348
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-ge v7, v9, :cond_10

    .line 353
    .line 354
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    check-cast v9, [Ljava/lang/String;

    .line 359
    .line 360
    aget-object v9, v9, v3

    .line 361
    .line 362
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    if-eqz v9, :cond_f

    .line 367
    .line 368
    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 369
    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_10
    :goto_9
    new-instance v4, Lo/bl;

    .line 376
    .line 377
    const/4 v7, 0x1

    .line 378
    invoke-direct {v4, v1, v5, v7}, Lo/bl;-><init>(Lo/vl;Ljava/util/ArrayList;I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 382
    .line 383
    .line 384
    :goto_a
    sget v2, Lo/if;->btn_fullscreen_apps:I

    .line 385
    .line 386
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    sget v4, Lo/if;->btn_statusbar_hidden_apps:I

    .line 391
    .line 392
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    if-eqz v2, :cond_11

    .line 397
    .line 398
    new-instance v5, Lo/uk;

    .line 399
    .line 400
    const/16 v7, 0xf

    .line 401
    .line 402
    invoke-direct {v5, v1, v7}, Lo/uk;-><init>(Lo/vl;I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    :cond_11
    const/16 v2, 0x10

    .line 409
    .line 410
    if-eqz v4, :cond_12

    .line 411
    .line 412
    new-instance v5, Lo/uk;

    .line 413
    .line 414
    invoke-direct {v5, v1, v2}, Lo/uk;-><init>(Lo/vl;I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    .line 419
    .line 420
    :cond_12
    sget v4, Lo/if;->btn_autostart_app:I

    .line 421
    .line 422
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    sget v5, Lo/if;->tv_autostart_app_value:I

    .line 427
    .line 428
    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    check-cast v5, Landroid/widget/TextView;

    .line 433
    .line 434
    sget v7, Lo/if;->sw_autostart_return_home:I

    .line 435
    .line 436
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    check-cast v7, Landroid/widget/Switch;

    .line 441
    .line 442
    sget v9, Lo/if;->btn_autostart_delay:I

    .line 443
    .line 444
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    sget v12, Lo/if;->tv_autostart_delay_value:I

    .line 449
    .line 450
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v12

    .line 454
    check-cast v12, Landroid/widget/TextView;

    .line 455
    .line 456
    iget-object v13, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 457
    .line 458
    invoke-virtual {v13, v11, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 459
    .line 460
    .line 461
    move-result-object v14

    .line 462
    const-string v15, "autostart_package"

    .line 463
    .line 464
    invoke-interface {v14, v15, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v15

    .line 468
    const-string v6, "autostart_return_home"

    .line 469
    .line 470
    invoke-interface {v14, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    const-string v2, "autostart_delay"

    .line 475
    .line 476
    const/4 v3, 0x6

    .line 477
    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-eqz v5, :cond_14

    .line 482
    .line 483
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-eqz v3, :cond_13

    .line 488
    .line 489
    const-string v3, "\u672a\u8bbe\u7f6e"

    .line 490
    .line 491
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_13
    :try_start_4
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 500
    .line 501
    .line 502
    move-result-object v13

    .line 503
    const/4 v0, 0x0

    .line 504
    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 505
    .line 506
    .line 507
    move-result-object v13

    .line 508
    invoke-virtual {v3, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 517
    .line 518
    .line 519
    goto :goto_b

    .line 520
    :catch_4
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    :cond_14
    :goto_b
    if-eqz v12, :cond_15

    .line 524
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v2, "\u79d2"

    .line 534
    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    .line 544
    .line 545
    :cond_15
    if-eqz v7, :cond_16

    .line 546
    .line 547
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 548
    .line 549
    .line 550
    new-instance v0, Lo/gk;

    .line 551
    .line 552
    const/4 v2, 0x1

    .line 553
    invoke-direct {v0, v2, v14}, Lo/gk;-><init>(ILandroid/content/SharedPreferences;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 557
    .line 558
    .line 559
    :cond_16
    if-eqz v4, :cond_17

    .line 560
    .line 561
    new-instance v0, Lo/kk;

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    invoke-direct {v0, v1, v5, v2}, Lo/kk;-><init>(Lo/vl;Landroid/widget/TextView;I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    .line 569
    .line 570
    :cond_17
    if-eqz v9, :cond_18

    .line 571
    .line 572
    new-instance v0, Lo/kk;

    .line 573
    .line 574
    const/4 v2, 0x1

    .line 575
    invoke-direct {v0, v1, v12, v2}, Lo/kk;-><init>(Lo/vl;Landroid/widget/TextView;I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    .line 580
    .line 581
    :cond_18
    sget v0, Lo/if;->sw_click_sound:I

    .line 582
    .line 583
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    check-cast v0, Landroid/widget/Switch;

    .line 588
    .line 589
    sget v2, Lo/if;->layout_click_sound_volume:I

    .line 590
    .line 591
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    sget v3, Lo/if;->seekbar_click_sound_volume:I

    .line 596
    .line 597
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    check-cast v3, Landroid/widget/SeekBar;

    .line 602
    .line 603
    sget v4, Lo/if;->tv_click_sound_volume_value:I

    .line 604
    .line 605
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    check-cast v4, Landroid/widget/TextView;

    .line 610
    .line 611
    iget-object v5, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 612
    .line 613
    const/4 v6, 0x0

    .line 614
    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    invoke-static {}, Lo/u;->ˋ()Lo/u;

    .line 619
    .line 620
    .line 621
    move-result-object v7

    .line 622
    if-eqz v0, :cond_1b

    .line 623
    .line 624
    const-string v9, "click_sound_enabled"

    .line 625
    .line 626
    invoke-interface {v5, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 627
    .line 628
    .line 629
    move-result v9

    .line 630
    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 631
    .line 632
    .line 633
    if-eqz v2, :cond_1a

    .line 634
    .line 635
    if-eqz v9, :cond_19

    .line 636
    .line 637
    const/4 v6, 0x0

    .line 638
    goto :goto_c

    .line 639
    :cond_19
    const/16 v6, 0x8

    .line 640
    .line 641
    :goto_c
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    :cond_1a
    new-instance v6, Lo/ck;

    .line 645
    .line 646
    invoke-direct {v6, v5, v7, v2}, Lo/ck;-><init>(Landroid/content/SharedPreferences;Lo/u;Landroid/view/View;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 650
    .line 651
    .line 652
    :cond_1b
    if-eqz v3, :cond_1c

    .line 653
    .line 654
    if-eqz v4, :cond_1c

    .line 655
    .line 656
    const-string v0, "click_sound_volume"

    .line 657
    .line 658
    const/16 v2, 0x32

    .line 659
    .line 660
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 665
    .line 666
    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v0, "%"

    .line 676
    .line 677
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    .line 686
    .line 687
    new-instance v0, Lo/cl;

    .line 688
    .line 689
    invoke-direct {v0, v4, v7, v5}, Lo/cl;-><init>(Landroid/widget/TextView;Lo/u;Landroid/content/SharedPreferences;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 693
    .line 694
    .line 695
    :cond_1c
    sget v0, Lo/if;->switch_swc_enable:I

    .line 696
    .line 697
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Landroid/widget/Switch;

    .line 702
    .line 703
    sget v2, Lo/if;->switch_swc_360:I

    .line 704
    .line 705
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    check-cast v2, Landroid/widget/Switch;

    .line 710
    .line 711
    sget v3, Lo/if;->swc_keys_container:I

    .line 712
    .line 713
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    check-cast v3, Landroid/widget/LinearLayout;

    .line 718
    .line 719
    if-eqz v0, :cond_25

    .line 720
    .line 721
    if-nez v3, :cond_1d

    .line 722
    .line 723
    goto/16 :goto_14

    .line 724
    .line 725
    :cond_1d
    iget-object v4, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 726
    .line 727
    const/4 v5, 0x0

    .line 728
    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    const-string v7, "swc_custom_enabled"

    .line 733
    .line 734
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 735
    .line 736
    .line 737
    move-result v7

    .line 738
    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 739
    .line 740
    .line 741
    if-eqz v7, :cond_1e

    .line 742
    .line 743
    move v7, v5

    .line 744
    goto :goto_d

    .line 745
    :cond_1e
    const/16 v7, 0x8

    .line 746
    .line 747
    :goto_d
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 748
    .line 749
    .line 750
    if-eqz v2, :cond_1f

    .line 751
    .line 752
    const-string v7, "swc_360_enabled"

    .line 753
    .line 754
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 755
    .line 756
    .line 757
    move-result v7

    .line 758
    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 759
    .line 760
    .line 761
    new-instance v7, Lo/gk;

    .line 762
    .line 763
    invoke-direct {v7, v5, v6}, Lo/gk;-><init>(ILandroid/content/SharedPreferences;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 767
    .line 768
    .line 769
    :cond_1f
    invoke-static {v4}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    if-eqz v2, :cond_20

    .line 774
    .line 775
    const v5, -0xcccccd

    .line 776
    .line 777
    .line 778
    goto :goto_e

    .line 779
    :cond_20
    const v5, -0x111112

    .line 780
    .line 781
    .line 782
    :goto_e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 783
    .line 784
    .line 785
    move-result-object v7

    .line 786
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 791
    .line 792
    new-instance v9, Lo/hk;

    .line 793
    .line 794
    invoke-direct {v9, v6, v3}, Lo/hk;-><init>(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 801
    .line 802
    .line 803
    const/4 v0, 0x0

    .line 804
    :goto_f
    sget-object v9, Lo/vl;->ή:[I

    .line 805
    .line 806
    array-length v12, v9

    .line 807
    if-ge v0, v12, :cond_25

    .line 808
    .line 809
    new-instance v12, Landroid/widget/LinearLayout;

    .line 810
    .line 811
    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 812
    .line 813
    .line 814
    const/4 v13, 0x0

    .line 815
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 816
    .line 817
    .line 818
    const/16 v13, 0x10

    .line 819
    .line 820
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 821
    .line 822
    .line 823
    const/high16 v14, 0x41800000    # 16.0f

    .line 824
    .line 825
    mul-float/2addr v14, v7

    .line 826
    float-to-int v14, v14

    .line 827
    const/high16 v15, 0x41200000    # 10.0f

    .line 828
    .line 829
    mul-float/2addr v15, v7

    .line 830
    float-to-int v15, v15

    .line 831
    invoke-virtual {v12, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 832
    .line 833
    .line 834
    new-instance v15, Landroid/widget/TextView;

    .line 835
    .line 836
    invoke-direct {v15, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 837
    .line 838
    .line 839
    sget-object v16, Lo/vl;->ί:[Ljava/lang/String;

    .line 840
    .line 841
    aget-object v13, v16, v0

    .line 842
    .line 843
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    .line 845
    .line 846
    const/high16 v13, 0x41600000    # 14.0f

    .line 847
    .line 848
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 852
    .line 853
    .line 854
    const/4 v13, 0x1

    .line 855
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 856
    .line 857
    .line 858
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 859
    .line 860
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 861
    .line 862
    .line 863
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 864
    .line 865
    move-object/from16 v17, v11

    .line 866
    .line 867
    const/high16 v11, 0x3f800000    # 1.0f

    .line 868
    .line 869
    move-object/from16 v18, v10

    .line 870
    .line 871
    const/4 v10, -0x2

    .line 872
    move/from16 v19, v14

    .line 873
    .line 874
    const/4 v14, 0x0

    .line 875
    invoke-direct {v13, v14, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 876
    .line 877
    .line 878
    const/high16 v11, 0x41400000    # 12.0f

    .line 879
    .line 880
    mul-float/2addr v11, v7

    .line 881
    float-to-int v11, v11

    .line 882
    iput v11, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 883
    .line 884
    invoke-virtual {v12, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    .line 886
    .line 887
    new-instance v11, Landroid/widget/TextView;

    .line 888
    .line 889
    invoke-direct {v11, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 890
    .line 891
    .line 892
    const-string v13, "\u2192"

    .line 893
    .line 894
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    .line 896
    .line 897
    const/high16 v13, 0x41600000    # 14.0f

    .line 898
    .line 899
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 900
    .line 901
    .line 902
    const v13, -0x7f000001

    .line 903
    .line 904
    .line 905
    and-int/2addr v13, v5

    .line 906
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 907
    .line 908
    .line 909
    const/high16 v13, 0x40800000    # 4.0f

    .line 910
    .line 911
    mul-float/2addr v13, v7

    .line 912
    float-to-int v13, v13

    .line 913
    const/high16 v14, 0x41000000    # 8.0f

    .line 914
    .line 915
    mul-float/2addr v14, v7

    .line 916
    float-to-int v15, v14

    .line 917
    const/4 v10, 0x0

    .line 918
    invoke-virtual {v11, v13, v10, v15, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 919
    .line 920
    .line 921
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 922
    .line 923
    const/4 v13, -0x2

    .line 924
    invoke-direct {v10, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v12, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    .line 929
    .line 930
    new-instance v10, Landroid/widget/Spinner;

    .line 931
    .line 932
    invoke-direct {v10, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 933
    .line 934
    .line 935
    if-eqz v2, :cond_21

    .line 936
    .line 937
    const v11, -0xa0a0b

    .line 938
    .line 939
    .line 940
    goto :goto_10

    .line 941
    :cond_21
    const v11, -0xd5d5d6

    .line 942
    .line 943
    .line 944
    :goto_10
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 945
    .line 946
    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v10, v13}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    .line 957
    .line 958
    new-instance v11, Lo/dl;

    .line 959
    .line 960
    iget-object v13, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 961
    .line 962
    sget-object v14, Lo/vl;->α:[Ljava/lang/String;

    .line 963
    .line 964
    invoke-direct {v11, v13, v14, v5, v7}, Lo/dl;-><init>(Landroid/content/Context;[Ljava/lang/String;IF)V

    .line 965
    .line 966
    .line 967
    const v13, 0x1090009

    .line 968
    .line 969
    .line 970
    invoke-virtual {v11, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 974
    .line 975
    .line 976
    new-instance v11, Ljava/lang/StringBuilder;

    .line 977
    .line 978
    const-string v13, "swc_mapping_"

    .line 979
    .line 980
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    aget v13, v9, v0

    .line 984
    .line 985
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v11

    .line 992
    invoke-interface {v6, v11, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v11

    .line 996
    const/4 v13, 0x0

    .line 997
    :goto_11
    sget-object v14, Lo/vl;->ΰ:[Ljava/lang/String;

    .line 998
    .line 999
    array-length v15, v14

    .line 1000
    if-ge v13, v15, :cond_23

    .line 1001
    .line 1002
    aget-object v14, v14, v13

    .line 1003
    .line 1004
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v14

    .line 1008
    if-eqz v14, :cond_22

    .line 1009
    .line 1010
    goto :goto_12

    .line 1011
    :cond_22
    add-int/lit8 v13, v13, 0x1

    .line 1012
    .line 1013
    goto :goto_11

    .line 1014
    :cond_23
    const/4 v13, 0x0

    .line 1015
    :goto_12
    invoke-virtual {v10, v13}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v11, Lo/el;

    .line 1019
    .line 1020
    invoke-direct {v11, v0, v6, v1}, Lo/el;-><init>(ILandroid/content/SharedPreferences;Lo/vl;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v10, v11}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1024
    .line 1025
    .line 1026
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1027
    .line 1028
    const/high16 v13, 0x43200000    # 160.0f

    .line 1029
    .line 1030
    mul-float/2addr v13, v7

    .line 1031
    float-to-int v13, v13

    .line 1032
    const/4 v14, -0x2

    .line 1033
    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v12, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1040
    .line 1041
    .line 1042
    array-length v9, v9

    .line 1043
    const/4 v10, 0x1

    .line 1044
    sub-int/2addr v9, v10

    .line 1045
    if-ge v0, v9, :cond_24

    .line 1046
    .line 1047
    new-instance v9, Landroid/view/View;

    .line 1048
    .line 1049
    invoke-direct {v9, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1050
    .line 1051
    .line 1052
    const v11, 0x1affffff

    .line 1053
    .line 1054
    .line 1055
    and-int/2addr v11, v5

    .line 1056
    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1057
    .line 1058
    .line 1059
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1060
    .line 1061
    const/4 v12, -0x1

    .line 1062
    invoke-direct {v11, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1063
    .line 1064
    .line 1065
    move/from16 v13, v19

    .line 1066
    .line 1067
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1068
    .line 1069
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1070
    .line 1071
    invoke-virtual {v3, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_13

    .line 1075
    :cond_24
    const/4 v12, -0x1

    .line 1076
    :goto_13
    add-int/lit8 v0, v0, 0x1

    .line 1077
    .line 1078
    move-object/from16 v11, v17

    .line 1079
    .line 1080
    move-object/from16 v10, v18

    .line 1081
    .line 1082
    goto/16 :goto_f

    .line 1083
    .line 1084
    :cond_25
    :goto_14
    move-object/from16 v18, v10

    .line 1085
    .line 1086
    move-object/from16 v17, v11

    .line 1087
    .line 1088
    sget v0, Lo/if;->et_tts_input:I

    .line 1089
    .line 1090
    move-object/from16 v2, v18

    .line 1091
    .line 1092
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    move-object v6, v0

    .line 1097
    check-cast v6, Landroid/widget/EditText;

    .line 1098
    .line 1099
    sget v0, Lo/if;->btn_tts_add:I

    .line 1100
    .line 1101
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    check-cast v0, Landroid/widget/Button;

    .line 1106
    .line 1107
    sget v3, Lo/if;->tts_list_container:I

    .line 1108
    .line 1109
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    move-object v8, v3

    .line 1114
    check-cast v8, Landroid/widget/LinearLayout;

    .line 1115
    .line 1116
    if-eqz v6, :cond_27

    .line 1117
    .line 1118
    if-eqz v0, :cond_27

    .line 1119
    .line 1120
    if-nez v8, :cond_26

    .line 1121
    .line 1122
    goto :goto_15

    .line 1123
    :cond_26
    iget-object v3, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1124
    .line 1125
    move-object/from16 v10, v17

    .line 1126
    .line 1127
    const/4 v4, 0x0

    .line 1128
    invoke-virtual {v3, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v7

    .line 1132
    invoke-virtual {v1, v7, v8}, Lo/vl;->Ι(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 1133
    .line 1134
    .line 1135
    new-instance v3, Lo/xc;

    .line 1136
    .line 1137
    const/4 v9, 0x1

    .line 1138
    move-object v4, v3

    .line 1139
    move-object v5, v1

    .line 1140
    invoke-direct/range {v4 .. v9}, Lo/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_16

    .line 1147
    :cond_27
    :goto_15
    move-object/from16 v10, v17

    .line 1148
    .line 1149
    :goto_16
    sget v0, Lo/if;->sw_turn_signal_camera:I

    .line 1150
    .line 1151
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    check-cast v0, Landroid/widget/Switch;

    .line 1156
    .line 1157
    if-nez v0, :cond_28

    .line 1158
    .line 1159
    goto :goto_18

    .line 1160
    :cond_28
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1161
    .line 1162
    if-eqz v3, :cond_29

    .line 1163
    .line 1164
    iget-object v3, v3, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 1165
    .line 1166
    goto :goto_17

    .line 1167
    :cond_29
    const/4 v3, 0x0

    .line 1168
    :goto_17
    iget-object v4, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1169
    .line 1170
    const/4 v5, 0x0

    .line 1171
    invoke-virtual {v4, v10, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v4

    .line 1175
    const-string v6, "turn_signal_camera_enabled"

    .line 1176
    .line 1177
    invoke-static {v4, v6, v5}, Lcom/byd/launcher/stability/CameraPreferences;->flag(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v4

    .line 1181
    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1182
    .line 1183
    .line 1184
    new-instance v4, Lo/ik;

    .line 1185
    .line 1186
    invoke-direct {v4, v5, v3}, Lo/ik;-><init>(ILjava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1190
    .line 1191
    .line 1192
    sget v0, Lo/if;->btn_turn_signal_window_adjust:I

    .line 1193
    .line 1194
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    if-eqz v0, :cond_2a

    .line 1199
    .line 1200
    if-eqz v3, :cond_2a

    .line 1201
    .line 1202
    new-instance v2, Lo/Ϙ;

    .line 1203
    .line 1204
    const/16 v4, 0xb

    .line 1205
    .line 1206
    invoke-direct {v2, v4, v1, v3}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    .line 1211
    .line 1212
    :cond_2a
    :goto_18
    return-void

    .line 1213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
