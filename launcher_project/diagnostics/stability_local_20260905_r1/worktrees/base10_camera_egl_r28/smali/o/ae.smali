.class public final synthetic Lo/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;

.field public final synthetic Ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lo/ff;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lo/ae;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ae;->ͱ:Lo/ff;

    .line 4
    .line 5
    iput-boolean p2, p0, Lo/ae;->Ͳ:Z

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
    .locals 9

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ae;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ae;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0xbb8

    .line 6
    .line 7
    const-string v4, "QuickSettingsMgr"

    .line 8
    .line 9
    iget-object v5, p0, Lo/ae;->ͱ:Lo/ff;

    .line 10
    .line 11
    iget-boolean v6, p0, Lo/ae;->Ͳ:Z

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :pswitch_0
    iget-object v0, v5, Lo/ff;->ˋ:Landroid/content/Context;

    .line 19
    .line 20
    const-string v5, "toggleMobileData: "

    .line 21
    .line 22
    :try_start_0
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 26
    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    const-string v7, "svc data enable"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v7, "svc data disable"

    .line 34
    .line 35
    :goto_0
    invoke-static {v7, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v4, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v3

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v7, "toggleMobileData svc failed: "

    .line 50
    .line 51
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v5, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    const-string v3, "connectivity"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v5, "setMobileDataEnabled"

    .line 72
    .line 73
    new-array v7, v1, [Ljava/lang/Class;

    .line 74
    .line 75
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    aput-object v8, v7, v2

    .line 78
    .line 79
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    aput-object v5, v1, v2

    .line 90
    .line 91
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "toggleMobileData fallback: "

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_1
    return-void

    .line 107
    :pswitch_1
    iget-object v0, v5, Lo/ff;->ˋ:Landroid/content/Context;

    .line 108
    .line 109
    const-string v5, "toggleWifi: "

    .line 110
    .line 111
    :try_start_2
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 115
    .line 116
    .line 117
    if-eqz v6, :cond_2

    .line 118
    .line 119
    const-string v7, "svc wifi disable"

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    const-string v7, "svc wifi enable"

    .line 123
    .line 124
    :goto_2
    invoke-static {v7, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v4, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_2
    move-exception v3

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v7, "toggleWifi svc failed: "

    .line 139
    .line 140
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v5, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v3, "wifi"

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 157
    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    if-nez v6, :cond_3

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    move v1, v2

    .line 164
    :goto_3
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catch_3
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v2, "toggleWifi fallback: "

    .line 172
    .line 173
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    :goto_4
    return-void

    .line 180
    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v0, "toggleBluetooth: "

    .line 184
    .line 185
    :try_start_4
    iget-object v1, v5, Lo/ff;->ˋ:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v1}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 191
    .line 192
    .line 193
    if-eqz v6, :cond_5

    .line 194
    .line 195
    const-string v1, "svc bluetooth disable"

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_5
    const-string v1, "svc bluetooth enable"

    .line 199
    .line 200
    :goto_5
    invoke-static {v1, v3}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :catch_4
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "toggleBluetooth svc failed: "

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :try_start_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    if-eqz v6, :cond_6

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :catch_5
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v2, "toggleBluetooth fallback: "

    .line 242
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    :goto_6
    return-void

    .line 250
    :goto_7
    iget-object v0, v5, Lo/ff;->ʹ:Landroid/view/View;

    .line 251
    .line 252
    if-nez v0, :cond_8

    .line 253
    .line 254
    goto :goto_a

    .line 255
    :cond_8
    const/4 v1, 0x2

    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, v5, Lo/ff;->ʹ:Landroid/view/View;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const/4 v3, 0x0

    .line 267
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-eqz v6, :cond_9

    .line 272
    .line 273
    const-wide/16 v3, 0x78

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_9
    const-wide/16 v3, 0x15e

    .line 277
    .line 278
    :goto_8
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    sget-object v3, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 283
    .line 284
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v4, Lo/ee;

    .line 289
    .line 290
    const/4 v7, 0x4

    .line 291
    invoke-direct {v4, v5, v7}, Lo/ee;-><init>(Lo/ff;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 299
    .line 300
    .line 301
    iget-object v0, v5, Lo/ff;->Ͷ:Landroid/view/View;

    .line 302
    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v5, Lo/ff;->Ͷ:Landroid/view/View;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const/high16 v1, 0x3f800000    # 1.0f

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-eqz v6, :cond_a

    .line 319
    .line 320
    const-wide/16 v1, 0x64

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_a
    const-wide/16 v1, 0x118

    .line 324
    .line 325
    :goto_9
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    new-instance v1, Lo/ee;

    .line 334
    .line 335
    const/4 v2, 0x5

    .line 336
    invoke-direct {v1, v5, v2}, Lo/ee;-><init>(Lo/ff;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 344
    .line 345
    .line 346
    :goto_a
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
