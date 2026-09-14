.class public final synthetic Lo/ϑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ϑ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ϑ;->ͱ:Landroid/content/Context;

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
    .locals 12

    .line 1
    iget v0, p0, Lo/ϑ;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :pswitch_0
    iget-object v0, p0, Lo/ϑ;->ͱ:Landroid/content/Context;

    .line 11
    .line 12
    sget v3, Lcom/byd/launcher/LauncherApp;->ˏ:I

    .line 13
    .line 14
    const-string v3, "settings put secure accessibility_enabled 1"

    .line 15
    .line 16
    const-string v4, "settings put secure enabled_accessibility_services "

    .line 17
    .line 18
    const-string v5, "LauncherApp"

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x1

    .line 32
    :goto_0
    if-gt v7, v1, :cond_1

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    const-wide/16 v8, 0x7d0

    .line 45
    .line 46
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-nez v6, :cond_2

    .line 57
    .line 58
    const-string v0, "ADB connection failed"

    .line 59
    .line 60
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_2
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, "/"

    .line 86
    .line 87
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-class v6, Lcom/byd/launcher/NavBarService;

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v6, "SCREEN_ON: direct set"

    .line 104
    .line 105
    invoke-static {v5, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    const/16 v7, 0x7d0

    .line 124
    .line 125
    invoke-static {v6, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    const-wide/16 v8, 0xc8

    .line 129
    .line 130
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move v6, v2

    .line 137
    :goto_1
    const/4 v10, 0x6

    .line 138
    if-ge v6, v10, :cond_5

    .line 139
    .line 140
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-eqz v10, :cond_4

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "Service alive after set, wait "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    const-wide/16 v10, 0x1f4

    .line 168
    .line 169
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eqz v6, :cond_6

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    const-string v6, "SCREEN_ON: force-stop for rebind"

    .line 183
    .line 184
    invoke-static {v5, v6}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 209
    .line 210
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v3, "am force-stop "

    .line 217
    .line 218
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const/16 v1, 0xbb8

    .line 233
    .line 234
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto :goto_3

    .line 240
    :catch_0
    move-exception v0

    .line 241
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v3, "SCREEN_ON accessibility restart failed: "

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .line 264
    .line 265
    :goto_2
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    .line 267
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :goto_3
    sget-object v1, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :pswitch_1
    iget-object v0, p0, Lo/ϑ;->ͱ:Landroid/content/Context;

    .line 278
    .line 279
    :try_start_2
    invoke-static {v0}, Lcom/byd/launcher/AppLauncherActivity;->ͱ(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    sput-object v0, Lcom/byd/launcher/AppLauncherActivity;->Ͷ:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v0

    .line 289
    sput-wide v0, Lcom/byd/launcher/AppLauncherActivity;->ͷ:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    .line 291
    :catch_1
    return-void

    .line 292
    :goto_4
    iget-object v0, p0, Lo/ϑ;->ͱ:Landroid/content/Context;

    .line 293
    .line 294
    sget-object v3, Lo/vl;->Χ:[Lo/ul;

    .line 295
    .line 296
    :try_start_3
    const-string v3, "launcher_prefs"

    .line 297
    .line 298
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {}, Lo/gh;->Ͱ()Lo/gh;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    const-string v3, "tts_volume"

    .line 307
    .line 308
    const/16 v4, 0x64

    .line 309
    .line 310
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    int-to-float v3, v3

    .line 315
    const/high16 v4, 0x42c80000    # 100.0f

    .line 316
    .line 317
    div-float/2addr v3, v4

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    const/high16 v4, 0x3f800000    # 1.0f

    .line 322
    .line 323
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    const/4 v4, 0x0

    .line 328
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    iput v3, v2, Lo/gh;->Ͳ:F

    .line 333
    .line 334
    iget-object v3, v2, Lo/gh;->ˏ:Landroid/media/AudioTrack;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 335
    .line 336
    if-eqz v3, :cond_7

    .line 337
    .line 338
    :try_start_4
    iget v4, v2, Lo/gh;->Ͳ:F

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setVolume(F)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    .line 342
    .line 343
    :catch_2
    :cond_7
    :try_start_5
    const-string v3, "tts_gain"

    .line 344
    .line 345
    const/16 v4, 0x14

    .line 346
    .line 347
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    int-to-float v3, v3

    .line 352
    const/high16 v4, 0x41200000    # 10.0f

    .line 353
    .line 354
    div-float/2addr v3, v4

    .line 355
    const/high16 v4, 0x40a00000    # 5.0f

    .line 356
    .line 357
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    const/high16 v4, 0x3f000000    # 0.5f

    .line 362
    .line 363
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    iput v3, v2, Lo/gh;->ͳ:F

    .line 368
    .line 369
    const-string v3, "tts_channel"

    .line 370
    .line 371
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    iput v0, v2, Lo/gh;->ͱ:I

    .line 376
    .line 377
    new-instance v0, Lo/td;

    .line 378
    .line 379
    const/16 v1, 0x17

    .line 380
    .line 381
    invoke-direct {v0, v1, v2}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v2, Lo/gh;->ʹ:Ljava/util/concurrent/ExecutorService;

    .line 385
    .line 386
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 387
    .line 388
    .line 389
    :catch_3
    return-void

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
