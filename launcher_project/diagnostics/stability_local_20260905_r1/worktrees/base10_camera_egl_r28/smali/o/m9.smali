.class public final synthetic Lo/m9;
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
    iput p2, p0, Lo/m9;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

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

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isServiceDestroyed(Lcom/byd/launcher/NavBarService;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/m9;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "\u6536\u85cf\u6210\u529f"

    .line 6
    .line 7
    const-string v4, "NavBarSvc"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_c

    .line 14
    .line 15
    :pswitch_0
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 16
    .line 17
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ϴ:Lo/m9;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϧ()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    const-string v1, "\u8f66\u8f86\u670d\u52a1\u672a\u5c31\u7eea\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 34
    .line 35
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :goto_0
    return-void

    .line 43
    :pswitch_1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 44
    .line 45
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v3, Lcom/byd/launcher/MainActivity;

    .line 53
    .line 54
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const/high16 v3, 0x14000000

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_1
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ό()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_2
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 74
    .line 75
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ό()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_3
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 82
    .line 83
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ό()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_4
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 90
    .line 91
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 101
    .line 102
    :cond_1
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ϊ:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 107
    .line 108
    .line 109
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ϊ:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_5
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 116
    .line 117
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    :try_start_2
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 123
    .line 124
    invoke-virtual {v1}, Lo/a9;->ͺ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    :catchall_0
    :try_start_3
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 128
    .line 129
    invoke-virtual {v0}, Lo/a9;->ͱ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .line 131
    .line 132
    :catchall_1
    return-void

    .line 133
    :pswitch_6
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 134
    .line 135
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 136
    .line 137
    if-nez v1, :cond_4

    .line 138
    .line 139
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 140
    .line 141
    if-nez v1, :cond_3

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ή:Lo/ha;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->addListener(Lcom/byd/launcher/ipc/ICoreServiceListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->connect()V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_2
    return-void

    .line 155
    :pswitch_7
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 156
    .line 157
    const-string v0, "\u672a\u627e\u5230\u53ef\u542f\u52a8\u7684\u97f3\u4e50\u5e94\u7528"

    .line 158
    .line 159
    iget-object v1, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_8
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 166
    .line 167
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    :try_start_4
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 173
    .line 174
    if-nez v1, :cond_5

    .line 175
    .line 176
    iput-boolean v5, v0, Lcom/byd/launcher/NavBarService;->ΰ:Z

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ή:Lo/ha;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->addListener(Lcom/byd/launcher/ipc/ICoreServiceListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->resetAndReconnect()V

    .line 187
    .line 188
    .line 189
    const-string v1, "CoreService reconnect initiated"

    .line 190
    .line 191
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    .line 193
    .line 194
    :goto_3
    iput-boolean v5, v0, Lcom/byd/launcher/NavBarService;->ΰ:Z

    .line 195
    .line 196
    return-void

    .line 197
    :catchall_2
    move-exception v1

    .line 198
    iput-boolean v5, v0, Lcom/byd/launcher/NavBarService;->ΰ:Z

    .line 199
    .line 200
    throw v1

    .line 201
    :pswitch_9
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 202
    .line 203
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_a
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 210
    .line 211
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_b
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 218
    .line 219
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 220
    .line 221
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :pswitch_c
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 226
    .line 227
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 228
    .line 229
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_d
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 236
    .line 237
    invoke-virtual {v0}, Lo/ff;->ͻ()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_e
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 242
    .line 243
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    :try_start_5
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 249
    .line 250
    const/16 v6, 0x17

    .line 251
    .line 252
    if-eqz v3, :cond_7

    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 255
    .line 256
    .line 257
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 258
    if-eqz v3, :cond_7

    .line 259
    .line 260
    :try_start_6
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 261
    .line 262
    if-nez v3, :cond_6

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_6
    new-instance v7, Lo/ia;

    .line 266
    .line 267
    const/4 v8, 0x5

    .line 268
    invoke-direct {v7, v0, v8}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 269
    .line 270
    .line 271
    const-string v8, "getAcState"

    .line 272
    .line 273
    invoke-virtual {v3, v8, v2, v7}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 274
    .line 275
    .line 276
    :catchall_3
    :goto_4
    :try_start_7
    invoke-virtual {v0, v5}, Lcom/byd/launcher/NavBarService;->ς(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 277
    .line 278
    .line 279
    :catchall_4
    :try_start_8
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->σ()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 280
    .line 281
    .line 282
    :catchall_5
    :try_start_9
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->υ()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 283
    .line 284
    .line 285
    :catchall_6
    :try_start_a
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 286
    .line 287
    if-eqz v2, :cond_7

    .line 288
    .line 289
    invoke-virtual {v2}, Lo/vl;->Γ()Z

    .line 290
    .line 291
    .line 292
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 293
    if-eqz v2, :cond_7

    .line 294
    .line 295
    :try_start_b
    iput v1, v0, Lcom/byd/launcher/NavBarService;->Ϡ:I

    .line 296
    .line 297
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 298
    .line 299
    new-instance v2, Lo/ea;

    .line 300
    .line 301
    invoke-direct {v2, v0, v6}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 305
    .line 306
    .line 307
    :catchall_7
    :cond_7
    :try_start_c
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 308
    .line 309
    if-eqz v1, :cond_8

    .line 310
    .line 311
    new-instance v1, Lo/m9;

    .line 312
    .line 313
    invoke-direct {v1, v0, v6}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catchall_8
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v2, "performWidgetRefresh exception: "

    .line 324
    .line 325
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v1, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_8
    :goto_5
    return-void

    .line 332
    :pswitch_f
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 333
    .line 334
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->σ()V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_10
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 341
    .line 342
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    sget-object v1, Lcom/byd/launcher/MusicNotificationListener;->Ͳ:Lcom/byd/launcher/MusicNotificationListener;

    .line 348
    .line 349
    if-eqz v1, :cond_9

    .line 350
    .line 351
    const-string v2, "Scanning existing music notifications..."

    .line 352
    .line 353
    invoke-static {v4, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Lcom/byd/launcher/MusicNotificationListener;->ˏ()V

    .line 357
    .line 358
    .line 359
    :cond_9
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 360
    .line 361
    if-eqz v0, :cond_a

    .line 362
    .line 363
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 364
    .line 365
    .line 366
    :cond_a
    return-void

    .line 367
    :pswitch_11
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 368
    .line 369
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 370
    .line 371
    if-eqz v0, :cond_c

    .line 372
    .line 373
    iget-object v1, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 374
    .line 375
    if-eqz v1, :cond_b

    .line 376
    .line 377
    const/4 v5, 0x1

    .line 378
    :cond_b
    if-nez v5, :cond_c

    .line 379
    .line 380
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 381
    .line 382
    .line 383
    :cond_c
    return-void

    .line 384
    :pswitch_12
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 385
    .line 386
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    const-string v1, "initGpsLocationUpdates: cached altitude="

    .line 392
    .line 393
    :try_start_d
    const-string v2, "location"

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    check-cast v2, Landroid/location/LocationManager;

    .line 400
    .line 401
    if-nez v2, :cond_d

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_d
    new-instance v10, Lo/ya;

    .line 405
    .line 406
    invoke-direct {v10, v0}, Lo/ya;-><init>(Lcom/byd/launcher/NavBarService;)V

    .line 407
    .line 408
    .line 409
    iput-object v10, v0, Lcom/byd/launcher/NavBarService;->ϣ:Lo/ya;

    .line 410
    .line 411
    const-string v6, "gps"

    .line 412
    .line 413
    const-wide/16 v7, 0x1388

    .line 414
    .line 415
    const/4 v9, 0x0

    .line 416
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    move-object v5, v2

    .line 421
    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 422
    .line 423
    .line 424
    :try_start_e
    const-string v6, "network"

    .line 425
    .line 426
    const-wide/16 v7, 0x2710

    .line 427
    .line 428
    const/4 v9, 0x0

    .line 429
    iget-object v10, v0, Lcom/byd/launcher/NavBarService;->ϣ:Lo/ya;

    .line 430
    .line 431
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    move-object v5, v2

    .line 436
    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 437
    .line 438
    .line 439
    :catch_2
    :try_start_f
    const-string v3, "initGpsLocationUpdates: registered"

    .line 440
    .line 441
    invoke-static {v4, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string v3, "gps"

    .line 445
    .line 446
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    if-eqz v3, :cond_e

    .line 451
    .line 452
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-nez v5, :cond_f

    .line 457
    .line 458
    :cond_e
    const-string v3, "network"

    .line 459
    .line 460
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    :cond_f
    if-eqz v3, :cond_10

    .line 465
    .line 466
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_10

    .line 471
    .line 472
    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    .line 473
    .line 474
    .line 475
    move-result-wide v2

    .line 476
    iput-wide v2, v0, Lcom/byd/launcher/NavBarService;->Ϣ:D

    .line 477
    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-wide v0, v0, Lcom/byd/launcher/NavBarService;->Ϣ:D

    .line 484
    .line 485
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 493
    .line 494
    .line 495
    goto :goto_7

    .line 496
    :catch_3
    move-exception v0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    const-string v2, "initGpsLocationUpdates error: "

    .line 500
    .line 501
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    goto :goto_6

    .line 505
    :catch_4
    move-exception v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    const-string v2, "initGpsLocationUpdates: no permission: "

    .line 509
    .line 510
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    :goto_6
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :cond_10
    :goto_7
    return-void

    .line 517
    :pswitch_13
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 518
    .line 519
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    const-string v1, "\u5df2\u8bf7\u6c42\u7535\u6c60\u4f18\u5316\u767d\u540d\u5355: "

    .line 525
    .line 526
    const-string v2, "cmd appops set "

    .line 527
    .line 528
    const-string v3, "dumpsys deviceidle whitelist +"

    .line 529
    .line 530
    :try_start_10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    const/16 v5, 0x7d0

    .line 547
    .line 548
    invoke-static {v3, v5}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    const-string v6, " RUN_IN_BACKGROUND allow"

    .line 560
    .line 561
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-static {v3, v5}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v2, " RUN_ANY_IN_BACKGROUND allow"

    .line 580
    .line 581
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-static {v2, v5}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 604
    .line 605
    .line 606
    goto :goto_8

    .line 607
    :catch_5
    move-exception v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    const-string v2, "\u8bf7\u6c42\u7535\u6c60\u767d\u540d\u5355\u5931\u8d25: "

    .line 611
    .line 612
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    :goto_8
    return-void

    .line 619
    :pswitch_14
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 620
    .line 621
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    const-string v1, "CoreService \u542f\u52a8\u7ed3\u679c: "

    .line 627
    .line 628
    :try_start_11
    const-string v2, "\u6b63\u5728\u542f\u52a8 CoreService..."

    .line 629
    .line 630
    invoke-static {v4, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-static {v2}, Lo/a2;->Γ(Landroid/content/Context;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 657
    .line 658
    if-nez v1, :cond_11

    .line 659
    .line 660
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 661
    .line 662
    if-eqz v1, :cond_11

    .line 663
    .line 664
    new-instance v2, Lo/m9;

    .line 665
    .line 666
    const/16 v3, 0x16

    .line 667
    .line 668
    invoke-direct {v2, v0, v3}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 672
    .line 673
    .line 674
    goto :goto_9

    .line 675
    :catch_6
    move-exception v0

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    const-string v2, "\u542f\u52a8 CoreService \u5931\u8d25: "

    .line 679
    .line 680
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-static {v4, v1, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    .line 696
    .line 697
    :cond_11
    :goto_9
    return-void

    .line 698
    :pswitch_15
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 699
    .line 700
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 701
    .line 702
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :pswitch_16
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 707
    .line 708
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 709
    .line 710
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϊ()V

    .line 711
    .line 712
    .line 713
    return-void

    .line 714
    :pswitch_17
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 715
    .line 716
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 717
    .line 718
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    const-string v1, "retryCoreService: \u542f\u52a8\u7ed3\u679c = "

    .line 722
    .line 723
    :try_start_12
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Κ:Z

    .line 724
    .line 725
    if-nez v2, :cond_13

    .line 726
    .line 727
    const-string v2, "retryCoreService: ADB \u672a\u5c31\u7eea\uff0c\u5148\u8fde\u63a5 ADB..."

    .line 728
    .line 729
    invoke-static {v4, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-static {v2}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 737
    .line 738
    .line 739
    invoke-static {}, Lo/c0;->Ͳ()Z

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Κ:Z

    .line 744
    .line 745
    if-nez v2, :cond_12

    .line 746
    .line 747
    const-string v1, "retryCoreService: ADB \u8fde\u63a5\u5931\u8d25"

    .line 748
    .line 749
    invoke-static {v4, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    goto :goto_a

    .line 753
    :cond_12
    const-string v2, "retryCoreService: ADB \u8fde\u63a5\u6210\u529f"

    .line 754
    .line 755
    invoke-static {v4, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    :cond_13
    invoke-static {}, Lo/a2;->Ε()V

    .line 759
    .line 760
    .line 761
    const-wide/16 v2, 0x1f4

    .line 762
    .line 763
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 764
    .line 765
    .line 766
    const-string v2, "retryCoreService: \u542f\u52a8 CoreService..."

    .line 767
    .line 768
    invoke-static {v4, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    invoke-static {v2}, Lo/a2;->Γ(Landroid/content/Context;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    const-wide/16 v1, 0x3e8

    .line 795
    .line 796
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 797
    .line 798
    .line 799
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 800
    .line 801
    new-instance v2, Lo/m9;

    .line 802
    .line 803
    const/16 v3, 0x14

    .line 804
    .line 805
    invoke-direct {v2, v0, v3}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 809
    .line 810
    .line 811
    goto :goto_a

    .line 812
    :catch_7
    move-exception v1

    .line 813
    const-string v2, "retryCoreService: \u5f02\u5e38"

    .line 814
    .line 815
    invoke-static {v4, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    .line 817
    .line 818
    iput-boolean v5, v0, Lcom/byd/launcher/NavBarService;->ΰ:Z

    .line 819
    .line 820
    :goto_a
    return-void

    .line 821
    :pswitch_18
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 822
    .line 823
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 824
    .line 825
    if-eqz v0, :cond_14

    .line 826
    .line 827
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 828
    .line 829
    .line 830
    const-string v0, "ensureMusicAppRunning: refreshed sessions only (no auto-launch)"

    .line 831
    .line 832
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    :cond_14
    return-void

    .line 836
    :pswitch_19
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 837
    .line 838
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 839
    .line 840
    if-eqz v1, :cond_15

    .line 841
    .line 842
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ε()Z

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    goto :goto_b

    .line 847
    :cond_15
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    :goto_b
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ό(Z)V

    .line 852
    .line 853
    .line 854
    return-void

    .line 855
    :pswitch_1a
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 856
    .line 857
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 858
    .line 859
    invoke-virtual {v0}, Lo/a9;->ͱ()V

    .line 860
    .line 861
    .line 862
    return-void

    .line 863
    :pswitch_1b
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 864
    .line 865
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 866
    .line 867
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Α()V

    .line 871
    .line 872
    .line 873
    return-void

    .line 874
    :pswitch_1c
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 875
    .line 876
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 877
    .line 878
    if-nez v1, :cond_16

    .line 879
    .line 880
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 884
    .line 885
    .line 886
    :cond_16
    return-void

    .line 887
    :goto_c
    iget-object v0, p0, Lo/m9;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 888
    .line 889
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 890
    .line 891
    const/4 v2, 0x0

    .line 892
    if-eqz v1, :cond_17

    .line 893
    .line 894
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v5}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 898
    .line 899
    .line 900
    :cond_17
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 901
    .line 902
    if-eqz v1, :cond_18

    .line 903
    .line 904
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 905
    .line 906
    .line 907
    :cond_18
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 908
    .line 909
    if-eqz v1, :cond_19

    .line 910
    .line 911
    const/16 v2, 0x8

    .line 912
    .line 913
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 914
    .line 915
    .line 916
    :cond_19
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 917
    .line 918
    if-eqz v1, :cond_1a

    .line 919
    .line 920
    iput-boolean v5, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 921
    .line 922
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 923
    .line 924
    invoke-virtual {v0}, Lo/vl;->Σ()V

    .line 925
    .line 926
    .line 927
    :cond_1a
    return-void

    .line 928
    nop

    .line 929
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
