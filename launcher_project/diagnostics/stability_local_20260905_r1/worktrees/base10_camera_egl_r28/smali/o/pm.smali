.class public final Lo/pm;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/List;

.field public final ˏ:Ljava/util/Set;

.field public Ͱ:Lo/f8;

.field public final ͱ:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/HashSet;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lo/pm;->ˋ:Ljava/util/List;

    iput-object p2, p0, Lo/pm;->ˏ:Ljava/util/Set;

    iput-boolean p3, p0, Lo/pm;->ͱ:Z

    return-void
.end method

.method public static ˋ(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lo/pm;->ˋ(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/pm;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1
    check-cast p1, Lo/om;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo/pm;->ˋ:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lo/mm;

    .line 17
    .line 18
    iget v0, p2, Lo/mm;->Ͱ:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x6

    .line 22
    const/4 v3, 0x4

    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    if-eq v0, v1, :cond_6

    .line 29
    .line 30
    if-eq v0, v5, :cond_5

    .line 31
    .line 32
    if-eq v0, v4, :cond_4

    .line 33
    .line 34
    if-eq v0, v3, :cond_3

    .line 35
    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    const/16 v7, 0xa

    .line 39
    .line 40
    if-eq v0, v7, :cond_1

    .line 41
    .line 42
    const/16 v7, 0xb

    .line 43
    .line 44
    if-eq v0, v7, :cond_0

    .line 45
    .line 46
    move v0, v6

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget v0, Lo/jf;->widget_card_environment:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget v0, Lo/jf;->widget_card_launcher:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget v0, Lo/jf;->widget_card_trip:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget v0, Lo/jf;->widget_card_settings:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    sget v0, Lo/jf;->widget_card_tyre:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    sget v0, Lo/jf;->widget_card_vehicle:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    sget v0, Lo/jf;->widget_card_music:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    sget v0, Lo/jf;->widget_card_map:I

    .line 70
    .line 71
    :goto_0
    iget-boolean v7, p0, Lo/pm;->ͱ:Z

    .line 72
    .line 73
    if-eqz v0, :cond_f

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v8, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget v8, Lo/if;->btn_widget_delete:I

    .line 88
    .line 89
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    if-eqz v8, :cond_8

    .line 94
    .line 95
    const/16 v9, 0x8

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :cond_8
    invoke-static {v0}, Lo/pm;->ˋ(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    const/high16 v8, 0x41000000    # 8.0f

    .line 104
    .line 105
    if-eqz v7, :cond_d

    .line 106
    .line 107
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    .line 109
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 110
    .line 111
    .line 112
    const v10, -0xa0a0b

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 131
    .line 132
    mul-float/2addr v10, v8

    .line 133
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Lo/ci;->ˋ(Landroid/view/View;Z)V

    .line 140
    .line 141
    .line 142
    new-array v8, v2, [I

    .line 143
    .line 144
    sget v9, Lo/if;->btn_music_prev:I

    .line 145
    .line 146
    aput v9, v8, v6

    .line 147
    .line 148
    sget v9, Lo/if;->btn_music_play:I

    .line 149
    .line 150
    invoke-static {v1}, Lo/ci;->ͱ(Z)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    aput v9, v8, v1

    .line 155
    .line 156
    sget v9, Lo/if;->btn_music_next:I

    .line 157
    .line 158
    aput v9, v8, v5

    .line 159
    .line 160
    sget v9, Lo/if;->btn_music_fav:I

    .line 161
    .line 162
    aput v9, v8, v4

    .line 163
    .line 164
    sget v4, Lo/if;->iv_vehicle_lock:I

    .line 165
    .line 166
    aput v4, v8, v3

    .line 167
    .line 168
    const/4 v3, 0x5

    .line 169
    sget v4, Lo/if;->iv_vehicle_trunk:I

    .line 170
    .line 171
    aput v4, v8, v3

    .line 172
    .line 173
    move v3, v6

    .line 174
    :goto_1
    if-ge v3, v2, :cond_a

    .line 175
    .line 176
    aget v4, v8, v3

    .line 177
    .line 178
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    instance-of v9, v4, Landroid/widget/ImageView;

    .line 183
    .line 184
    if-eqz v9, :cond_9

    .line 185
    .line 186
    check-cast v4, Landroid/widget/ImageView;

    .line 187
    .line 188
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 189
    .line 190
    invoke-virtual {v4, v10, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    sget v2, Lo/if;->btn_nav_home:I

    .line 197
    .line 198
    sget v3, Lo/if;->btn_nav_company:I

    .line 199
    .line 200
    filled-new-array {v2, v3}, [I

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    move v3, v6

    .line 205
    :goto_2
    if-ge v3, v5, :cond_e

    .line 206
    .line 207
    aget v4, v2, v3

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    instance-of v8, v4, Landroid/view/ViewGroup;

    .line 214
    .line 215
    if-eqz v8, :cond_c

    .line 216
    .line 217
    check-cast v4, Landroid/view/ViewGroup;

    .line 218
    .line 219
    move v8, v6

    .line 220
    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-ge v8, v9, :cond_c

    .line 225
    .line 226
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    instance-of v11, v9, Landroid/widget/ImageView;

    .line 231
    .line 232
    if-eqz v11, :cond_b

    .line 233
    .line 234
    check-cast v9, Landroid/widget/ImageView;

    .line 235
    .line 236
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 237
    .line 238
    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 239
    .line 240
    .line 241
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_d
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 248
    .line 249
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 250
    .line 251
    .line 252
    const/high16 v3, -0x1000000

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 270
    .line 271
    mul-float/2addr v3, v8

    .line 272
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v0, v6}, Lo/ci;->ˋ(Landroid/view/View;Z)V

    .line 279
    .line 280
    .line 281
    invoke-static {v0}, Lo/ci;->clearIconTint(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    :cond_f
    new-instance v0, Landroid/widget/TextView;

    .line 288
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, p2, Lo/mm;->ͱ:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    const/high16 v2, 0x41400000    # 12.0f

    .line 302
    .line 303
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 304
    .line 305
    .line 306
    const/16 v2, 0x11

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 312
    .line 313
    .line 314
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 317
    .line 318
    .line 319
    if-eqz v7, :cond_10

    .line 320
    .line 321
    const v1, -0xcccccd

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_10
    const v1, -0x33000001    # -1.3421772E8f

    .line 326
    .line 327
    .line 328
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 344
    .line 345
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 346
    .line 347
    const/4 v3, -0x2

    .line 348
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 349
    .line 350
    .line 351
    const/high16 v3, 0x40800000    # 4.0f

    .line 352
    .line 353
    mul-float/2addr v1, v3

    .line 354
    float-to-int v1, v1

    .line 355
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 356
    .line 357
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 361
    .line 362
    .line 363
    iget v0, p2, Lo/mm;->Ͱ:I

    .line 364
    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iget-object v1, p0, Lo/pm;->ˏ:Ljava/util/Set;

    .line 370
    .line 371
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_11

    .line 376
    .line 377
    const/high16 v1, 0x3f000000    # 0.5f

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 381
    .line 382
    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 383
    .line 384
    .line 385
    new-instance v1, Lo/nm;

    .line 386
    .line 387
    invoke-direct {v1, p0, v0, p2}, Lo/nm;-><init>(Lo/pm;ZLo/mm;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p2, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 18
    .line 19
    const/4 v1, -0x2

    .line 20
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    const/high16 v0, 0x40c00000    # 6.0f

    .line 48
    .line 49
    mul-float/2addr p1, v0

    .line 50
    float-to-int p1, p1

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 56
    .line 57
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lo/om;

    .line 61
    .line 62
    invoke-direct {p1, p2}, Lo/om;-><init>(Landroid/widget/LinearLayout;)V

    .line 63
    .line 64
    .line 65
    return-object p1
.end method
