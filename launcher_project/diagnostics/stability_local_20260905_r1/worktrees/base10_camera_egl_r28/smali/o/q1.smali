.class public final Lo/q1;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic ͺ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I

.field public ʹ:I

.field public final Ͱ:Lo/tm;

.field public ͱ:I

.field public Ͳ:J

.field public ͳ:J

.field public Ͷ:Z

.field public final synthetic ͷ:Lo/r1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lo/q1;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/q1;->ͺ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/r1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/q1;->ͷ:Lo/r1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lo/tm;

    .line 11
    .line 12
    invoke-direct {p1}, Lo/tm;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lo/q1;->Ͱ:Lo/tm;

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    iput p1, p0, Lo/q1;->ͱ:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lo/q1;->workerCtl:I

    .line 22
    .line 23
    sget-object p1, Lo/r1;->ͽ:Lo/vh;

    .line 24
    .line 25
    iput-object p1, p0, Lo/q1;->nextParkedWorker:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, Lo/of;->Ͱ:Lo/nf;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object p1, Lo/of;->ͱ:Lo/ΐ;

    .line 33
    .line 34
    invoke-virtual {p1}, Lo/ΐ;->ˋ()Ljava/util/Random;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lo/q1;->ʹ:I

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lo/q1;->ͳ(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    move v2, v0

    .line 5
    :cond_1
    :goto_1
    iget-object v3, v1, Lo/q1;->ͷ:Lo/r1;

    .line 6
    .line 7
    invoke-virtual {v3}, Lo/r1;->Ͱ()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x5

    .line 12
    if-nez v3, :cond_15

    .line 13
    .line 14
    iget v3, v1, Lo/q1;->ͱ:I

    .line 15
    .line 16
    if-eq v3, v4, :cond_15

    .line 17
    .line 18
    iget-boolean v3, v1, Lo/q1;->Ͷ:Z

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lo/q1;->ˋ(Z)Lo/yh;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x3

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    if-eqz v3, :cond_8

    .line 28
    .line 29
    iput-wide v6, v1, Lo/q1;->ͳ:J

    .line 30
    .line 31
    iget-object v0, v3, Lo/yh;->ͱ:Lo/zh;

    .line 32
    .line 33
    iget v2, v0, Lo/zh;->ˋ:I

    .line 34
    .line 35
    iput-wide v6, v1, Lo/q1;->Ͳ:J

    .line 36
    .line 37
    iget v0, v1, Lo/q1;->ͱ:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    if-ne v0, v5, :cond_2

    .line 41
    .line 42
    iput v6, v1, Lo/q1;->ͱ:I

    .line 43
    .line 44
    :cond_2
    iget-object v5, v1, Lo/q1;->ͷ:Lo/r1;

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {v1, v6}, Lo/q1;->Ͷ(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v5}, Lo/r1;->ʹ()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-wide v6, v5, Lo/r1;->controlState:J

    .line 63
    .line 64
    invoke-virtual {v5, v6, v7}, Lo/r1;->ͳ(J)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    invoke-virtual {v5}, Lo/r1;->ʹ()Z

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object v3, v0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v6, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :goto_3
    if-nez v2, :cond_7

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    sget-object v0, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 98
    .line 99
    const-wide/32 v2, -0x200000

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 103
    .line 104
    .line 105
    iget v0, v1, Lo/q1;->ͱ:I

    .line 106
    .line 107
    if-eq v0, v4, :cond_0

    .line 108
    .line 109
    const/4 v0, 0x4

    .line 110
    iput v0, v1, Lo/q1;->ͱ:I

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_8
    iput-boolean v0, v1, Lo/q1;->Ͷ:Z

    .line 114
    .line 115
    iget-wide v8, v1, Lo/q1;->ͳ:J

    .line 116
    .line 117
    cmp-long v3, v8, v6

    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    if-eqz v3, :cond_a

    .line 121
    .line 122
    if-nez v2, :cond_9

    .line 123
    .line 124
    move v2, v8

    .line 125
    goto :goto_1

    .line 126
    :cond_9
    invoke-virtual {v1, v5}, Lo/q1;->Ͷ(I)Z

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 130
    .line 131
    .line 132
    iget-wide v2, v1, Lo/q1;->ͳ:J

    .line 133
    .line 134
    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 135
    .line 136
    .line 137
    iput-wide v6, v1, Lo/q1;->ͳ:J

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_a
    iget-object v3, v1, Lo/q1;->nextParkedWorker:Ljava/lang/Object;

    .line 142
    .line 143
    sget-object v9, Lo/r1;->ͽ:Lo/vh;

    .line 144
    .line 145
    if-eq v3, v9, :cond_b

    .line 146
    .line 147
    move v3, v8

    .line 148
    goto :goto_4

    .line 149
    :cond_b
    move v3, v0

    .line 150
    :goto_4
    if-nez v3, :cond_c

    .line 151
    .line 152
    iget-object v3, v1, Lo/q1;->ͷ:Lo/r1;

    .line 153
    .line 154
    invoke-virtual {v3, v1}, Lo/r1;->ͱ(Lo/q1;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :cond_c
    const/4 v3, -0x1

    .line 160
    iput v3, v1, Lo/q1;->workerCtl:I

    .line 161
    .line 162
    :cond_d
    :goto_5
    iget-object v9, v1, Lo/q1;->nextParkedWorker:Ljava/lang/Object;

    .line 163
    .line 164
    sget-object v10, Lo/r1;->ͽ:Lo/vh;

    .line 165
    .line 166
    if-eq v9, v10, :cond_e

    .line 167
    .line 168
    move v9, v8

    .line 169
    goto :goto_6

    .line 170
    :cond_e
    move v9, v0

    .line 171
    :goto_6
    if-eqz v9, :cond_1

    .line 172
    .line 173
    iget v9, v1, Lo/q1;->workerCtl:I

    .line 174
    .line 175
    if-ne v9, v3, :cond_1

    .line 176
    .line 177
    iget-object v9, v1, Lo/q1;->ͷ:Lo/r1;

    .line 178
    .line 179
    invoke-virtual {v9}, Lo/r1;->Ͱ()Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-nez v9, :cond_1

    .line 184
    .line 185
    iget v9, v1, Lo/q1;->ͱ:I

    .line 186
    .line 187
    if-ne v9, v4, :cond_f

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_f
    invoke-virtual {v1, v5}, Lo/q1;->Ͷ(I)Z

    .line 192
    .line 193
    .line 194
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 195
    .line 196
    .line 197
    iget-wide v9, v1, Lo/q1;->Ͳ:J

    .line 198
    .line 199
    cmp-long v9, v9, v6

    .line 200
    .line 201
    if-nez v9, :cond_10

    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v9

    .line 207
    iget-object v11, v1, Lo/q1;->ͷ:Lo/r1;

    .line 208
    .line 209
    iget-wide v11, v11, Lo/r1;->Ͳ:J

    .line 210
    .line 211
    add-long/2addr v9, v11

    .line 212
    iput-wide v9, v1, Lo/q1;->Ͳ:J

    .line 213
    .line 214
    :cond_10
    iget-object v9, v1, Lo/q1;->ͷ:Lo/r1;

    .line 215
    .line 216
    iget-wide v9, v9, Lo/r1;->Ͳ:J

    .line 217
    .line 218
    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 222
    .line 223
    .line 224
    move-result-wide v9

    .line 225
    iget-wide v11, v1, Lo/q1;->Ͳ:J

    .line 226
    .line 227
    sub-long/2addr v9, v11

    .line 228
    cmp-long v9, v9, v6

    .line 229
    .line 230
    if-ltz v9, :cond_d

    .line 231
    .line 232
    iput-wide v6, v1, Lo/q1;->Ͳ:J

    .line 233
    .line 234
    iget-object v9, v1, Lo/q1;->ͷ:Lo/r1;

    .line 235
    .line 236
    iget-object v10, v9, Lo/r1;->ͷ:Lo/zf;

    .line 237
    .line 238
    monitor-enter v10

    .line 239
    :try_start_1
    invoke-virtual {v9}, Lo/r1;->Ͱ()Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-eqz v11, :cond_11

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_11
    iget-wide v11, v9, Lo/r1;->controlState:J

    .line 247
    .line 248
    const-wide/32 v13, 0x1fffff

    .line 249
    .line 250
    .line 251
    and-long/2addr v11, v13

    .line 252
    long-to-int v11, v11

    .line 253
    iget v12, v9, Lo/r1;->Ͱ:I

    .line 254
    .line 255
    if-gt v11, v12, :cond_12

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_12
    sget-object v11, Lo/q1;->ͺ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 259
    .line 260
    invoke-virtual {v11, v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 261
    .line 262
    .line 263
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    if-nez v11, :cond_13

    .line 265
    .line 266
    :goto_7
    monitor-exit v10

    .line 267
    goto :goto_5

    .line 268
    :cond_13
    :try_start_2
    iget v11, v1, Lo/q1;->indexInArray:I

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Lo/q1;->ͳ(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9, v1, v11, v0}, Lo/r1;->Ͳ(Lo/q1;II)V

    .line 274
    .line 275
    .line 276
    sget-object v12, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 277
    .line 278
    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v15

    .line 282
    and-long v12, v15, v13

    .line 283
    .line 284
    long-to-int v12, v12

    .line 285
    if-eq v12, v11, :cond_14

    .line 286
    .line 287
    iget-object v13, v9, Lo/r1;->ͷ:Lo/zf;

    .line 288
    .line 289
    invoke-virtual {v13, v12}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-static {v13}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    check-cast v13, Lo/q1;

    .line 297
    .line 298
    iget-object v14, v9, Lo/r1;->ͷ:Lo/zf;

    .line 299
    .line 300
    invoke-virtual {v14, v11, v13}, Lo/zf;->Ͱ(ILo/q1;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v13, v11}, Lo/q1;->ͳ(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v13, v12, v11}, Lo/r1;->Ͳ(Lo/q1;II)V

    .line 307
    .line 308
    .line 309
    :cond_14
    iget-object v9, v9, Lo/r1;->ͷ:Lo/zf;

    .line 310
    .line 311
    const/4 v11, 0x0

    .line 312
    invoke-virtual {v9, v12, v11}, Lo/zf;->Ͱ(ILo/q1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    .line 314
    .line 315
    monitor-exit v10

    .line 316
    iput v4, v1, Lo/q1;->ͱ:I

    .line 317
    .line 318
    goto/16 :goto_5

    .line 319
    .line 320
    :catchall_1
    move-exception v0

    .line 321
    monitor-exit v10

    .line 322
    throw v0

    .line 323
    :cond_15
    invoke-virtual {v1, v4}, Lo/q1;->Ͷ(I)Z

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public final ʹ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/q1;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final ˋ(Z)Lo/yh;
    .locals 9

    .line 1
    iget v0, p0, Lo/q1;->ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/q1;->ͷ:Lo/r1;

    .line 9
    .line 10
    :cond_1
    iget-wide v5, v0, Lo/r1;->controlState:J

    .line 11
    .line 12
    const-wide v3, 0x7ffffc0000000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr v3, v5

    .line 18
    const/16 v7, 0x2a

    .line 19
    .line 20
    shr-long/2addr v3, v7

    .line 21
    long-to-int v3, v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-wide v3, 0x40000000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    sub-long v7, v5, v3

    .line 32
    .line 33
    sget-object v3, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 34
    .line 35
    move-object v4, v0

    .line 36
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    move v0, v1

    .line 43
    :goto_0
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iput v1, p0, Lo/q1;->ͱ:I

    .line 46
    .line 47
    :goto_1
    move v0, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move v0, v2

    .line 50
    :goto_2
    const/4 v3, 0x0

    .line 51
    if-eqz v0, :cond_a

    .line 52
    .line 53
    if-eqz p1, :cond_8

    .line 54
    .line 55
    iget-object p1, p0, Lo/q1;->ͷ:Lo/r1;

    .line 56
    .line 57
    iget p1, p1, Lo/r1;->Ͱ:I

    .line 58
    .line 59
    mul-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lo/q1;->ͱ(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v1, v2

    .line 69
    :goto_3
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0}, Lo/q1;->Ͳ()Lo/yh;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_5
    iget-object p1, p0, Lo/q1;->Ͱ:Lo/tm;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v0, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 84
    .line 85
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lo/yh;

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Lo/tm;->ͱ()Lo/yh;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_4

    .line 98
    :cond_6
    move-object p1, v0

    .line 99
    :goto_4
    if-eqz p1, :cond_7

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    if-nez v1, :cond_9

    .line 103
    .line 104
    invoke-virtual {p0}, Lo/q1;->Ͳ()Lo/yh;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_8
    invoke-virtual {p0}, Lo/q1;->Ͳ()Lo/yh;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_9

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_9
    invoke-virtual {p0, v2}, Lo/q1;->ͷ(Z)Lo/yh;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :goto_5
    return-object p1

    .line 123
    :cond_a
    if-eqz p1, :cond_c

    .line 124
    .line 125
    iget-object p1, p0, Lo/q1;->Ͱ:Lo/tm;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget-object v0, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 131
    .line 132
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lo/yh;

    .line 137
    .line 138
    if-nez v0, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lo/tm;->ͱ()Lo/yh;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :cond_b
    if-nez v0, :cond_d

    .line 145
    .line 146
    :cond_c
    iget-object p1, p0, Lo/q1;->ͷ:Lo/r1;

    .line 147
    .line 148
    iget-object p1, p1, Lo/r1;->Ͷ:Lo/i5;

    .line 149
    .line 150
    invoke-virtual {p1}, Lo/r7;->ͱ()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    move-object v0, p1

    .line 155
    check-cast v0, Lo/yh;

    .line 156
    .line 157
    :cond_d
    if-nez v0, :cond_e

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Lo/q1;->ͷ(Z)Lo/yh;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :cond_e
    return-object v0
.end method

.method public final ˏ()I
    .locals 1

    .line 1
    iget v0, p0, Lo/q1;->indexInArray:I

    return v0
.end method

.method public final Ͱ()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/q1;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final ͱ(I)I
    .locals 3

    .line 1
    iget v0, p0, Lo/q1;->ʹ:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lo/q1;->ʹ:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final Ͳ()Lo/yh;
    .locals 2

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/q1;->ͱ(I)I

    move-result v0

    iget-object v1, p0, Lo/q1;->ͷ:Lo/r1;

    if-nez v0, :cond_1

    iget-object v0, v1, Lo/r1;->ʹ:Lo/i5;

    invoke-virtual {v0}, Lo/r7;->ͱ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v1, Lo/r1;->Ͷ:Lo/i5;

    :goto_0
    invoke-virtual {v0}, Lo/r7;->ͱ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yh;

    return-object v0

    :cond_1
    iget-object v0, v1, Lo/r1;->Ͷ:Lo/i5;

    invoke-virtual {v0}, Lo/r7;->ͱ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yh;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, v1, Lo/r1;->ʹ:Lo/i5;

    goto :goto_0
.end method

.method public final ͳ(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/q1;->ͷ:Lo/r1;

    iget-object v1, v1, Lo/r1;->ͳ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lo/q1;->indexInArray:I

    return-void
.end method

.method public final Ͷ(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lo/q1;->ͱ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v3, 0x40000000000L

    iget-object v5, p0, Lo/q1;->ͷ:Lo/r1;

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Lo/q1;->ͱ:I

    :cond_2
    return v1
.end method

.method public final ͷ(Z)Lo/yh;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo/q1;->ͷ:Lo/r1;

    .line 4
    .line 5
    iget-wide v1, v1, Lo/r1;->controlState:J

    .line 6
    .line 7
    const-wide/32 v3, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    long-to-int v1, v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lo/q1;->ͱ(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v4, v0, Lo/q1;->ͷ:Lo/r1;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move v8, v7

    .line 25
    const-wide v9, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :goto_0
    const-wide/16 v11, 0x0

    .line 31
    .line 32
    if-ge v8, v1, :cond_7

    .line 33
    .line 34
    const/4 v13, 0x1

    .line 35
    add-int/2addr v2, v13

    .line 36
    if-le v2, v1, :cond_1

    .line 37
    .line 38
    move v2, v13

    .line 39
    :cond_1
    iget-object v13, v4, Lo/r1;->ͷ:Lo/zf;

    .line 40
    .line 41
    invoke-virtual {v13, v2}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    check-cast v13, Lo/q1;

    .line 46
    .line 47
    if-eqz v13, :cond_6

    .line 48
    .line 49
    if-eq v13, v0, :cond_6

    .line 50
    .line 51
    iget-object v14, v0, Lo/q1;->Ͱ:Lo/tm;

    .line 52
    .line 53
    iget-object v13, v13, Lo/q1;->Ͱ:Lo/tm;

    .line 54
    .line 55
    const-wide/16 v15, -0x1

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v14, v13}, Lo/tm;->Ͳ(Lo/tm;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v13

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v13}, Lo/tm;->ͱ()Lo/yh;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-virtual {v14, v5, v7}, Lo/tm;->ˋ(Lo/yh;Z)Lo/yh;

    .line 74
    .line 75
    .line 76
    move-wide v13, v15

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v14, v13, v7}, Lo/tm;->ͳ(Lo/tm;Z)J

    .line 79
    .line 80
    .line 81
    move-result-wide v13

    .line 82
    :goto_1
    cmp-long v5, v13, v15

    .line 83
    .line 84
    if-nez v5, :cond_5

    .line 85
    .line 86
    iget-object v1, v0, Lo/q1;->Ͱ:Lo/tm;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v2, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 92
    .line 93
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lo/yh;

    .line 98
    .line 99
    if-nez v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, Lo/tm;->ͱ()Lo/yh;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_4
    return-object v2

    .line 106
    :cond_5
    cmp-long v5, v13, v11

    .line 107
    .line 108
    if-lez v5, :cond_6

    .line 109
    .line 110
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    const-wide v5, 0x7fffffffffffffffL

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    cmp-long v1, v9, v5

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_8
    move-wide v9, v11

    .line 128
    :goto_2
    iput-wide v9, v0, Lo/q1;->ͳ:J

    .line 129
    .line 130
    return-object v3
.end method
