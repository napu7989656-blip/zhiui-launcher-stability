.class public final synthetic Lo/ϕ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Ljava/lang/Object;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Z

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ϕ;->Ͱ:I

    iput-object p2, p0, Lo/ϕ;->ͱ:Ljava/lang/Object;

    iput-boolean p5, p0, Lo/ϕ;->Ͳ:Z

    iput-object p3, p0, Lo/ϕ;->ͳ:Ljava/lang/Object;

    iput-object p4, p0, Lo/ϕ;->ʹ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byd/launcher/AppLauncherActivity;ZLo/Ϡ;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo/ϕ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ϕ;->ͱ:Ljava/lang/Object;

    iput-boolean p2, p0, Lo/ϕ;->Ͳ:Z

    iput-object p3, p0, Lo/ϕ;->ʹ:Ljava/lang/Object;

    iput-object p4, p0, Lo/ϕ;->ͳ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;Z)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lo/ϕ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ϕ;->ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/ϕ;->ʹ:Ljava/lang/Object;

    iput-object p3, p0, Lo/ϕ;->ͳ:Ljava/lang/Object;

    iput-boolean p4, p0, Lo/ϕ;->Ͳ:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 4
    const/4 v0, 0x4

    iput v0, p0, Lo/ϕ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/ϕ;->Ͳ:Z

    iput-object p2, p0, Lo/ϕ;->ͱ:Ljava/lang/Object;

    iput-object p3, p0, Lo/ϕ;->ʹ:Ljava/lang/Object;

    iput-object p4, p0, Lo/ϕ;->ͳ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-boolean v5, p0, Lo/ϕ;->Ͳ:Z

    .line 2
    .line 3
    iget v0, p0, Lo/ϕ;->Ͱ:I

    .line 4
    .line 5
    const-string v1, "\u672a\u77e5\u9519\u8bef"

    .line 6
    .line 7
    const-string v2, "\""

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    iget-object v6, p0, Lo/ϕ;->ͳ:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, p0, Lo/ϕ;->ʹ:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, p0, Lo/ϕ;->ͱ:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_9

    .line 21
    .line 22
    :pswitch_0
    check-cast v8, Lo/ia;

    .line 23
    .line 24
    check-cast v6, Ljava/lang/String;

    .line 25
    .line 26
    check-cast v7, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v6, v7

    .line 35
    :goto_0
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 36
    .line 37
    iget-object v0, v8, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    new-instance v7, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    .line 63
    .line 64
    const/16 v4, 0x11

    .line 65
    .line 66
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    .line 68
    .line 69
    const/high16 v8, 0x41a00000    # 20.0f

    .line 70
    .line 71
    mul-float/2addr v8, v1

    .line 72
    float-to-int v8, v8

    .line 73
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    .line 75
    .line 76
    new-instance v8, Lo/pa;

    .line 77
    .line 78
    invoke-direct {v8, v2, v1}, Lo/pa;-><init>(ZF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    new-instance v8, Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    sget v9, Lo/hf;->ic_qs_screenshot:I

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    .line 93
    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    const v9, -0xb350b0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const v9, -0xbbcca

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 104
    .line 105
    .line 106
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .line 108
    const/high16 v10, 0x42400000    # 48.0f

    .line 109
    .line 110
    mul-float/2addr v10, v1

    .line 111
    float-to-int v10, v10

    .line 112
    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    .line 114
    .line 115
    const/high16 v10, 0x41400000    # 12.0f

    .line 116
    .line 117
    mul-float v11, v1, v10

    .line 118
    .line 119
    float-to-int v11, v11

    .line 120
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 121
    .line 122
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    new-instance v8, Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    if-eqz v5, :cond_2

    .line 131
    .line 132
    const-string v5, "\u622a\u56fe\u6210\u529f"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    const-string v5, "\u622a\u56fe\u5931\u8d25"

    .line 136
    .line 137
    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    const/high16 v5, 0x41800000    # 16.0f

    .line 141
    .line 142
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    .line 144
    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    const v5, -0xdededf

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    const/4 v5, -0x1

    .line 152
    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    if-eqz v6, :cond_5

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-nez v5, :cond_5

    .line 168
    .line 169
    new-instance v5, Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    .line 179
    .line 180
    if-eqz v2, :cond_4

    .line 181
    .line 182
    const v2, -0x8a8a8b

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_4
    const v2, -0x555556

    .line 187
    .line 188
    .line 189
    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    .line 194
    .line 195
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    .line 197
    const/4 v6, -0x2

    .line 198
    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .line 200
    .line 201
    const/high16 v6, 0x40c00000    # 6.0f

    .line 202
    .line 203
    mul-float/2addr v6, v1

    .line 204
    float-to-int v6, v6

    .line 205
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 206
    .line 207
    invoke-virtual {v7, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 211
    .line 212
    const/high16 v5, 0x43820000    # 260.0f

    .line 213
    .line 214
    mul-float/2addr v1, v5

    .line 215
    float-to-int v9, v1

    .line 216
    const/4 v10, -0x2

    .line 217
    const/16 v11, 0x7f0

    .line 218
    .line 219
    const/16 v12, 0x28

    .line 220
    .line 221
    const/4 v13, -0x3

    .line 222
    move-object v8, v2

    .line 223
    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 224
    .line 225
    .line 226
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 227
    .line 228
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ˏ:Landroid/view/WindowManager;

    .line 229
    .line 230
    invoke-interface {v1, v7, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 234
    .line 235
    new-instance v2, Lo/ca;

    .line 236
    .line 237
    invoke-direct {v2, v0, v7, v3}, Lo/ca;-><init>(Lcom/byd/launcher/NavBarService;Landroid/widget/LinearLayout;I)V

    .line 238
    .line 239
    .line 240
    const-wide/16 v3, 0x7d0

    .line 241
    .line 242
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v2, "showScreenshotResultDialog: "

    .line 250
    .line 251
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v2, "NavBarSvc"

    .line 255
    .line 256
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_5
    return-void

    .line 260
    :pswitch_1
    move-object v1, v8

    .line 261
    check-cast v1, Lcom/byd/launcher/NavBarService;

    .line 262
    .line 263
    move-object v2, v7

    .line 264
    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 265
    .line 266
    check-cast v6, Landroid/widget/LinearLayout;

    .line 267
    .line 268
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-instance v7, Landroid/content/Intent;

    .line 275
    .line 276
    const-string v8, "android.intent.action.MAIN"

    .line 277
    .line 278
    const/4 v9, 0x0

    .line 279
    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 280
    .line 281
    .line 282
    const-string v8, "android.intent.category.LAUNCHER"

    .line 283
    .line 284
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    new-instance v7, Ljava/util/HashSet;

    .line 292
    .line 293
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 294
    .line 295
    .line 296
    new-instance v8, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    if-eqz v9, :cond_7

    .line 310
    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 316
    .line 317
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 318
    .line 319
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    if-eqz v11, :cond_6

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_6
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    new-instance v12, Lo/sb;

    .line 344
    .line 345
    invoke-direct {v12, v10, v11, v9}, Lo/sb;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_7
    new-instance v0, Lo/ϐ;

    .line 353
    .line 354
    invoke-direct {v0, v4}, Lo/ϐ;-><init>(I)V

    .line 355
    .line 356
    .line 357
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 358
    .line 359
    .line 360
    iget-object v7, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 361
    .line 362
    new-instance v9, Lo/Ϊ;

    .line 363
    .line 364
    move-object v0, v9

    .line 365
    move-object v3, v6

    .line 366
    move-object v4, v8

    .line 367
    invoke-direct/range {v0 .. v5}, Lo/Ϊ;-><init>(Lcom/byd/launcher/NavBarService;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :pswitch_2
    check-cast v8, Lcom/byd/launcher/AppLauncherActivity;

    .line 375
    .line 376
    check-cast v6, Ljava/lang/String;

    .line 377
    .line 378
    check-cast v7, Ljava/lang/String;

    .line 379
    .line 380
    if-eqz v5, :cond_9

    .line 381
    .line 382
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 383
    .line 384
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v1, "\" \u5df2\u5378\u8f7d"

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v8, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, v8, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 408
    .line 409
    if-eqz v0, :cond_8

    .line 410
    .line 411
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    :cond_8
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/Thread;

    .line 419
    .line 420
    new-instance v2, Lo/Ϗ;

    .line 421
    .line 422
    invoke-direct {v2, v8, v0, v4}, Lo/Ϗ;-><init>(Lcom/byd/launcher/AppLauncherActivity;Landroid/content/Context;I)V

    .line 423
    .line 424
    .line 425
    const-string v0, "AppReload"

    .line 426
    .line 427
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_9
    iget-object v0, v8, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 435
    .line 436
    if-eqz v0, :cond_a

    .line 437
    .line 438
    const/16 v2, 0x8

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v2, "\u5378\u8f7d\u5931\u8d25: "

    .line 446
    .line 447
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    if-eqz v7, :cond_b

    .line 451
    .line 452
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v8, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :goto_7
    return-void

    .line 467
    :pswitch_3
    check-cast v8, Lcom/byd/launcher/AppLauncherActivity;

    .line 468
    .line 469
    check-cast v7, Lo/Ϡ;

    .line 470
    .line 471
    check-cast v6, Ljava/lang/String;

    .line 472
    .line 473
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 474
    .line 475
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    if-eqz v5, :cond_c

    .line 479
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v1, v7, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v1, "\" \u5df2\u6062\u590d\u5230\u4e2d\u63a7"

    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v2, "\u6062\u590d\u5931\u8d25: "

    .line 496
    .line 497
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    if-eqz v6, :cond_d

    .line 501
    .line 502
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    :cond_d
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v8, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :goto_9
    check-cast v8, Lcom/byd/launcher/ipc/ICoreServiceCallback;

    .line 518
    .line 519
    check-cast v7, Lorg/json/JSONObject;

    .line 520
    .line 521
    check-cast v6, Ljava/lang/String;

    .line 522
    .line 523
    invoke-static {v5, v8, v7, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->ͺ(ZLcom/byd/launcher/ipc/ICoreServiceCallback;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    return-void

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
