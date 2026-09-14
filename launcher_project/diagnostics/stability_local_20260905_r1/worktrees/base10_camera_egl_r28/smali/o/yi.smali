.class public final synthetic Lo/yi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/oj;


# direct methods
.method public synthetic constructor <init>(Lo/oj;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/yi;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/yi;->ͱ:Lo/oj;

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
    .locals 10

    .line 1
    iget v0, p0, Lo/yi;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lo/yi;->ͱ:Lo/oj;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :pswitch_0
    iget-object v0, v3, Lo/oj;->ˋ:Landroid/content/Context;

    .line 13
    .line 14
    const-string v4, "VehicleCtrlMgr"

    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const-string v7, "bydScreenOff"

    .line 35
    .line 36
    new-instance v8, Lo/g8;

    .line 37
    .line 38
    const/4 v9, 0x5

    .line 39
    invoke-direct {v8, v9, v3, v6}, Lo/g8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v7, v2, v8}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    const-wide/16 v7, 0x3

    .line 48
    .line 49
    invoke-virtual {v6, v7, v8, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v5, "BYD screen off error: "

    .line 57
    .line 58
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "screen_brightness_mode"

    .line 69
    .line 70
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "screen_brightness"

    .line 78
    .line 79
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "turnOffScreen brightness Settings.System failed: "

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    :try_start_2
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    const-string v0, "settings put system screen_brightness_mode 0"

    .line 104
    .line 105
    const/16 v1, 0x3e8

    .line 106
    .line 107
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    const-string v0, "settings put system screen_brightness 0"

    .line 111
    .line 112
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_2
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "turnOffScreen brightness ADB failed: "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1, v4}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    :goto_2
    return-void

    .line 128
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_2
    invoke-virtual {v3}, Lo/oj;->Ά()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_3
    invoke-virtual {v3}, Lo/oj;->Ή()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_4
    iget-boolean v0, v3, Lo/oj;->Ͷ:Z

    .line 141
    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    invoke-virtual {v3}, Lo/oj;->Ά()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lo/oj;->Ή()V

    .line 148
    .line 149
    .line 150
    :cond_2
    return-void

    .line 151
    :pswitch_5
    iget-object v0, v3, Lo/oj;->Ί:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    invoke-virtual {v3}, Lo/oj;->Ζ()V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_3
    invoke-virtual {v3}, Lo/oj;->Ε()V

    .line 160
    .line 161
    .line 162
    :goto_3
    return-void

    .line 163
    :pswitch_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    :try_start_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 167
    .line 168
    iget-object v4, v3, Lo/oj;->ˋ:Landroid/content/Context;

    .line 169
    .line 170
    sget v5, Lo/lf;->Theme_NavDemo:I

    .line 171
    .line 172
    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget v4, Lo/jf;->vehicle_control_panel:I

    .line 180
    .line 181
    invoke-virtual {v0, v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v1, v3, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance v2, Lo/ag;

    .line 188
    .line 189
    const/16 v4, 0x13

    .line 190
    .line 191
    invoke-direct {v2, v4, v3, v0}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    .line 196
    .line 197
    :catch_0
    return-void

    .line 198
    :pswitch_7
    iget-object v0, v3, Lo/oj;->Ί:Landroid/view/View;

    .line 199
    .line 200
    if-eqz v0, :cond_4

    .line 201
    .line 202
    invoke-virtual {v3}, Lo/oj;->Ζ()V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_4
    invoke-virtual {v3}, Lo/oj;->Ε()V

    .line 207
    .line 208
    .line 209
    :goto_4
    return-void

    .line 210
    :goto_5
    iget-object v0, v3, Lo/oj;->Ͳ:Landroid/view/View;

    .line 211
    .line 212
    if-nez v0, :cond_5

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_5
    sget v0, Lo/if;->tv_range:I

    .line 216
    .line 217
    const-string v1, "520 km"

    .line 218
    .line 219
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    sget v0, Lo/if;->tv_elec_range:I

    .line 223
    .line 224
    const-string v1, "120 km"

    .line 225
    .line 226
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sget v0, Lo/if;->tv_fuel_range:I

    .line 230
    .line 231
    const-string v1, "400 km"

    .line 232
    .line 233
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sget v0, Lo/if;->tv_mileage:I

    .line 237
    .line 238
    const-string v1, "12680.5 km"

    .line 239
    .line 240
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget v0, Lo/if;->tv_ev_mileage:I

    .line 244
    .line 245
    const-string v1, "3200.0 km"

    .line 246
    .line 247
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sget v0, Lo/if;->tv_hev_mileage:I

    .line 251
    .line 252
    const-string v1, "9480.5 km"

    .line 253
    .line 254
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget v0, Lo/if;->tv_fuel_level:I

    .line 258
    .line 259
    const-string v1, "65 %"

    .line 260
    .line 261
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sget v0, Lo/if;->tv_battery:I

    .line 265
    .line 266
    const-string v1, "85 %"

    .line 267
    .line 268
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sget v0, Lo/if;->tv_ext_charging:I

    .line 272
    .line 273
    const-string v1, "0.0 kW"

    .line 274
    .line 275
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    sget v0, Lo/if;->tv_total_fuel:I

    .line 279
    .line 280
    const-string v1, "856.3 L"

    .line 281
    .line 282
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sget v0, Lo/if;->tv_total_elec:I

    .line 286
    .line 287
    const-string v1, "1520.8 kWh"

    .line 288
    .line 289
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget v0, Lo/if;->tv_consumption:I

    .line 293
    .line 294
    const-string v1, "14.2 kWh"

    .line 295
    .line 296
    invoke-virtual {v3, v0, v1}, Lo/oj;->Α(ILjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_6
    return-void

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
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
