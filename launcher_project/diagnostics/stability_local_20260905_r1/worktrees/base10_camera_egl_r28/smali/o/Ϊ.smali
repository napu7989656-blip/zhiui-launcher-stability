.class public final synthetic Lo/Ϊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Ljava/lang/Object;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Z

.field public final synthetic Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Ljava/lang/Object;

.field public final synthetic Ͷ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/AppLauncherActivity;ZLo/Ϡ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lo/Ϊ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ϊ;->Ͳ:Ljava/lang/Object;

    iput-boolean p2, p0, Lo/Ϊ;->ͱ:Z

    iput-object p3, p0, Lo/Ϊ;->ͳ:Ljava/lang/Object;

    iput-object p4, p0, Lo/Ϊ;->ʹ:Ljava/lang/Object;

    iput-object p5, p0, Lo/Ϊ;->Ͷ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lo/Ϊ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ϊ;->Ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/Ϊ;->ͳ:Ljava/lang/Object;

    iput-object p3, p0, Lo/Ϊ;->ʹ:Ljava/lang/Object;

    iput-object p4, p0, Lo/Ϊ;->Ͷ:Ljava/lang/Object;

    iput-boolean p5, p0, Lo/Ϊ;->ͱ:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo/vl;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;ZLandroid/view/View;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lo/Ϊ;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ϊ;->Ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/Ϊ;->ͳ:Ljava/lang/Object;

    iput-object p3, p0, Lo/Ϊ;->ʹ:Ljava/lang/Object;

    iput-boolean p4, p0, Lo/Ϊ;->ͱ:Z

    iput-object p5, p0, Lo/Ϊ;->Ͷ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v7, v1, Lo/Ϊ;->ͱ:Z

    .line 4
    .line 5
    iget v0, v1, Lo/Ϊ;->Ͱ:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, v1, Lo/Ϊ;->Ͷ:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v4, v1, Lo/Ϊ;->ʹ:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v5, v1, Lo/Ϊ;->ͳ:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v6, v1, Lo/Ϊ;->Ͳ:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :pswitch_0
    check-cast v6, Lcom/byd/launcher/NavBarService;

    .line 22
    .line 23
    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    .line 25
    check-cast v4, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    check-cast v3, Ljava/util/List;

    .line 28
    .line 29
    iget-object v0, v6, Lcom/byd/launcher/NavBarService;->llI:Landroid/view/View;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x18

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    sub-int/2addr v0, v8

    .line 43
    div-int/lit8 v0, v0, 0x18

    .line 44
    .line 45
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    new-instance v9, Lo/pb;

    .line 50
    .line 51
    invoke-direct {v9, v6, v3, v7, v0}, Lo/pb;-><init>(Lcom/byd/launcher/NavBarService;Ljava/util/List;ZI)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v9}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v8}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    .line 62
    .line 63
    if-gt v0, v8, :cond_1

    .line 64
    .line 65
    const/16 v0, 0x8

    .line 66
    .line 67
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .line 84
    const/high16 v9, 0x40c00000    # 6.0f

    .line 85
    .line 86
    mul-float/2addr v9, v3

    .line 87
    float-to-int v9, v9

    .line 88
    const/high16 v10, 0x40800000    # 4.0f

    .line 89
    .line 90
    mul-float/2addr v3, v10

    .line 91
    float-to-int v3, v3

    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    const v10, -0xcccccd

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/4 v10, -0x1

    .line 99
    :goto_0
    if-eqz v7, :cond_3

    .line 100
    .line 101
    const v7, 0x44333333    # 716.8f

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const v7, 0x66ffffff

    .line 106
    .line 107
    .line 108
    :goto_1
    new-array v11, v0, [Landroid/view/View;

    .line 109
    .line 110
    move v12, v2

    .line 111
    :goto_2
    if-ge v12, v0, :cond_5

    .line 112
    .line 113
    new-instance v13, Landroid/view/View;

    .line 114
    .line 115
    invoke-direct {v13, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    invoke-direct {v14, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v3, v2, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    .line 130
    .line 131
    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v14, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 135
    .line 136
    .line 137
    if-nez v12, :cond_4

    .line 138
    .line 139
    move v15, v10

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move v15, v7

    .line 142
    :goto_3
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    aput-object v13, v11, v12

    .line 152
    .line 153
    add-int/lit8 v12, v12, 0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    new-instance v0, Lo/qb;

    .line 157
    .line 158
    invoke-direct {v0, v11, v10, v7}, Lo/qb;-><init>([Landroid/view/View;II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 162
    .line 163
    .line 164
    :goto_4
    return-void

    .line 165
    :pswitch_1
    check-cast v6, Lcom/byd/launcher/AppLauncherActivity;

    .line 166
    .line 167
    check-cast v5, Lo/Ϡ;

    .line 168
    .line 169
    check-cast v4, Ljava/lang/String;

    .line 170
    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    if-eqz v7, :cond_6

    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v2, "\""

    .line 183
    .line 184
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, v5, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, "\" \u5df2\u6295\u5c4f\u5230"

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v2, "\u6295\u5c4f\u5931\u8d25: "

    .line 204
    .line 205
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    goto :goto_5

    .line 215
    :cond_7
    const-string v2, "\u672a\u77e5\u9519\u8bef"

    .line 216
    .line 217
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v6, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :goto_7
    check-cast v6, Lo/vl;

    .line 229
    .line 230
    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    .line 231
    .line 232
    move-object v8, v4

    .line 233
    check-cast v8, Landroid/widget/LinearLayout;

    .line 234
    .line 235
    move-object v9, v3

    .line 236
    check-cast v9, Landroid/view/View;

    .line 237
    .line 238
    iget-object v0, v6, Lo/vl;->ˏ:Landroid/content/Context;

    .line 239
    .line 240
    new-instance v10, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    new-instance v4, Landroid/content/Intent;

    .line 250
    .line 251
    const-string v11, "android.intent.action.MAIN"

    .line 252
    .line 253
    const/4 v12, 0x0

    .line 254
    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .line 256
    .line 257
    const-string v11, "android.intent.category.LAUNCHER"

    .line 258
    .line 259
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    new-instance v11, Ljava/util/HashSet;

    .line 271
    .line 272
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    if-eqz v12, :cond_9

    .line 284
    .line 285
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 290
    .line 291
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 292
    .line 293
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-eqz v13, :cond_8

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_8
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 303
    .line 304
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    new-instance v13, Lo/Ϫ;

    .line 310
    .line 311
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 312
    .line 313
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v12, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v15

    .line 323
    invoke-virtual {v12, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    invoke-direct {v13, v14, v15, v12}, Lo/Ϫ;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_9
    sget-object v0, Lo/vl;->Ϊ:[Ljava/lang/String;

    .line 335
    .line 336
    array-length v4, v0

    .line 337
    move v12, v2

    .line 338
    :goto_9
    if-ge v12, v4, :cond_b

    .line 339
    .line 340
    aget-object v13, v0, v12

    .line 341
    .line 342
    invoke-virtual {v11, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    if-eqz v14, :cond_a

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_a
    :try_start_1
    invoke-virtual {v3, v13, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 350
    .line 351
    .line 352
    move-result-object v14

    .line 353
    new-instance v15, Lo/Ϫ;

    .line 354
    .line 355
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 356
    .line 357
    .line 358
    move-result-object v16

    .line 359
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 364
    .line 365
    .line 366
    move-result-object v14

    .line 367
    invoke-direct {v15, v13, v2, v14}, Lo/Ϫ;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    .line 372
    .line 373
    :catch_0
    :goto_a
    add-int/lit8 v12, v12, 0x1

    .line 374
    .line 375
    const/4 v2, 0x0

    .line 376
    goto :goto_9

    .line 377
    :cond_b
    :try_start_2
    new-instance v0, Lo/ϐ;

    .line 378
    .line 379
    const/4 v2, 0x3

    .line 380
    invoke-direct {v0, v2}, Lo/ϐ;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 384
    .line 385
    .line 386
    goto :goto_b

    .line 387
    :catch_1
    move-exception v0

    .line 388
    const-string v2, "WidgetBarMgr"

    .line 389
    .line 390
    const-string v3, "Failed to load apps"

    .line 391
    .line 392
    invoke-static {v2, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 393
    .line 394
    .line 395
    :goto_b
    iget-object v0, v6, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 396
    .line 397
    new-instance v11, Lo/lk;

    .line 398
    .line 399
    move-object v2, v11

    .line 400
    move-object v3, v6

    .line 401
    move-object v4, v5

    .line 402
    move-object v5, v8

    .line 403
    move-object v6, v10

    .line 404
    move-object v8, v9

    .line 405
    invoke-direct/range {v2 .. v8}, Lo/lk;-><init>(Lo/vl;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ZLandroid/view/View;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    nop

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
