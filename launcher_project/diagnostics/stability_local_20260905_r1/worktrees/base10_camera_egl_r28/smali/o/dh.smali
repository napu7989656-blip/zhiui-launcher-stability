.class public final synthetic Lo/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:F

.field public final synthetic Ͱ:Lo/gh;

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Ljava/lang/String;

.field public final synthetic ͳ:I

.field public final synthetic Ͷ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lo/gh;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/dh;->Ͱ:Lo/gh;

    iput p2, p0, Lo/dh;->ͱ:I

    iput-object p3, p0, Lo/dh;->Ͳ:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lo/dh;->ͳ:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lo/dh;->ʹ:F

    iput-object p4, p0, Lo/dh;->Ͷ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lo/dh;->Ͳ:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lo/dh;->ͳ:I

    .line 4
    .line 5
    iget v2, p0, Lo/dh;->ʹ:F

    .line 6
    .line 7
    iget-object v3, p0, Lo/dh;->Ͷ:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "SherpaOnnxTts"

    .line 10
    .line 11
    iget-object v5, p0, Lo/dh;->Ͱ:Lo/gh;

    .line 12
    .line 13
    iget-object v6, v5, Lo/gh;->Ͷ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const-string v7, "Playing audio, samples="

    .line 16
    .line 17
    const-string v8, "Generating speech: "

    .line 18
    .line 19
    const-string v9, "TTS speakAsync error: "

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 22
    .line 23
    .line 24
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget v11, p0, Lo/dh;->ͱ:I

    .line 26
    .line 27
    if-eq v11, v10, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    :try_start_1
    iget-object v10, v5, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 32
    .line 33
    if-nez v10, :cond_1

    .line 34
    .line 35
    invoke-virtual {v5}, Lo/gh;->ͱ()Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    if-nez v10, :cond_1

    .line 40
    .line 41
    const-string v0, "TTS init failed in background"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eq v11, v10, :cond_2

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-static {v4, v8}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v8, v5, Lo/gh;->ˋ:Lcom/k2fsa/sherpa/onnx/OfflineTts;

    .line 68
    .line 69
    invoke-virtual {v8, v1, v0, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ(ILjava/lang/String;F)Lcom/k2fsa/sherpa/onnx/GeneratedAudio;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget v1, v0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->ˏ:I

    .line 74
    .line 75
    iget-object v0, v0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->ˋ:[F

    .line 76
    .line 77
    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v11, v2, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    array-length v2, v0

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    const-string v0, "TTS generated empty audio"

    .line 88
    .line 89
    :goto_0
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget-object v2, v5, Lo/gh;->ͷ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    new-instance v8, Lo/fh;

    .line 96
    .line 97
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, [F

    .line 102
    .line 103
    invoke-direct {v8, v10, v1}, Lo/fh;-><init>([FI)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    new-instance v2, Lo/fh;

    .line 110
    .line 111
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    check-cast v8, [F

    .line 116
    .line 117
    invoke-direct {v2, v8, v1}, Lo/fh;-><init>([FI)V

    .line 118
    .line 119
    .line 120
    invoke-static {v3, v2}, Lo/gh;->Ͷ(Ljava/lang/String;Lo/fh;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Lo/gh;->ˋ(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    array-length v3, v0

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, ", stream="

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v3, v5, Lo/gh;->ͱ:I

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, ", vol="

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v3, v5, Lo/gh;->Ͳ:F

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v4, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v0, v1, v11}, Lo/gh;->ʹ([FII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v4, v0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 193
    .line 194
    .line 195
    throw v0
.end method
