.class public final synthetic Lo/lIl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/BootReceiver;

.field public final synthetic Ͳ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/BootReceiver;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/lIl;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/lIl;->ͱ:Lcom/byd/launcher/BootReceiver;

    .line 4
    .line 5
    iput-object p2, p0, Lo/lIl;->Ͳ:Landroid/content/Context;

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
    .locals 12

    .line 1
    iget v0, p0, Lo/lIl;->Ͱ:I

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    iget-object v3, p0, Lo/lIl;->Ͳ:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const-string v5, "BootReceiver"

    .line 9
    .line 10
    iget-object v6, p0, Lo/lIl;->ͱ:Lcom/byd/launcher/BootReceiver;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :pswitch_0
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const-wide/16 v8, 0x1f4

    .line 26
    .line 27
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    const-string v1, "Service is alive, skipping boot init"

    .line 37
    .line 38
    invoke-static {v5, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v6}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    const-string v6, "Force reconnecting ADB for fresh connection"

    .line 51
    .line 52
    invoke-static {v5, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    :goto_0
    const/16 v8, 0x8

    .line 60
    .line 61
    if-gt v7, v8, :cond_3

    .line 62
    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    int-to-long v8, v7

    .line 73
    mul-long/2addr v8, v1

    .line 74
    const-wide/16 v10, 0x1388

    .line 75
    .line 76
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v8

    .line 80
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v9, "ADB connected on boot retry "

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v5, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    if-nez v6, :cond_4

    .line 113
    .line 114
    const-string v1, "ADB connection failed after boot retries"

    .line 115
    .line 116
    invoke-static {v5, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    invoke-static {v3}, Lcom/byd/launcher/BootReceiver;->ˋ(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catchall_0
    move-exception v1

    .line 132
    goto :goto_2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v3, "Boot init failed: "

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v5, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    .line 158
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :pswitch_1
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/byd/launcher/NavBarService;->β()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    const-string v0, "Service recovered by re-showing UI"

    .line 178
    .line 179
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_6
    const-string v0, "Re-show didn\'t recover service, attempting accessibility restart"

    .line 184
    .line 185
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    .line 190
    invoke-virtual {v0, v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_7

    .line 195
    .line 196
    const-string v0, "Another thread is toggling accessibility"

    .line 197
    .line 198
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    .line 203
    .line 204
    new-instance v1, Lo/lIl;

    .line 205
    .line 206
    const/4 v2, 0x2

    .line 207
    invoke-direct {v1, v6, v3, v2}, Lo/lIl;-><init>(Lcom/byd/launcher/BootReceiver;Landroid/content/Context;I)V

    .line 208
    .line 209
    .line 210
    const-string v2, "AccessibilityRestart"

    .line 211
    .line 212
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    .line 217
    .line 218
    :goto_3
    return-void

    .line 219
    :goto_4
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    .line 226
    :try_start_2
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_8

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_8
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-static {v6}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    :goto_5
    const/4 v8, 0x6

    .line 245
    if-gt v7, v8, :cond_a

    .line 246
    .line 247
    if-nez v6, :cond_a

    .line 248
    .line 249
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-eqz v6, :cond_9

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_9
    int-to-long v8, v7

    .line 257
    mul-long/2addr v8, v1

    .line 258
    const-wide/16 v10, 0xfa0

    .line 259
    .line 260
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v8

    .line 264
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Lo/c0;->forceReconnect()Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    add-int/lit8 v7, v7, 0x1

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_a
    if-nez v6, :cond_b

    .line 275
    .line 276
    const-string v1, "ADB connection failed after retries"

    .line 277
    .line 278
    invoke-static {v5, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_b
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_c

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_c
    invoke-static {v3}, Lcom/byd/launcher/BootReceiver;->ˋ(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :catchall_1
    move-exception v1

    .line 294
    goto :goto_7

    .line 295
    :catch_1
    move-exception v1

    .line 296
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v3, "startAccessibilityRestart failed: "

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {v5, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    .line 319
    .line 320
    :goto_6
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :goto_7
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
