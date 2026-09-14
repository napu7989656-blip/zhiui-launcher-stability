.class public abstract Lo/Ώ;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final remove(I)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lo/ϱ;

    .line 3
    .line 4
    iget v1, v0, Lo/ϱ;->Ͳ:I

    .line 5
    .line 6
    if-ltz p1, :cond_7

    .line 7
    .line 8
    if-ge p1, v1, :cond_7

    .line 9
    .line 10
    invoke-virtual {v0}, Lo/Ώ;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    const-string v2, "ArrayDeque is empty."

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lo/ϱ;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget p1, v0, Lo/ϱ;->Ͱ:I

    .line 28
    .line 29
    invoke-virtual {v0}, Lo/Ώ;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    add-int/2addr v1, p1

    .line 36
    invoke-virtual {v0, v1}, Lo/ϱ;->Ͳ(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v1, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v2, v1, p1

    .line 43
    .line 44
    aput-object v3, v1, p1

    .line 45
    .line 46
    iget p1, v0, Lo/ϱ;->Ͳ:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    iput p1, v0, Lo/ϱ;->Ͳ:I

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    if-nez p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lo/ϱ;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    iget-object p1, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 69
    .line 70
    iget v1, v0, Lo/ϱ;->Ͱ:I

    .line 71
    .line 72
    aget-object v2, p1, v1

    .line 73
    .line 74
    aput-object v3, p1, v1

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lo/ϱ;->ͱ(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v0, Lo/ϱ;->Ͱ:I

    .line 81
    .line 82
    iget p1, v0, Lo/ϱ;->Ͳ:I

    .line 83
    .line 84
    add-int/lit8 p1, p1, -0x1

    .line 85
    .line 86
    iput p1, v0, Lo/ϱ;->Ͳ:I

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 91
    .line 92
    invoke-direct {p1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_3
    iget v1, v0, Lo/ϱ;->Ͱ:I

    .line 97
    .line 98
    add-int/2addr v1, p1

    .line 99
    invoke-virtual {v0, v1}, Lo/ϱ;->Ͳ(I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-object v2, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 104
    .line 105
    aget-object v4, v2, v1

    .line 106
    .line 107
    iget v5, v0, Lo/ϱ;->Ͳ:I

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    shr-int/2addr v5, v6

    .line 111
    const/4 v7, 0x0

    .line 112
    if-ge p1, v5, :cond_5

    .line 113
    .line 114
    iget p1, v0, Lo/ϱ;->Ͱ:I

    .line 115
    .line 116
    if-lt v1, p1, :cond_4

    .line 117
    .line 118
    add-int/lit8 v5, p1, 0x1

    .line 119
    .line 120
    invoke-static {v2, v2, v5, p1, v1}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-static {v2, v2, v6, v7, v1}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 128
    .line 129
    array-length v1, p1

    .line 130
    sub-int/2addr v1, v6

    .line 131
    aget-object v1, p1, v1

    .line 132
    .line 133
    aput-object v1, p1, v7

    .line 134
    .line 135
    iget v1, v0, Lo/ϱ;->Ͱ:I

    .line 136
    .line 137
    add-int/lit8 v2, v1, 0x1

    .line 138
    .line 139
    array-length v5, p1

    .line 140
    sub-int/2addr v5, v6

    .line 141
    invoke-static {p1, p1, v2, v1, v5}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 142
    .line 143
    .line 144
    :goto_0
    iget-object p1, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 145
    .line 146
    iget v1, v0, Lo/ϱ;->Ͱ:I

    .line 147
    .line 148
    aput-object v3, p1, v1

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lo/ϱ;->ͱ(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, v0, Lo/ϱ;->Ͱ:I

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    iget p1, v0, Lo/ϱ;->Ͱ:I

    .line 158
    .line 159
    invoke-virtual {v0}, Lo/Ώ;->size()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 164
    .line 165
    add-int/2addr v2, p1

    .line 166
    invoke-virtual {v0, v2}, Lo/ϱ;->Ͳ(I)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget-object v2, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 171
    .line 172
    add-int/lit8 v5, v1, 0x1

    .line 173
    .line 174
    if-gt v1, p1, :cond_6

    .line 175
    .line 176
    add-int/lit8 v7, p1, 0x1

    .line 177
    .line 178
    invoke-static {v2, v2, v1, v5, v7}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_6
    array-length v8, v2

    .line 183
    invoke-static {v2, v2, v1, v5, v8}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 187
    .line 188
    array-length v2, v1

    .line 189
    sub-int/2addr v2, v6

    .line 190
    aget-object v5, v1, v7

    .line 191
    .line 192
    aput-object v5, v1, v2

    .line 193
    .line 194
    add-int/lit8 v2, p1, 0x1

    .line 195
    .line 196
    invoke-static {v1, v1, v7, v6, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 197
    .line 198
    .line 199
    :goto_1
    iget-object v1, v0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 200
    .line 201
    aput-object v3, v1, p1

    .line 202
    .line 203
    :goto_2
    iget p1, v0, Lo/ϱ;->Ͳ:I

    .line 204
    .line 205
    sub-int/2addr p1, v6

    .line 206
    iput p1, v0, Lo/ϱ;->Ͳ:I

    .line 207
    .line 208
    move-object v2, v4

    .line 209
    :goto_3
    return-object v2

    .line 210
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v3, "index: "

    .line 215
    .line 216
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p1, ", size: "

    .line 223
    .line 224
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v0
.end method

.method public final size()I
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lo/ϱ;

    .line 3
    .line 4
    iget v0, v0, Lo/ϱ;->Ͳ:I

    .line 5
    .line 6
    return v0
.end method
