.class public final Lo/mj;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/List;

.field public final ˏ:Lo/oj;


# direct methods
.method public constructor <init>(Lo/oj;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lo/mj;->ˋ:Ljava/util/List;

    iput-object p1, p0, Lo/mj;->ˏ:Lo/oj;

    return-void
.end method

.method public static Ͳ(Lo/lj;Lo/nj;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lo/nj;->ͷ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/lj;->ˏ:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo/nj;->ͷ:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lo/lj;->ˏ:Landroid/widget/TextView;

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/lj;->ˏ:Landroid/widget/TextView;

    iget-object p1, p1, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lo/lj;->ˏ:Landroid/widget/TextView;

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/mj;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/mj;->ˋ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/nj;

    iget p1, p1, Lo/nj;->ʹ:I

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/mj;->ˋ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lo/nj;

    .line 8
    .line 9
    instance-of v0, p1, Lo/kj;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    iget-object v3, p0, Lo/mj;->ˏ:Lo/oj;

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    check-cast p1, Lo/kj;

    .line 18
    .line 19
    iget-object v0, p1, Lo/kj;->ˋ:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-boolean v4, p2, Lo/nj;->Ͷ:Z

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget v4, p2, Lo/nj;->ͱ:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v4, p2, Lo/nj;->Ͱ:I

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lo/kj;->ˋ:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lo/mj;->ˋ(Landroid/widget/ImageView;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p2, Lo/nj;->ˏ:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, p1, Lo/kj;->ˏ:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v3, Lo/oj;->ˋ:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Lo/ci;->ͷ(Z)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v3, Lo/oj;->ˋ:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Lo/ci;->ͷ(Z)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v4, p1, Lo/kj;->Ͱ:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p2, Lo/nj;->Ͷ:Z

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lo/mj;->ˏ()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lo/mj;->Ͱ()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_1
    iget-object v5, p1, Lo/kj;->Ͳ:Landroidx/cardview/widget/CardView;

    .line 87
    .line 88
    invoke-virtual {v5, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v3, Lo/oj;->ˋ:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    const v6, -0xe6892e

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const v6, -0xb03c09

    .line 104
    .line 105
    .line 106
    :goto_2
    if-eqz v0, :cond_3

    .line 107
    .line 108
    const/high16 v0, 0x33000000

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    const v0, 0x55ffffff    # 3.518437E13f

    .line 112
    .line 113
    .line 114
    :goto_3
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    iget-object v8, p1, Lo/kj;->ͱ:Landroid/widget/SeekBar;

    .line 119
    .line 120
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v8, v7}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    iget v0, p2, Lo/nj;->ͻ:I

    .line 141
    .line 142
    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 143
    .line 144
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    .line 147
    const/16 v6, 0x1a

    .line 148
    .line 149
    if-lt v0, v6, :cond_4

    .line 150
    .line 151
    iget v0, p2, Lo/nj;->ͺ:I

    .line 152
    .line 153
    invoke-static {v8, v0}, Lo/zd;->ͳ(Landroid/widget/SeekBar;I)V

    .line 154
    .line 155
    .line 156
    :cond_4
    iget v0, p2, Lo/nj;->ͼ:I

    .line 157
    .line 158
    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget v6, p2, Lo/nj;->ͼ:I

    .line 167
    .line 168
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v6, p2, Lo/nj;->ͽ:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lo/re;

    .line 184
    .line 185
    const/4 v4, 0x2

    .line 186
    invoke-direct {v0, p0, p2, v4, p1}, Lo/re;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    .line 191
    .line 192
    new-instance p2, Lo/ij;

    .line 193
    .line 194
    invoke-direct {p2, p0, v1}, Lo/ij;-><init>(Lo/mj;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    .line 199
    .line 200
    if-eqz v5, :cond_10

    .line 201
    .line 202
    iget-boolean p2, p1, Lo/kj;->ͳ:Z

    .line 203
    .line 204
    if-nez p2, :cond_10

    .line 205
    .line 206
    iget p2, v3, Lo/oj;->ʹ:I

    .line 207
    .line 208
    if-lez p2, :cond_5

    .line 209
    .line 210
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    iput-boolean v2, p1, Lo/kj;->ͳ:Z

    .line 220
    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :cond_5
    new-instance p2, Lo/td;

    .line 224
    .line 225
    const/16 v0, 0x14

    .line 226
    .line 227
    invoke-direct {p2, v0, p1}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_9

    .line 231
    .line 232
    :cond_6
    instance-of v0, p1, Lo/lj;

    .line 233
    .line 234
    if-eqz v0, :cond_10

    .line 235
    .line 236
    check-cast p1, Lo/lj;

    .line 237
    .line 238
    iget v0, p2, Lo/nj;->ͱ:I

    .line 239
    .line 240
    iget v4, p2, Lo/nj;->Ͱ:I

    .line 241
    .line 242
    if-nez v0, :cond_7

    .line 243
    .line 244
    if-nez v4, :cond_7

    .line 245
    .line 246
    move v0, v2

    .line 247
    goto :goto_4

    .line 248
    :cond_7
    move v0, v1

    .line 249
    :goto_4
    if-eqz v0, :cond_8

    .line 250
    .line 251
    iget-object v5, p2, Lo/nj;->ͳ:Ljava/lang/String;

    .line 252
    .line 253
    if-eqz v5, :cond_8

    .line 254
    .line 255
    move v5, v2

    .line 256
    goto :goto_5

    .line 257
    :cond_8
    move v5, v1

    .line 258
    :goto_5
    iget-object v6, v3, Lo/oj;->ˋ:Landroid/content/Context;

    .line 259
    .line 260
    invoke-static {v6}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-static {v6}, Lo/ci;->ͷ(Z)I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    const/16 v7, 0x8

    .line 269
    .line 270
    if-eqz v0, :cond_b

    .line 271
    .line 272
    iget-object v4, p1, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 273
    .line 274
    const/4 v8, 0x0

    .line 275
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    .line 277
    .line 278
    iget-object v4, p1, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 279
    .line 280
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    iget-object v4, p1, Lo/lj;->ˏ:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    if-eqz v5, :cond_9

    .line 289
    .line 290
    iget-boolean v4, p2, Lo/nj;->Ͷ:Z

    .line 291
    .line 292
    if-eqz v4, :cond_9

    .line 293
    .line 294
    invoke-virtual {p0}, Lo/mj;->ˏ()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    goto :goto_6

    .line 299
    :cond_9
    invoke-virtual {p0}, Lo/mj;->ͱ()I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    :goto_6
    iget-object v5, p1, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    .line 304
    .line 305
    invoke-virtual {v5, v4}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 306
    .line 307
    .line 308
    iget-object v4, p1, Lo/lj;->ͱ:Landroid/widget/TextView;

    .line 309
    .line 310
    if-nez v4, :cond_a

    .line 311
    .line 312
    new-instance v4, Landroid/widget/TextView;

    .line 313
    .line 314
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 315
    .line 316
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 321
    .line 322
    .line 323
    iget-object v7, p2, Lo/nj;->ˏ:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    .line 330
    .line 331
    const/high16 v7, 0x41200000    # 10.0f

    .line 332
    .line 333
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 334
    .line 335
    .line 336
    const/16 v7, 0x11

    .line 337
    .line 338
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    .line 340
    .line 341
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .line 343
    const/4 v8, -0x1

    .line 344
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    iput-object v4, p1, Lo/lj;->ͱ:Landroid/widget/TextView;

    .line 351
    .line 352
    :cond_a
    iget-object v4, p1, Lo/lj;->ͱ:Landroid/widget/TextView;

    .line 353
    .line 354
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p1, Lo/lj;->ͱ:Landroid/widget/TextView;

    .line 358
    .line 359
    iget-object v4, p2, Lo/nj;->ˏ:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p1, Lo/lj;->ͱ:Landroid/widget/TextView;

    .line 365
    .line 366
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_b
    iget-object v5, p1, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 371
    .line 372
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    iget-object v5, p1, Lo/lj;->ˏ:Landroid/widget/TextView;

    .line 376
    .line 377
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    iget-boolean v1, p2, Lo/nj;->Ͷ:Z

    .line 381
    .line 382
    if-eqz v1, :cond_c

    .line 383
    .line 384
    iget v4, p2, Lo/nj;->ͱ:I

    .line 385
    .line 386
    :cond_c
    iget-object v1, p1, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 387
    .line 388
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    .line 390
    .line 391
    iget-boolean v4, p2, Lo/nj;->Ͷ:Z

    .line 392
    .line 393
    if-eqz v4, :cond_d

    .line 394
    .line 395
    invoke-virtual {p0}, Lo/mj;->ˏ()I

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    goto :goto_7

    .line 400
    :cond_d
    invoke-virtual {p0}, Lo/mj;->Ͱ()I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    :goto_7
    iget-object v5, p1, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    .line 405
    .line 406
    invoke-virtual {v5, v4}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 407
    .line 408
    .line 409
    iget-object v4, p1, Lo/lj;->ͱ:Landroid/widget/TextView;

    .line 410
    .line 411
    if-eqz v4, :cond_e

    .line 412
    .line 413
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    :cond_e
    invoke-virtual {p0, v1}, Lo/mj;->ˋ(Landroid/widget/ImageView;)V

    .line 417
    .line 418
    .line 419
    :goto_8
    iget-object v1, p1, Lo/lj;->ˏ:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    .line 423
    .line 424
    invoke-static {p1, p2}, Lo/mj;->Ͳ(Lo/lj;Lo/nj;)V

    .line 425
    .line 426
    .line 427
    new-instance v1, Lo/jj;

    .line 428
    .line 429
    invoke-direct {v1, p0, p2, v0, p1}, Lo/jj;-><init>(Lo/mj;Lo/nj;ZLo/lj;)V

    .line 430
    .line 431
    .line 432
    iget-object v5, p1, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    .line 433
    .line 434
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    new-instance p2, Lo/ij;

    .line 438
    .line 439
    invoke-direct {p2, p0, v2}, Lo/ij;-><init>(Lo/mj;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 443
    .line 444
    .line 445
    if-eqz v5, :cond_10

    .line 446
    .line 447
    iget-boolean p2, p1, Lo/lj;->Ͳ:Z

    .line 448
    .line 449
    if-nez p2, :cond_10

    .line 450
    .line 451
    iget p2, v3, Lo/oj;->ʹ:I

    .line 452
    .line 453
    if-lez p2, :cond_f

    .line 454
    .line 455
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    .line 461
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    .line 463
    .line 464
    int-to-float p2, p2

    .line 465
    const v0, 0x3ea8f5c3    # 0.33f

    .line 466
    .line 467
    .line 468
    mul-float/2addr p2, v0

    .line 469
    float-to-int p2, p2

    .line 470
    iget-object v0, p1, Lo/lj;->ˋ:Landroid/widget/ImageView;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    .line 478
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    .line 482
    .line 483
    iput-boolean v2, p1, Lo/lj;->Ͳ:Z

    .line 484
    .line 485
    goto :goto_a

    .line 486
    :cond_f
    new-instance p2, Lo/Ϋ;

    .line 487
    .line 488
    const/16 v0, 0xa

    .line 489
    .line 490
    invoke-direct {p2, p0, v5, v0, p1}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    :goto_9
    invoke-virtual {v5, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 494
    .line 495
    .line 496
    :cond_10
    :goto_a
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lo/jf;->item_vehicle_control_slider:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lo/kj;

    invoke-direct {p2, p1}, Lo/kj;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lo/jf;->item_vehicle_control:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lo/lj;

    invoke-direct {p2, p1}, Lo/lj;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final ˋ(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/mj;->ˏ:Lo/oj;

    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lo/ci;->ͱ(Z)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    return-void
.end method

.method public final ˏ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/mj;->ˏ:Lo/oj;

    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x442105

    goto :goto_0

    :cond_0
    const v0, 0x664fc3f7

    :goto_0
    return v0
.end method

.method public final Ͱ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/mj;->ˏ:Lo/oj;

    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x171718

    goto :goto_0

    :cond_0
    const v0, 0x33ffffff

    :goto_0
    return v0
.end method

.method public final ͱ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/mj;->ˏ:Lo/oj;

    iget-object v0, v0, Lo/oj;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x1f1f20

    goto :goto_0

    :cond_0
    const v0, 0x55ffffff    # 3.518437E13f

    :goto_0
    return v0
.end method
