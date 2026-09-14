.class public final synthetic Lo/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Ljava/lang/Object;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:I


# direct methods
.method public synthetic constructor <init>(Lo/gh;ILjava/lang/String;Lo/fh;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lo/fj;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fj;->ʹ:Ljava/lang/Object;

    iput p2, p0, Lo/fj;->ͳ:I

    iput-object p3, p0, Lo/fj;->Ͳ:Ljava/lang/Object;

    iput-object p4, p0, Lo/fj;->ͱ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/gj;Lo/nj;Lorg/json/JSONObject;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo/fj;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fj;->ʹ:Ljava/lang/Object;

    iput-object p2, p0, Lo/fj;->Ͳ:Ljava/lang/Object;

    iput-object p3, p0, Lo/fj;->ͱ:Ljava/lang/Object;

    iput p4, p0, Lo/fj;->ͳ:I

    return-void
.end method

.method public synthetic constructor <init>(Lo/gj;Lorg/json/JSONObject;Lo/nj;I)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lo/fj;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/fj;->ʹ:Ljava/lang/Object;

    iput-object p2, p0, Lo/fj;->ͱ:Ljava/lang/Object;

    iput-object p3, p0, Lo/fj;->Ͳ:Ljava/lang/Object;

    iput p4, p0, Lo/fj;->ͳ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lo/fj;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "position"

    .line 6
    .line 7
    const-string v4, "value"

    .line 8
    .line 9
    const-string v5, "VehicleCtrlMgr"

    .line 10
    .line 11
    iget v6, p0, Lo/fj;->ͳ:I

    .line 12
    .line 13
    iget-object v7, p0, Lo/fj;->ͱ:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, p0, Lo/fj;->Ͳ:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v9, p0, Lo/fj;->ʹ:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_14

    .line 23
    .line 24
    :pswitch_0
    check-cast v9, Lo/gj;

    .line 25
    .line 26
    check-cast v7, Lorg/json/JSONObject;

    .line 27
    .line 28
    check-cast v8, Lo/nj;

    .line 29
    .line 30
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    const-string v0, "percent"

    .line 37
    .line 38
    invoke-virtual {v7, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v3, v8, Lo/nj;->ͼ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    iget v4, v8, Lo/nj;->ͺ:I

    .line 53
    .line 54
    :try_start_1
    iget v7, v8, Lo/nj;->ͻ:I

    .line 55
    .line 56
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, v8, Lo/nj;->ͼ:I

    .line 65
    .line 66
    if-le v0, v4, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v1, v2

    .line 70
    :goto_0
    iput-boolean v1, v8, Lo/nj;->Ͷ:Z

    .line 71
    .line 72
    if-eq v3, v0, :cond_1

    .line 73
    .line 74
    iget-object v0, v9, Lo/gj;->ͱ:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lo/oj;

    .line 77
    .line 78
    invoke-static {v0, v6}, Lo/oj;->Ͱ(Lo/oj;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "querySlider parse error: "

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_1
    return-void

    .line 94
    :pswitch_1
    check-cast v9, Lo/gj;

    .line 95
    .line 96
    check-cast v8, Lo/nj;

    .line 97
    .line 98
    check-cast v7, Lorg/json/JSONObject;

    .line 99
    .line 100
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v0, "getSunroofPosition"

    .line 104
    .line 105
    const-string v2, "queryToggle: no valid field in response for "

    .line 106
    .line 107
    :try_start_2
    iget-boolean v10, v8, Lo/nj;->Ͷ:Z

    .line 108
    .line 109
    iget-object v11, v8, Lo/nj;->ͷ:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    const-string v12, "state"

    .line 115
    .line 116
    const-string v13, "status"

    .line 117
    .line 118
    const/high16 v14, -0x80000000

    .line 119
    .line 120
    invoke-virtual {v7, v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v7, v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v7, v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 133
    .line 134
    .line 135
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    iget-object v4, v8, Lo/nj;->ͳ:Ljava/lang/String;

    .line 137
    .line 138
    if-ne v3, v14, :cond_2

    .line 139
    .line 140
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_13

    .line 156
    .line 157
    :cond_2
    const-string v2, "getDayTimeLightState"

    .line 158
    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 163
    iget-object v7, v9, Lo/gj;->ͱ:Ljava/lang/Object;

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    if-ne v3, v1, :cond_3

    .line 168
    .line 169
    move v0, v1

    .line 170
    goto :goto_2

    .line 171
    :cond_3
    const/4 v0, 0x0

    .line 172
    :goto_2
    :try_start_4
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    if-eqz v0, :cond_17

    .line 176
    .line 177
    goto/16 :goto_d

    .line 178
    .line 179
    :cond_4
    const-string v2, "getInsideLightDoorState"

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    move-object v0, v7

    .line 188
    check-cast v0, Lo/oj;

    .line 189
    .line 190
    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 191
    .line 192
    const-string v2, "vehicle_ctrl_prefs"

    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v2, "inside_light_active"

    .line 200
    .line 201
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 206
    .line 207
    move v2, v3

    .line 208
    if-eqz v0, :cond_17

    .line 209
    .line 210
    goto/16 :goto_d

    .line 211
    .line 212
    :cond_5
    const/4 v2, 0x0

    .line 213
    const-string v9, "getTrunkState"

    .line 214
    .line 215
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-eqz v9, :cond_7

    .line 220
    .line 221
    if-lez v3, :cond_6

    .line 222
    .line 223
    move v0, v1

    .line 224
    goto :goto_3

    .line 225
    :cond_6
    move v0, v2

    .line 226
    :goto_3
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 227
    .line 228
    if-lez v3, :cond_17

    .line 229
    .line 230
    goto/16 :goto_b

    .line 231
    .line 232
    :cond_7
    const-string v9, "getEngineVoiceSimulatorState"

    .line 233
    .line 234
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_9

    .line 239
    .line 240
    if-ne v3, v1, :cond_8

    .line 241
    .line 242
    move v0, v1

    .line 243
    goto :goto_4

    .line 244
    :cond_8
    move v0, v2

    .line 245
    :goto_4
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 246
    .line 247
    if-eqz v0, :cond_17

    .line 248
    .line 249
    goto/16 :goto_d

    .line 250
    .line 251
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-eqz v9, :cond_b

    .line 256
    .line 257
    const-string v9, "\u5929\u7a97\u900f\u6c14"

    .line 258
    .line 259
    iget-object v12, v8, Lo/nj;->ˏ:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_b

    .line 266
    .line 267
    const/4 v0, 0x5

    .line 268
    if-ne v3, v0, :cond_a

    .line 269
    .line 270
    move v0, v1

    .line 271
    goto :goto_5

    .line 272
    :cond_a
    move v0, v2

    .line 273
    :goto_5
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 274
    .line 275
    if-eqz v0, :cond_17

    .line 276
    .line 277
    goto/16 :goto_d

    .line 278
    .line 279
    :cond_b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_d

    .line 284
    .line 285
    const-string v0, "\u5929\u7a97\u901a\u98ce"

    .line 286
    .line 287
    iget-object v9, v8, Lo/nj;->ˏ:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_d

    .line 294
    .line 295
    const/4 v0, 0x6

    .line 296
    if-ne v3, v0, :cond_c

    .line 297
    .line 298
    move v0, v1

    .line 299
    goto :goto_6

    .line 300
    :cond_c
    move v0, v2

    .line 301
    :goto_6
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 302
    .line 303
    if-eqz v0, :cond_17

    .line 304
    .line 305
    goto/16 :goto_d

    .line 306
    .line 307
    :cond_d
    const-string v0, "getSocSaveSwitch"

    .line 308
    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const/4 v9, 0x2

    .line 314
    if-eqz v0, :cond_10

    .line 315
    .line 316
    if-ne v3, v9, :cond_e

    .line 317
    .line 318
    move v0, v1

    .line 319
    goto :goto_7

    .line 320
    :cond_e
    move v0, v2

    .line 321
    :goto_7
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 322
    .line 323
    if-ne v3, v9, :cond_f

    .line 324
    .line 325
    const-string v0, "\u5f3a\u5236\u4fdd\u7535"

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_f
    const-string v0, "\u667a\u80fd\u4fdd\u7535"

    .line 329
    .line 330
    :goto_8
    iput-object v0, v8, Lo/nj;->ˏ:Ljava/lang/String;

    .line 331
    .line 332
    const/4 v0, 0x0

    .line 333
    iput-object v0, v8, Lo/nj;->ͷ:Ljava/lang/String;

    .line 334
    .line 335
    goto :goto_f

    .line 336
    :cond_10
    const-string v0, "getEnergyFeedback"

    .line 337
    .line 338
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_13

    .line 343
    .line 344
    if-ne v3, v9, :cond_11

    .line 345
    .line 346
    move v0, v1

    .line 347
    goto :goto_9

    .line 348
    :cond_11
    move v0, v2

    .line 349
    :goto_9
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 350
    .line 351
    if-ne v3, v9, :cond_12

    .line 352
    .line 353
    const-string v0, "\u8f83\u5927"

    .line 354
    .line 355
    goto :goto_e

    .line 356
    :cond_12
    const-string v0, "\u6807\u51c6"

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_13
    const-string v0, "getWindowState"

    .line 360
    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_15

    .line 366
    .line 367
    if-lez v3, :cond_14

    .line 368
    .line 369
    move v0, v1

    .line 370
    goto :goto_a

    .line 371
    :cond_14
    move v0, v2

    .line 372
    :goto_a
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 373
    .line 374
    if-eqz v0, :cond_17

    .line 375
    .line 376
    :goto_b
    const-string v0, "\u5df2\u6253\u5f00"

    .line 377
    .line 378
    goto :goto_e

    .line 379
    :cond_15
    if-lez v3, :cond_16

    .line 380
    .line 381
    move v0, v1

    .line 382
    goto :goto_c

    .line 383
    :cond_16
    move v0, v2

    .line 384
    :goto_c
    :try_start_5
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 385
    .line 386
    if-eqz v0, :cond_17

    .line 387
    .line 388
    :goto_d
    const-string v0, "\u5df2\u5f00\u542f"

    .line 389
    .line 390
    goto :goto_e

    .line 391
    :cond_17
    const-string v0, "\u5df2\u5173\u95ed"

    .line 392
    .line 393
    :goto_e
    :try_start_6
    iput-object v0, v8, Lo/nj;->ͷ:Ljava/lang/String;

    .line 394
    .line 395
    :goto_f
    if-nez v11, :cond_18

    .line 396
    .line 397
    move v0, v1

    .line 398
    goto :goto_10

    .line 399
    :cond_18
    move v0, v2

    .line 400
    :goto_10
    iget-object v3, v8, Lo/nj;->ͷ:Ljava/lang/String;

    .line 401
    .line 402
    if-nez v3, :cond_19

    .line 403
    .line 404
    move v4, v1

    .line 405
    goto :goto_11

    .line 406
    :cond_19
    move v4, v2

    .line 407
    :goto_11
    if-ne v0, v4, :cond_1b

    .line 408
    .line 409
    if-eqz v11, :cond_1a

    .line 410
    .line 411
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_1a

    .line 416
    .line 417
    goto :goto_12

    .line 418
    :cond_1a
    move v1, v2

    .line 419
    :cond_1b
    :goto_12
    iget-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 420
    .line 421
    if-ne v10, v0, :cond_1c

    .line 422
    .line 423
    if-eqz v1, :cond_1d

    .line 424
    .line 425
    :cond_1c
    check-cast v7, Lo/oj;

    .line 426
    .line 427
    invoke-static {v7, v6}, Lo/oj;->Ͱ(Lo/oj;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 428
    .line 429
    .line 430
    goto :goto_13

    .line 431
    :catch_1
    move-exception v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v2, "queryToggle parse error: "

    .line 435
    .line 436
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v0, v1, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_1d
    :goto_13
    return-void

    .line 443
    :goto_14
    check-cast v9, Lo/gh;

    .line 444
    .line 445
    check-cast v8, Ljava/lang/String;

    .line 446
    .line 447
    check-cast v7, Lo/fh;

    .line 448
    .line 449
    const-string v0, "SherpaOnnxTts"

    .line 450
    .line 451
    iget-object v1, v9, Lo/gh;->Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 452
    .line 453
    const-string v2, "Playing cached audio: "

    .line 454
    .line 455
    const-string v3, "TTS cached playback error: "

    .line 456
    .line 457
    :try_start_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eq v6, v4, :cond_1e

    .line 462
    .line 463
    goto :goto_15

    .line 464
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object v2, v7, Lo/fh;->ˋ:[F

    .line 480
    .line 481
    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    check-cast v2, [F

    .line 486
    .line 487
    iget v4, v7, Lo/fh;->ˏ:I

    .line 488
    .line 489
    invoke-virtual {v9, v2, v4, v6}, Lo/gh;->ʹ([FII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 490
    .line 491
    .line 492
    goto :goto_15

    .line 493
    :catchall_0
    move-exception v0

    .line 494
    goto :goto_16

    .line 495
    :catch_2
    move-exception v2

    .line 496
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-static {v0, v2}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 513
    .line 514
    .line 515
    :goto_15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :goto_16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
