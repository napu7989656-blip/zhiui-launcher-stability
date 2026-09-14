.class public final Lo/c8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/c8;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/c8;->ͱ:Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lo/c8;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-wide/16 v2, 0x1388

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lo/a9;

    .line 14
    .line 15
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lo/a9;

    .line 23
    .line 24
    iget-object v4, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v0, v0, Lo/a9;->Θ:I

    .line 30
    .line 31
    if-lt v0, v1, :cond_3

    .line 32
    .line 33
    const-string v0, "MusicCtrlMgr"

    .line 34
    .line 35
    const-string v1, "periodicRefresh: persistent null state, session likely dead"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lo/a9;

    .line 43
    .line 44
    invoke-virtual {v0}, Lo/a9;->ˏ()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lo/a9;

    .line 50
    .line 51
    iget-object v0, v0, Lo/a9;->ʹ:Lo/ia;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lo/ia;->ʹ()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lo/a9;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lo/a9;

    .line 68
    .line 69
    iget-object v0, v0, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 70
    .line 71
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void

    .line 75
    :pswitch_1
    const-string v0, "BYDGearboxDeviceManager"

    .line 76
    .line 77
    const-string v1, "gear changed: "

    .line 78
    .line 79
    iget-object v2, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v3, v2

    .line 82
    check-cast v3, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->ͱ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_4

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_4
    :try_start_0
    move-object v4, v2

    .line 93
    check-cast v4, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->getGearboxAutoModeType()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-lez v4, :cond_5

    .line 100
    .line 101
    move-object v5, v2

    .line 102
    check-cast v5, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 103
    .line 104
    invoke-static {v5}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->ˏ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eq v4, v5, :cond_5

    .line 109
    .line 110
    move-object v5, v2

    .line 111
    check-cast v5, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 112
    .line 113
    invoke-static {v5, v4}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->ͳ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;I)V

    .line 114
    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v5, "type"

    .line 137
    .line 138
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-object v4, v2

    .line 142
    check-cast v4, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 143
    .line 144
    const-string v5, "gearboxAutoModeTypeChanged"

    .line 145
    .line 146
    invoke-static {v4, v5, v1}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->ʹ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_0
    move-exception v1

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v5, "poll gear error: "

    .line 154
    .line 155
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v4, v0}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_2
    :try_start_1
    move-object v0, v2

    .line 162
    check-cast v0, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->getBrakePedalState()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-ltz v0, :cond_6

    .line 169
    .line 170
    move-object v1, v2

    .line 171
    check-cast v1, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->ˋ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eq v0, v1, :cond_6

    .line 178
    .line 179
    move-object v1, v2

    .line 180
    check-cast v1, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 181
    .line 182
    invoke-static {v1, v0}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->Ͳ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;I)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lorg/json/JSONObject;

    .line 186
    .line 187
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v4, "state"

    .line 191
    .line 192
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    check-cast v2, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 196
    .line 197
    const-string v0, "brakePedalStateChanged"

    .line 198
    .line 199
    invoke-static {v2, v0, v1}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->ʹ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .line 201
    .line 202
    :catchall_1
    :cond_6
    invoke-static {v3}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->Ͱ(Lcom/byd/launcher/manager/BYDGearboxDeviceManager;)Landroid/os/Handler;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-wide/16 v1, 0x1f4

    .line 207
    .line 208
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void

    .line 212
    :pswitch_2
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 213
    .line 214
    :cond_7
    :goto_4
    :try_start_2
    move-object v1, v0

    .line 215
    check-cast v1, Lcom/byd/launcher/adb/ˏ;

    .line 216
    .line 217
    iget-object v1, v1, Lcom/byd/launcher/adb/ˏ;->Ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 218
    .line 219
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 220
    .line 221
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lo/Π;

    .line 226
    .line 227
    if-eqz v1, :cond_7

    .line 228
    .line 229
    move-object v4, v0

    .line 230
    check-cast v4, Lcom/byd/launcher/adb/ˏ;

    .line 231
    .line 232
    invoke-static {v4, v1}, Lcom/byd/launcher/adb/ˏ;->ˋ(Lcom/byd/launcher/adb/ˏ;Lo/Π;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :catch_0
    move-exception v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :pswitch_3
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 244
    .line 245
    iget-boolean v0, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 246
    .line 247
    if-nez v0, :cond_8

    .line 248
    .line 249
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Ό()V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    const-wide/32 v2, 0xea60

    .line 261
    .line 262
    .line 263
    rem-long/2addr v0, v2

    .line 264
    sub-long/2addr v2, v0

    .line 265
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 268
    .line 269
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 270
    .line 271
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    .line 273
    .line 274
    :cond_8
    return-void

    .line 275
    :goto_5
    iget-object v0, p0, Lo/c8;->ͱ:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Lo/nd;

    .line 278
    .line 279
    iget-boolean v2, v0, Lo/nd;->Η:Z

    .line 280
    .line 281
    if-eqz v2, :cond_b

    .line 282
    .line 283
    iget v2, v0, Lo/nd;->Ε:I

    .line 284
    .line 285
    if-gtz v2, :cond_9

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_9
    iget v2, v0, Lo/nd;->έ:I

    .line 289
    .line 290
    if-lt v2, v1, :cond_a

    .line 291
    .line 292
    const-string v0, "PiPManager"

    .line 293
    .line 294
    const-string v1, "Heartbeat: max failures reached, stopping"

    .line 295
    .line 296
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_a
    iget-object v1, v0, Lo/nd;->Ι:Ljava/util/concurrent/ExecutorService;

    .line 301
    .line 302
    new-instance v2, Lo/td;

    .line 303
    .line 304
    const/16 v3, 0x16

    .line 305
    .line 306
    invoke-direct {v2, v3, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 310
    .line 311
    .line 312
    iget-boolean v1, v0, Lo/nd;->Η:Z

    .line 313
    .line 314
    if-eqz v1, :cond_b

    .line 315
    .line 316
    iget-object v0, v0, Lo/nd;->Ζ:Landroid/os/Handler;

    .line 317
    .line 318
    const-wide/16 v1, 0x3a98

    .line 319
    .line 320
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    .line 322
    .line 323
    :cond_b
    :goto_6
    return-void

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
