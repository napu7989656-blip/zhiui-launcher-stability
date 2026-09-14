.class public Lo/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/l6;
.implements Lo/o;
.implements Lo/nc;


# static fields
.field public static final synthetic Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lo/s6;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lo/e6;->ͺ:Lo/y2;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/e6;->ͷ:Lo/y2;

    :goto_0
    iput-object p1, p0, Lo/s6;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static Θ(Lo/q7;)Lo/n;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lo/q7;->Ά()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/q7;->ͼ()Lo/q7;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/q7;->ͻ()Lo/q7;

    move-result-object p0

    invoke-virtual {p0}, Lo/q7;->Ά()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lo/n;

    if-eqz v0, :cond_1

    check-cast p0, Lo/n;

    return-object p0

    :cond_1
    instance-of v0, p0, Lo/ac;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Ν(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lo/q6;

    if-eqz v0, :cond_1

    check-cast p0, Lo/q6;

    invoke-virtual {p0}, Lo/q6;->ͱ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/q6;->Ͳ()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lo/s5;

    if-eqz v0, :cond_4

    check-cast p0, Lo/s5;

    invoke-interface {p0}, Lo/s5;->ˏ()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Active"

    goto :goto_0

    :cond_3
    const-string p0, "New"

    goto :goto_0

    :cond_4
    instance-of p0, p0, Lo/n0;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    goto :goto_0

    :cond_5
    const-string p0, "Completed"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final get(Lo/j1;)Lo/i1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->ͻ(Lo/i1;Lo/j1;)Lo/i1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()Lo/j1;
    .locals 1

    .line 1
    sget-object v0, Lo/z;->Ͳ:Lo/z;

    return-object v0
.end method

.method public final minusKey(Lo/j1;)Lo/k1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->Ί(Lo/i1;Lo/j1;)Lo/k1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final plus(Lo/k1;)Lo/k1;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lo/a2;->Ό(Lo/k1;Lo/k1;)Lo/k1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lo/s6;->Η()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x7b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lo/s6;->Ν(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x7d

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x40

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public ʹ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public ˋ(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lo/m6;

    .line 4
    .line 5
    invoke-virtual {p0}, Lo/s6;->ͼ()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1, p0}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lo/s6;->ͺ(Ljava/util/concurrent/CancellationException;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public ˏ()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lo/s5;

    if-eqz v1, :cond_0

    check-cast v0, Lo/s5;

    invoke-interface {v0}, Lo/s5;->ˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ͷ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/s6;->ʹ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ͷ(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    sget-object v0, Lo/e6;->ͱ:Lo/vh;

    .line 2
    .line 3
    invoke-virtual {p0}, Lo/s6;->Ύ()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lo/s5;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    instance-of v1, v0, Lo/q6;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lo/q6;

    .line 25
    .line 26
    invoke-virtual {v1}, Lo/q6;->Ͳ()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lo/n0;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lo/s6;->Έ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v1, v2, v4}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lo/s6;->Ξ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lo/e6;->ͳ:Lo/vh;

    .line 47
    .line 48
    if-eq v0, v1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    sget-object v0, Lo/e6;->ͱ:Lo/vh;

    .line 52
    .line 53
    :goto_1
    sget-object v1, Lo/e6;->Ͳ:Lo/vh;

    .line 54
    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    return v3

    .line 58
    :cond_3
    sget-object v1, Lo/e6;->ͱ:Lo/vh;

    .line 59
    .line 60
    if-ne v0, v1, :cond_12

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    move-object v1, v0

    .line 64
    :cond_4
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v5, v4, Lo/q6;

    .line 69
    .line 70
    if-eqz v5, :cond_8

    .line 71
    .line 72
    monitor-enter v4

    .line 73
    :try_start_0
    move-object v5, v4

    .line 74
    check-cast v5, Lo/q6;

    .line 75
    .line 76
    invoke-virtual {v5}, Lo/q6;->ʹ()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    sget-object p1, Lo/e6;->ʹ:Lo/vh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v4

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_5
    :try_start_1
    move-object v5, v4

    .line 88
    check-cast v5, Lo/q6;

    .line 89
    .line 90
    invoke-virtual {v5}, Lo/q6;->ͱ()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lo/s6;->Έ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_6
    move-object p1, v4

    .line 101
    check-cast p1, Lo/q6;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lo/q6;->ˋ(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    move-object p1, v4

    .line 107
    check-cast p1, Lo/q6;

    .line 108
    .line 109
    invoke-virtual {p1}, Lo/q6;->Ͱ()Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    xor-int/lit8 v1, v5, 0x1

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    move-object v0, p1

    .line 118
    :cond_7
    monitor-exit v4

    .line 119
    if-eqz v0, :cond_e

    .line 120
    .line 121
    check-cast v4, Lo/q6;

    .line 122
    .line 123
    iget-object p1, v4, Lo/q6;->Ͱ:Lo/ac;

    .line 124
    .line 125
    invoke-virtual {p0, p1, v0}, Lo/s6;->Ι(Lo/ac;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v4

    .line 131
    throw p1

    .line 132
    :cond_8
    instance-of v5, v4, Lo/s5;

    .line 133
    .line 134
    if-eqz v5, :cond_11

    .line 135
    .line 136
    if-nez v1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lo/s6;->Έ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_9
    move-object v5, v4

    .line 143
    check-cast v5, Lo/s5;

    .line 144
    .line 145
    invoke-interface {v5}, Lo/s5;->ˏ()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_f

    .line 150
    .line 151
    invoke-virtual {p0, v5}, Lo/s6;->Ώ(Lo/s5;)Lo/ac;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v6, :cond_a

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_a
    new-instance v7, Lo/q6;

    .line 159
    .line 160
    invoke-direct {v7, v6, v1}, Lo/q6;-><init>(Lo/ac;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_b
    sget-object v4, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 164
    .line 165
    invoke-virtual {v4, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_c

    .line 170
    .line 171
    move v4, v3

    .line 172
    goto :goto_2

    .line 173
    :cond_c
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-eq v4, v5, :cond_b

    .line 178
    .line 179
    move v4, v2

    .line 180
    :goto_2
    if-nez v4, :cond_d

    .line 181
    .line 182
    :goto_3
    move v4, v2

    .line 183
    goto :goto_4

    .line 184
    :cond_d
    invoke-virtual {p0, v6, v1}, Lo/s6;->Ι(Lo/ac;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    move v4, v3

    .line 188
    :goto_4
    if-eqz v4, :cond_4

    .line 189
    .line 190
    :cond_e
    :goto_5
    sget-object p1, Lo/e6;->ͱ:Lo/vh;

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_f
    new-instance v5, Lo/n0;

    .line 194
    .line 195
    invoke-direct {v5, v2, v1}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v4, v5}, Lo/s6;->Ξ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    sget-object v6, Lo/e6;->ͱ:Lo/vh;

    .line 203
    .line 204
    if-eq v5, v6, :cond_10

    .line 205
    .line 206
    sget-object v4, Lo/e6;->ͳ:Lo/vh;

    .line 207
    .line 208
    if-eq v5, v4, :cond_4

    .line 209
    .line 210
    move-object v0, v5

    .line 211
    goto :goto_7

    .line 212
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 213
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v1, "Cannot happen in "

    .line 217
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_11
    sget-object p1, Lo/e6;->ʹ:Lo/vh;

    .line 237
    .line 238
    :goto_6
    move-object v0, p1

    .line 239
    :cond_12
    :goto_7
    sget-object p1, Lo/e6;->ͱ:Lo/vh;

    .line 240
    .line 241
    if-ne v0, p1, :cond_13

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_13
    sget-object p1, Lo/e6;->Ͳ:Lo/vh;

    .line 245
    .line 246
    if-ne v0, p1, :cond_14

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_14
    sget-object p1, Lo/e6;->ʹ:Lo/vh;

    .line 250
    .line 251
    if-ne v0, p1, :cond_15

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_15
    invoke-virtual {p0, v0}, Lo/s6;->ʹ(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :goto_8
    move v2, v3

    .line 258
    :goto_9
    return v2
.end method

.method public ͺ(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/s6;->ͷ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ͻ(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo/s6;->Ε()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    iget-object v2, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lo/m;

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    sget-object v3, Lo/bc;->Ͱ:Lo/bc;

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v2, p1}, Lo/m;->Ͳ(Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :cond_3
    :goto_0
    return v1

    .line 33
    :cond_4
    :goto_1
    return v0
.end method

.method public ͼ()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public ͽ(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lo/s6;->ͷ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/s6;->Ό()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Ά(Lo/s5;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/m;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lo/n2;->dispose()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lo/bc;->Ͱ:Lo/bc;

    .line 11
    .line 12
    iput-object v0, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    instance-of v0, p2, Lo/n0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p2, Lo/n0;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object p2, v1

    .line 23
    :goto_0
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p2, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object p2, v1

    .line 29
    :goto_1
    instance-of v0, p1, Lo/o6;

    .line 30
    .line 31
    const-string v2, " for "

    .line 32
    .line 33
    const-string v3, "Exception in completion handler "

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :try_start_0
    move-object v0, p1

    .line 38
    check-cast v0, Lo/o6;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lo/o6;->Ύ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :catchall_0
    move-exception p2

    .line 45
    new-instance v0, Lo/b7;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v0, p1, p2}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lo/s6;->Γ(Lo/b7;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_3
    invoke-interface {p1}, Lo/s5;->ͳ()Lo/ac;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    invoke-virtual {p1}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lo/q7;

    .line 83
    .line 84
    :goto_2
    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_6

    .line 89
    .line 90
    instance-of v4, v0, Lo/o6;

    .line 91
    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    move-object v4, v0

    .line 95
    check-cast v4, Lo/o6;

    .line 96
    .line 97
    :try_start_1
    invoke-virtual {v4, p2}, Lo/o6;->Ύ(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception v5

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-static {v1, v5}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    new-instance v1, Lo/b7;

    .line 109
    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-direct {v1, v4, v5}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lo/q7;->ͻ()Lo/q7;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_2

    .line 136
    :cond_6
    if-eqz v1, :cond_7

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lo/s6;->Γ(Lo/b7;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_4
    return-void
.end method

.method public final Έ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    check-cast p1, Lo/nc;

    .line 9
    .line 10
    check-cast p1, Lo/s6;

    .line 11
    .line 12
    invoke-virtual {p1}, Lo/s6;->Α()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lo/q6;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lo/q6;

    .line 23
    .line 24
    invoke-virtual {v1}, Lo/q6;->Ͱ()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v1, v0, Lo/n0;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Lo/n0;

    .line 35
    .line 36
    iget-object v1, v1, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    instance-of v1, v0, Lo/s5;

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 50
    .line 51
    :cond_3
    if-nez v2, :cond_4

    .line 52
    .line 53
    new-instance v2, Lo/m6;

    .line 54
    .line 55
    invoke-static {v0}, Lo/s6;->Ν(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v3, "Parent job is "

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v2, v0, v1, p1}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    move-object p1, v2

    .line 69
    :goto_1
    return-object p1

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Cannot be cancelling child in this state: "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final Ή(Lo/q6;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lo/n0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Lo/n0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v0, v1

    .line 17
    :goto_1
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lo/q6;->ͱ()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lo/q6;->Ͷ(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lo/q6;->ͱ()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_6

    .line 38
    .line 39
    new-instance v3, Lo/m6;

    .line 40
    .line 41
    invoke-virtual {p0}, Lo/s6;->ͼ()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-direct {v3, v6, v1, p0}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 46
    .line 47
    .line 48
    move-object v1, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    move-object v7, v6

    .line 65
    check-cast v7, Ljava/lang/Throwable;

    .line 66
    .line 67
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    .line 68
    .line 69
    xor-int/2addr v7, v4

    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    move-object v1, v6

    .line 73
    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Throwable;

    .line 83
    .line 84
    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-gt v3, v4, :cond_7

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    new-instance v6, Ljava/util/IdentityHashMap;

    .line 98
    .line 99
    invoke-direct {v6, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_9

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ljava/lang/Throwable;

    .line 121
    .line 122
    if-eq v6, v1, :cond_8

    .line 123
    .line 124
    if-eq v6, v1, :cond_8

    .line 125
    .line 126
    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    .line 127
    .line 128
    if-nez v7, :cond_8

    .line 129
    .line 130
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_8

    .line 135
    .line 136
    invoke-static {v1, v6}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    :goto_4
    monitor-exit p1

    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_a
    if-ne v1, v0, :cond_b

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_b
    new-instance p2, Lo/n0;

    .line 148
    .line 149
    invoke-direct {p2, v5, v1}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_5
    if-eqz v1, :cond_f

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Lo/s6;->ͻ(Ljava/lang/Throwable;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_d

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Lo/s6;->Β(Ljava/lang/Throwable;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_c

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_c
    move v0, v5

    .line 168
    goto :goto_7

    .line 169
    :cond_d
    :goto_6
    move v0, v4

    .line 170
    :goto_7
    if-eqz v0, :cond_f

    .line 171
    .line 172
    if-eqz p2, :cond_e

    .line 173
    .line 174
    move-object v0, p2

    .line 175
    check-cast v0, Lo/n0;

    .line 176
    .line 177
    sget-object v1, Lo/n0;->ˏ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 178
    .line 179
    invoke-virtual {v1, v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 184
    .line 185
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_f
    :goto_8
    invoke-virtual {p0, p2}, Lo/s6;->Κ(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 195
    .line 196
    instance-of v1, p2, Lo/s5;

    .line 197
    .line 198
    if-eqz v1, :cond_10

    .line 199
    .line 200
    new-instance v1, Lo/t5;

    .line 201
    .line 202
    move-object v2, p2

    .line 203
    check-cast v2, Lo/s5;

    .line 204
    .line 205
    invoke-direct {v1, v2}, Lo/t5;-><init>(Lo/s5;)V

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_10
    move-object v1, p2

    .line 210
    :cond_11
    :goto_9
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_12

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eq v2, p1, :cond_11

    .line 222
    .line 223
    :goto_a
    invoke-virtual {p0, p1, p2}, Lo/s6;->Ά(Lo/s5;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    return-object p2

    .line 227
    :catchall_0
    move-exception p2

    .line 228
    monitor-exit p1

    .line 229
    throw p2
.end method

.method public final Ί()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lo/q6;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "Job is still new or active: "

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast v0, Lo/q6;

    .line 13
    .line 14
    invoke-virtual {v0}, Lo/q6;->Ͱ()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, " is cancelling"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 40
    .line 41
    :cond_0
    if-nez v2, :cond_6

    .line 42
    .line 43
    new-instance v2, Lo/m6;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lo/s6;->ͼ()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_3
    instance-of v1, v0, Lo/s5;

    .line 78
    .line 79
    if-nez v1, :cond_7

    .line 80
    .line 81
    instance-of v1, v0, Lo/n0;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    check-cast v0, Lo/n0;

    .line 86
    .line 87
    iget-object v0, v0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 88
    .line 89
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 95
    .line 96
    :cond_4
    if-nez v2, :cond_6

    .line 97
    .line 98
    new-instance v1, Lo/m6;

    .line 99
    .line 100
    invoke-virtual {p0}, Lo/s6;->ͼ()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v2, v0, p0}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 105
    .line 106
    .line 107
    move-object v2, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    new-instance v0, Lo/m6;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v3, " has completed normally"

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1, v2, p0}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 126
    .line 127
    .line 128
    move-object v2, v0

    .line 129
    :cond_6
    :goto_0
    return-object v2

    .line 130
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public Ό()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public Ύ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final Ώ(Lo/s5;)Lo/ac;
    .locals 3

    .line 1
    invoke-interface {p1}, Lo/s5;->ͳ()Lo/ac;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lo/y2;

    if-eqz v0, :cond_0

    new-instance v0, Lo/ac;

    invoke-direct {v0}, Lo/ac;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lo/o6;

    if-eqz v0, :cond_1

    check-cast p1, Lo/o6;

    invoke-virtual {p0, p1}, Lo/s6;->Μ(Lo/o6;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State should have list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final ΐ()Lo/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/m;

    return-object v0
.end method

.method public final Α()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lo/s6;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lo/jc;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lo/jc;

    invoke-virtual {v0, p0}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public Β(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public Γ(Lo/b7;)V
    .locals 0

    .line 1
    throw p1
.end method

.method public final Δ(Lo/l6;)V
    .locals 7

    .line 1
    sget-object v0, Lo/bc;->Ͱ:Lo/bc;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-object v0, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast p1, Lo/s6;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1}, Lo/s6;->Α()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Lo/y2;

    .line 15
    .line 16
    sget-object v3, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lo/y2;

    .line 24
    .line 25
    iget-boolean v2, v2, Lo/y2;->Ͱ:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_1
    sget-object v2, Lo/e6;->ͺ:Lo/y2;

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v3, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    move v5, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-eq v6, v1, :cond_2

    .line 45
    .line 46
    :goto_1
    if-nez v5, :cond_7

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    instance-of v2, v1, Lo/r5;

    .line 50
    .line 51
    if-eqz v2, :cond_8

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lo/r5;

    .line 55
    .line 56
    iget-object v2, v2, Lo/r5;->Ͱ:Lo/ac;

    .line 57
    .line 58
    :cond_5
    invoke-virtual {v3, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_6

    .line 63
    .line 64
    move v5, v4

    .line 65
    goto :goto_2

    .line 66
    :cond_6
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-eq v6, v1, :cond_5

    .line 71
    .line 72
    :goto_2
    if-nez v5, :cond_7

    .line 73
    .line 74
    :goto_3
    const/4 v5, -0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_7
    invoke-virtual {p1}, Lo/s6;->Λ()V

    .line 77
    .line 78
    .line 79
    move v5, v4

    .line 80
    :cond_8
    :goto_4
    if-eqz v5, :cond_9

    .line 81
    .line 82
    if-eq v5, v4, :cond_9

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_9
    new-instance v1, Lo/n;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lo/n;-><init>(Lo/s6;)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    invoke-static {p1, v4, v1, v2}, Lo/e6;->ͻ(Lo/l6;ZLo/o6;I)Lo/n2;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lo/m;

    .line 96
    .line 97
    iput-object p1, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    instance-of v1, v1, Lo/s5;

    .line 104
    .line 105
    xor-int/2addr v1, v4

    .line 106
    if-eqz v1, :cond_a

    .line 107
    .line 108
    invoke-interface {p1}, Lo/n2;->dispose()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lo/s6;->_parentHandle:Ljava/lang/Object;

    .line 112
    .line 113
    :cond_a
    return-void
.end method

.method public Ε()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final Ζ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lo/s6;->Ξ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lo/e6;->ͱ:Lo/vh;

    .line 10
    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Job "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " is already complete or completing, but is being completed with "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    instance-of v2, p1, Lo/n0;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    check-cast p1, Lo/n0;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p1, v3

    .line 46
    :goto_0
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v3, p1, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 49
    .line 50
    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_3
    sget-object v1, Lo/e6;->ͳ:Lo/vh;

    .line 55
    .line 56
    if-eq v0, v1, :cond_0

    .line 57
    .line 58
    return-object v0
.end method

.method public Η()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final Ι(Lo/ac;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lo/q7;->ͺ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/q7;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lo/n6;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lo/o6;

    :try_start_0
    invoke-virtual {v2, p2}, Lo/o6;->Ύ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lo/b7;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lo/q7;->ͻ()Lo/q7;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lo/s6;->Γ(Lo/b7;)V

    :cond_3
    invoke-virtual {p0, p2}, Lo/s6;->ͻ(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public Κ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Λ()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Μ(Lo/o6;)V
    .locals 3

    .line 1
    new-instance v0, Lo/ac;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/ac;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lo/q7;->ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lo/q7;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eq v2, p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eq v2, p1, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lo/q7;->ͷ(Lo/q7;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Lo/q7;->ͻ()Lo/q7;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_3
    sget-object v0, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eq v0, p1, :cond_3

    .line 64
    .line 65
    :goto_2
    return-void
.end method

.method public final Ξ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lo/s5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lo/e6;->ͱ:Lo/vh;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Lo/y2;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Lo/o6;

    .line 15
    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Lo/n;

    .line 19
    .line 20
    if-nez v0, :cond_7

    .line 21
    .line 22
    instance-of v0, p2, Lo/n0;

    .line 23
    .line 24
    if-nez v0, :cond_7

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Lo/s5;

    .line 28
    .line 29
    instance-of p1, p2, Lo/s5;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    new-instance p1, Lo/t5;

    .line 34
    .line 35
    move-object v3, p2

    .line 36
    check-cast v3, Lo/s5;

    .line 37
    .line 38
    invoke-direct {p1, v3}, Lo/t5;-><init>(Lo/s5;)V

    .line 39
    .line 40
    .line 41
    move-object v3, p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v3, p2

    .line 44
    :cond_3
    :goto_0
    sget-object p1, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 45
    .line 46
    invoke-virtual {p1, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    move p1, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eq p1, v0, :cond_3

    .line 59
    .line 60
    move p1, v2

    .line 61
    :goto_1
    if-nez p1, :cond_5

    .line 62
    .line 63
    move v1, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-virtual {p0, p2}, Lo/s6;->Κ(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0, p2}, Lo/s6;->Ά(Lo/s5;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    if-eqz v1, :cond_6

    .line 72
    .line 73
    return-object p2

    .line 74
    :cond_6
    sget-object p1, Lo/e6;->ͳ:Lo/vh;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_7
    check-cast p1, Lo/s5;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lo/s6;->Ώ(Lo/s5;)Lo/ac;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    sget-object p1, Lo/e6;->ͳ:Lo/vh;

    .line 86
    .line 87
    goto/16 :goto_a

    .line 88
    .line 89
    :cond_8
    instance-of v3, p1, Lo/q6;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz v3, :cond_9

    .line 93
    .line 94
    move-object v3, p1

    .line 95
    check-cast v3, Lo/q6;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_9
    move-object v3, v4

    .line 99
    :goto_3
    if-nez v3, :cond_a

    .line 100
    .line 101
    new-instance v3, Lo/q6;

    .line 102
    .line 103
    invoke-direct {v3, v0, v4}, Lo/q6;-><init>(Lo/ac;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_a
    monitor-enter v3

    .line 107
    :try_start_0
    invoke-virtual {v3}, Lo/q6;->Ͳ()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_b

    .line 112
    .line 113
    sget-object p1, Lo/e6;->ͱ:Lo/vh;

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_b
    invoke-virtual {v3}, Lo/q6;->ͷ()V

    .line 117
    .line 118
    .line 119
    if-eq v3, p1, :cond_e

    .line 120
    .line 121
    sget-object v5, Lo/s6;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 122
    .line 123
    :cond_c
    invoke-virtual {v5, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_d

    .line 128
    .line 129
    move v2, v1

    .line 130
    goto :goto_4

    .line 131
    :cond_d
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eq v6, p1, :cond_c

    .line 136
    .line 137
    :goto_4
    if-nez v2, :cond_e

    .line 138
    .line 139
    sget-object p1, Lo/e6;->ͳ:Lo/vh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    :goto_5
    monitor-exit v3

    .line 142
    goto :goto_a

    .line 143
    :cond_e
    :try_start_1
    invoke-virtual {v3}, Lo/q6;->ͱ()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    instance-of v5, p2, Lo/n0;

    .line 148
    .line 149
    if-eqz v5, :cond_f

    .line 150
    .line 151
    move-object v5, p2

    .line 152
    check-cast v5, Lo/n0;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_f
    move-object v5, v4

    .line 156
    :goto_6
    if-eqz v5, :cond_10

    .line 157
    .line 158
    iget-object v5, v5, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 159
    .line 160
    invoke-virtual {v3, v5}, Lo/q6;->ˋ(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_10
    invoke-virtual {v3}, Lo/q6;->Ͱ()Ljava/lang/Throwable;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    xor-int/2addr v1, v2

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    if-eqz v1, :cond_11

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_11
    move-object v5, v4

    .line 180
    :goto_7
    monitor-exit v3

    .line 181
    if-eqz v5, :cond_12

    .line 182
    .line 183
    invoke-virtual {p0, v0, v5}, Lo/s6;->Ι(Lo/ac;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    :cond_12
    instance-of v0, p1, Lo/n;

    .line 187
    .line 188
    if-eqz v0, :cond_13

    .line 189
    .line 190
    move-object v0, p1

    .line 191
    check-cast v0, Lo/n;

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_13
    move-object v0, v4

    .line 195
    :goto_8
    if-nez v0, :cond_14

    .line 196
    .line 197
    invoke-interface {p1}, Lo/s5;->ͳ()Lo/ac;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_15

    .line 202
    .line 203
    invoke-static {p1}, Lo/s6;->Θ(Lo/q7;)Lo/n;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    goto :goto_9

    .line 208
    :cond_14
    move-object v4, v0

    .line 209
    :cond_15
    :goto_9
    if-eqz v4, :cond_16

    .line 210
    .line 211
    invoke-virtual {p0, v3, v4, p2}, Lo/s6;->Ο(Lo/q6;Lo/n;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_16

    .line 216
    .line 217
    sget-object p1, Lo/e6;->Ͳ:Lo/vh;

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_16
    invoke-virtual {p0, v3, p2}, Lo/s6;->Ή(Lo/q6;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_a
    return-object p1

    .line 225
    :catchall_0
    move-exception p1

    .line 226
    monitor-exit v3

    .line 227
    throw p1
.end method

.method public final Ο(Lo/q6;Lo/n;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    :cond_0
    new-instance v0, Lo/p6;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/p6;-><init>(Lo/s6;Lo/q6;Lo/n;Ljava/lang/Object;)V

    iget-object v1, p2, Lo/n;->ʹ:Lo/o;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lo/e6;->ͻ(Lo/l6;ZLo/o6;I)Lo/n2;

    move-result-object v0

    sget-object v1, Lo/bc;->Ͱ:Lo/bc;

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Lo/s6;->Θ(Lo/q7;)Lo/n;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method
