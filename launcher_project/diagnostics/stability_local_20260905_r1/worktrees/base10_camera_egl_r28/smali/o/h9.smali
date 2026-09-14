.class public final Lo/h9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/b9;


# static fields
.field public static final synthetic ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lo/h9;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/h9;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lo/a2;->Ά:Lo/x2;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/a2;->Έ:Lo/x2;

    :goto_0
    iput-object p1, p0, Lo/h9;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lo/h9;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lo/x2;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/x2;

    iget-object v0, v0, Lo/x2;->ˋ:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lo/jc;

    if-eqz v1, :cond_1

    check-cast v0, Lo/jc;

    invoke-virtual {v0, p0}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lo/f9;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/f9;

    iget-object v0, v0, Lo/f9;->owner:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ˋ(Lo/z0;)Ljava/lang/Object;
    .locals 12

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/h9;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lo/x2;

    .line 4
    .line 5
    sget-object v2, Lo/a2;->Ά:Lo/x2;

    .line 6
    .line 7
    sget-object v3, Lo/a2;->ͽ:Lo/vh;

    .line 8
    .line 9
    const-string v4, "Already locked by null"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v7, "Illegal state "

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lo/x2;

    .line 19
    .line 20
    iget-object v1, v1, Lo/x2;->ˋ:Ljava/lang/Object;

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    sget-object v1, Lo/h9;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    :cond_2
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_3

    .line 32
    .line 33
    move v0, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    if-eq v8, v0, :cond_2

    .line 40
    .line 41
    move v0, v6

    .line 42
    :goto_1
    if-eqz v0, :cond_0

    .line 43
    .line 44
    move v0, v5

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    instance-of v1, v0, Lo/f9;

    .line 47
    .line 48
    if-eqz v1, :cond_18

    .line 49
    .line 50
    check-cast v0, Lo/f9;

    .line 51
    .line 52
    iget-object v0, v0, Lo/f9;->owner:Ljava/lang/Object;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    move v0, v5

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    move v0, v6

    .line 59
    :goto_2
    if-eqz v0, :cond_17

    .line 60
    .line 61
    :goto_3
    move v0, v6

    .line 62
    :goto_4
    sget-object v1, Lo/ui;->ˋ:Lo/ui;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_6
    invoke-static {p1}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lo/e6;->ͷ(Lo/z0;)Lo/O00;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Lo/d9;

    .line 76
    .line 77
    invoke-direct {v0, p0, p1}, Lo/d9;-><init>(Lo/h9;Lo/O00;)V

    .line 78
    .line 79
    .line 80
    :cond_7
    :goto_5
    iget-object v8, p0, Lo/h9;->_state:Ljava/lang/Object;

    .line 81
    .line 82
    instance-of v9, v8, Lo/x2;

    .line 83
    .line 84
    if-eqz v9, :cond_d

    .line 85
    .line 86
    move-object v9, v8

    .line 87
    check-cast v9, Lo/x2;

    .line 88
    .line 89
    iget-object v10, v9, Lo/x2;->ˋ:Ljava/lang/Object;

    .line 90
    .line 91
    if-eq v10, v3, :cond_a

    .line 92
    .line 93
    sget-object v10, Lo/h9;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 94
    .line 95
    new-instance v11, Lo/f9;

    .line 96
    .line 97
    iget-object v9, v9, Lo/x2;->ˋ:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-direct {v11, v9}, Lo/f9;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_8
    invoke-virtual {v10, p0, v8, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_9

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_9
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-eq v9, v8, :cond_8

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_a
    sget-object v9, Lo/h9;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 117
    .line 118
    :cond_b
    invoke-virtual {v9, p0, v8, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_c

    .line 123
    .line 124
    move v8, v5

    .line 125
    goto :goto_6

    .line 126
    :cond_c
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    if-eq v10, v8, :cond_b

    .line 131
    .line 132
    move v8, v6

    .line 133
    :goto_6
    if-eqz v8, :cond_7

    .line 134
    .line 135
    new-instance v0, Lo/c9;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    invoke-direct {v0, p0, v2, v5}, Lo/c9;-><init>(Lo/h9;Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    iget v2, p1, Lo/l2;->Ͳ:I

    .line 142
    .line 143
    invoke-virtual {p1, v1, v2, v0}, Lo/O00;->Ώ(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 144
    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_d
    instance-of v9, v8, Lo/f9;

    .line 148
    .line 149
    if-eqz v9, :cond_15

    .line 150
    .line 151
    move-object v9, v8

    .line 152
    check-cast v9, Lo/f9;

    .line 153
    .line 154
    iget-object v10, v9, Lo/f9;->owner:Ljava/lang/Object;

    .line 155
    .line 156
    if-eqz v10, :cond_e

    .line 157
    .line 158
    move v10, v5

    .line 159
    goto :goto_7

    .line 160
    :cond_e
    move v10, v6

    .line 161
    :goto_7
    if-eqz v10, :cond_14

    .line 162
    .line 163
    :cond_f
    invoke-virtual {v9}, Lo/q7;->ͼ()Lo/q7;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-virtual {v10, v0, v9}, Lo/q7;->ʹ(Lo/q7;Lo/n7;)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-eqz v10, :cond_f

    .line 172
    .line 173
    iget-object v9, p0, Lo/h9;->_state:Ljava/lang/Object;

    .line 174
    .line 175
    if-eq v9, v8, :cond_11

    .line 176
    .line 177
    sget-object v8, Lo/e9;->ʹ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 178
    .line 179
    invoke-virtual {v8, v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_10

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_10
    new-instance v0, Lo/d9;

    .line 187
    .line 188
    invoke-direct {v0, p0, p1}, Lo/d9;-><init>(Lo/h9;Lo/O00;)V

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_11
    :goto_8
    new-instance v2, Lo/xf;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Lo/xf;-><init>(Lo/q7;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v2}, Lo/O00;->Ή(Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    :goto_9
    invoke-virtual {p1}, Lo/O00;->ͽ()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 205
    .line 206
    if-ne p1, v0, :cond_12

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_12
    move-object p1, v1

    .line 210
    :goto_a
    if-ne p1, v0, :cond_13

    .line 211
    .line 212
    return-object p1

    .line 213
    :cond_13
    return-object v1

    .line 214
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_15
    instance-of v9, v8, Lo/jc;

    .line 225
    .line 226
    if-eqz v9, :cond_16

    .line 227
    .line 228
    check-cast v8, Lo/jc;

    .line 229
    .line 230
    invoke-virtual {v8, p0}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p1

    .line 267
    :cond_18
    instance-of v1, v0, Lo/jc;

    .line 268
    .line 269
    if-eqz v1, :cond_19

    .line 270
    .line 271
    check-cast v0, Lo/jc;

    .line 272
    .line 273
    invoke-virtual {v0, p0}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1
.end method

.method public final ˏ(Ljava/lang/Object;)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/h9;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lo/x2;

    .line 4
    .line 5
    const-string v2, " but expected "

    .line 6
    .line 7
    const-string v3, "Mutex is locked by "

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lo/x2;

    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    iget-object v1, v1, Lo/x2;->ˋ:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v2, Lo/a2;->ͽ:Lo/vh;

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    move v1, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v5

    .line 27
    :goto_1
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Mutex is not locked"

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    iget-object v6, v1, Lo/x2;->ˋ:Ljava/lang/Object;

    .line 43
    .line 44
    if-ne v6, p1, :cond_4

    .line 45
    .line 46
    move v6, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_4
    move v6, v5

    .line 49
    :goto_2
    if-eqz v6, :cond_7

    .line 50
    .line 51
    :goto_3
    sget-object v6, Lo/h9;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 52
    .line 53
    sget-object v7, Lo/a2;->Έ:Lo/x2;

    .line 54
    .line 55
    :cond_5
    invoke-virtual {v6, p0, v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_6
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eq v1, v0, :cond_5

    .line 67
    .line 68
    move v4, v5

    .line 69
    :goto_4
    if-eqz v4, :cond_0

    .line 70
    .line 71
    return-void

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v1, Lo/x2;->ˋ:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_8
    instance-of v1, v0, Lo/jc;

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    check-cast v0, Lo/jc;

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_9
    instance-of v1, v0, Lo/f9;

    .line 113
    .line 114
    if-eqz v1, :cond_13

    .line 115
    .line 116
    if-eqz p1, :cond_c

    .line 117
    .line 118
    move-object v1, v0

    .line 119
    check-cast v1, Lo/f9;

    .line 120
    .line 121
    iget-object v6, v1, Lo/f9;->owner:Ljava/lang/Object;

    .line 122
    .line 123
    if-ne v6, p1, :cond_a

    .line 124
    .line 125
    move v6, v4

    .line 126
    goto :goto_5

    .line 127
    :cond_a
    move v6, v5

    .line 128
    :goto_5
    if-eqz v6, :cond_b

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v1, Lo/f9;->owner:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_c
    :goto_6
    move-object v1, v0

    .line 162
    check-cast v1, Lo/f9;

    .line 163
    .line 164
    :goto_7
    invoke-virtual {v1}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lo/q7;

    .line 169
    .line 170
    if-ne v2, v1, :cond_d

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    goto :goto_8

    .line 174
    :cond_d
    invoke-virtual {v2}, Lo/q7;->Έ()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_12

    .line 179
    .line 180
    :goto_8
    if-nez v2, :cond_10

    .line 181
    .line 182
    new-instance v3, Lo/g9;

    .line 183
    .line 184
    invoke-direct {v3, v1}, Lo/g9;-><init>(Lo/f9;)V

    .line 185
    .line 186
    .line 187
    sget-object v6, Lo/h9;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 188
    .line 189
    :cond_e
    invoke-virtual {v6, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_f

    .line 194
    .line 195
    goto :goto_9

    .line 196
    :cond_f
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eq v1, v0, :cond_e

    .line 201
    .line 202
    move v4, v5

    .line 203
    :goto_9
    if-eqz v4, :cond_0

    .line 204
    .line 205
    invoke-virtual {v3, p0}, Lo/ϳ;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    .line 211
    return-void

    .line 212
    :cond_10
    check-cast v2, Lo/e9;

    .line 213
    .line 214
    invoke-virtual {v2}, Lo/e9;->Ύ()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    .line 220
    iget-object p1, v2, Lo/e9;->ͳ:Ljava/lang/Object;

    .line 221
    .line 222
    if-nez p1, :cond_11

    .line 223
    .line 224
    sget-object p1, Lo/a2;->ͼ:Lo/vh;

    .line 225
    .line 226
    :cond_11
    iput-object p1, v1, Lo/f9;->owner:Ljava/lang/Object;

    .line 227
    .line 228
    invoke-virtual {v2}, Lo/e9;->Ό()V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_12
    invoke-virtual {v2}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lo/yf;

    .line 237
    .line 238
    iget-object v2, v2, Lo/yf;->ˋ:Lo/q7;

    .line 239
    .line 240
    invoke-virtual {v2}, Lo/q7;->ͽ()V

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v2, "Illegal state "

    .line 249
    .line 250
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1
.end method
