.class public Lcom/byd/launcher/widget/SwipeDismissFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public ʹ:Z

.field public ˋ:F

.field public ˏ:F

.field public Ͱ:J

.field public ͱ:Z

.field public Ͳ:Z

.field public ͳ:Lo/uh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ʹ:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ʹ:Z

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    const/4 v0, 0x0
    return v0
    :stability_owner_alive

    .line 1
    iget-boolean v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ʹ:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_13

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v0, v2, :cond_b

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    .line 21
    if-eq v0, v5, :cond_b

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͱ:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_2
    iget-boolean v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͱ:Z

    .line 34
    .line 35
    if-eqz v0, :cond_7

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˋ:F

    .line 42
    .line 43
    sub-float/2addr p1, v0

    .line 44
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-float v0, v0

    .line 57
    cmpl-float v1, v0, v4

    .line 58
    .line 59
    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    div-float v0, p1, v0

    .line 64
    .line 65
    add-float/2addr v0, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v0, v3

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    .line 69
    .line 70
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    check-cast v1, Lo/we;

    .line 79
    .line 80
    iget-object v1, v1, Lo/we;->ˏ:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Lo/ff;

    .line 83
    .line 84
    iget-object v3, v1, Lo/ff;->ʹ:Landroid/view/View;

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 93
    .line 94
    .line 95
    iget-object v3, v1, Lo/ff;->ʹ:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object p1, v1, Lo/ff;->Ͷ:Landroid/view/View;

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    iget-wide v5, v1, Lo/ff;->ͽ:J

    .line 112
    .line 113
    sub-long v5, v3, v5

    .line 114
    .line 115
    const-wide/16 v7, 0x1f4

    .line 116
    .line 117
    cmp-long p1, v5, v7

    .line 118
    .line 119
    if-lez p1, :cond_6

    .line 120
    .line 121
    iput-wide v3, v1, Lo/ff;->ͽ:J

    .line 122
    .line 123
    invoke-virtual {v1}, Lo/ff;->ͳ()V

    .line 124
    .line 125
    .line 126
    :cond_6
    return v2

    .line 127
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget v1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˋ:F

    .line 132
    .line 133
    sub-float/2addr v0, v1

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iget v3, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˏ:F

    .line 139
    .line 140
    sub-float/2addr v1, v3

    .line 141
    iget-boolean v3, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->Ͳ:Z

    .line 142
    .line 143
    if-nez v3, :cond_8

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    cmpl-float v3, v3, v4

    .line 154
    .line 155
    if-lez v3, :cond_8

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const/high16 v3, 0x41f00000    # 30.0f

    .line 162
    .line 163
    cmpl-float v1, v1, v3

    .line 164
    .line 165
    if-lez v1, :cond_8

    .line 166
    .line 167
    iput-boolean v2, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->Ͳ:Z

    .line 168
    .line 169
    :cond_8
    iget-boolean v1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->Ͳ:Z

    .line 170
    .line 171
    if-eqz v1, :cond_9

    .line 172
    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    return p1

    .line 178
    :cond_9
    const/high16 v1, -0x3e100000    # -30.0f

    .line 179
    .line 180
    cmpg-float v0, v0, v1

    .line 181
    .line 182
    if-gez v0, :cond_a

    .line 183
    .line 184
    iput-boolean v2, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͱ:Z

    .line 185
    .line 186
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 191
    .line 192
    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 197
    .line 198
    .line 199
    return v2

    .line 200
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    return p1

    .line 205
    :cond_b
    iget-boolean v5, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͱ:Z

    .line 206
    .line 207
    if-eqz v5, :cond_f

    .line 208
    .line 209
    iput-boolean v1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͱ:Z

    .line 210
    .line 211
    if-ne v0, v2, :cond_d

    .line 212
    .line 213
    iget-object v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    .line 214
    .line 215
    if-eqz v0, :cond_d

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iget v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˋ:F

    .line 222
    .line 223
    sub-float/2addr p1, v0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    iget-wide v5, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->Ͱ:J

    .line 229
    .line 230
    sub-long/2addr v0, v5

    .line 231
    const-wide/16 v5, 0x0

    .line 232
    .line 233
    cmp-long v3, v0, v5

    .line 234
    .line 235
    if-lez v3, :cond_c

    .line 236
    .line 237
    long-to-float v0, v0

    .line 238
    div-float v0, p1, v0

    .line 239
    .line 240
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 241
    .line 242
    mul-float v4, v0, v1

    .line 243
    .line 244
    :cond_c
    iget-object v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    .line 245
    .line 246
    check-cast v0, Lo/we;

    .line 247
    .line 248
    invoke-virtual {v0, p1, v4}, Lo/we;->ˋ(FF)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_d
    iget-object p1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    .line 253
    .line 254
    if-eqz p1, :cond_e

    .line 255
    .line 256
    check-cast p1, Lo/we;

    .line 257
    .line 258
    invoke-virtual {p1, v4, v4}, Lo/we;->ˋ(FF)V

    .line 259
    .line 260
    .line 261
    :cond_e
    :goto_1
    return v2

    .line 262
    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-nez v4, :cond_12

    .line 267
    .line 268
    if-ne v0, v2, :cond_12

    .line 269
    .line 270
    iget-object v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    .line 271
    .line 272
    if-eqz v0, :cond_12

    .line 273
    .line 274
    check-cast v0, Lo/we;

    .line 275
    .line 276
    iget-object v0, v0, Lo/we;->ˏ:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lo/ff;

    .line 279
    .line 280
    iget-object v4, v0, Lo/ff;->ʹ:Landroid/view/View;

    .line 281
    .line 282
    if-nez v4, :cond_10

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_10
    new-array v3, v3, [I

    .line 286
    .line 287
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    aget v5, v3, v1

    .line 299
    .line 300
    int-to-float v6, v5

    .line 301
    cmpl-float v6, v4, v6

    .line 302
    .line 303
    if-ltz v6, :cond_11

    .line 304
    .line 305
    iget-object v6, v0, Lo/ff;->ʹ:Landroid/view/View;

    .line 306
    .line 307
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    add-int/2addr v6, v5

    .line 312
    int-to-float v5, v6

    .line 313
    cmpg-float v4, v4, v5

    .line 314
    .line 315
    if-gtz v4, :cond_11

    .line 316
    .line 317
    aget v3, v3, v2

    .line 318
    .line 319
    int-to-float v4, v3

    .line 320
    cmpl-float v4, p1, v4

    .line 321
    .line 322
    if-ltz v4, :cond_11

    .line 323
    .line 324
    iget-object v4, v0, Lo/ff;->ʹ:Landroid/view/View;

    .line 325
    .line 326
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    add-int/2addr v4, v3

    .line 331
    int-to-float v3, v4

    .line 332
    cmpg-float p1, p1, v3

    .line 333
    .line 334
    if-gtz p1, :cond_11

    .line 335
    .line 336
    move v1, v2

    .line 337
    :cond_11
    :goto_2
    if-nez v1, :cond_12

    .line 338
    .line 339
    invoke-virtual {v0}, Lo/ff;->ʹ()V

    .line 340
    .line 341
    .line 342
    :cond_12
    return v2

    .line 343
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iput v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˋ:F

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    iput v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˏ:F

    .line 354
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    .line 357
    .line 358
    move-result-wide v3

    .line 359
    iput-wide v3, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->Ͱ:J

    .line 360
    .line 361
    iput-boolean v1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͱ:Z

    .line 362
    .line 363
    iput-boolean v1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->Ͳ:Z

    .line 364
    .line 365
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    .line 367
    .line 368
    return v2
.end method

.method public getInterceptDownY()F
    .locals 1

    iget v0, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ˋ:F

    return v0
.end method

.method public setSwipeCallback(Lo/uh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ͳ:Lo/uh;

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->ʹ:Z

    return-void
.end method
