.class public final Lcom/byd/launcher/adb/ˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/HashMap;

.field public final ˏ:Lcom/byd/launcher/adb/AdbConnection;

.field public final Ͱ:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/adb/AdbConnection;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˋ:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/byd/launcher/adb/ˏ;->Ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    .line 20
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    const v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    move-object v0, p1

    .line 36
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lo/c8;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1, p0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lo/c8;

    .line 49
    .line 50
    invoke-direct {v0, v1, p0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lo/c8;

    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static ˋ(Lcom/byd/launcher/adb/ˏ;Lo/Π;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo/Ρ;->ˋ:[B

    .line 5
    .line 6
    iget v0, p1, Lo/Π;->ˋ:I

    .line 7
    .line 8
    iget v1, p1, Lo/Π;->ͳ:I

    .line 9
    .line 10
    not-int v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v0, p1, Lo/Π;->ͱ:I

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p1, Lo/Π;->ʹ:[B

    .line 21
    .line 22
    array-length v1, v0

    .line 23
    move v4, v2

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v4, v1, :cond_2

    .line 26
    .line 27
    aget-byte v6, v0, v4

    .line 28
    .line 29
    if-ltz v6, :cond_1

    .line 30
    .line 31
    add-int/2addr v5, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit16 v6, v6, 0x100

    .line 34
    .line 35
    add-int/2addr v6, v5

    .line 36
    move v5, v6

    .line 37
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p1, Lo/Π;->Ͳ:I

    .line 41
    .line 42
    if-eq v5, v0, :cond_3

    .line 43
    .line 44
    :goto_2
    move v0, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move v0, v3

    .line 47
    :goto_3
    if-nez v0, :cond_4

    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_4
    :try_start_0
    iget v0, p1, Lo/Π;->ˋ:I

    .line 52
    .line 53
    sparse-switch v0, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :sswitch_0
    iget-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 59
    .line 60
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 62
    .line 63
    iget p1, p1, Lo/Π;->Ͱ:I

    .line 64
    .line 65
    iput p1, v1, Lcom/byd/launcher/adb/AdbConnection;->maxData:I

    .line 66
    .line 67
    iput-boolean v3, v1, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    throw p1

    .line 78
    :sswitch_1
    iget v0, p1, Lo/Π;->ˏ:I

    .line 79
    .line 80
    if-ne v0, v3, :cond_b

    .line 81
    .line 82
    iget-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 83
    .line 84
    iget-boolean v1, v0, Lcom/byd/launcher/adb/AdbConnection;->sentSignature:Z

    .line 85
    .line 86
    const v4, 0x48545541

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    iget-object p1, v0, Lcom/byd/launcher/adb/AdbConnection;->crypto:Lcom/byd/launcher/adb/AdbCrypto;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/byd/launcher/adb/AdbCrypto;->getAdbPublicKeyPayload()[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v0, 0x3

    .line 98
    invoke-static {v4, p1, v0, v2}, Lo/Ρ;->ˋ(I[BII)[B

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->crypto:Lcom/byd/launcher/adb/AdbCrypto;

    .line 104
    .line 105
    iget-object p1, p1, Lo/Π;->ʹ:[B

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/byd/launcher/adb/AdbCrypto;->signAdbTokenPayload([B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 v0, 0x2

    .line 112
    invoke-static {v4, p1, v0, v2}, Lo/Ρ;->ˋ(I[BII)[B

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 117
    .line 118
    iput-boolean v3, v0, Lcom/byd/launcher/adb/AdbConnection;->sentSignature:Z

    .line 119
    .line 120
    :goto_4
    iget-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/byd/launcher/adb/AdbConnection;->outputStream:Ljava/io/OutputStream;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :sswitch_2
    iget-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 136
    .line 137
    iget-boolean v0, v0, Lcom/byd/launcher/adb/AdbConnection;->connected:Z

    .line 138
    .line 139
    if-nez v0, :cond_6

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/byd/launcher/adb/ˏ;->ˋ:Ljava/util/HashMap;

    .line 143
    .line 144
    iget v1, p1, Lo/Π;->Ͱ:I

    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/byd/launcher/adb/AdbStream;

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_7
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :try_start_3
    iget v1, p1, Lo/Π;->ˋ:I

    .line 161
    .line 162
    const v2, 0x59414b4f

    .line 163
    .line 164
    .line 165
    if-ne v1, v2, :cond_8

    .line 166
    .line 167
    iget p1, p1, Lo/Π;->ˏ:I

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Lcom/byd/launcher/adb/AdbStream;->updateRemoteId(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/byd/launcher/adb/AdbStream;->readyForWrite()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_8
    const v2, 0x45545257

    .line 180
    .line 181
    .line 182
    if-ne v1, v2, :cond_9

    .line 183
    .line 184
    iget-object p1, p1, Lo/Π;->ʹ:[B

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/byd/launcher/adb/AdbStream;->addPayload([B)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/byd/launcher/adb/AdbStream;->sendReady()V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    const v2, 0x45534c43

    .line 194
    .line 195
    .line 196
    if-ne v1, v2, :cond_a

    .line 197
    .line 198
    iget-object v1, p0, Lcom/byd/launcher/adb/ˏ;->ˋ:Ljava/util/HashMap;

    .line 199
    .line 200
    iget p1, p1, Lo/Π;->Ͱ:I

    .line 201
    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/byd/launcher/adb/AdbStream;->notifyClose()V

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_5
    monitor-exit v0

    .line 213
    goto :goto_6

    .line 214
    :catchall_1
    move-exception p1

    .line 215
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    :catch_0
    iget-object p0, p0, Lcom/byd/launcher/adb/ˏ;->ˏ:Lcom/byd/launcher/adb/AdbConnection;

    .line 218
    .line 219
    iput-boolean v3, p0, Lcom/byd/launcher/adb/AdbConnection;->stopFlag:Z

    .line 220
    .line 221
    :cond_b
    :goto_6
    return-void

    .line 222
    nop

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_2
        0x45545257 -> :sswitch_2
        0x48545541 -> :sswitch_1
        0x4e584e43 -> :sswitch_0
        0x59414b4f -> :sswitch_2
    .end sparse-switch
.end method
