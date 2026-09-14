.class public final synthetic Lo/llI;
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
    iput p2, p0, Lo/llI;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

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
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo/llI;->Ͱ:I

    .line 4
    .line 5
    const/high16 v2, 0x10000000

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/4 v5, 0x3

    .line 10
    const/16 v6, 0x1a

    .line 11
    .line 12
    const-string v7, "launcher_prefs"

    .line 13
    .line 14
    const-string v8, "poll"

    .line 15
    .line 16
    const-wide/16 v9, 0x1f4

    .line 17
    .line 18
    const/4 v11, 0x2

    .line 19
    const/4 v12, 0x0

    .line 20
    const-string v13, "NavBarSvc"

    .line 21
    .line 22
    const/4 v14, 0x1

    .line 23
    const/4 v15, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_25

    .line 28
    .line 29
    :pswitch_0
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 30
    .line 31
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/content/Intent;

    .line 37
    .line 38
    const-string v4, "android.intent.action.MAIN"

    .line 39
    .line 40
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v4, "android.intent.category.HOME"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iput-boolean v14, v0, Lcom/byd/launcher/NavBarService;->ϒ:Z

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v15, v0, Lcom/byd/launcher/NavBarService;->ϒ:Z

    .line 57
    .line 58
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v3, Lo/ea;

    .line 61
    .line 62
    invoke-direct {v3, v0, v6}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 70
    .line 71
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 72
    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 77
    .line 78
    const/high16 v3, 0x3f800000    # 1.0f

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v14}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 89
    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 93
    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 97
    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->π:Z

    .line 118
    .line 119
    if-nez v2, :cond_3

    .line 120
    .line 121
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 122
    .line 123
    if-nez v2, :cond_3

    .line 124
    .line 125
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 126
    .line 127
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 131
    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 135
    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_0
    return-void

    .line 142
    :pswitch_2
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 143
    .line 144
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-static {v0}, Lo/ci;->Ͱ(Landroid/content/Context;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-ne v3, v11, :cond_5

    .line 158
    .line 159
    invoke-static {v0}, Lo/ci;->ʹ(Landroid/content/Context;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    const-string v4, "light_mode"

    .line 172
    .line 173
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->Ό(Z)V

    .line 181
    .line 182
    .line 183
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ϗ:Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ϙ:Landroid/graphics/Bitmap;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->φ()V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/byd/launcher/MainActivity;->Ά()V

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 200
    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    iget-boolean v3, v2, Lo/nd;->Η:Z

    .line 204
    .line 205
    if-eqz v3, :cond_7

    .line 206
    .line 207
    iget-object v3, v2, Lo/nd;->Ͳ:Landroid/view/View;

    .line 208
    .line 209
    if-eqz v3, :cond_7

    .line 210
    .line 211
    iget-object v3, v2, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 212
    .line 213
    new-instance v4, Lo/uc;

    .line 214
    .line 215
    invoke-direct {v4, v2, v15}, Lo/uc;-><init>(Lo/nd;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    .line 220
    .line 221
    :cond_7
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 222
    .line 223
    .line 224
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 225
    .line 226
    if-eqz v2, :cond_8

    .line 227
    .line 228
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 229
    .line 230
    if-eqz v2, :cond_8

    .line 231
    .line 232
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 233
    .line 234
    if-eqz v0, :cond_8

    .line 235
    .line 236
    invoke-virtual {v0, v14}, Lo/vl;->Ρ(Z)V

    .line 237
    .line 238
    .line 239
    :cond_8
    return-void

    .line 240
    :pswitch_3
    iget-object v2, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 241
    .line 242
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    .line 243
    .line 244
    if-nez v0, :cond_9

    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :cond_9
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->Φ()[I

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    aget v3, v0, v14

    .line 253
    .line 254
    aget v0, v0, v5

    .line 255
    .line 256
    sub-int v0, v3, v0

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->Ψ()I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-lez v0, :cond_a

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_a
    move v0, v4

    .line 266
    :goto_1
    iput v0, v2, Lcom/byd/launcher/NavBarService;->ͺ:I

    .line 267
    .line 268
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 269
    .line 270
    if-eqz v0, :cond_b

    .line 271
    .line 272
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 277
    .line 278
    iget v4, v2, Lcom/byd/launcher/NavBarService;->ͺ:I

    .line 279
    .line 280
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 281
    .line 282
    sub-int v4, v3, v4

    .line 283
    .line 284
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 285
    .line 286
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    .line 287
    .line 288
    iget-object v5, v2, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 289
    .line 290
    invoke-interface {v4, v5, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string v4, "Reposition nav bar failed"

    .line 296
    .line 297
    invoke-static {v13, v4, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    .line 299
    .line 300
    :cond_b
    :goto_2
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 301
    .line 302
    if-eqz v0, :cond_c

    .line 303
    .line 304
    :try_start_1
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->Ω()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 309
    .line 310
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 315
    .line 316
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 317
    .line 318
    iput v15, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 319
    .line 320
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    .line 321
    .line 322
    iget-object v5, v2, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 323
    .line 324
    invoke-interface {v0, v5, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :catch_1
    move-exception v0

    .line 329
    const-string v4, "Reposition status bar failed"

    .line 330
    .line 331
    invoke-static {v13, v4, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 332
    .line 333
    .line 334
    :cond_c
    :goto_3
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 335
    .line 336
    if-eqz v0, :cond_e

    .line 337
    .line 338
    iget v2, v2, Lcom/byd/launcher/NavBarService;->ͺ:I

    .line 339
    .line 340
    iget-object v4, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 341
    .line 342
    if-eqz v4, :cond_e

    .line 343
    .line 344
    iget-object v4, v0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 345
    .line 346
    if-eqz v4, :cond_d

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_d
    iput v2, v0, Lo/vl;->ͽ:I

    .line 350
    .line 351
    const/16 v4, 0x67

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Lo/vl;->Ά(I)I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    sub-int/2addr v3, v2

    .line 358
    sub-int/2addr v3, v4

    .line 359
    :try_start_2
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 360
    .line 361
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 366
    .line 367
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 368
    .line 369
    iget-object v3, v0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 370
    .line 371
    iget-object v0, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 372
    .line 373
    invoke-interface {v3, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :catch_2
    move-exception v0

    .line 378
    const-string v2, "WidgetBarMgr"

    .line 379
    .line 380
    const-string v3, "Reposition widget bar failed"

    .line 381
    .line 382
    invoke-static {v2, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 383
    .line 384
    .line 385
    :cond_e
    :goto_4
    return-void

    .line 386
    :pswitch_4
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 387
    .line 388
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 389
    .line 390
    if-nez v2, :cond_f

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϟ()V

    .line 393
    .line 394
    .line 395
    :cond_f
    return-void

    .line 396
    :pswitch_5
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 397
    .line 398
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 399
    .line 400
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 401
    .line 402
    if-nez v2, :cond_13

    .line 403
    .line 404
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 405
    .line 406
    if-nez v2, :cond_10

    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_10
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 410
    .line 411
    if-nez v2, :cond_11

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :cond_11
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 415
    .line 416
    if-eqz v2, :cond_12

    .line 417
    .line 418
    iget-boolean v2, v2, Lo/nd;->Η:Z

    .line 419
    .line 420
    if-eqz v2, :cond_12

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_12
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 424
    .line 425
    invoke-virtual {v0}, Lo/vl;->Ί()V

    .line 426
    .line 427
    .line 428
    :cond_13
    :goto_5
    return-void

    .line 429
    :pswitch_6
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 430
    .line 431
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 432
    .line 433
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Β()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_15

    .line 438
    .line 439
    iput-boolean v14, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 440
    .line 441
    iput-boolean v15, v0, Lcom/byd/launcher/NavBarService;->Π:Z

    .line 442
    .line 443
    sput-wide v3, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ά()V

    .line 446
    .line 447
    .line 448
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 449
    .line 450
    if-eqz v2, :cond_14

    .line 451
    .line 452
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 453
    .line 454
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    .line 456
    .line 457
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 458
    .line 459
    :cond_14
    invoke-virtual {v0, v15}, Lcom/byd/launcher/NavBarService;->ϣ(I)V

    .line 460
    .line 461
    .line 462
    :cond_15
    return-void

    .line 463
    :pswitch_7
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 464
    .line 465
    const-string v0, "autoStartUserApp: no launch intent for "

    .line 466
    .line 467
    iget-object v3, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 468
    .line 469
    invoke-virtual {v3, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const-string v5, "autostart_package"

    .line 474
    .line 475
    const-string v6, ""

    .line 476
    .line 477
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v6, :cond_16

    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_16
    const-string v6, "autostart_return_home"

    .line 489
    .line 490
    invoke-interface {v4, v6, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string v7, "autoStartUserApp: launching "

    .line 497
    .line 498
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v7, ", returnHome="

    .line 505
    .line 506
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    invoke-static {v13, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    if-eqz v6, :cond_17

    .line 528
    .line 529
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v6}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V

    .line 533
    .line 534
    .line 535
    if-eqz v4, :cond_18

    .line 536
    .line 537
    iget-object v0, v3, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 538
    .line 539
    new-instance v2, Lo/llI;

    .line 540
    .line 541
    const/16 v4, 0x1c

    .line 542
    .line 543
    invoke-direct {v2, v3, v4}, Lo/llI;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 544
    .line 545
    .line 546
    const-wide/16 v3, 0xbb8

    .line 547
    .line 548
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    .line 550
    .line 551
    goto :goto_6

    .line 552
    :cond_17
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v13, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 557
    .line 558
    .line 559
    goto :goto_6

    .line 560
    :catch_3
    move-exception v0

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v3, "autoStartUserApp error: "

    .line 564
    .line 565
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    :cond_18
    :goto_6
    return-void

    .line 572
    :pswitch_8
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 573
    .line 574
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ˋ(Lcom/byd/launcher/NavBarService;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :pswitch_9
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 579
    .line 580
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 581
    .line 582
    if-nez v2, :cond_19

    .line 583
    .line 584
    new-instance v2, Lo/oj;

    .line 585
    .line 586
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    .line 587
    .line 588
    invoke-direct {v2, v0, v3}, Lo/oj;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 589
    .line 590
    .line 591
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 592
    .line 593
    :cond_19
    return-void

    .line 594
    :pswitch_a
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 595
    .line 596
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 597
    .line 598
    new-instance v3, Lo/na;

    .line 599
    .line 600
    invoke-direct {v3, v0, v11}, Lo/na;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 601
    .line 602
    .line 603
    const-wide/16 v4, 0x3a98

    .line 604
    .line 605
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :pswitch_b
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 610
    .line 611
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    new-instance v2, Lo/ea;

    .line 617
    .line 618
    invoke-direct {v2, v0, v15}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :pswitch_c
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 626
    .line 627
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 628
    .line 629
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    :try_start_4
    new-instance v2, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;

    .line 633
    .line 634
    invoke-direct {v2, v0}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;-><init>(Landroid/content/Context;)V

    .line 635
    .line 636
    .line 637
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ͽ:Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;

    .line 638
    .line 639
    new-instance v3, Lo/da;

    .line 640
    .line 641
    invoke-direct {v3, v0}, Lo/da;-><init>(Lcom/byd/launcher/NavBarService;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v2, v3}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->setMediaInfoCallback(Lo/Ϻ;)V

    .line 645
    .line 646
    .line 647
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͽ:Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;

    .line 648
    .line 649
    new-instance v3, Lo/da;

    .line 650
    .line 651
    invoke-direct {v3, v0}, Lo/da;-><init>(Lcom/byd/launcher/NavBarService;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v3}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->setPlayStateCallback(Lo/ϼ;)V

    .line 655
    .line 656
    .line 657
    const-string v0, "BYD Multimedia manager initialized"

    .line 658
    .line 659
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 660
    .line 661
    .line 662
    goto :goto_7

    .line 663
    :catchall_0
    move-exception v0

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    const-string v3, "initBydMultimedia failed: "

    .line 667
    .line 668
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-static {v0, v2, v13}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :goto_7
    return-void

    .line 675
    :pswitch_d
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v2, :media_replace_done
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-eq v0, v2, :media_replace_alive
    :media_replace_done
    return-void
    :media_replace_alive
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 676
    .line 677
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    if-eqz v2, :art_new_manager
    invoke-virtual {v2}, Lo/a9;->stabilityDispose()V
    :art_new_manager
    new-instance v2, Lo/a9;

    .line 683
    .line 684
    invoke-direct {v2, v0}, Lo/a9;-><init>(Lcom/byd/launcher/NavBarService;)V

    .line 685
    .line 686
    .line 687
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 688
    .line 689
    new-instance v3, Lo/ia;

    .line 690
    .line 691
    const/16 v4, 0x9

    .line 692
    .line 693
    invoke-direct {v3, v0, v4}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 694
    .line 695
    .line 696
    iput-object v3, v2, Lo/a9;->ʹ:Lo/ia;

    .line 697
    .line 698
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    iget-object v2, v2, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 699
    .line 700
    new-instance v3, Lcom/byd/launcher/stability/MediaManagerStart;
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    invoke-direct {v3, v4}, Lcom/byd/launcher/stability/MediaManagerStart;-><init>(Lo/a9;)V

    .line 705
    .line 706
    .line 707
    const-wide/16 v4, 0xbb8

    .line 708
    .line 709
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    .line 711
    .line 712
    new-instance v2, Lo/fb;

    .line 713
    .line 714
    invoke-direct {v2, v0}, Lo/fb;-><init>(Lcom/byd/launcher/NavBarService;)V

    .line 715
    .line 716
    .line 717
    sput-object v2, Lcom/byd/launcher/MusicNotificationListener;->ͱ:Lo/fb;

    .line 718
    .line 719
    new-instance v2, Lo/na;

    .line 720
    .line 721
    invoke-direct {v2, v0, v14}, Lo/na;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 722
    .line 723
    .line 724
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Ϯ:Lo/na;

    .line 725
    .line 726
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 727
    .line 728
    const-wide/16 v4, 0x7d0

    .line 729
    .line 730
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    .line 732
    .line 733
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ϭ:Lo/gb;

    .line 734
    .line 735
    if-eqz v2, :cond_1a

    .line 736
    .line 737
    goto :goto_8

    .line 738
    :cond_1a
    new-instance v2, Lo/gb;

    .line 739
    .line 740
    invoke-direct {v2, v0}, Lo/gb;-><init>(Lcom/byd/launcher/NavBarService;)V

    .line 741
    .line 742
    .line 743
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Ϭ:Lo/gb;

    .line 744
    .line 745
    new-instance v2, Landroid/content/IntentFilter;

    .line 746
    .line 747
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 748
    .line 749
    .line 750
    const-string v3, "com.android.music.metachanged"

    .line 751
    .line 752
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    const-string v3, "com.android.music.playstatechanged"

    .line 756
    .line 757
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    const-string v3, "com.android.music.playbackcomplete"

    .line 761
    .line 762
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string v3, "com.android.music.queuechanged"

    .line 766
    .line 767
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const-string v3, "com.netease.cloudmusic.iot.metachanged"

    .line 771
    .line 772
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    const-string v3, "com.netease.cloudmusic.iot.playstatechanged"

    .line 776
    .line 777
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    const-string v3, "com.netease.cloudmusic.metachanged"

    .line 781
    .line 782
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    const-string v3, "com.netease.cloudmusic.playstatechanged"

    .line 786
    .line 787
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ϭ:Lo/gb;

    .line 791
    .line 792
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    .line 794
    .line 795
    const-string v2, "Registered music broadcast receiver"

    .line 796
    .line 797
    invoke-static {v13, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    :goto_8
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 801
    .line 802
    new-instance v3, Lo/m9;

    .line 803
    .line 804
    const/4 v4, 0x4

    .line 805
    invoke-direct {v3, v0, v4}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 806
    .line 807
    .line 808
    const-wide/16 v4, 0x1388

    .line 809
    .line 810
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 811
    .line 812
    .line 813
    return-void

    .line 814
    :pswitch_e
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 815
    .line 816
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 817
    .line 818
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    new-instance v2, Lo/ea;

    .line 822
    .line 823
    invoke-direct {v2, v0, v14}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 827
    .line 828
    .line 829
    return-void

    .line 830
    :pswitch_f
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 831
    .line 832
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϟ()V

    .line 833
    .line 834
    .line 835
    return-void

    .line 836
    :pswitch_10
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 837
    .line 838
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 839
    .line 840
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    :try_start_5
    const-string v2, "autoStartOriginalLauncher: starting com.android.launcher3 in background"

    .line 844
    .line 845
    invoke-static {v13, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    const-string v3, "com.android.launcher3"

    .line 853
    .line 854
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    if-eqz v2, :cond_1b

    .line 859
    .line 860
    const/high16 v3, 0x10800000

    .line 861
    .line 862
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V

    .line 866
    .line 867
    .line 868
    goto :goto_9

    .line 869
    :cond_1b
    const-string v0, "autoStartOriginalLauncher: no launch intent for com.android.launcher3"

    .line 870
    .line 871
    invoke-static {v13, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 872
    .line 873
    .line 874
    goto :goto_9

    .line 875
    :catch_4
    move-exception v0

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    const-string v3, "autoStartOriginalLauncher error: "

    .line 879
    .line 880
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-static {v0, v2, v13}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    :goto_9
    return-void

    .line 887
    :pswitch_11
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 888
    .line 889
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 890
    .line 891
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 892
    .line 893
    .line 894
    const-string v2, "restorePipVisibilityOnBoot: pipEnabled="

    .line 895
    .line 896
    :try_start_6
    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    const-string v4, "pip_enabled"

    .line 901
    .line 902
    invoke-interface {v3, v4, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    const-string v5, "floating_window_enabled"

    .line 907
    .line 908
    invoke-interface {v3, v5, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 909
    .line 910
    .line 911
    move-result v5

    .line 912
    const-string v6, "pip_last_visible"

    .line 913
    .line 914
    invoke-interface {v3, v6, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    new-instance v6, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const-string v2, " floatingEnabled="

    .line 927
    .line 928
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string v2, " lastVisible="

    .line 935
    .line 936
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    const-string v2, " foregroundIsHome="

    .line 943
    .line 944
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 948
    .line 949
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    invoke-static {v13, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    if-nez v4, :cond_1c

    .line 960
    .line 961
    if-nez v5, :cond_1c

    .line 962
    .line 963
    goto :goto_a

    .line 964
    :cond_1c
    if-nez v3, :cond_1d

    .line 965
    .line 966
    goto :goto_a

    .line 967
    :cond_1d
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 968
    .line 969
    if-nez v2, :cond_1e

    .line 970
    .line 971
    goto :goto_a

    .line 972
    :cond_1e
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϝ()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 973
    .line 974
    .line 975
    goto :goto_a

    .line 976
    :catchall_1
    move-exception v0

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    .line 978
    .line 979
    const-string v3, "restorePipVisibilityOnBoot error: "

    .line 980
    .line 981
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    invoke-static {v0, v2, v13}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    :goto_a
    return-void

    .line 988
    :pswitch_12
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 989
    .line 990
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 991
    .line 992
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    .line 994
    .line 995
    :try_start_7
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 996
    .line 997
    .line 998
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 999
    .line 1000
    .line 1001
    move-result v2

    .line 1002
    if-eqz v2, :cond_20

    .line 1003
    .line 1004
    const-string v2, "ADB connection established, skip rotation override"

    .line 1005
    .line 1006
    invoke-static {v13, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    const-string v2, "oem_statusbar_enabled"

    .line 1014
    .line 1015
    invoke-interface {v0, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    const/16 v2, 0x3e8

    .line 1020
    .line 1021
    if-nez v0, :cond_1f

    .line 1022
    .line 1023
    const-string v0, "settings put global policy_control immersive.status=com.byd.launcher"

    .line 1024
    .line 1025
    invoke-static {v0, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    const-string v0, "Startup ADB ready; policy write skipped, current system policy retained"

    .line 1029
    .line 1030
    goto :goto_b

    .line 1031
    :cond_1f
    const-string v0, "settings put global policy_control null"

    .line 1032
    .line 1033
    invoke-static {v0, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    const-string v0, "Startup ADB ready; policy clear skipped, current system policy retained"

    .line 1037
    .line 1038
    :goto_b
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1039
    .line 1040
    .line 1041
    goto :goto_c

    .line 1042
    :catchall_2
    move-exception v0

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    const-string v3, "Startup ADB settings failed: "

    .line 1046
    .line 1047
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v0, v2, v13}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    :cond_20
    :goto_c
    return-void

    .line 1054
    :pswitch_13
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1055
    .line 1056
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->IIl:Landroid/widget/TextView;

    .line 1057
    .line 1058
    if-eqz v2, :cond_21

    .line 1059
    .line 1060
    :try_start_8
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    .line 1061
    .line 1062
    invoke-interface {v3, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1063
    .line 1064
    .line 1065
    :catch_5
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->IIl:Landroid/widget/TextView;

    .line 1066
    .line 1067
    :cond_21
    return-void

    .line 1068
    :pswitch_14
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1069
    .line 1070
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1071
    .line 1072
    invoke-virtual {v0, v8}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    return-void

    .line 1076
    :pswitch_15
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1077
    .line 1078
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1079
    .line 1080
    invoke-virtual {v0, v8}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    return-void

    .line 1084
    :pswitch_16
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1085
    .line 1086
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1087
    .line 1088
    invoke-virtual {v0, v8}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    return-void

    .line 1092
    :pswitch_17
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1093
    .line 1094
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 1095
    .line 1096
    if-eqz v2, :cond_22

    .line 1097
    .line 1098
    goto/16 :goto_18

    .line 1099
    .line 1100
    :cond_22
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Β()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    iget-boolean v3, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 1105
    .line 1106
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 1107
    .line 1108
    if-eqz v4, :cond_23

    .line 1109
    .line 1110
    iget-boolean v4, v4, Lo/ff;->ͷ:Z

    .line 1111
    .line 1112
    if-eqz v4, :cond_23

    .line 1113
    .line 1114
    move v4, v14

    .line 1115
    goto :goto_d

    .line 1116
    :cond_23
    move v4, v15

    .line 1117
    :goto_d
    if-eqz v2, :cond_24

    .line 1118
    .line 1119
    if-eqz v4, :cond_24

    .line 1120
    .line 1121
    iget-boolean v5, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 1122
    .line 1123
    if-nez v5, :cond_24

    .line 1124
    .line 1125
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 1126
    .line 1127
    invoke-virtual {v5}, Lo/ff;->ʹ()V

    .line 1128
    .line 1129
    .line 1130
    :cond_24
    if-nez v2, :cond_27

    .line 1131
    .line 1132
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 1133
    .line 1134
    if-eqz v5, :cond_25

    .line 1135
    .line 1136
    const-string v5, "applyForegroundState: not home, dismissing nav editor"

    .line 1137
    .line 1138
    invoke-static {v13, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Θ()V

    .line 1142
    .line 1143
    .line 1144
    :cond_25
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1145
    .line 1146
    if-eqz v5, :cond_27

    .line 1147
    .line 1148
    iget-object v5, v5, Lo/vl;->ΐ:Landroid/view/View;

    .line 1149
    .line 1150
    if-eqz v5, :cond_26

    .line 1151
    .line 1152
    move v5, v14

    .line 1153
    goto :goto_e

    .line 1154
    :cond_26
    move v5, v15

    .line 1155
    :goto_e
    if-eqz v5, :cond_27

    .line 1156
    .line 1157
    const-string v5, "applyForegroundState: not home, dismissing widget bar settings"

    .line 1158
    .line 1159
    invoke-static {v13, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1163
    .line 1164
    invoke-virtual {v5}, Lo/vl;->ͼ()V

    .line 1165
    .line 1166
    .line 1167
    :cond_27
    if-nez v4, :cond_2b

    .line 1168
    .line 1169
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1170
    .line 1171
    if-eqz v4, :cond_2a

    .line 1172
    .line 1173
    iget-object v5, v4, Lo/vl;->Ό:Landroid/view/View;

    .line 1174
    .line 1175
    if-eqz v5, :cond_28

    .line 1176
    .line 1177
    move v5, v14

    .line 1178
    goto :goto_f

    .line 1179
    :cond_28
    move v5, v15

    .line 1180
    :goto_f
    if-nez v5, :cond_2b

    .line 1181
    .line 1182
    iget-object v4, v4, Lo/vl;->ΐ:Landroid/view/View;

    .line 1183
    .line 1184
    if-eqz v4, :cond_29

    .line 1185
    .line 1186
    move v4, v14

    .line 1187
    goto :goto_10

    .line 1188
    :cond_29
    move v4, v15

    .line 1189
    :goto_10
    if-eqz v4, :cond_2a

    .line 1190
    .line 1191
    goto :goto_11

    .line 1192
    :cond_2a
    move v4, v15

    .line 1193
    goto :goto_12

    .line 1194
    :cond_2b
    :goto_11
    move v4, v14

    .line 1195
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1196
    .line 1197
    .line 1198
    move-result-wide v5

    .line 1199
    iget-wide v7, v0, Lcom/byd/launcher/NavBarService;->Φ:J

    .line 1200
    .line 1201
    cmp-long v7, v5, v7

    .line 1202
    .line 1203
    if-ltz v7, :cond_2d

    .line 1204
    .line 1205
    iget-wide v7, v0, Lcom/byd/launcher/NavBarService;->Χ:J

    .line 1206
    .line 1207
    cmp-long v7, v5, v7

    .line 1208
    .line 1209
    if-gez v7, :cond_2c

    .line 1210
    .line 1211
    goto :goto_13

    .line 1212
    :cond_2c
    move v7, v15

    .line 1213
    goto :goto_14

    .line 1214
    :cond_2d
    :goto_13
    move v7, v14

    .line 1215
    :goto_14
    if-eqz v2, :cond_2e

    .line 1216
    .line 1217
    iput-boolean v14, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 1218
    .line 1219
    iput-boolean v15, v0, Lcom/byd/launcher/NavBarService;->Π:Z

    .line 1220
    .line 1221
    add-long v13, v5, v9

    .line 1222
    .line 1223
    iput-wide v13, v0, Lcom/byd/launcher/NavBarService;->Χ:J

    .line 1224
    .line 1225
    sget-wide v13, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 1226
    .line 1227
    cmp-long v5, v5, v13

    .line 1228
    .line 1229
    if-ltz v5, :cond_30

    .line 1230
    .line 1231
    const-wide/16 v5, 0x0

    .line 1232
    .line 1233
    sput-wide v5, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 1234
    .line 1235
    goto :goto_15

    .line 1236
    :cond_2e
    if-nez v4, :cond_30

    .line 1237
    .line 1238
    if-nez v7, :cond_30

    .line 1239
    .line 1240
    const/4 v8, 0x0

    .line 1241
    iput-boolean v8, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 1242
    .line 1243
    iget-object v8, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1244
    .line 1245
    if-eqz v8, :cond_30

    .line 1246
    .line 1247
    iget-boolean v8, v8, Lo/nd;->Η:Z

    .line 1248
    .line 1249
    if-eqz v8, :cond_30

    .line 1250
    .line 1251
    iget-wide v14, v0, Lcom/byd/launcher/NavBarService;->Ω:J

    .line 1252
    .line 1253
    cmp-long v5, v5, v14

    .line 1254
    .line 1255
    if-gez v5, :cond_2f

    .line 1256
    .line 1257
    const-string v5, "applyForegroundState: non-home detected during PiP setup, skip setTemporarilyHidden"

    .line 1258
    .line 1259
    invoke-static {v13, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    goto :goto_15

    .line 1263
    :cond_2f
    const-string v5, "applyForegroundState: non-home detected, calling pipManager.setTemporarilyHidden(true)"

    .line 1264
    .line 1265
    invoke-static {v13, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1269
    .line 1270
    const/4 v6, 0x1

    .line 1271
    invoke-virtual {v5, v6}, Lo/nd;->Έ(Z)V

    .line 1272
    .line 1273
    .line 1274
    :cond_30
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1275
    .line 1276
    .line 1277
    move-result-wide v5

    .line 1278
    sget-wide v13, Lcom/byd/launcher/NavBarService;->O00:J

    .line 1279
    .line 1280
    sub-long v13, v5, v13

    .line 1281
    .line 1282
    iget-wide v9, v0, Lcom/byd/launcher/NavBarService;->Υ:J

    .line 1283
    .line 1284
    sub-long/2addr v5, v9

    .line 1285
    const-wide/16 v8, 0x0

    .line 1286
    .line 1287
    cmp-long v10, v13, v8

    .line 1288
    .line 1289
    if-ltz v10, :cond_31

    .line 1290
    .line 1291
    const-wide/16 v10, 0x1f4

    .line 1292
    .line 1293
    cmp-long v13, v13, v10

    .line 1294
    .line 1295
    if-ltz v13, :cond_32

    .line 1296
    .line 1297
    goto :goto_16

    .line 1298
    :cond_31
    const-wide/16 v10, 0x1f4

    .line 1299
    .line 1300
    :goto_16
    cmp-long v8, v5, v8

    .line 1301
    .line 1302
    if-ltz v8, :cond_33

    .line 1303
    .line 1304
    cmp-long v5, v5, v10

    .line 1305
    .line 1306
    if-gez v5, :cond_33

    .line 1307
    .line 1308
    :cond_32
    const/4 v5, 0x1

    .line 1309
    goto :goto_17

    .line 1310
    :cond_33
    const/4 v5, 0x0

    .line 1311
    :goto_17
    if-eqz v5, :cond_34

    .line 1312
    .line 1313
    goto/16 :goto_18

    .line 1314
    .line 1315
    :cond_34
    if-eqz v2, :cond_40

    .line 1316
    .line 1317
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ϑ:Ljava/lang/String;

    .line 1318
    .line 1319
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Β:Z

    .line 1320
    .line 1321
    if-eqz v2, :cond_35

    .line 1322
    .line 1323
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ξ()V

    .line 1324
    .line 1325
    .line 1326
    :cond_35
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Γ:Z

    .line 1327
    .line 1328
    if-eqz v2, :cond_36

    .line 1329
    .line 1330
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Π()V

    .line 1331
    .line 1332
    .line 1333
    :cond_36
    if-nez v3, :cond_38

    .line 1334
    .line 1335
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1336
    .line 1337
    if-eqz v2, :cond_37

    .line 1338
    .line 1339
    iget-boolean v2, v2, Lo/nd;->Η:Z

    .line 1340
    .line 1341
    if-nez v2, :cond_38

    .line 1342
    .line 1343
    :cond_37
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ά()V

    .line 1344
    .line 1345
    .line 1346
    :cond_38
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 1347
    .line 1348
    if-eqz v2, :cond_39

    .line 1349
    .line 1350
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1351
    .line 1352
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1353
    .line 1354
    .line 1355
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 1356
    .line 1357
    :cond_39
    const-wide/16 v2, 0x0

    .line 1358
    .line 1359
    sput-wide v2, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 1360
    .line 1361
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 1362
    .line 1363
    if-nez v2, :cond_3f

    .line 1364
    .line 1365
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1366
    .line 1367
    if-eqz v2, :cond_3f

    .line 1368
    .line 1369
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 1370
    .line 1371
    if-nez v2, :cond_3f

    .line 1372
    .line 1373
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 1374
    .line 1375
    if-eqz v2, :cond_3a

    .line 1376
    .line 1377
    iget-boolean v2, v2, Lo/oj;->Ͷ:Z

    .line 1378
    .line 1379
    if-eqz v2, :cond_3a

    .line 1380
    .line 1381
    goto/16 :goto_18

    .line 1382
    .line 1383
    :cond_3a
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 1384
    .line 1385
    if-eqz v2, :cond_3b

    .line 1386
    .line 1387
    iget-boolean v2, v2, Lo/ff;->ͷ:Z

    .line 1388
    .line 1389
    if-eqz v2, :cond_3b

    .line 1390
    .line 1391
    goto/16 :goto_18

    .line 1392
    .line 1393
    :cond_3b
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1394
    .line 1395
    if-eqz v2, :cond_3d

    .line 1396
    .line 1397
    iget-boolean v3, v2, Lo/nd;->Η:Z

    .line 1398
    .line 1399
    if-eqz v3, :cond_3d

    .line 1400
    .line 1401
    invoke-virtual {v2}, Lo/nd;->ͷ()Z

    .line 1402
    .line 1403
    .line 1404
    move-result v2

    .line 1405
    if-eqz v2, :cond_48

    .line 1406
    .line 1407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1408
    .line 1409
    .line 1410
    move-result-wide v2

    .line 1411
    iget-wide v4, v0, Lcom/byd/launcher/NavBarService;->Ψ:J

    .line 1412
    .line 1413
    cmp-long v2, v2, v4

    .line 1414
    .line 1415
    if-gez v2, :cond_3c

    .line 1416
    .line 1417
    goto/16 :goto_18

    .line 1418
    .line 1419
    :cond_3c
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1420
    .line 1421
    const/4 v2, 0x0

    .line 1422
    invoke-virtual {v0, v2}, Lo/nd;->Έ(Z)V

    .line 1423
    .line 1424
    .line 1425
    goto/16 :goto_18

    .line 1426
    .line 1427
    :cond_3d
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 1428
    .line 1429
    if-eqz v2, :cond_3e

    .line 1430
    .line 1431
    goto/16 :goto_18

    .line 1432
    .line 1433
    :cond_3e
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1434
    .line 1435
    invoke-virtual {v2}, Lo/vl;->Η()V

    .line 1436
    .line 1437
    .line 1438
    new-instance v2, Lo/ea;

    .line 1439
    .line 1440
    const/16 v3, 0xd

    .line 1441
    .line 1442
    invoke-direct {v2, v0, v3}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1443
    .line 1444
    .line 1445
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 1446
    .line 1447
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1448
    .line 1449
    const/16 v4, 0xfa

    .line 1450
    .line 1451
    int-to-long v4, v4

    .line 1452
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1453
    .line 1454
    .line 1455
    :cond_3f
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 1456
    .line 1457
    if-eqz v2, :cond_48

    .line 1458
    .line 1459
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1460
    .line 1461
    if-eqz v2, :cond_48

    .line 1462
    .line 1463
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 1464
    .line 1465
    if-nez v2, :cond_48

    .line 1466
    .line 1467
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1468
    .line 1469
    new-instance v3, Lo/ea;

    .line 1470
    .line 1471
    const/16 v4, 0xe

    .line 1472
    .line 1473
    invoke-direct {v3, v0, v4}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 1474
    .line 1475
    .line 1476
    const-wide/16 v4, 0x190

    .line 1477
    .line 1478
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1479
    .line 1480
    .line 1481
    goto :goto_18

    .line 1482
    :cond_40
    if-nez v4, :cond_48

    .line 1483
    .line 1484
    if-nez v7, :cond_48

    .line 1485
    .line 1486
    const/4 v2, 0x0

    .line 1487
    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 1488
    .line 1489
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 1490
    .line 1491
    if-eqz v2, :cond_41

    .line 1492
    .line 1493
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1494
    .line 1495
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1496
    .line 1497
    .line 1498
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 1499
    .line 1500
    :cond_41
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 1501
    .line 1502
    if-eqz v2, :cond_42

    .line 1503
    .line 1504
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1505
    .line 1506
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1507
    .line 1508
    .line 1509
    iput-object v12, v0, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 1510
    .line 1511
    :cond_42
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ο:Z

    .line 1512
    .line 1513
    if-nez v2, :cond_43

    .line 1514
    .line 1515
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Η()V

    .line 1516
    .line 1517
    .line 1518
    :cond_43
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Π:Z

    .line 1519
    .line 1520
    if-nez v2, :cond_44

    .line 1521
    .line 1522
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 1523
    .line 1524
    .line 1525
    :cond_44
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1526
    .line 1527
    if-eqz v2, :cond_46

    .line 1528
    .line 1529
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 1530
    .line 1531
    if-eqz v2, :cond_45

    .line 1532
    .line 1533
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1534
    .line 1535
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1536
    .line 1537
    .line 1538
    :cond_45
    const/4 v2, 0x0

    .line 1539
    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 1540
    .line 1541
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 1542
    .line 1543
    invoke-virtual {v3, v2}, Lo/vl;->Ρ(Z)V

    .line 1544
    .line 1545
    .line 1546
    :cond_46
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 1547
    .line 1548
    if-eqz v2, :cond_47

    .line 1549
    .line 1550
    iget-boolean v3, v2, Lo/nd;->Η:Z

    .line 1551
    .line 1552
    if-eqz v3, :cond_47

    .line 1553
    .line 1554
    const/4 v3, 0x1

    .line 1555
    invoke-virtual {v2, v3}, Lo/nd;->Έ(Z)V

    .line 1556
    .line 1557
    .line 1558
    :cond_47
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ά:Lo/oj;

    .line 1559
    .line 1560
    if-eqz v0, :cond_48

    .line 1561
    .line 1562
    iget-boolean v2, v0, Lo/oj;->Ͷ:Z

    .line 1563
    .line 1564
    if-eqz v2, :cond_48

    .line 1565
    .line 1566
    invoke-virtual {v0}, Lo/oj;->ͻ()V

    .line 1567
    .line 1568
    .line 1569
    :cond_48
    :goto_18
    return-void

    .line 1570
    :pswitch_18
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1571
    .line 1572
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1573
    .line 1574
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ϊ()V

    .line 1575
    .line 1576
    .line 1577
    return-void

    .line 1578
    :pswitch_19
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1579
    .line 1580
    iget-object v15, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1581
    .line 1582
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1583
    .line 1584
    .line 1585
    const-string v2, "connectivity"

    .line 1586
    .line 1587
    :try_start_9
    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v0

    .line 1591
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1592
    .line 1593
    if-eqz v0, :cond_4a

    .line 1594
    .line 1595
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v3

    .line 1599
    if-eqz v3, :cond_4a

    .line 1600
    .line 1601
    array-length v4, v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1602
    const/4 v7, 0x0

    .line 1603
    const/4 v8, 0x0

    .line 1604
    :goto_19
    if-ge v7, v4, :cond_4b

    .line 1605
    .line 1606
    :try_start_a
    aget-object v9, v3, v7

    .line 1607
    .line 1608
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v9

    .line 1612
    if-eqz v9, :cond_49

    .line 1613
    .line 1614
    const/4 v10, 0x1

    .line 1615
    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 1616
    .line 1617
    .line 1618
    move-result v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1619
    if-eqz v9, :cond_49

    .line 1620
    .line 1621
    const/4 v8, 0x1

    .line 1622
    :cond_49
    add-int/lit8 v7, v7, 0x1

    .line 1623
    .line 1624
    goto :goto_19

    .line 1625
    :catch_6
    move-exception v0

    .line 1626
    goto :goto_1a

    .line 1627
    :cond_4a
    const/4 v0, 0x0

    .line 1628
    move/from16 v16, v0

    .line 1629
    .line 1630
    goto :goto_1b

    .line 1631
    :catch_7
    move-exception v0

    .line 1632
    const/4 v3, 0x0

    .line 1633
    move v8, v3

    .line 1634
    :goto_1a
    const-string v3, "Check wifi failed"

    .line 1635
    .line 1636
    invoke-static {v13, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1637
    .line 1638
    .line 1639
    :cond_4b
    move/from16 v16, v8

    .line 1640
    .line 1641
    :goto_1b
    :try_start_b
    const-string v0, "phone"

    .line 1642
    .line 1643
    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v0

    .line 1647
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1648
    .line 1649
    if-eqz v0, :cond_4d

    .line 1650
    .line 1651
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1652
    .line 1653
    if-lt v3, v6, :cond_4c

    .line 1654
    .line 1655
    invoke-static {v0}, Lo/g0;->Θ(Landroid/telephony/TelephonyManager;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v0

    .line 1659
    goto :goto_1c

    .line 1660
    :cond_4c
    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1665
    .line 1666
    if-eqz v0, :cond_4d

    .line 1667
    .line 1668
    const/4 v2, 0x0

    .line 1669
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    if-eqz v0, :cond_4d

    .line 1674
    .line 1675
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 1676
    .line 1677
    .line 1678
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1679
    if-eqz v0, :cond_4d

    .line 1680
    .line 1681
    const/4 v0, 0x1

    .line 1682
    goto :goto_1c

    .line 1683
    :catch_8
    move-exception v0

    .line 1684
    const-string v2, "Check mobile data failed"

    .line 1685
    .line 1686
    invoke-static {v13, v2, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1687
    .line 1688
    .line 1689
    :cond_4d
    const/4 v0, 0x0

    .line 1690
    :goto_1c
    move/from16 v17, v0

    .line 1691
    .line 1692
    :try_start_c
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    if-eqz v0, :cond_4e

    .line 1697
    .line 1698
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 1699
    .line 1700
    .line 1701
    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 1702
    if-eqz v2, :cond_4e

    .line 1703
    .line 1704
    const/4 v2, 0x1

    .line 1705
    goto :goto_1d

    .line 1706
    :cond_4e
    const/4 v2, 0x0

    .line 1707
    :goto_1d
    if-eqz v2, :cond_52

    .line 1708
    .line 1709
    const/4 v3, 0x1

    .line 1710
    const/4 v4, 0x4

    .line 1711
    :try_start_d
    filled-new-array {v3, v11, v4}, [I

    .line 1712
    .line 1713
    .line 1714
    move-result-object v4

    .line 1715
    const/4 v6, 0x0

    .line 1716
    :goto_1e
    if-ge v6, v5, :cond_50

    .line 1717
    .line 1718
    aget v7, v4, v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 1719
    .line 1720
    :try_start_e
    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    .line 1721
    .line 1722
    .line 1723
    move-result v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 1724
    if-ne v7, v11, :cond_4f

    .line 1725
    .line 1726
    move v4, v3

    .line 1727
    goto :goto_1f

    .line 1728
    :catch_9
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    .line 1729
    .line 1730
    goto :goto_1e

    .line 1731
    :cond_50
    const/4 v4, 0x0

    .line 1732
    :goto_1f
    if-nez v4, :cond_53

    .line 1733
    .line 1734
    :try_start_f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v5

    .line 1738
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 1739
    .line 1740
    .line 1741
    move-result v5

    .line 1742
    if-nez v5, :cond_53

    .line 1743
    .line 1744
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    :catch_a
    :cond_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1753
    .line 1754
    .line 1755
    move-result v5

    .line 1756
    if-eqz v5, :cond_53

    .line 1757
    .line 1758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v5

    .line 1762
    check-cast v5, Landroid/bluetooth/BluetoothDevice;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 1763
    .line 1764
    :try_start_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v6

    .line 1768
    const-string v7, "isConnected"

    .line 1769
    .line 1770
    const/4 v8, 0x0

    .line 1771
    new-array v9, v8, [Ljava/lang/Class;

    .line 1772
    .line 1773
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v6

    .line 1777
    new-array v7, v8, [Ljava/lang/Object;

    .line 1778
    .line 1779
    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v5

    .line 1783
    check-cast v5, Ljava/lang/Boolean;

    .line 1784
    .line 1785
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1786
    .line 1787
    .line 1788
    move-result v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 1789
    if-eqz v5, :cond_51

    .line 1790
    .line 1791
    move/from16 v18, v2

    .line 1792
    .line 1793
    move/from16 v19, v3

    .line 1794
    .line 1795
    goto :goto_22

    .line 1796
    :catch_b
    move-exception v0

    .line 1797
    goto :goto_21

    .line 1798
    :catch_c
    move-exception v0

    .line 1799
    goto :goto_20

    .line 1800
    :cond_52
    const/4 v0, 0x0

    .line 1801
    move/from16 v19, v0

    .line 1802
    .line 1803
    move/from16 v18, v2

    .line 1804
    .line 1805
    goto :goto_22

    .line 1806
    :catch_d
    move-exception v0

    .line 1807
    const/4 v2, 0x0

    .line 1808
    :goto_20
    const/4 v4, 0x0

    .line 1809
    :goto_21
    const-string v3, "Check bluetooth failed"

    .line 1810
    .line 1811
    invoke-static {v13, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1812
    .line 1813
    .line 1814
    :cond_53
    move/from16 v18, v2

    .line 1815
    .line 1816
    move/from16 v19, v4

    .line 1817
    .line 1818
    :goto_22
    iget-object v0, v15, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 1819
    .line 1820
    new-instance v2, Lo/ga;

    .line 1821
    .line 1822
    move-object v14, v2

    .line 1823
    invoke-direct/range {v14 .. v19}, Lo/ga;-><init>(Lcom/byd/launcher/NavBarService;ZZZZ)V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1827
    .line 1828
    .line 1829
    return-void

    .line 1830
    :pswitch_1a
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1831
    .line 1832
    const/4 v2, 0x0

    .line 1833
    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ϧ:Z

    .line 1834
    .line 1835
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ω()V

    .line 1836
    .line 1837
    .line 1838
    return-void

    .line 1839
    :pswitch_1b
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1840
    .line 1841
    sget-object v2, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 1842
    .line 1843
    :try_start_11
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϟ()V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ν()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 1847
    .line 1848
    .line 1849
    goto :goto_23

    .line 1850
    :catch_e
    move-exception v0

    .line 1851
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    const-string v3, "Re-show failed: "

    .line 1854
    .line 1855
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1856
    .line 1857
    .line 1858
    const-string v3, "MainActivity"

    .line 1859
    .line 1860
    invoke-static {v0, v2, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1861
    .line 1862
    .line 1863
    :goto_23
    return-void

    .line 1864
    :pswitch_1c
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1865
    .line 1866
    sget-object v2, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1867
    .line 1868
    :try_start_12
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϟ()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 1869
    .line 1870
    .line 1871
    goto :goto_24

    .line 1872
    :catch_f
    move-exception v0

    .line 1873
    move-object v2, v0

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1875
    .line 1876
    const-string v3, "Re-show nav bar failed: "

    .line 1877
    .line 1878
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1879
    .line 1880
    .line 1881
    const-string v3, "BootReceiver"

    .line 1882
    .line 1883
    invoke-static {v2, v0, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1884
    .line 1885
    .line 1886
    :goto_24
    return-void

    .line 1887
    :goto_25
    iget-object v0, v1, Lo/llI;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 1888
    .line 1889
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͳ:Lcom/byd/launcher/databinding/NavBarBinding;

    .line 1890
    .line 1891
    if-eqz v2, :cond_54

    .line 1892
    .line 1893
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 1894
    .line 1895
    .line 1896
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͳ:Lcom/byd/launcher/databinding/NavBarBinding;

    .line 1897
    .line 1898
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 1899
    .line 1900
    .line 1901
    const-string v0, "showNavBar: forced rebind after delay"

    .line 1902
    .line 1903
    invoke-static {v13, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    .line 1905
    .line 1906
    :cond_54
    return-void

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
