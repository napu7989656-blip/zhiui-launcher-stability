.class public final synthetic Lo/lII;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/lII;->Ͱ:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lo/lII;->Ͱ:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    const-wide/16 v3, 0x1388

    .line 8
    .line 9
    const-wide/16 v5, 0x1f4

    .line 10
    .line 11
    const/16 v7, 0xbb8

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_21

    .line 20
    .line 21
    :pswitch_0
    sget-object v0, Lo/kc;->ˏ:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :try_start_0
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v1, "window"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/WindowManager;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object v1, Lo/kc;->ˏ:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_0
    sput-object v8, Lo/kc;->ˏ:Landroid/widget/TextView;

    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :pswitch_1
    sget v0, Lo/oj;->Α:I

    .line 48
    .line 49
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :pswitch_2
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 60
    .line 61
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void

    .line 71
    :pswitch_3
    sget-object v0, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 72
    .line 73
    const-class v0, Lo/c0;

    .line 74
    .line 75
    monitor-enter v0

    .line 76
    :try_start_1
    sget-object v1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/byd/launcher/adb/AdbStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    :try_start_2
    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbStream;->isClosed()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_4

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/byd/launcher/adb/AdbStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_1
    move-exception v2

    .line 107
    :try_start_3
    const-string v5, "CmdTools"

    .line 108
    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v7, "Error closing stream: "

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v5, v6, v2}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    sget-object v1, Lo/c0;->Ͱ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 137
    .line 138
    .line 139
    sget-object v1, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 140
    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    :try_start_4
    sget-object v1, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/byd/launcher/adb/AdbConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_0
    move-exception v1

    .line 150
    goto :goto_2

    .line 151
    :catch_2
    move-exception v1

    .line 152
    :try_start_5
    const-string v2, "CmdTools"

    .line 153
    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v6, "Error closing ADB connection: "

    .line 160
    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-static {v2, v5, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    .line 177
    .line 178
    :goto_1
    :try_start_6
    sput-object v8, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :goto_2
    sput-object v8, Lo/c0;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 182
    .line 183
    throw v1

    .line 184
    :cond_6
    :goto_3
    sget-object v1, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 185
    .line 186
    if-eqz v1, :cond_8

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 189
    .line 190
    .line 191
    :try_start_7
    sget-object v1, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 192
    .line 193
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    .line 195
    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_7

    .line 200
    .line 201
    sget-object v1, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :catchall_1
    move-exception v1

    .line 208
    goto :goto_5

    .line 209
    :catch_3
    :try_start_8
    sget-object v1, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 210
    .line 211
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 212
    .line 213
    .line 214
    :cond_7
    :goto_4
    :try_start_9
    sput-object v8, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :goto_5
    sput-object v8, Lo/c0;->ͺ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 218
    .line 219
    throw v1

    .line 220
    :cond_8
    :goto_6
    sget-object v1, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 221
    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 225
    .line 226
    .line 227
    :try_start_a
    sget-object v1, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 228
    .line 229
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 230
    .line 231
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_9

    .line 236
    .line 237
    sget-object v1, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :catchall_2
    move-exception v1

    .line 244
    goto :goto_8

    .line 245
    :catch_4
    :try_start_b
    sget-object v1, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 248
    .line 249
    .line 250
    :cond_9
    :goto_7
    :try_start_c
    sput-object v8, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :goto_8
    sput-object v8, Lo/c0;->ˋ:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 254
    .line 255
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 256
    :cond_a
    :goto_9
    monitor-exit v0

    .line 257
    return-void

    .line 258
    :catchall_3
    move-exception v1

    .line 259
    monitor-exit v0

    .line 260
    throw v1

    .line 261
    :pswitch_4
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 262
    .line 263
    :try_start_d
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_b

    .line 268
    .line 269
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    .line 270
    .line 271
    if-eqz v0, :cond_b

    .line 272
    .line 273
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 274
    .line 275
    .line 276
    goto :goto_a

    .line 277
    :catch_5
    move-exception v0

    .line 278
    const-string v1, "NavBarSvc"

    .line 279
    .line 280
    const-string v2, "restoreClockIfHiddenByPanel failed"

    .line 281
    .line 282
    invoke-static {v1, v2, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 283
    .line 284
    .line 285
    :cond_b
    :goto_a
    return-void

    .line 286
    :pswitch_5
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 287
    .line 288
    const-string v0, "NavBarSvc"

    .line 289
    .line 290
    :try_start_e
    const-string v2, "settings put global policy_control immersive.status=com.byd.launcher"

    .line 291
    .line 292
    invoke-static {v2, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    const-string v1, "Policy write skipped: hide request; current system policy retained"

    .line 296
    .line 297
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 298
    .line 299
    .line 300
    goto :goto_b

    .line 301
    :catch_6
    move-exception v1

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v3, "Failed to set policy_control: "

    .line 305
    .line 306
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :goto_b
    return-void

    .line 313
    :pswitch_6
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 314
    .line 315
    const-string v0, "NavBarSvc"

    .line 316
    .line 317
    :try_start_f
    const-string v2, "settings put global policy_control null"

    .line 318
    .line 319
    invoke-static {v2, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    const-string v1, "Policy write skipped: clear request; current system policy retained"

    .line 323
    .line 324
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 325
    .line 326
    .line 327
    goto :goto_c

    .line 328
    :catch_7
    move-exception v1

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v3, "Failed to clear policy_control: "

    .line 332
    .line 333
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :goto_c
    return-void

    .line 340
    :pswitch_7
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 341
    .line 342
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-eqz v0, :cond_c

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 349
    .line 350
    .line 351
    :cond_c
    return-void

    .line 352
    :pswitch_8
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 353
    .line 354
    :try_start_10
    const-string v0, "service call statusbar 2"

    .line 355
    .line 356
    invoke-static {v0, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 357
    .line 358
    .line 359
    :catchall_4
    return-void

    .line 360
    :pswitch_9
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 361
    .line 362
    if-eqz v0, :cond_d

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ί()V

    .line 365
    .line 366
    .line 367
    :cond_d
    return-void

    .line 368
    :pswitch_a
    const-string v0, "CoreService"

    .line 369
    .line 370
    const-string v1, "closeSentinelMode: ADB connected="

    .line 371
    .line 372
    :try_start_11
    sget-object v2, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 373
    .line 374
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 375
    .line 376
    .line 377
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    if-nez v2, :cond_e

    .line 397
    .line 398
    const-string v1, "closeSentinelMode: ADB connection failed"

    .line 399
    .line 400
    invoke-static {v0, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_d

    .line 404
    :cond_e
    const-string v1, "ps -ef | grep magiccore | grep -v grep | awk \'{print $2}\' | xargs kill"

    .line 405
    .line 406
    invoke-static {v1, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    const-string v1, "am force-stop cc.omycar.magicmanager"

    .line 410
    .line 411
    invoke-static {v1, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    const-string v1, "am force-stop cc.omycar.magicsentry"

    .line 415
    .line 416
    invoke-static {v1, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    const-string v1, "closeSentinelMode completed"

    .line 420
    .line 421
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :catchall_5
    move-exception v1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v3, "closeSentinelMode async error: "

    .line 429
    .line 430
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-static {v0, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    .line 446
    .line 447
    :goto_d
    return-void

    .line 448
    :pswitch_b
    const-string v0, "CoreService"

    .line 449
    .line 450
    const-string v1, "openSentinelMode: start magicsentry result="

    .line 451
    .line 452
    const-string v2, "openSentinelMode: start magicmanager result="

    .line 453
    .line 454
    const-string v3, "openSentinelMode: ADB connected="

    .line 455
    .line 456
    :try_start_12
    sget-object v4, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 457
    .line 458
    invoke-static {v4}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-static {v0, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    if-nez v4, :cond_f

    .line 481
    .line 482
    const-string v1, "openSentinelMode: ADB connection failed"

    .line 483
    .line 484
    invoke-static {v0, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    goto :goto_e

    .line 488
    :cond_f
    const-string v3, "ps -ef | grep magiccore | grep -v grep | awk \'{print $2}\' | xargs kill"

    .line 489
    .line 490
    invoke-static {v3, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    const-string v3, "am force-stop cc.omycar.magicmanager"

    .line 494
    .line 495
    invoke-static {v3, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    const-string v3, "am force-stop cc.omycar.magicsentry"

    .line 499
    .line 500
    invoke-static {v3, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    const-string v3, "am start -n cc.omycar.magicmanager/cc.omycar.magicmanager.MainActivity"

    .line 504
    .line 505
    invoke-static {v3, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    const-wide/16 v2, 0x1f40

    .line 525
    .line 526
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 527
    .line 528
    .line 529
    const-string v2, "am start -n cc.omycar.magicsentry/cc.omycar.magicsentry.MainActivity"

    .line 530
    .line 531
    invoke-static {v2, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const-string v1, "openSentinelMode completed"

    .line 551
    .line 552
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 553
    .line 554
    .line 555
    goto :goto_e

    .line 556
    :catchall_6
    move-exception v1

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v3, "openSentinelMode async error: "

    .line 560
    .line 561
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-static {v0, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    .line 577
    .line 578
    :goto_e
    return-void

    .line 579
    :pswitch_c
    sget-boolean v0, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 580
    .line 581
    const-string v0, ""

    .line 582
    .line 583
    const-string v1, "CoreService"

    .line 584
    .line 585
    const-string v3, "CLASSPATH="

    .line 586
    .line 587
    const-string v4, "openInstrumentNavigation: ADB connected="

    .line 588
    .line 589
    const-string v5, "openInstrumentNavigation: direct call failed: "

    .line 590
    .line 591
    :try_start_13
    invoke-static {}, Lo/c0;->isInitialized()Z

    .line 592
    .line 593
    .line 594
    move-result v6

    .line 595
    if-nez v6, :cond_10

    .line 596
    .line 597
    sget-object v6, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 598
    .line 599
    invoke-static {v6}, Lo/c0;->initialize(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 600
    .line 601
    .line 602
    :cond_10
    :try_start_14
    sget-object v6, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 603
    .line 604
    const-string v8, "AutoContainer"

    .line 605
    .line 606
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    check-cast v6, Landroid/os/AutoContainerManager;

    .line 611
    .line 612
    if-eqz v6, :cond_11

    .line 613
    .line 614
    const/16 v8, 0x23

    .line 615
    .line 616
    invoke-virtual {v6, v2, v8, v0}, Landroid/os/AutoContainerManager;->sendInfo(IILjava/lang/String;)I

    .line 617
    .line 618
    .line 619
    const/16 v8, 0x10

    .line 620
    .line 621
    invoke-virtual {v6, v2, v8, v0}, Landroid/os/AutoContainerManager;->sendInfo(IILjava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 622
    .line 623
    .line 624
    :try_start_15
    const-string v0, "openInstrumentNavigation: direct call succeeded"

    .line 625
    .line 626
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 627
    .line 628
    .line 629
    move v9, v10

    .line 630
    goto :goto_10

    .line 631
    :catchall_7
    move-exception v0

    .line 632
    move v9, v10

    .line 633
    goto :goto_f

    .line 634
    :catchall_8
    move-exception v0

    .line 635
    :goto_f
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 652
    .line 653
    .line 654
    :cond_11
    :goto_10
    const-string v0, "am force-stop com.byd.automap"

    .line 655
    .line 656
    if-nez v9, :cond_13

    .line 657
    .line 658
    :try_start_17
    const-string v2, "openInstrumentNavigation: trying app_process fallback"

    .line 659
    .line 660
    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    sget-object v2, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 664
    .line 665
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 666
    .line 667
    .line 668
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    new-instance v5, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-static {v1, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    if-nez v2, :cond_12

    .line 688
    .line 689
    const-string v0, "openInstrumentNavigation: ADB connection failed"

    .line 690
    .line 691
    invoke-static {v1, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto :goto_12

    .line 695
    :cond_12
    sget-object v2, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 696
    .line 697
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 702
    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v2, " nohup app_process /system/bin --nice-name=com.byd.launcher.instrumnav com.byd.launcher.InstrumentNavRunner > /dev/null 2>&1"

    .line 712
    .line 713
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    const/16 v3, 0x1388

    .line 721
    .line 722
    invoke-static {v2, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    const-string v4, "openInstrumentNavigation: 1st app_process done"

    .line 726
    .line 727
    invoke-static {v1, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    invoke-static {v0, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    const-string v0, "openInstrumentNavigation: force-stop automap done"

    .line 734
    .line 735
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-static {v2, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    const-string v0, "openInstrumentNavigation: 2nd app_process done"

    .line 742
    .line 743
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    goto :goto_11

    .line 747
    :cond_13
    sget-object v2, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 748
    .line 749
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 750
    .line 751
    .line 752
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 753
    .line 754
    .line 755
    invoke-static {v0, v7}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    :goto_11
    const-string v0, "openInstrumentNavigation completed"

    .line 759
    .line 760
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 761
    .line 762
    .line 763
    goto :goto_12

    .line 764
    :catchall_9
    move-exception v0

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    const-string v3, "openInstrumentNavigation async error: "

    .line 768
    .line 769
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-static {v0, v2, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    :goto_12
    return-void

    .line 776
    :pswitch_d
    sget-boolean v0, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 777
    .line 778
    const-string v0, "CoreService"

    .line 779
    .line 780
    :try_start_18
    new-instance v1, Ljava/net/ServerSocket;

    .line 781
    .line 782
    const-string v2, "127.0.0.1"

    .line 783
    .line 784
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    const/16 v3, 0x22b9

    .line 789
    .line 790
    const/4 v4, 0x2

    .line 791
    invoke-direct {v1, v3, v4, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 792
    .line 793
    .line 794
    sput-object v1, Lcom/byd/launcher/CoreService;->Β:Ljava/net/ServerSocket;

    .line 795
    .line 796
    const-string v1, "Touch TCP server started on port 8889"

    .line 797
    .line 798
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    :goto_13
    sget-object v1, Lcom/byd/launcher/CoreService;->Β:Ljava/net/ServerSocket;

    .line 802
    .line 803
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    invoke-virtual {v1, v10}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 808
    .line 809
    .line 810
    new-instance v2, Ljava/lang/Thread;

    .line 811
    .line 812
    new-instance v3, Lo/td;

    .line 813
    .line 814
    invoke-direct {v3, v4, v1}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    const-string v1, "TouchClient"

    .line 818
    .line 819
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    .line 823
    .line 824
    .line 825
    goto :goto_13

    .line 826
    :catch_8
    move-exception v1

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    const-string v3, "Touch server error: "

    .line 830
    .line 831
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-static {v0, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    .line 847
    .line 848
    return-void

    .line 849
    :pswitch_e
    sget-boolean v0, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 850
    .line 851
    new-instance v0, Ljava/util/ArrayList;

    .line 852
    .line 853
    sget-object v1, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 854
    .line 855
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    if-eqz v1, :cond_16

    .line 871
    .line 872
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    check-cast v1, Lo/g1;

    .line 877
    .line 878
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 882
    .line 883
    .line 884
    move-result-wide v2

    .line 885
    iget-object v4, v1, Lo/g1;->Ͷ:Ljava/lang/Object;

    .line 886
    .line 887
    monitor-enter v4

    .line 888
    :try_start_19
    iget-wide v5, v1, Lo/g1;->ʹ:J

    .line 889
    .line 890
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 891
    sub-long/2addr v2, v5

    .line 892
    const-wide/32 v4, 0xea60

    .line 893
    .line 894
    .line 895
    cmp-long v2, v2, v4

    .line 896
    .line 897
    if-gtz v2, :cond_15

    .line 898
    .line 899
    move v2, v10

    .line 900
    goto :goto_15

    .line 901
    :cond_15
    move v2, v9

    .line 902
    :goto_15
    if-nez v2, :cond_14

    .line 903
    .line 904
    invoke-virtual {v1}, Lo/g1;->ˋ()V

    .line 905
    .line 906
    .line 907
    goto :goto_14

    .line 908
    :catchall_a
    move-exception v0

    .line 909
    :try_start_1a
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 910
    throw v0

    .line 911
    :cond_16
    return-void

    .line 912
    :pswitch_f
    const-string v0, "CoreService"

    .line 913
    .line 914
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͻ()V

    .line 915
    .line 916
    .line 917
    :try_start_1b
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_9

    .line 918
    .line 919
    .line 920
    :catch_9
    move v1, v9

    .line 921
    :goto_16
    const/4 v2, 0x3

    .line 922
    if-gt v1, v2, :cond_1a

    .line 923
    .line 924
    :try_start_1c
    sget-object v3, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;
    :try_end_1c
    .catch Ljava/net/BindException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_b

    .line 925
    .line 926
    if-eqz v3, :cond_17

    .line 927
    .line 928
    :try_start_1d
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a

    .line 929
    .line 930
    .line 931
    :catch_a
    :cond_17
    :try_start_1e
    new-instance v3, Ljava/net/ServerSocket;

    .line 932
    .line 933
    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    .line 934
    .line 935
    .line 936
    sput-object v3, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 937
    .line 938
    invoke-virtual {v3, v10}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 939
    .line 940
    .line 941
    sget-object v3, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 942
    .line 943
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 944
    .line 945
    const/16 v5, 0x22b8

    .line 946
    .line 947
    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 951
    .line 952
    .line 953
    sput-boolean v10, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 954
    .line 955
    const-string v3, "Server started on port 8888 (ready for connections)"

    .line 956
    .line 957
    invoke-static {v0, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    :goto_17
    sget-object v3, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 961
    .line 962
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v5

    .line 979
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    const-string v5, ":"

    .line 983
    .line 984
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    .line 988
    .line 989
    .line 990
    move-result v5

    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v4

    .line 998
    new-instance v5, Lo/g1;

    .line 999
    .line 1000
    invoke-direct {v5, v3, v4}, Lo/g1;-><init>(Ljava/net/Socket;Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    sget-object v3, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1004
    .line 1005
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catch Ljava/net/BindException; {:try_start_1e .. :try_end_1e} :catch_c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b

    .line 1009
    .line 1010
    .line 1011
    goto :goto_17

    .line 1012
    :catch_b
    move-exception v1

    .line 1013
    sput-boolean v9, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 1014
    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    const-string v3, "Server error: "

    .line 1018
    .line 1019
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v1

    .line 1026
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    invoke-static {v0, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    :try_start_1f
    sget-object v0, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 1037
    .line 1038
    if-eqz v0, :cond_1a

    .line 1039
    .line 1040
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    .line 1041
    .line 1042
    .line 1043
    goto :goto_19

    .line 1044
    :catch_c
    sput-boolean v9, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 1045
    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    const-string v4, "\u7aef\u53e3 8888 \u88ab\u5360\u7528 (\u7b2c "

    .line 1049
    .line 1050
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    add-int/lit8 v4, v1, 0x1

    .line 1054
    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    const-string v5, " \u6b21)"

    .line 1059
    .line 1060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v3

    .line 1067
    invoke-static {v0, v3}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    :try_start_20
    sget-object v3, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 1071
    .line 1072
    if-eqz v3, :cond_18

    .line 1073
    .line 1074
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    .line 1075
    .line 1076
    .line 1077
    :catch_d
    :cond_18
    if-ge v1, v2, :cond_19

    .line 1078
    .line 1079
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͻ()V

    .line 1080
    .line 1081
    .line 1082
    const-wide/16 v1, 0x9c4

    .line 1083
    .line 1084
    :try_start_21
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_e

    .line 1085
    .line 1086
    .line 1087
    goto :goto_18

    .line 1088
    :cond_19
    const-string v1, "\u7aef\u53e3 8888 \u59cb\u7ec8\u88ab\u5360\u7528\uff0c\u65e0\u6cd5\u542f\u52a8\u670d\u52a1"

    .line 1089
    .line 1090
    invoke-static {v0, v1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    :catch_e
    :goto_18
    move v1, v4

    .line 1094
    goto/16 :goto_16

    .line 1095
    .line 1096
    :catch_f
    :cond_1a
    :goto_19
    return-void

    .line 1097
    :pswitch_10
    sget-boolean v0, Lcom/byd/launcher/CoreService;->ˏ:Z

    .line 1098
    .line 1099
    const-string v0, "CoreService destroyed"

    .line 1100
    .line 1101
    const-string v1, "CoreService"

    .line 1102
    .line 1103
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    sget-object v0, Lcom/byd/launcher/CoreService;->Γ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1117
    .line 1118
    .line 1119
    move-result v5

    .line 1120
    if-eqz v5, :cond_1b

    .line 1121
    .line 1122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    check-cast v5, Lo/g1;

    .line 1127
    .line 1128
    invoke-virtual {v5}, Lo/g1;->ˋ()V

    .line 1129
    .line 1130
    .line 1131
    goto :goto_1a

    .line 1132
    :cond_1b
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1133
    .line 1134
    .line 1135
    sget-object v0, Lcom/byd/launcher/CoreService;->Α:Ljava/net/ServerSocket;

    .line 1136
    .line 1137
    if-eqz v0, :cond_1c

    .line 1138
    .line 1139
    :try_start_22
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_10

    .line 1140
    .line 1141
    .line 1142
    goto :goto_1b

    .line 1143
    :catch_10
    move-exception v0

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    const-string v5, "Error closing server socket: "

    .line 1147
    .line 1148
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-static {v1, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_1c
    :goto_1b
    sget-object v0, Lcom/byd/launcher/CoreService;->Β:Ljava/net/ServerSocket;

    .line 1166
    .line 1167
    if-eqz v0, :cond_1d

    .line 1168
    .line 1169
    :try_start_23
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_11

    .line 1170
    .line 1171
    .line 1172
    goto :goto_1c

    .line 1173
    :catch_11
    move-exception v0

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    const-string v5, "Error closing touch server socket: "

    .line 1177
    .line 1178
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    invoke-static {v1, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    :cond_1d
    :goto_1c
    sget-object v0, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1196
    .line 1197
    if-eqz v0, :cond_1e

    .line 1198
    .line 1199
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1200
    .line 1201
    .line 1202
    :try_start_24
    sget-object v0, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1203
    .line 1204
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1205
    .line 1206
    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    if-nez v0, :cond_1e

    .line 1211
    .line 1212
    sget-object v0, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1213
    .line 1214
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_12

    .line 1215
    .line 1216
    .line 1217
    goto :goto_1d

    .line 1218
    :catch_12
    sget-object v0, Lcom/byd/launcher/CoreService;->Ε:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1219
    .line 1220
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1221
    .line 1222
    .line 1223
    :cond_1e
    :goto_1d
    sget-object v0, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    .line 1224
    .line 1225
    if-eqz v0, :cond_1f

    .line 1226
    .line 1227
    :try_start_25
    invoke-virtual {v0}, Lcom/byd/launcher/manager/BYDEnergyDeviceManager;->release()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 1228
    .line 1229
    .line 1230
    :catchall_b
    sput-object v8, Lcom/byd/launcher/CoreService;->Ί:Lcom/byd/launcher/manager/BYDEnergyDeviceManager;

    .line 1231
    .line 1232
    :cond_1f
    sget-object v0, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    .line 1233
    .line 1234
    if-eqz v0, :cond_20

    .line 1235
    .line 1236
    :try_start_26
    invoke-virtual {v0}, Lcom/byd/launcher/manager/BYDTyreDeviceManager;->release()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 1237
    .line 1238
    .line 1239
    :catchall_c
    sput-object v8, Lcom/byd/launcher/CoreService;->Ͳ:Lcom/byd/launcher/manager/BYDTyreDeviceManager;

    .line 1240
    .line 1241
    :cond_20
    sget-object v0, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    .line 1242
    .line 1243
    if-eqz v0, :cond_21

    .line 1244
    .line 1245
    :try_start_27
    invoke-virtual {v0}, Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;->release()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 1246
    .line 1247
    .line 1248
    :catchall_d
    sput-object v8, Lcom/byd/launcher/CoreService;->ͼ:Lcom/byd/launcher/manager/BYDInstrumentDeviceManager;

    .line 1249
    .line 1250
    :cond_21
    sput-object v8, Lcom/byd/launcher/CoreService;->ͱ:Lcom/byd/launcher/manager/BYDAcDeviceManager;

    .line 1251
    .line 1252
    sput-object v8, Lcom/byd/launcher/CoreService;->Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 1253
    .line 1254
    sput-object v8, Lcom/byd/launcher/CoreService;->Ή:Lcom/byd/launcher/manager/BYDStatisticDeviceManager;

    .line 1255
    .line 1256
    sget-object v0, Lcom/byd/launcher/CoreService;->Ζ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1257
    .line 1258
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1259
    .line 1260
    .line 1261
    sget-object v0, Lcom/byd/launcher/CoreService;->Η:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1262
    .line 1263
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1264
    .line 1265
    .line 1266
    sput-object v8, Lcom/byd/launcher/CoreService;->Ͱ:Lcom/byd/launcher/CoreContext;

    .line 1267
    .line 1268
    return-void

    .line 1269
    :pswitch_11
    :try_start_28
    invoke-static {}, Lcom/byd/launcher/CoreService;->Ͳ()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 1270
    .line 1271
    .line 1272
    goto :goto_1e

    .line 1273
    :catchall_e
    move-exception v0

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    const-string v2, "flushPending scheduled error: "

    .line 1277
    .line 1278
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    const-string v2, "CoreService"

    .line 1282
    .line 1283
    invoke-static {v0, v1, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    :goto_1e
    return-void

    .line 1287
    :pswitch_12
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1288
    .line 1289
    :goto_1f
    const-string v0, "BootReceiver"

    .line 1290
    .line 1291
    const/16 v1, 0x14

    .line 1292
    .line 1293
    if-ge v9, v1, :cond_23

    .line 1294
    .line 1295
    :try_start_29
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v1

    .line 1299
    if-eqz v1, :cond_22

    .line 1300
    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    .line 1305
    .line 1306
    const-string v2, "Service alive while waiting for lock, iteration "

    .line 1307
    .line 1308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_20

    .line 1322
    :cond_22
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1323
    .line 1324
    .line 1325
    add-int/lit8 v9, v9, 0x1

    .line 1326
    .line 1327
    goto :goto_1f

    .line 1328
    :cond_23
    const-string v1, "Service not started after waiting for other thread"

    .line 1329
    .line 1330
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_13

    .line 1331
    .line 1332
    .line 1333
    goto :goto_20

    .line 1334
    :catch_13
    move-exception v1

    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    const-string v3, "BootReceiver wait error: "

    .line 1338
    .line 1339
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    :goto_20
    return-void

    .line 1346
    :goto_21
    sget-object v0, Lo/vl;->Χ:[Lo/ul;

    .line 1347
    .line 1348
    const-string v0, "input keyevent KEYCODE_HOME"

    .line 1349
    .line 1350
    const-wide/16 v1, 0xbb8

    .line 1351
    .line 1352
    invoke-static {v0, v1, v2}, Lo/c0;->Ͱ(Ljava/lang/String;J)Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    const-string v2, "KEYCODE_HOME result: "

    .line 1359
    .line 1360
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    const-string v1, "WidgetBarMgr"

    .line 1371
    .line 1372
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    return-void

    .line 1376
    nop

    .line 1377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
.end method
