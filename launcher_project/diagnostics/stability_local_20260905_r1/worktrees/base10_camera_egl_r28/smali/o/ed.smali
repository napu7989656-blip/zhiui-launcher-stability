.class public final synthetic Lo/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:[Z

.field public final synthetic Ͱ:Lo/fd;

.field public final synthetic ͱ:Lorg/json/JSONObject;

.field public final synthetic Ͳ:[[Ljava/lang/String;

.field public final synthetic ͳ:I

.field public final synthetic Ͷ:Landroid/widget/GridLayout;

.field public final synthetic ͷ:I

.field public final synthetic ͺ:I


# direct methods
.method public synthetic constructor <init>(Lo/fd;Lorg/json/JSONObject;[[Ljava/lang/String;I[ZLandroid/widget/GridLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ed;->Ͱ:Lo/fd;

    iput-object p2, p0, Lo/ed;->ͱ:Lorg/json/JSONObject;

    iput-object p3, p0, Lo/ed;->Ͳ:[[Ljava/lang/String;

    iput p4, p0, Lo/ed;->ͳ:I

    iput-object p5, p0, Lo/ed;->ʹ:[Z

    iput-object p6, p0, Lo/ed;->Ͷ:Landroid/widget/GridLayout;

    iput p7, p0, Lo/ed;->ͷ:I

    iput p8, p0, Lo/ed;->ͺ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lo/ed;->ͱ:Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v1, p0, Lo/ed;->Ͳ:[[Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lo/ed;->ͳ:I

    .line 6
    .line 7
    iget-object v3, p0, Lo/ed;->ʹ:[Z

    .line 8
    .line 9
    iget-object v4, p0, Lo/ed;->Ͷ:Landroid/widget/GridLayout;

    .line 10
    .line 11
    iget-object v5, p0, Lo/ed;->Ͱ:Lo/fd;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v6, "getSunroofState"

    .line 17
    .line 18
    const-string v7, "PiP inside_light from prefs active="

    .line 19
    .line 20
    const-string v8, "PiP daylight val="

    .line 21
    .line 22
    :try_start_0
    const-string v9, "value"

    .line 23
    .line 24
    const-string v10, "state"

    .line 25
    .line 26
    const-string v11, "status"

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    aget-object v9, v1, v2

    .line 42
    .line 43
    const/4 v10, 0x5

    .line 44
    aget-object v9, v9, v10

    .line 45
    .line 46
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v5, v5, Lo/fd;->ʹ:Lo/nd;

    .line 51
    .line 52
    const/4 v11, 0x2

    .line 53
    const/4 v13, 0x1

    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    :try_start_1
    const-string v9, "moonroof_breath"

    .line 57
    .line 58
    aget-object v14, v1, v2

    .line 59
    .line 60
    aget-object v14, v14, v12

    .line 61
    .line 62
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    const/16 v6, 0xfd

    .line 69
    .line 70
    if-ne v0, v6, :cond_6

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_0
    aget-object v9, v1, v2

    .line 75
    .line 76
    aget-object v9, v9, v10

    .line 77
    .line 78
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_1

    .line 83
    .line 84
    const-string v6, "moonroof_vent"

    .line 85
    .line 86
    aget-object v9, v1, v2

    .line 87
    .line 88
    aget-object v9, v9, v12

    .line 89
    .line 90
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    const/16 v6, 0xfc

    .line 97
    .line 98
    if-ne v0, v6, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const-string v6, "getDayTimeLightState"

    .line 102
    .line 103
    aget-object v9, v1, v2

    .line 104
    .line 105
    aget-object v9, v9, v10

    .line 106
    .line 107
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    const-string v9, "PiPManager"

    .line 112
    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    if-ne v0, v13, :cond_2

    .line 116
    .line 117
    move v6, v13

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    move v6, v12

    .line 120
    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, " active="

    .line 129
    .line 130
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    const-string v6, "getInsideLightDoorState"

    .line 142
    .line 143
    aget-object v8, v1, v2

    .line 144
    .line 145
    aget-object v8, v8, v10

    .line 146
    .line 147
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_7

    .line 152
    .line 153
    const-string v6, "inside_light"

    .line 154
    .line 155
    aget-object v8, v1, v2

    .line 156
    .line 157
    aget-object v8, v8, v12

    .line 158
    .line 159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_4

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    const-string v6, "getEnergyFeedback"

    .line 167
    .line 168
    aget-object v7, v1, v2

    .line 169
    .line 170
    aget-object v7, v7, v10

    .line 171
    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_5

    .line 177
    .line 178
    if-ne v0, v11, :cond_6

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    if-lez v0, :cond_6

    .line 182
    .line 183
    :goto_1
    move v6, v13

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    move v6, v12

    .line 186
    goto :goto_4

    .line 187
    :cond_7
    :goto_2
    iget-object v0, v5, Lo/nd;->ˋ:Landroid/content/Context;

    .line 188
    .line 189
    const-string v6, "vehicle_ctrl_prefs"

    .line 190
    .line 191
    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v6, "inside_light_active"

    .line 196
    .line 197
    invoke-interface {v0, v6, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_3
    invoke-static {v9, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_4
    aput-boolean v6, v3, v2

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-ge v2, v0, :cond_16

    .line 223
    .line 224
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    .line 229
    .line 230
    .line 231
    instance-of v3, v0, Landroid/widget/LinearLayout;

    .line 232
    .line 233
    if-eqz v3, :cond_16

    .line 234
    .line 235
    check-cast v0, Landroid/widget/LinearLayout;

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-lez v3, :cond_b

    .line 242
    .line 243
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    instance-of v3, v3, Landroid/widget/ImageView;

    .line 248
    .line 249
    if-eqz v3, :cond_b

    .line 250
    .line 251
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Landroid/widget/ImageView;

    .line 256
    .line 257
    if-eqz v6, :cond_8

    .line 258
    .line 259
    aget-object v4, v1, v2

    .line 260
    .line 261
    const/4 v7, 0x3

    .line 262
    aget-object v4, v4, v7

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    aget-object v4, v1, v2

    .line 266
    .line 267
    aget-object v4, v4, v11

    .line 268
    .line 269
    :goto_5
    invoke-virtual {v5, v4}, Lo/nd;->Ͳ(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_9

    .line 274
    .line 275
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    .line 277
    .line 278
    :cond_9
    if-eqz v6, :cond_a

    .line 279
    .line 280
    iget v4, p0, Lo/ed;->ͷ:I

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_a
    iget v4, p0, Lo/ed;->ͺ:I

    .line 284
    .line 285
    :goto_6
    :try_start_3
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 290
    .line 291
    .line 292
    :cond_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    const/16 v4, 0x20

    .line 297
    .line 298
    if-le v3, v13, :cond_f

    .line 299
    .line 300
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    instance-of v3, v3, Landroid/widget/TextView;

    .line 305
    .line 306
    if-eqz v3, :cond_f

    .line 307
    .line 308
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Landroid/widget/TextView;

    .line 313
    .line 314
    iget-object v7, v5, Lo/nd;->ˋ:Landroid/content/Context;

    .line 315
    .line 316
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 325
    .line 326
    and-int/lit8 v7, v7, 0x30

    .line 327
    .line 328
    if-ne v7, v4, :cond_c

    .line 329
    .line 330
    move v7, v13

    .line 331
    goto :goto_7

    .line 332
    :cond_c
    move v7, v12

    .line 333
    :goto_7
    if-eqz v6, :cond_d

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_d
    if-eqz v7, :cond_e

    .line 337
    .line 338
    :goto_8
    const/4 v7, -0x1

    .line 339
    goto :goto_9

    .line 340
    :cond_e
    const/high16 v7, -0x1000000

    .line 341
    .line 342
    :goto_9
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    .line 344
    .line 345
    :cond_f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-le v3, v11, :cond_16

    .line 350
    .line 351
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    instance-of v3, v3, Landroid/widget/TextView;

    .line 356
    .line 357
    if-eqz v3, :cond_16

    .line 358
    .line 359
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Landroid/widget/TextView;

    .line 364
    .line 365
    const-string v3, "energy_feedback"

    .line 366
    .line 367
    aget-object v1, v1, v2

    .line 368
    .line 369
    aget-object v1, v1, v12

    .line 370
    .line 371
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_11

    .line 376
    .line 377
    if-eqz v6, :cond_10

    .line 378
    .line 379
    const-string v1, "\u8f83\u5927"

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_10
    const-string v1, "\u6807\u51c6"

    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_11
    if-eqz v6, :cond_12

    .line 386
    .line 387
    const-string v1, "\u5df2\u5f00\u542f"

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_12
    const-string v1, "\u5df2\u5173\u95ed"

    .line 391
    .line 392
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v5, Lo/nd;->ˋ:Landroid/content/Context;

    .line 396
    .line 397
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 406
    .line 407
    and-int/lit8 v1, v1, 0x30

    .line 408
    .line 409
    if-ne v1, v4, :cond_13

    .line 410
    .line 411
    move v12, v13

    .line 412
    :cond_13
    if-eqz v6, :cond_14

    .line 413
    .line 414
    const v1, -0x33000001    # -1.3421772E8f

    .line 415
    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_14
    if-eqz v12, :cond_15

    .line 419
    .line 420
    const v1, 0x66ffffff

    .line 421
    .line 422
    .line 423
    goto :goto_b

    .line 424
    :cond_15
    const/high16 v1, 0x66000000

    .line 425
    .line 426
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 427
    .line 428
    .line 429
    goto :goto_c

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    :cond_16
    :goto_c
    return-void
.end method
