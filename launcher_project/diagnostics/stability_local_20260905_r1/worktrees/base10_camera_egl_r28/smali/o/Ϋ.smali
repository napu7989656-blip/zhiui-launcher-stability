.class public final synthetic Lo/Ϋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lo/Ϋ;->Ͱ:I

    iput-object p1, p0, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    iput-object p4, p0, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    iput v0, p0, Lo/Ϋ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    iput-object p3, p0, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/ff;Lo/df;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x7

    iput v0, p0, Lo/Ϋ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    iput-object p3, p0, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/Ϋ;->ͱ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo/Ϋ;->Ͱ:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "NavBarSvc"

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1a

    .line 16
    .line 17
    :pswitch_0
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lo/vl;

    .line 20
    .line 21
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Landroid/view/View;

    .line 24
    .line 25
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/lang/Runnable;

    .line 28
    .line 29
    sget-object v4, Lo/vl;->Χ:[Lo/ul;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v0, v0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 35
    .line 36
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lo/mj;

    .line 46
    .line 47
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 50
    .line 51
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lo/lj;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-lez v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    int-to-float v2, v4

    .line 74
    const v5, 0x3ea8f5c3    # 0.33f

    .line 75
    .line 76
    .line 77
    mul-float/2addr v2, v5

    .line 78
    float-to-int v2, v2

    .line 79
    iget-object v5, v3, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    .line 87
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    .line 89
    iget-object v2, v3, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    iput-boolean v7, v3, Lo/lj;->Ͳ:Z

    .line 95
    .line 96
    iget-object v0, v0, Lo/mj;->ˏ:Lo/oj;

    .line 97
    .line 98
    iget v2, v0, Lo/oj;->ʹ:I

    .line 99
    .line 100
    if-gtz v2, :cond_0

    .line 101
    .line 102
    iput v4, v0, Lo/oj;->ʹ:I

    .line 103
    .line 104
    :cond_0
    return-void

    .line 105
    :pswitch_2
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lo/ze;

    .line 108
    .line 109
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, [I

    .line 112
    .line 113
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Landroid/widget/GridLayout;

    .line 116
    .line 117
    iget-object v0, v0, Lo/ze;->ˏ:Lo/ff;

    .line 118
    .line 119
    iget-object v4, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 120
    .line 121
    if-nez v4, :cond_1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    array-length v4, v2

    .line 125
    move v8, v6

    .line 126
    :goto_0
    if-ge v8, v4, :cond_3

    .line 127
    .line 128
    aget v9, v2, v8

    .line 129
    .line 130
    iget-object v10, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Landroid/widget/SeekBar;

    .line 137
    .line 138
    if-eqz v9, :cond_2

    .line 139
    .line 140
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    check-cast v10, Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-lez v10, :cond_2

    .line 151
    .line 152
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    .line 158
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_4

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    new-array v3, v5, [I

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 181
    .line 182
    sget v4, Lo/if;->qs_volume_slider:I

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Landroid/view/View;

    .line 193
    .line 194
    new-array v4, v5, [I

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 197
    .line 198
    .line 199
    aget v2, v3, v7

    .line 200
    .line 201
    aget v3, v4, v7

    .line 202
    .line 203
    sub-int/2addr v2, v3

    .line 204
    if-eqz v2, :cond_5

    .line 205
    .line 206
    iget-object v0, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 207
    .line 208
    sget v3, Lo/if;->qs_slider_wrapper:I

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    int-to-float v2, v2

    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 218
    .line 219
    .line 220
    :cond_5
    :goto_1
    return-void

    .line 221
    :pswitch_3
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lo/qe;

    .line 224
    .line 225
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v2, Landroid/widget/SeekBar;

    .line 228
    .line 229
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v3, Landroid/widget/TextView;

    .line 232
    .line 233
    iget-object v0, v0, Lo/qe;->ˋ:Lo/ff;

    .line 234
    .line 235
    invoke-virtual {v0}, Lo/ff;->Ͷ()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-ltz v5, :cond_6

    .line 240
    .line 241
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 242
    .line 243
    new-instance v6, Lo/be;

    .line 244
    .line 245
    invoke-direct {v6, v2, v5, v3, v4}, Lo/be;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    .line 250
    .line 251
    :cond_6
    return-void

    .line 252
    :pswitch_4
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Lo/ff;

    .line 255
    .line 256
    iget-object v2, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v2, Lo/df;

    .line 259
    .line 260
    iget-object v3, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v3, Ljava/lang/String;

    .line 263
    .line 264
    sget-object v4, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    iget-boolean v4, v2, Lo/df;->ͻ:Z

    .line 270
    .line 271
    invoke-virtual {v0, v2, v4, v3}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_5
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 278
    .line 279
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v2, Ljava/lang/String;

    .line 282
    .line 283
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v3, Lorg/json/JSONObject;

    .line 286
    .line 287
    invoke-static {v0, v2, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->Ͳ(Lcom/byd/launcher/ipc/CoreServiceClient;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_6
    iget-object v0, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v0, Ljava/lang/String;

    .line 294
    .line 295
    iget-object v2, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v2, Landroid/widget/ImageView;

    .line 298
    .line 299
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v3, Landroid/graphics/Bitmap;

    .line 302
    .line 303
    sget-object v4, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 304
    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_7

    .line 314
    .line 315
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    .line 317
    .line 318
    :cond_7
    return-void

    .line 319
    :pswitch_7
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Lo/ak;

    .line 322
    .line 323
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Ljava/lang/String;

    .line 326
    .line 327
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v3, Landroid/graphics/Bitmap;

    .line 330
    .line 331
    iget v4, v0, Lo/ak;->Ͷ:I

    .line 332
    .line 333
    if-ltz v4, :cond_8

    .line 334
    .line 335
    iget-object v4, v0, Lo/ak;->ˋ:Ljava/util/List;

    .line 336
    .line 337
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-nez v5, :cond_8

    .line 342
    .line 343
    iget v0, v0, Lo/ak;->Ͷ:I

    .line 344
    .line 345
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    rem-int/2addr v0, v5

    .line 350
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_9

    .line 361
    .line 362
    :cond_8
    invoke-static {v3}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V

    .line 363
    .line 364
    .line 365
    :cond_9
    return-void

    .line 366
    :pswitch_8
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lo/g8;

    .line 369
    .line 370
    iget-object v4, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v4, Lorg/json/JSONObject;

    .line 373
    .line 374
    iget-object v5, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v5, [D

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    const-string v7, "indoorTemp"

    .line 382
    .line 383
    const-wide/high16 v8, -0x3e20000000000000L    # -2.147483648E9

    .line 384
    .line 385
    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 386
    .line 387
    .line 388
    move-result-wide v10

    .line 389
    const-string v7, "outdoorTemp"

    .line 390
    .line 391
    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 392
    .line 393
    .line 394
    move-result-wide v7

    .line 395
    const-string v9, "pm25Indoor"

    .line 396
    .line 397
    invoke-virtual {v4, v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    const-string v12, "pm25Outdoor"

    .line 402
    .line 403
    invoke-virtual {v4, v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    const-string v12, "altitude"

    .line 408
    .line 409
    const-wide/16 v13, 0x1

    .line 410
    .line 411
    invoke-virtual {v4, v12, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 412
    .line 413
    .line 414
    move-result-wide v15

    .line 415
    cmpl-double v4, v15, v13

    .line 416
    .line 417
    if-eqz v4, :cond_b

    .line 418
    .line 419
    const-wide/16 v17, 0x0

    .line 420
    .line 421
    cmpl-double v4, v15, v17

    .line 422
    .line 423
    if-nez v4, :cond_a

    .line 424
    .line 425
    goto :goto_2

    .line 426
    :cond_a
    move-wide v4, v15

    .line 427
    goto :goto_3

    .line 428
    :cond_b
    :goto_2
    aget-wide v4, v5, v6

    .line 429
    .line 430
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v12, "\u73af\u5883\u4fe1\u606f: \u8f66\u5185\u6e29\u5ea6="

    .line 433
    .line 434
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-wide/high16 v15, -0x3e20000000000000L    # -2.147483648E9

    .line 438
    .line 439
    cmpl-double v12, v10, v15

    .line 440
    .line 441
    const-string v15, "\u00b0C"

    .line 442
    .line 443
    const-string v16, "\u672a\u83b7\u53d6"

    .line 444
    .line 445
    if-nez v12, :cond_c

    .line 446
    .line 447
    move-object/from16 v10, v16

    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    :goto_4
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v10, " \u8f66\u5916\u6e29\u5ea6="

    .line 469
    .line 470
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-wide/high16 v10, -0x3e20000000000000L    # -2.147483648E9

    .line 474
    .line 475
    cmpl-double v10, v7, v10

    .line 476
    .line 477
    if-nez v10, :cond_d

    .line 478
    .line 479
    move-object/from16 v7, v16

    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v7, " \u6d77\u62d4="

    .line 501
    .line 502
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    cmpl-double v7, v4, v13

    .line 506
    .line 507
    if-nez v7, :cond_e

    .line 508
    .line 509
    goto :goto_6

    .line 510
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v8, "m"

    .line 519
    .line 520
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v16

    .line 527
    :goto_6
    move-object/from16 v7, v16

    .line 528
    .line 529
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v7, " PM2.5\u5185="

    .line 533
    .line 534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v7, " PM2.5\u5916="

    .line 541
    .line 542
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    invoke-static {v3, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v0, v0, Lo/g8;->Ͱ:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 558
    .line 559
    iget-object v13, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 560
    .line 561
    if-eqz v13, :cond_10

    .line 562
    .line 563
    iput-wide v4, v13, Lo/vl;->Γ:D

    .line 564
    .line 565
    iput v9, v13, Lo/vl;->Δ:I

    .line 566
    .line 567
    iput v2, v13, Lo/vl;->Ε:I

    .line 568
    .line 569
    iget-object v0, v13, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 570
    .line 571
    if-nez v0, :cond_f

    .line 572
    .line 573
    goto :goto_7

    .line 574
    :cond_f
    iget-object v0, v13, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 575
    .line 576
    new-instance v3, Lo/xk;

    .line 577
    .line 578
    move-object v12, v3

    .line 579
    move-wide v14, v4

    .line 580
    move/from16 v16, v9

    .line 581
    .line 582
    move/from16 v17, v2

    .line 583
    .line 584
    invoke-direct/range {v12 .. v17}, Lo/xk;-><init>(Lo/vl;DII)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    .line 589
    .line 590
    :cond_10
    :goto_7
    return-void

    .line 591
    :pswitch_9
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 594
    .line 595
    iget-object v4, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v4, Ljava/lang/String;

    .line 598
    .line 599
    iget-object v8, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v8, Lorg/json/JSONObject;

    .line 602
    .line 603
    sget-object v9, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    const-string v9, "doorStateChanged: door="

    .line 609
    .line 610
    const-string v10, "trunkStateChanged: state="

    .line 611
    .line 612
    const-string v11, "insThemeChanged: value="

    .line 613
    .line 614
    const-string v12, "nightSystemModeSwitchChanged: value="

    .line 615
    .line 616
    const-string v13, "powerLevelChanged: level="

    .line 617
    .line 618
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 619
    .line 620
    .line 621
    move-result v14

    .line 622
    const/16 v15, 0x8

    .line 623
    .line 624
    sparse-switch v14, :sswitch_data_0

    .line 625
    .line 626
    .line 627
    goto/16 :goto_8

    .line 628
    .line 629
    :sswitch_0
    const-string v5, "doorStateChanged"

    .line 630
    .line 631
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    if-eqz v4, :cond_11

    .line 636
    .line 637
    const/16 v5, 0xb

    .line 638
    .line 639
    goto/16 :goto_9

    .line 640
    .line 641
    :sswitch_1
    const-string v5, "acStoped"

    .line 642
    .line 643
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    if-eqz v4, :cond_11

    .line 648
    .line 649
    move v5, v7

    .line 650
    goto/16 :goto_9

    .line 651
    .line 652
    :sswitch_2
    const-string v5, "acCycleModeChanged"

    .line 653
    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    if-eqz v4, :cond_11

    .line 659
    .line 660
    const/4 v5, 0x5

    .line 661
    goto/16 :goto_9

    .line 662
    .line 663
    :sswitch_3
    const-string v5, "tyrePressureChanged"

    .line 664
    .line 665
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    if-eqz v4, :cond_11

    .line 670
    .line 671
    const/4 v5, 0x7

    .line 672
    goto/16 :goto_9

    .line 673
    .line 674
    :sswitch_4
    const-string v5, "turnLightStateChanged"

    .line 675
    .line 676
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_11

    .line 681
    .line 682
    const/16 v5, 0x13

    .line 683
    .line 684
    goto/16 :goto_9

    .line 685
    .line 686
    :sswitch_5
    const-string v5, "acStarted"

    .line 687
    .line 688
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    if-eqz v4, :cond_11

    .line 693
    .line 694
    move v5, v6

    .line 695
    goto/16 :goto_9

    .line 696
    .line 697
    :sswitch_6
    const-string v5, "gearboxAutoModeTypeChanged"

    .line 698
    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    if-eqz v4, :cond_11

    .line 704
    .line 705
    move v5, v15

    .line 706
    goto/16 :goto_9

    .line 707
    .line 708
    :sswitch_7
    const-string v5, "lightOff"

    .line 709
    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    if-eqz v4, :cond_11

    .line 715
    .line 716
    const/16 v5, 0x12

    .line 717
    .line 718
    goto/16 :goto_9

    .line 719
    .line 720
    :sswitch_8
    const-string v5, "insThemeChanged"

    .line 721
    .line 722
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v4

    .line 726
    if-eqz v4, :cond_11

    .line 727
    .line 728
    const/16 v5, 0x10

    .line 729
    .line 730
    goto/16 :goto_9

    .line 731
    .line 732
    :sswitch_9
    const-string v5, "trunkStateChanged"

    .line 733
    .line 734
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    if-eqz v4, :cond_11

    .line 739
    .line 740
    const/16 v5, 0xa

    .line 741
    .line 742
    goto/16 :goto_9

    .line 743
    .line 744
    :sswitch_a
    const-string v5, "lightOn"

    .line 745
    .line 746
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    if-eqz v4, :cond_11

    .line 751
    .line 752
    const/16 v5, 0x11

    .line 753
    .line 754
    goto :goto_9

    .line 755
    :sswitch_b
    const-string v5, "acWindLevelChanged"

    .line 756
    .line 757
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    if-eqz v4, :cond_11

    .line 762
    .line 763
    const/4 v5, 0x3

    .line 764
    goto :goto_9

    .line 765
    :sswitch_c
    const-string v6, "acTemperatureChanged"

    .line 766
    .line 767
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    if-eqz v4, :cond_11

    .line 772
    .line 773
    goto :goto_9

    .line 774
    :sswitch_d
    const-string v5, "doorLockStatusChanged"

    .line 775
    .line 776
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    if-eqz v4, :cond_11

    .line 781
    .line 782
    const/16 v5, 0x9

    .line 783
    .line 784
    goto :goto_9

    .line 785
    :sswitch_e
    const-string v5, "acDefrostStateChanged"

    .line 786
    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v4

    .line 791
    if-eqz v4, :cond_11

    .line 792
    .line 793
    const/4 v5, 0x6

    .line 794
    goto :goto_9

    .line 795
    :sswitch_f
    const-string v5, "nightSystemModeSwitchChanged"

    .line 796
    .line 797
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    if-eqz v4, :cond_11

    .line 802
    .line 803
    const/16 v5, 0xf

    .line 804
    .line 805
    goto :goto_9

    .line 806
    :sswitch_10
    const-string v5, "powerLevelChanged"

    .line 807
    .line 808
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    if-eqz v4, :cond_11

    .line 813
    .line 814
    const/16 v5, 0xe

    .line 815
    .line 816
    goto :goto_9

    .line 817
    :sswitch_11
    const-string v5, "acWindModeChanged"

    .line 818
    .line 819
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v4

    .line 823
    if-eqz v4, :cond_11

    .line 824
    .line 825
    const/4 v5, 0x4

    .line 826
    goto :goto_9

    .line 827
    :sswitch_12
    const-string v5, "operationModeChanged"

    .line 828
    .line 829
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v4

    .line 833
    if-eqz v4, :cond_11

    .line 834
    .line 835
    const/16 v5, 0xc

    .line 836
    .line 837
    goto :goto_9

    .line 838
    :sswitch_13
    const-string v5, "roadSurfaceChanged"

    .line 839
    .line 840
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 844
    if-eqz v4, :cond_11

    .line 845
    .line 846
    const/16 v5, 0xd

    .line 847
    .line 848
    goto :goto_9

    .line 849
    :cond_11
    :goto_8
    move v5, v2

    .line 850
    :goto_9
    const-string v4, "mode"

    .line 851
    .line 852
    const-string v6, "light"

    .line 853
    .line 854
    const-string v7, "level"

    .line 855
    .line 856
    const-string v14, "area"

    .line 857
    .line 858
    const-string v15, "state"

    .line 859
    .line 860
    const-string v1, "value"

    .line 861
    .line 862
    packed-switch v5, :pswitch_data_1

    .line 863
    .line 864
    .line 865
    :pswitch_a
    goto/16 :goto_13

    .line 866
    .line 867
    :pswitch_b
    :try_start_2
    invoke-virtual {v8, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 872
    .line 873
    if-eqz v2, :cond_24

    .line 874
    .line 875
    const/4 v4, 0x1

    .line 876
    if-ne v1, v4, :cond_12

    .line 877
    .line 878
    const/4 v1, 0x0

    .line 879
    invoke-virtual {v2, v1, v1}, Lo/qi;->ʹ(IZ)V

    .line 880
    .line 881
    .line 882
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 883
    .line 884
    invoke-virtual {v0, v4, v1}, Lo/qi;->ʹ(IZ)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_13

    .line 888
    .line 889
    :cond_12
    const/4 v0, 0x0

    .line 890
    const/4 v5, 0x2

    .line 891
    if-ne v1, v5, :cond_13

    .line 892
    .line 893
    invoke-virtual {v2, v0, v4}, Lo/qi;->ʹ(IZ)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_13

    .line 897
    .line 898
    :cond_13
    const/4 v0, 0x4

    .line 899
    if-ne v1, v0, :cond_24

    .line 900
    .line 901
    invoke-virtual {v2, v4, v4}, Lo/qi;->ʹ(IZ)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_13

    .line 905
    .line 906
    :pswitch_c
    invoke-virtual {v8, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    const/4 v2, 0x4

    .line 911
    if-ne v1, v2, :cond_14

    .line 912
    .line 913
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 914
    .line 915
    if-eqz v2, :cond_14

    .line 916
    .line 917
    const/4 v0, 0x0

    .line 918
    invoke-virtual {v2, v0, v0}, Lo/qi;->ʹ(IZ)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_13

    .line 922
    .line 923
    :cond_14
    const/4 v2, 0x5

    .line 924
    if-ne v1, v2, :cond_24

    .line 925
    .line 926
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 927
    .line 928
    if-eqz v0, :cond_24

    .line 929
    .line 930
    const/4 v1, 0x0

    .line 931
    const/4 v2, 0x1

    .line 932
    invoke-virtual {v0, v2, v1}, Lo/qi;->ʹ(IZ)V

    .line 933
    .line 934
    .line 935
    goto/16 :goto_13

    .line 936
    .line 937
    :pswitch_d
    invoke-virtual {v8, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    const/4 v2, 0x4

    .line 942
    if-ne v1, v2, :cond_15

    .line 943
    .line 944
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 945
    .line 946
    if-eqz v2, :cond_15

    .line 947
    .line 948
    const/4 v0, 0x0

    .line 949
    const/4 v1, 0x1

    .line 950
    invoke-virtual {v2, v0, v1}, Lo/qi;->ʹ(IZ)V

    .line 951
    .line 952
    .line 953
    goto/16 :goto_13

    .line 954
    .line 955
    :cond_15
    const/4 v2, 0x5

    .line 956
    if-ne v1, v2, :cond_24

    .line 957
    .line 958
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ό:Lo/qi;

    .line 959
    .line 960
    if-eqz v0, :cond_24

    .line 961
    .line 962
    const/4 v1, 0x1

    .line 963
    invoke-virtual {v0, v1, v1}, Lo/qi;->ʹ(IZ)V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_13

    .line 967
    .line 968
    :pswitch_e
    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-static {v0}, Lo/ci;->Ͱ(Landroid/content/Context;)I

    .line 988
    .line 989
    .line 990
    move-result v2

    .line 991
    const/4 v4, 0x2

    .line 992
    if-ne v2, v4, :cond_24

    .line 993
    .line 994
    if-ltz v1, :cond_24

    .line 995
    .line 996
    const/4 v2, 0x1

    .line 997
    if-ne v1, v2, :cond_16

    .line 998
    .line 999
    goto :goto_a

    .line 1000
    :pswitch_f
    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-static {v0}, Lo/ci;->Ͱ(Landroid/content/Context;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    const/4 v4, 0x2

    .line 1024
    if-ne v2, v4, :cond_24

    .line 1025
    .line 1026
    if-ltz v1, :cond_24

    .line 1027
    .line 1028
    if-nez v1, :cond_16

    .line 1029
    .line 1030
    :goto_a
    const/4 v1, 0x1

    .line 1031
    goto :goto_b

    .line 1032
    :cond_16
    const/4 v1, 0x0

    .line 1033
    :goto_b
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ύ(Z)V

    .line 1034
    .line 1035
    .line 1036
    goto/16 :goto_13

    .line 1037
    .line 1038
    :pswitch_10
    invoke-virtual {v8, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1039
    .line 1040
    .line 1041
    move-result v1

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    const-string v4, " lastPowerLevel="

    .line 1051
    .line 1052
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    iget v4, v0, Lcom/byd/launcher/NavBarService;->Έ:I

    .line 1056
    .line 1057
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1068
    .line 1069
    if-eqz v2, :cond_18

    .line 1070
    .line 1071
    if-gtz v1, :cond_17

    .line 1072
    .line 1073
    const/4 v4, 0x1

    .line 1074
    iput-boolean v4, v2, Lo/vl;->Κ:Z

    .line 1075
    .line 1076
    goto :goto_c

    .line 1077
    :cond_17
    iget v2, v0, Lcom/byd/launcher/NavBarService;->Έ:I

    .line 1078
    .line 1079
    if-gtz v2, :cond_18

    .line 1080
    .line 1081
    const/4 v2, 0x2

    .line 1082
    if-lt v1, v2, :cond_18

    .line 1083
    .line 1084
    const-string v2, "Power OFF->ON, resetting trip data"

    .line 1085
    .line 1086
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1090
    .line 1091
    const/4 v4, 0x0

    .line 1092
    invoke-virtual {v2, v4}, Lo/vl;->Μ(Lorg/json/JSONObject;)V

    .line 1093
    .line 1094
    .line 1095
    :cond_18
    :goto_c
    iput v1, v0, Lcom/byd/launcher/NavBarService;->Έ:I

    .line 1096
    .line 1097
    goto/16 :goto_13

    .line 1098
    .line 1099
    :pswitch_11
    const-string v1, "door"

    .line 1100
    .line 1101
    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1102
    .line 1103
    .line 1104
    move-result v1

    .line 1105
    invoke-virtual {v8, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1106
    .line 1107
    .line 1108
    move-result v2

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    const-string v5, " state="

    .line 1118
    .line 1119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    invoke-static {v3, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    const/4 v4, 0x6

    .line 1133
    if-ne v1, v4, :cond_1a

    .line 1134
    .line 1135
    const/4 v4, 0x1

    .line 1136
    if-ne v2, v4, :cond_19

    .line 1137
    .line 1138
    const/4 v4, 0x1

    .line 1139
    goto :goto_d

    .line 1140
    :cond_19
    const/4 v4, 0x0

    .line 1141
    :goto_d
    iput-boolean v4, v0, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 1142
    .line 1143
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1144
    .line 1145
    if-eqz v4, :cond_1a

    .line 1146
    .line 1147
    iget-boolean v5, v0, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 1148
    .line 1149
    invoke-virtual {v4, v5}, Lo/vl;->έ(Z)V

    .line 1150
    .line 1151
    .line 1152
    :cond_1a
    const/4 v4, 0x1

    .line 1153
    if-lt v1, v4, :cond_1b

    .line 1154
    .line 1155
    const/4 v5, 0x4

    .line 1156
    if-gt v1, v5, :cond_1b

    .line 1157
    .line 1158
    if-ne v2, v4, :cond_1b

    .line 1159
    .line 1160
    const/4 v1, 0x0

    .line 1161
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ώ:Z

    .line 1162
    .line 1163
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1164
    .line 1165
    if-eqz v0, :cond_24

    .line 1166
    .line 1167
    invoke-virtual {v0, v1}, Lo/vl;->ή(Z)V

    .line 1168
    .line 1169
    .line 1170
    goto/16 :goto_13

    .line 1171
    .line 1172
    :cond_1b
    if-lt v1, v4, :cond_24

    .line 1173
    .line 1174
    const/4 v4, 0x4

    .line 1175
    if-gt v1, v4, :cond_24

    .line 1176
    .line 1177
    if-nez v2, :cond_24

    .line 1178
    .line 1179
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1180
    .line 1181
    new-instance v2, Lo/m9;

    .line 1182
    .line 1183
    const/16 v4, 0xd

    .line 1184
    .line 1185
    invoke-direct {v2, v0, v4}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1186
    .line 1187
    .line 1188
    const-wide/16 v4, 0x12c

    .line 1189
    .line 1190
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_13

    .line 1194
    .line 1195
    :pswitch_12
    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1196
    .line 1197
    .line 1198
    move-result v1

    .line 1199
    invoke-virtual {v8, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1200
    .line 1201
    .line 1202
    move-result v1

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    if-ltz v1, :cond_1d

    .line 1219
    .line 1220
    if-lez v1, :cond_1c

    .line 1221
    .line 1222
    const/4 v1, 0x1

    .line 1223
    goto :goto_e

    .line 1224
    :cond_1c
    const/4 v1, 0x0

    .line 1225
    :goto_e
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 1226
    .line 1227
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1228
    .line 1229
    if-eqz v1, :cond_24

    .line 1230
    .line 1231
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 1232
    .line 1233
    invoke-virtual {v1, v0}, Lo/vl;->έ(Z)V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_13

    .line 1237
    .line 1238
    :cond_1d
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->υ()V

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_13

    .line 1242
    .line 1243
    :pswitch_13
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1244
    .line 1245
    if-eqz v2, :cond_1e

    .line 1246
    .line 1247
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1248
    .line 1249
    .line 1250
    move-result v4

    .line 1251
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1252
    .line 1253
    .line 1254
    move-result v5

    .line 1255
    invoke-virtual {v2, v4, v5}, Lo/vl;->ά(II)V

    .line 1256
    .line 1257
    .line 1258
    :cond_1e
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1259
    .line 1260
    if-eqz v0, :cond_24

    .line 1261
    .line 1262
    iget-boolean v2, v0, Lo/nd;->Η:Z

    .line 1263
    .line 1264
    if-eqz v2, :cond_24

    .line 1265
    .line 1266
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    move-result v2

    .line 1270
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1271
    .line 1272
    .line 1273
    move-result v1

    .line 1274
    invoke-virtual {v0, v2, v1}, Lo/nd;->Ώ(II)V

    .line 1275
    .line 1276
    .line 1277
    goto/16 :goto_13

    .line 1278
    .line 1279
    :pswitch_14
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1280
    .line 1281
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1282
    .line 1283
    .line 1284
    move-result v2

    .line 1285
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    move-result v4

    .line 1289
    const/4 v5, 0x1

    .line 1290
    if-ne v4, v5, :cond_1f

    .line 1291
    .line 1292
    const/4 v4, 0x1

    .line 1293
    goto :goto_f

    .line 1294
    :cond_1f
    const/4 v4, 0x0

    .line 1295
    :goto_f
    invoke-virtual {v1, v2, v4}, Lo/Ζ;->ʹ(IZ)V

    .line 1296
    .line 1297
    .line 1298
    goto :goto_12

    .line 1299
    :pswitch_15
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1300
    .line 1301
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    iget v4, v1, Lo/Ζ;->ͻ:I

    .line 1306
    .line 1307
    if-eq v4, v2, :cond_23

    .line 1308
    .line 1309
    iput v2, v1, Lo/Ζ;->ͻ:I

    .line 1310
    .line 1311
    const/4 v2, 0x3

    .line 1312
    invoke-virtual {v1, v2}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 1313
    .line 1314
    .line 1315
    goto :goto_12

    .line 1316
    :pswitch_16
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1317
    .line 1318
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1319
    .line 1320
    .line 1321
    move-result v1

    .line 1322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1323
    .line 1324
    .line 1325
    rem-int/lit8 v1, v1, 0x8

    .line 1326
    .line 1327
    iget v2, v0, Lo/Ζ;->ͳ:I

    .line 1328
    .line 1329
    if-eq v2, v1, :cond_24

    .line 1330
    .line 1331
    iput v1, v0, Lo/Ζ;->ͳ:I

    .line 1332
    .line 1333
    const/16 v1, 0xc

    .line 1334
    .line 1335
    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 1336
    .line 1337
    .line 1338
    goto :goto_13

    .line 1339
    :pswitch_17
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1340
    .line 1341
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1342
    .line 1343
    .line 1344
    move-result v1

    .line 1345
    invoke-virtual {v0, v1}, Lo/Ζ;->ͳ(I)V

    .line 1346
    .line 1347
    .line 1348
    goto :goto_13

    .line 1349
    :pswitch_18
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1350
    .line 1351
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1352
    .line 1353
    .line 1354
    move-result v2

    .line 1355
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    const/4 v4, 0x1

    .line 1360
    if-ne v2, v4, :cond_20

    .line 1361
    .line 1362
    invoke-virtual {v0, v1}, Lo/Ζ;->ͱ(I)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_13

    .line 1366
    :cond_20
    const/4 v4, 0x2

    .line 1367
    if-ne v2, v4, :cond_21

    .line 1368
    .line 1369
    goto :goto_10

    .line 1370
    :cond_21
    if-nez v2, :cond_22

    .line 1371
    .line 1372
    invoke-virtual {v0, v1}, Lo/Ζ;->ͱ(I)V

    .line 1373
    .line 1374
    .line 1375
    :goto_10
    invoke-virtual {v0, v1}, Lo/Ζ;->Ͳ(I)V

    .line 1376
    .line 1377
    .line 1378
    goto :goto_13

    .line 1379
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    .line 1381
    .line 1382
    goto :goto_13

    .line 1383
    :pswitch_19
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1384
    .line 1385
    const/4 v2, 0x0

    .line 1386
    goto :goto_11

    .line 1387
    :pswitch_1a
    const/4 v2, 0x1

    .line 1388
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 1389
    .line 1390
    :goto_11
    invoke-virtual {v1, v2}, Lo/Ζ;->Ͱ(Z)V

    .line 1391
    .line 1392
    .line 1393
    :cond_23
    :goto_12
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->χ()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1394
    .line 1395
    .line 1396
    goto :goto_13

    .line 1397
    :catch_1
    move-exception v0

    .line 1398
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    const-string v2, "\u5904\u7406\u901a\u77e5\u5f02\u5e38: "

    .line 1401
    .line 1402
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-static {v0, v1, v3}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    :cond_24
    :goto_13
    return-void

    .line 1409
    :pswitch_1b
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 1410
    .line 1411
    move-object v2, v0

    .line 1412
    check-cast v2, Lcom/byd/launcher/NavBarService;

    .line 1413
    .line 1414
    iget-object v0, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 1415
    .line 1416
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1417
    .line 1418
    iget-object v4, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 1419
    .line 1420
    check-cast v4, Landroid/widget/ImageView;

    .line 1421
    .line 1422
    sget-object v5, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1423
    .line 1424
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    .line 1426
    .line 1427
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v5

    .line 1431
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v5

    .line 1435
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1436
    .line 1437
    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1438
    .line 1439
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 1440
    .line 1441
    .line 1442
    move-result v6

    .line 1443
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1444
    .line 1445
    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1446
    .line 1447
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 1448
    .line 1449
    .line 1450
    move-result v7

    .line 1451
    iget v8, v2, Lcom/byd/launcher/NavBarService;->ͺ:I

    .line 1452
    .line 1453
    if-lez v8, :cond_25

    .line 1454
    .line 1455
    goto :goto_14

    .line 1456
    :cond_25
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->Ψ()I

    .line 1457
    .line 1458
    .line 1459
    move-result v8

    .line 1460
    :goto_14
    if-gtz v8, :cond_26

    .line 1461
    .line 1462
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 1463
    .line 1464
    const/high16 v8, 0x42400000    # 48.0f

    .line 1465
    .line 1466
    mul-float/2addr v5, v8

    .line 1467
    float-to-int v8, v5

    .line 1468
    :cond_26
    sget-object v5, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 1469
    .line 1470
    if-eqz v5, :cond_27

    .line 1471
    .line 1472
    sget-object v0, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 1473
    .line 1474
    :cond_27
    sub-int v5, v7, v8

    .line 1475
    .line 1476
    invoke-static {v0, v6, v7, v5, v8}, Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    if-eqz v0, :cond_28

    .line 1481
    .line 1482
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1483
    .line 1484
    .line 1485
    move-result v5

    .line 1486
    if-nez v5, :cond_28

    .line 1487
    .line 1488
    iput-object v0, v2, Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;

    .line 1489
    .line 1490
    iget-object v5, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1491
    .line 1492
    new-instance v6, Lo/j9;

    .line 1493
    .line 1494
    const/4 v7, 0x0

    .line 1495
    invoke-direct {v6, v4, v0, v7}, Lo/j9;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1499
    .line 1500
    .line 1501
    goto :goto_15

    .line 1502
    :catchall_0
    move-exception v0

    .line 1503
    goto :goto_16

    .line 1504
    :catch_2
    move-exception v0

    .line 1505
    :try_start_4
    const-string v4, "generateNavBlurFromFull failed"

    .line 1506
    .line 1507
    invoke-static {v3, v4, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1508
    .line 1509
    .line 1510
    :cond_28
    :goto_15
    const/4 v0, 0x0

    .line 1511
    iput-boolean v0, v2, Lcom/byd/launcher/NavBarService;->ϖ:Z

    .line 1512
    .line 1513
    return-void

    .line 1514
    :goto_16
    const/4 v3, 0x0

    .line 1515
    iput-boolean v3, v2, Lcom/byd/launcher/NavBarService;->ϖ:Z

    .line 1516
    .line 1517
    throw v0

    .line 1518
    :pswitch_1c
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 1519
    .line 1520
    move-object v2, v0

    .line 1521
    check-cast v2, Lcom/byd/launcher/AppLauncherActivity;

    .line 1522
    .line 1523
    iget-object v0, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 1524
    .line 1525
    check-cast v0, Ljava/lang/String;

    .line 1526
    .line 1527
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 1528
    .line 1529
    move-object v11, v3

    .line 1530
    check-cast v11, Ljava/lang/String;

    .line 1531
    .line 1532
    iget-object v3, v2, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    .line 1533
    .line 1534
    const-string v4, "pm uninstall "

    .line 1535
    .line 1536
    :try_start_5
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 1537
    .line 1538
    .line 1539
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v5

    .line 1543
    if-nez v5, :cond_29

    .line 1544
    .line 1545
    new-instance v0, Lo/Ψ;

    .line 1546
    .line 1547
    const/4 v4, 0x3

    .line 1548
    invoke-direct {v0, v2, v4}, Lo/Ψ;-><init>(Lcom/byd/launcher/AppLauncherActivity;I)V

    .line 1549
    .line 1550
    .line 1551
    goto :goto_18

    .line 1552
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    const/16 v4, 0x2710

    .line 1565
    .line 1566
    invoke-static {v0, v4}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v12

    .line 1570
    if-eqz v12, :cond_2a

    .line 1571
    .line 1572
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    const-string v4, "success"

    .line 1577
    .line 1578
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1579
    .line 1580
    .line 1581
    move-result v0

    .line 1582
    if-eqz v0, :cond_2a

    .line 1583
    .line 1584
    move v13, v7

    .line 1585
    goto :goto_17

    .line 1586
    :cond_2a
    move v13, v6

    .line 1587
    :goto_17
    new-instance v0, Lo/ϕ;

    .line 1588
    .line 1589
    const/4 v9, 0x1

    .line 1590
    move-object v8, v0

    .line 1591
    move-object v10, v2

    .line 1592
    invoke-direct/range {v8 .. v13}, Lo/ϕ;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1593
    .line 1594
    .line 1595
    :goto_18
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1596
    .line 1597
    .line 1598
    goto :goto_19

    .line 1599
    :catch_3
    move-exception v0

    .line 1600
    new-instance v4, Lo/Ω;

    .line 1601
    .line 1602
    const/4 v5, 0x2

    .line 1603
    invoke-direct {v4, v2, v0, v5}, Lo/Ω;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/lang/Exception;I)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1607
    .line 1608
    .line 1609
    :goto_19
    return-void

    .line 1610
    :goto_1a
    iget-object v0, v1, Lo/Ϋ;->ͱ:Ljava/lang/Object;

    .line 1611
    .line 1612
    check-cast v0, Lo/f8;

    .line 1613
    .line 1614
    iget-object v2, v1, Lo/Ϋ;->Ͳ:Ljava/lang/Object;

    .line 1615
    .line 1616
    check-cast v2, Lo/mm;

    .line 1617
    .line 1618
    iget-object v3, v1, Lo/Ϋ;->ͳ:Ljava/lang/Object;

    .line 1619
    .line 1620
    check-cast v3, Lo/pm;

    .line 1621
    .line 1622
    iget-object v0, v0, Lo/f8;->ͱ:Ljava/lang/Object;

    .line 1623
    .line 1624
    check-cast v0, Lo/vl;

    .line 1625
    .line 1626
    iget-object v4, v0, Lo/vl;->Ͷ:Lo/km;

    .line 1627
    .line 1628
    invoke-virtual {v4, v2}, Lo/km;->ˋ(Lo/mm;)V

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual {v0}, Lo/vl;->Ο()V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v0}, Lo/vl;->ͳ()V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v0}, Lo/vl;->Ύ()Ljava/util/HashSet;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    iget-object v2, v3, Lo/pm;->ˏ:Ljava/util/Set;

    .line 1642
    .line 1643
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1644
    .line 1645
    .line 1646
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1650
    .line 1651
    .line 1652
    return-void

    .line 1653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
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

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    :sswitch_data_0
    .sparse-switch
        -0x7cfccb79 -> :sswitch_13
        -0x65d09056 -> :sswitch_12
        -0x5e880619 -> :sswitch_11
        -0x4d835fcb -> :sswitch_10
        -0x3d999daa -> :sswitch_f
        -0x20b3981c -> :sswitch_e
        -0x1d67b317 -> :sswitch_d
        -0x18de519e -> :sswitch_c
        -0x14e7d906 -> :sswitch_b
        0xa2a5195 -> :sswitch_a
        0xf6fc4b7 -> :sswitch_9
        0x1d9197b9 -> :sswitch_8
        0x3b1fe079 -> :sswitch_7
        0x44ee134c -> :sswitch_6
        0x4c2641ff -> :sswitch_5
        0x5301e21c -> :sswitch_4
        0x560e8617 -> :sswitch_3
        0x5a73a30d -> :sswitch_2
        0x6593f2e3 -> :sswitch_1
        0x78cb83b1 -> :sswitch_0
    .end sparse-switch

    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_12
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
