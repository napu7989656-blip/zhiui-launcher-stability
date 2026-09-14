.class public final synthetic Lo/wk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/wk;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/wk;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo/wk;->Ͳ:Ljava/lang/Object;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo/wk;->Ͱ:I

    .line 4
    .line 5
    iget-object v2, v0, Lo/wk;->Ͳ:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Lo/wk;->ͱ:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :pswitch_0
    check-cast v3, Lo/vl;

    .line 15
    .line 16
    check-cast v2, Lorg/json/JSONObject;

    .line 17
    .line 18
    iget-object v1, v3, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    if-eqz v1, :cond_c

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object v4, v3, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ge v1, v4, :cond_c

    .line 34
    .line 35
    iget-object v4, v3, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    instance-of v5, v4, Lo/hm;

    .line 46
    .line 47
    if-eqz v5, :cond_b

    .line 48
    .line 49
    check-cast v4, Lo/hm;

    .line 50
    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v5, "totalMileage"

    .line 56
    .line 57
    const-wide/16 v6, 0x0

    .line 58
    .line 59
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    iget-boolean v5, v3, Lo/vl;->Κ:Z

    .line 64
    .line 65
    iget-wide v10, v3, Lo/vl;->Ζ:D

    .line 66
    .line 67
    const-string v12, "kWh"

    .line 68
    .line 69
    const-string v13, "km"

    .line 70
    .line 71
    const-string v14, "%.1f"

    .line 72
    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    cmpl-double v2, v10, v6

    .line 76
    .line 77
    if-ltz v2, :cond_1

    .line 78
    .line 79
    sub-double v6, v8, v10

    .line 80
    .line 81
    :cond_1
    iget-object v2, v4, Lo/hm;->ˏ:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v1, v14, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v4, Lo/hm;->Ͱ:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v4, Lo/hm;->ͱ:Landroid/widget/TextView;

    .line 104
    .line 105
    const-string v2, "--"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v4, Lo/hm;->Ͷ:Landroid/widget/TextView;

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-wide v1, v3, Lo/vl;->Λ:D

    .line 118
    .line 119
    invoke-static {v1, v2}, Lo/vl;->Ό(D)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, v4, Lo/hm;->Ͳ:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v4, Lo/hm;->ʹ:Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v1, :cond_c

    .line 131
    .line 132
    const-string v2, "-- L"

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_3
    cmpg-double v5, v10, v6

    .line 137
    .line 138
    if-gez v5, :cond_4

    .line 139
    .line 140
    iput-wide v8, v3, Lo/vl;->Ζ:D

    .line 141
    .line 142
    :cond_4
    iget-wide v10, v3, Lo/vl;->Η:D

    .line 143
    .line 144
    cmpg-double v5, v10, v6

    .line 145
    .line 146
    const-string v10, "totalElecCon"

    .line 147
    .line 148
    if-gez v5, :cond_5

    .line 149
    .line 150
    move-object v5, v12

    .line 151
    invoke-virtual {v2, v10, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v11

    .line 155
    iput-wide v11, v3, Lo/vl;->Η:D

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    move-object v5, v12

    .line 159
    :goto_1
    iget-wide v11, v3, Lo/vl;->Θ:D

    .line 160
    .line 161
    cmpg-double v11, v11, v6

    .line 162
    .line 163
    const-string v12, "totalFuelCon"

    .line 164
    .line 165
    if-gez v11, :cond_6

    .line 166
    .line 167
    move-object v11, v1

    .line 168
    invoke-virtual {v2, v12, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    iput-wide v0, v3, Lo/vl;->Θ:D

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    move-object v11, v1

    .line 176
    :goto_2
    iget-wide v0, v3, Lo/vl;->Ι:J

    .line 177
    .line 178
    const-wide/16 v15, 0x0

    .line 179
    .line 180
    cmp-long v0, v0, v15

    .line 181
    .line 182
    if-gez v0, :cond_7

    .line 183
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    iput-wide v0, v3, Lo/vl;->Ι:J

    .line 189
    .line 190
    :cond_7
    iget-wide v0, v3, Lo/vl;->Ζ:D

    .line 191
    .line 192
    sub-double/2addr v8, v0

    .line 193
    invoke-virtual {v2, v10, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    move-object v15, v11

    .line 198
    iget-wide v10, v3, Lo/vl;->Η:D

    .line 199
    .line 200
    sub-double/2addr v0, v10

    .line 201
    invoke-virtual {v2, v12, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 202
    .line 203
    .line 204
    move-result-wide v10

    .line 205
    iget-wide v6, v3, Lo/vl;->Θ:D

    .line 206
    .line 207
    sub-double/2addr v10, v6

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    move-wide/from16 v17, v10

    .line 213
    .line 214
    iget-wide v10, v3, Lo/vl;->Ι:J

    .line 215
    .line 216
    sub-long/2addr v6, v10

    .line 217
    long-to-double v6, v6

    .line 218
    const-wide v10, 0x40ed4c0000000000L    # 60000.0

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    div-double/2addr v6, v10

    .line 224
    const-wide/16 v10, 0x0

    .line 225
    .line 226
    cmpg-double v2, v6, v10

    .line 227
    .line 228
    if-gez v2, :cond_8

    .line 229
    .line 230
    move-wide v6, v10

    .line 231
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 232
    .line 233
    .line 234
    move-result-wide v10

    .line 235
    long-to-int v2, v10

    .line 236
    iget v10, v3, Lo/vl;->Μ:I

    .line 237
    .line 238
    if-eq v2, v10, :cond_9

    .line 239
    .line 240
    iput v2, v3, Lo/vl;->Μ:I

    .line 241
    .line 242
    :cond_9
    iput-wide v6, v3, Lo/vl;->Λ:D

    .line 243
    .line 244
    iget-object v2, v4, Lo/hm;->ˏ:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    move-object v8, v15

    .line 255
    invoke-static {v8, v14, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v4, Lo/hm;->Ͱ:Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    iget-object v2, v4, Lo/hm;->Ͳ:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-static {v6, v7}, Lo/vl;->Ό(D)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v8, v14, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v1, v4, Lo/hm;->ͱ:Landroid/widget/TextView;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v4, Lo/hm;->Ͷ:Landroid/widget/TextView;

    .line 294
    .line 295
    if-eqz v0, :cond_a

    .line 296
    .line 297
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    iget-object v1, v4, Lo/hm;->ʹ:Landroid/widget/TextView;

    .line 301
    .line 302
    if-eqz v1, :cond_c

    .line 303
    .line 304
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const-string v2, "%.1f L"

    .line 313
    .line 314
    invoke-static {v8, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 323
    .line 324
    move-object/from16 v0, p0

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :cond_c
    :goto_4
    return-void

    .line 329
    :pswitch_1
    check-cast v3, Lo/vl;

    .line 330
    .line 331
    check-cast v2, Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v3, v2}, Lo/vl;->Κ(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_2
    check-cast v3, Lo/vl;

    .line 338
    .line 339
    check-cast v2, Landroid/graphics/Bitmap;

    .line 340
    .line 341
    invoke-virtual {v3}, Lo/vl;->Έ()Lo/dm;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    if-eqz v0, :cond_e

    .line 346
    .line 347
    iget-object v0, v0, Lo/dm;->ʹ:Landroid/widget/ImageView;

    .line 348
    .line 349
    if-nez v0, :cond_d

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_d
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    .line 354
    .line 355
    const-string v1, "album_art"

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :cond_e
    :goto_5
    return-void

    .line 361
    :goto_6
    check-cast v3, Lo/nl;

    .line 362
    .line 363
    check-cast v2, Lo/Ϫ;

    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance v0, Lo/mm;

    .line 369
    .line 370
    iget-object v1, v2, Lo/Ϫ;->ˋ:Ljava/lang/String;

    .line 371
    .line 372
    iget-object v2, v2, Lo/Ϫ;->ˏ:Ljava/lang/String;

    .line 373
    .line 374
    invoke-direct {v0, v1, v2}, Lo/mm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v3, Lo/nl;->ͱ:Lo/vl;

    .line 378
    .line 379
    iget-object v2, v1, Lo/vl;->Ͷ:Lo/km;

    .line 380
    .line 381
    invoke-virtual {v2, v0}, Lo/km;->ˋ(Lo/mm;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Lo/vl;->Ο()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Lo/vl;->ͳ()V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
