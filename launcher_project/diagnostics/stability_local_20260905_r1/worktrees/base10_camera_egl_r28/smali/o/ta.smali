.class public final Lo/ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public ͱ:I

.field public final synthetic Ͳ:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ta;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lo/ta;->ͱ:I

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lo/ta;->Ͱ:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_7

    .line 11
    .line 12
    :pswitch_0
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 13
    .line 14
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 23
    .line 24
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    iget-wide v8, v0, Lcom/byd/launcher/NavBarService;->Ϟ:J

    .line 38
    .line 39
    sub-long v8, v6, v8

    .line 40
    .line 41
    const-wide/32 v10, 0xea60

    .line 42
    .line 43
    .line 44
    cmp-long v4, v8, v10

    .line 45
    .line 46
    if-lez v4, :cond_3

    .line 47
    .line 48
    iput-wide v6, v0, Lcom/byd/launcher/NavBarService;->Ϟ:J

    .line 49
    .line 50
    iget-boolean v4, v0, Lcom/byd/launcher/NavBarService;->Ϗ:Z

    .line 51
    .line 52
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    const/4 v7, -0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/high16 v7, -0x1000000

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    instance-of v8, v6, Landroid/graphics/drawable/ColorDrawable;

    .line 67
    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    check-cast v6, Landroid/graphics/drawable/ColorDrawable;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eq v6, v7, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Lcom/byd/launcher/NavBarService;->Ό(Z)V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_b

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_4

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    new-instance v6, Lo/ia;

    .line 95
    .line 96
    const/4 v7, 0x7

    .line 97
    invoke-direct {v6, v0, v7}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 98
    .line 99
    .line 100
    const-string v7, "getVehicleStatusBar"

    .line 101
    .line 102
    invoke-virtual {v4, v7, v2, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 103
    .line 104
    .line 105
    iget v6, v0, Lcom/byd/launcher/NavBarService;->ϟ:I

    .line 106
    .line 107
    add-int/2addr v6, v3

    .line 108
    iput v6, v0, Lcom/byd/launcher/NavBarService;->ϟ:I

    .line 109
    .line 110
    rem-int/lit8 v6, v6, 0x2

    .line 111
    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 116
    .line 117
    if-eqz v6, :cond_9

    .line 118
    .line 119
    iget-object v6, v6, Lo/vl;->Ͷ:Lo/km;

    .line 120
    .line 121
    if-nez v6, :cond_6

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    .line 125
    .line 126
    iget-object v6, v6, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_8

    .line 140
    .line 141
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lo/mm;

    .line 146
    .line 147
    iget v7, v7, Lo/mm;->Ͱ:I

    .line 148
    .line 149
    const/4 v8, 0x6

    .line 150
    if-ne v7, v8, :cond_7

    .line 151
    .line 152
    move v6, v3

    .line 153
    goto :goto_2

    .line 154
    :cond_8
    :goto_1
    move v6, v5

    .line 155
    :goto_2
    if-nez v6, :cond_9

    .line 156
    .line 157
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 158
    .line 159
    if-eqz v6, :cond_a

    .line 160
    .line 161
    iget-boolean v6, v6, Lo/nd;->Η:Z

    .line 162
    .line 163
    if-nez v6, :cond_9

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    new-instance v6, Lo/ia;

    .line 167
    .line 168
    invoke-direct {v6, v0, v1}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 169
    .line 170
    .line 171
    const-string v1, "getTripInfo"

    .line 172
    .line 173
    invoke-virtual {v4, v1, v2, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 174
    .line 175
    .line 176
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ο()V

    .line 177
    .line 178
    .line 179
    :cond_b
    :goto_4
    iget v0, p0, Lo/ta;->ͱ:I

    .line 180
    .line 181
    add-int/2addr v0, v3

    .line 182
    iput v0, p0, Lo/ta;->ͱ:I

    .line 183
    .line 184
    const/16 v1, 0xc

    .line 185
    .line 186
    if-lt v0, v1, :cond_c

    .line 187
    .line 188
    iput v5, p0, Lo/ta;->ͱ:I

    .line 189
    .line 190
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 191
    .line 192
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 195
    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_c

    .line 203
    .line 204
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 205
    .line 206
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 207
    .line 208
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->Κ:Z

    .line 209
    .line 210
    if-eqz v0, :cond_c

    .line 211
    .line 212
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 213
    .line 214
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 215
    .line 216
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ΰ:Z

    .line 217
    .line 218
    if-nez v0, :cond_c

    .line 219
    .line 220
    const-string v0, "NavBarSvc"

    .line 221
    .line 222
    const-string v1, "CoreService health check: disconnected, initiating reconnect"

    .line 223
    .line 224
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 228
    .line 229
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    .line 232
    .line 233
    .line 234
    :cond_c
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 235
    .line 236
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 237
    .line 238
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 239
    .line 240
    if-nez v0, :cond_d

    .line 241
    .line 242
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 243
    .line 244
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 247
    .line 248
    if-eqz v0, :cond_d

    .line 249
    .line 250
    const-wide/16 v1, 0x1388

    .line 251
    .line 252
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    .line 254
    .line 255
    :cond_d
    :goto_5
    return-void

    .line 256
    :pswitch_1
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 257
    .line 258
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 259
    .line 260
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Γ()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 266
    .line 267
    .line 268
    iget v1, p0, Lo/ta;->ͱ:I

    .line 269
    .line 270
    add-int/2addr v1, v3

    .line 271
    iput v1, p0, Lo/ta;->ͱ:I

    .line 272
    .line 273
    const/4 v3, 0x4

    .line 274
    if-ge v1, v3, :cond_e

    .line 275
    .line 276
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 277
    .line 278
    const-wide/16 v1, 0x96

    .line 279
    .line 280
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_e
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->τ:Ljava/lang/Runnable;

    .line 285
    .line 286
    :goto_6
    return-void

    .line 287
    :goto_7
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 288
    .line 289
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 290
    .line 291
    iget-boolean v0, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 292
    .line 293
    if-eqz v0, :cond_f

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_f
    invoke-static {}, Lcom/byd/launcher/NavBarService;->β()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_10

    .line 301
    .line 302
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 303
    .line 304
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_10
    iget v0, p0, Lo/ta;->ͱ:I

    .line 313
    .line 314
    add-int/2addr v0, v3

    .line 315
    iput v0, p0, Lo/ta;->ͱ:I

    .line 316
    .line 317
    const/16 v2, 0x3c

    .line 318
    .line 319
    if-gt v0, v2, :cond_11

    .line 320
    .line 321
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 322
    .line 323
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 324
    .line 325
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 326
    .line 327
    const-wide/16 v1, 0x1f4

    .line 328
    .line 329
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_11
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 334
    .line 335
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_12

    .line 347
    .line 348
    const-string v0, "MainActivity"

    .line 349
    .line 350
    const-string v1, "Service not alive after 30s, one final bgInit attempt"

    .line 351
    .line 352
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lo/ta;->Ͳ:Landroid/content/ContextWrapper;

    .line 356
    .line 357
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 358
    .line 359
    invoke-virtual {v0}, Lcom/byd/launcher/MainActivity;->Έ()V

    .line 360
    .line 361
    .line 362
    :cond_12
    :goto_8
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
