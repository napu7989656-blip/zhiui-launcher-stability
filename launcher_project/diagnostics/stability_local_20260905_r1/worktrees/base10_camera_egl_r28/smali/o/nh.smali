.class public final Lo/nh;
.super Lo/Γ;
.source "SourceFile"

# interfaces
.implements Lo/t3;
.implements Lo/lh;
.implements Lo/u3;


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field public ͱ:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/Γ;-><init>()V

    iput-object p1, p0, Lo/nh;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/nh;->ˏ(Ljava/lang/Object;)V

    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

.method public final ˋ(Lo/u3;Lo/z0;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v2, v0, Lo/mh;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lo/mh;

    .line 11
    .line 12
    iget v3, v2, Lo/mh;->ͺ:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lo/mh;->ͺ:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lo/mh;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lo/mh;-><init>(Lo/nh;Lo/z0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lo/mh;->Ͷ:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lo/t1;->Ͱ:Lo/t1;

    .line 32
    .line 33
    iget v4, v2, Lo/mh;->ͺ:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x3

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    if-eq v4, v7, :cond_3

    .line 43
    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    if-ne v4, v6, :cond_1

    .line 47
    .line 48
    iget-object v4, v2, Lo/mh;->ʹ:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v10, v2, Lo/mh;->ͳ:Lo/l6;

    .line 51
    .line 52
    iget-object v11, v2, Lo/mh;->Ͳ:Lo/oh;

    .line 53
    .line 54
    iget-object v12, v2, Lo/mh;->ͱ:Lo/u3;

    .line 55
    .line 56
    iget-object v13, v2, Lo/mh;->Ͱ:Lo/nh;

    .line 57
    .line 58
    :try_start_0
    invoke-static {v0}, Lo/a2;->Ι(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    iget-object v4, v2, Lo/mh;->ʹ:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v10, v2, Lo/mh;->ͳ:Lo/l6;

    .line 74
    .line 75
    iget-object v11, v2, Lo/mh;->Ͳ:Lo/oh;

    .line 76
    .line 77
    iget-object v12, v2, Lo/mh;->ͱ:Lo/u3;

    .line 78
    .line 79
    iget-object v13, v2, Lo/mh;->Ͱ:Lo/nh;

    .line 80
    .line 81
    :try_start_1
    invoke-static {v0}, Lo/a2;->Ι(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    iget-object v11, v2, Lo/mh;->Ͳ:Lo/oh;

    .line 87
    .line 88
    iget-object v4, v2, Lo/mh;->ͱ:Lo/u3;

    .line 89
    .line 90
    iget-object v13, v2, Lo/mh;->Ͱ:Lo/nh;

    .line 91
    .line 92
    :try_start_2
    invoke-static {v0}, Lo/a2;->Ι(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-static {v0}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    monitor-enter p0

    .line 100
    :try_start_3
    iget-object v0, v1, Lo/Γ;->ˋ:[Lo/Δ;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    new-array v0, v5, [Lo/oh;

    .line 105
    .line 106
    iput-object v0, v1, Lo/Γ;->ˋ:[Lo/Δ;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    iget v4, v1, Lo/Γ;->ˏ:I

    .line 110
    .line 111
    array-length v10, v0

    .line 112
    if-lt v4, v10, :cond_6

    .line 113
    .line 114
    array-length v4, v0

    .line 115
    mul-int/2addr v4, v5

    .line 116
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v4, "copyOf(this, newSize)"

    .line 121
    .line 122
    invoke-static {v0, v4}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object v4, v0

    .line 126
    check-cast v4, [Lo/Δ;

    .line 127
    .line 128
    iput-object v4, v1, Lo/Γ;->ˋ:[Lo/Δ;

    .line 129
    .line 130
    check-cast v0, [Lo/Δ;

    .line 131
    .line 132
    :cond_6
    :goto_1
    iget v4, v1, Lo/Γ;->Ͱ:I

    .line 133
    .line 134
    :cond_7
    aget-object v10, v0, v4

    .line 135
    .line 136
    if-nez v10, :cond_8

    .line 137
    .line 138
    new-instance v10, Lo/oh;

    .line 139
    .line 140
    invoke-direct {v10}, Lo/oh;-><init>()V

    .line 141
    .line 142
    .line 143
    aput-object v10, v0, v4

    .line 144
    .line 145
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 146
    .line 147
    array-length v11, v0

    .line 148
    if-lt v4, v11, :cond_9

    .line 149
    .line 150
    move v4, v8

    .line 151
    :cond_9
    invoke-virtual {v10, v1}, Lo/Δ;->ˋ(Lo/t3;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_7

    .line 156
    .line 157
    iput v4, v1, Lo/Γ;->Ͱ:I

    .line 158
    .line 159
    iget v0, v1, Lo/Γ;->ˏ:I

    .line 160
    .line 161
    add-int/2addr v0, v7

    .line 162
    iput v0, v1, Lo/Γ;->ˏ:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    .line 164
    monitor-exit p0

    .line 165
    check-cast v10, Lo/oh;

    .line 166
    .line 167
    move-object/from16 v4, p1

    .line 168
    .line 169
    move-object v13, v1

    .line 170
    move-object v11, v10

    .line 171
    :goto_2
    :try_start_4
    invoke-interface {v2}, Lo/z0;->getContext()Lo/k1;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sget-object v10, Lo/z;->Ͳ:Lo/z;

    .line 176
    .line 177
    invoke-interface {v0, v10}, Lo/k1;->get(Lo/j1;)Lo/i1;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object v10, v0

    .line 182
    check-cast v10, Lo/l6;

    .line 183
    .line 184
    move-object v12, v4

    .line 185
    move-object v4, v9

    .line 186
    :cond_a
    :goto_3
    iget-object v0, v13, Lo/nh;->_state:Ljava/lang/Object;

    .line 187
    .line 188
    if-eqz v10, :cond_c

    .line 189
    .line 190
    invoke-interface {v10}, Lo/l6;->ˏ()Z

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-eqz v14, :cond_b

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_b
    check-cast v10, Lo/s6;

    .line 198
    .line 199
    invoke-virtual {v10}, Lo/s6;->Ί()Ljava/util/concurrent/CancellationException;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    throw v0

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    goto/16 :goto_9

    .line 206
    .line 207
    :cond_c
    :goto_4
    if-eqz v4, :cond_d

    .line 208
    .line 209
    invoke-static {v4, v0}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    if-nez v14, :cond_10

    .line 214
    .line 215
    :cond_d
    sget-object v4, Lo/e6;->ͽ:Lo/vh;

    .line 216
    .line 217
    if-ne v0, v4, :cond_e

    .line 218
    .line 219
    move-object v4, v9

    .line 220
    goto :goto_5

    .line 221
    :cond_e
    move-object v4, v0

    .line 222
    :goto_5
    iput-object v13, v2, Lo/mh;->Ͱ:Lo/nh;

    .line 223
    .line 224
    iput-object v12, v2, Lo/mh;->ͱ:Lo/u3;

    .line 225
    .line 226
    iput-object v11, v2, Lo/mh;->Ͳ:Lo/oh;

    .line 227
    .line 228
    iput-object v10, v2, Lo/mh;->ͳ:Lo/l6;

    .line 229
    .line 230
    iput-object v0, v2, Lo/mh;->ʹ:Ljava/lang/Object;

    .line 231
    .line 232
    iput v5, v2, Lo/mh;->ͺ:I

    .line 233
    .line 234
    invoke-interface {v12, v4, v2}, Lo/u3;->emit(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-ne v4, v3, :cond_f

    .line 239
    .line 240
    return-object v3

    .line 241
    :cond_f
    move-object v4, v0

    .line 242
    :cond_10
    :goto_6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    sget-object v0, Lo/e6;->Ά:Lo/vh;

    .line 246
    .line 247
    sget-object v14, Lo/oh;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 248
    .line 249
    invoke-virtual {v14, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    invoke-static {v14}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    sget-object v15, Lo/e6;->Έ:Lo/vh;

    .line 257
    .line 258
    if-ne v14, v15, :cond_11

    .line 259
    .line 260
    move v14, v7

    .line 261
    goto :goto_7

    .line 262
    :cond_11
    move v14, v8

    .line 263
    :goto_7
    if-nez v14, :cond_a

    .line 264
    .line 265
    iput-object v13, v2, Lo/mh;->Ͱ:Lo/nh;

    .line 266
    .line 267
    iput-object v12, v2, Lo/mh;->ͱ:Lo/u3;

    .line 268
    .line 269
    iput-object v11, v2, Lo/mh;->Ͳ:Lo/oh;

    .line 270
    .line 271
    iput-object v10, v2, Lo/mh;->ͳ:Lo/l6;

    .line 272
    .line 273
    iput-object v4, v2, Lo/mh;->ʹ:Ljava/lang/Object;

    .line 274
    .line 275
    iput v6, v2, Lo/mh;->ͺ:I

    .line 276
    .line 277
    new-instance v14, Lo/O00;

    .line 278
    .line 279
    invoke-static {v2}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    invoke-direct {v14, v7, v15}, Lo/O00;-><init>(ILo/z0;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v14}, Lo/O00;->Ά()V

    .line 287
    .line 288
    .line 289
    :cond_12
    sget-object v15, Lo/oh;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 290
    .line 291
    invoke-virtual {v15, v11, v0, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v16

    .line 295
    if-eqz v16, :cond_13

    .line 296
    .line 297
    move v0, v7

    .line 298
    goto :goto_8

    .line 299
    :cond_13
    invoke-virtual {v15, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    if-eq v15, v0, :cond_12

    .line 304
    .line 305
    move v0, v8

    .line 306
    :goto_8
    sget-object v15, Lo/ui;->ˋ:Lo/ui;

    .line 307
    .line 308
    if-nez v0, :cond_14

    .line 309
    .line 310
    invoke-virtual {v14, v15}, Lo/O00;->resumeWith(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_14
    invoke-virtual {v14}, Lo/O00;->ͽ()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    sget-object v14, Lo/t1;->Ͱ:Lo/t1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    .line 319
    if-ne v0, v14, :cond_15

    .line 320
    .line 321
    move-object v15, v0

    .line 322
    :cond_15
    if-ne v15, v3, :cond_a

    .line 323
    .line 324
    return-object v3

    .line 325
    :goto_9
    monitor-enter v13

    .line 326
    :try_start_5
    iget v2, v13, Lo/Γ;->ˏ:I

    .line 327
    .line 328
    add-int/lit8 v2, v2, -0x1

    .line 329
    .line 330
    iput v2, v13, Lo/Γ;->ˏ:I

    .line 331
    .line 332
    if-nez v2, :cond_16

    .line 333
    .line 334
    iput v8, v13, Lo/Γ;->Ͱ:I

    .line 335
    .line 336
    :cond_16
    iput-object v9, v11, Lo/oh;->_state:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 337
    .line 338
    monitor-exit v13

    .line 339
    throw v0

    .line 340
    :catchall_1
    move-exception v0

    .line 341
    monitor-exit v13

    .line 342
    throw v0

    .line 343
    :catchall_2
    move-exception v0

    .line 344
    monitor-exit p0

    .line 345
    throw v0
.end method

.method public final ˏ(Ljava/lang/Object;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lo/e6;->ͽ:Lo/vh;

    .line 4
    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lo/nh;->_state:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_1
    :try_start_1
    iput-object p1, p0, Lo/nh;->_state:Ljava/lang/Object;

    .line 18
    .line 19
    iget p1, p0, Lo/nh;->ͱ:I

    .line 20
    .line 21
    and-int/lit8 v0, p1, 0x1

    .line 22
    .line 23
    if-nez v0, :cond_d

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    add-int/2addr p1, v0

    .line 27
    iput p1, p0, Lo/nh;->ͱ:I

    .line 28
    .line 29
    iget-object v1, p0, Lo/Γ;->ˋ:[Lo/Δ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    :goto_1
    check-cast v1, [Lo/oh;

    .line 33
    .line 34
    if-eqz v1, :cond_b

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    const/4 v3, 0x0

    .line 38
    move v4, v3

    .line 39
    :goto_2
    if-ge v4, v2, :cond_b

    .line 40
    .line 41
    aget-object v5, v1, v4

    .line 42
    .line 43
    if-eqz v5, :cond_a

    .line 44
    .line 45
    :cond_2
    iget-object v6, v5, Lo/oh;->_state:Ljava/lang/Object;

    .line 46
    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    goto :goto_5

    .line 50
    :cond_3
    sget-object v7, Lo/e6;->Έ:Lo/vh;

    .line 51
    .line 52
    if-ne v6, v7, :cond_4

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_4
    sget-object v8, Lo/e6;->Ά:Lo/vh;

    .line 56
    .line 57
    if-ne v6, v8, :cond_7

    .line 58
    .line 59
    sget-object v9, Lo/oh;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    :cond_5
    invoke-virtual {v9, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_6

    .line 66
    .line 67
    move v6, v0

    .line 68
    goto :goto_3

    .line 69
    :cond_6
    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    if-eq v8, v6, :cond_5

    .line 74
    .line 75
    move v6, v3

    .line 76
    :goto_3
    if-eqz v6, :cond_2

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    sget-object v7, Lo/oh;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 80
    .line 81
    :cond_8
    invoke-virtual {v7, v5, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_9

    .line 86
    .line 87
    move v7, v0

    .line 88
    goto :goto_4

    .line 89
    :cond_9
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    if-eq v9, v6, :cond_8

    .line 94
    .line 95
    move v7, v3

    .line 96
    :goto_4
    if-eqz v7, :cond_2

    .line 97
    .line 98
    check-cast v6, Lo/O00;

    .line 99
    .line 100
    sget-object v5, Lo/ui;->ˋ:Lo/ui;

    .line 101
    .line 102
    invoke-virtual {v6, v5}, Lo/O00;->resumeWith(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_b
    monitor-enter p0

    .line 109
    :try_start_2
    iget v1, p0, Lo/nh;->ͱ:I

    .line 110
    .line 111
    if-ne v1, p1, :cond_c

    .line 112
    .line 113
    add-int/2addr p1, v0

    .line 114
    iput p1, p0, Lo/nh;->ͱ:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_c
    iget-object p1, p0, Lo/Γ;->ˋ:[Lo/Δ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    monitor-exit p0

    .line 120
    move v10, v1

    .line 121
    move-object v1, p1

    .line 122
    move p1, v10

    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    .line 126
    throw p1

    .line 127
    :cond_d
    add-int/lit8 p1, p1, 0x2

    .line 128
    .line 129
    :try_start_3
    iput p1, p0, Lo/nh;->ͱ:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :goto_6
    return-void

    .line 133
    :catchall_1
    move-exception p1

    .line 134
    monitor-exit p0

    .line 135
    throw p1
.end method
