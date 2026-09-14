.class public abstract Lo/rh;
.super Lo/qh;
.source "SourceFile"


# direct methods
.method public static final Γ(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Ljava/lang/String;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Lo/z5;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-gez p2, :cond_2

    .line 29
    .line 30
    move p2, v2

    .line 31
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-le v0, v3, :cond_3

    .line 36
    .line 37
    move v0, v3

    .line 38
    :cond_3
    invoke-direct {v1, p2, v0}, Lo/z5;-><init>(II)V

    .line 39
    .line 40
    .line 41
    instance-of v0, p0, Ljava/lang/String;

    .line 42
    .line 43
    iget v3, v1, Lo/x5;->Ͳ:I

    .line 44
    .line 45
    iget v1, v1, Lo/x5;->ͱ:I

    .line 46
    .line 47
    if-eqz v0, :cond_8

    .line 48
    .line 49
    if-lez v3, :cond_4

    .line 50
    .line 51
    if-le p2, v1, :cond_5

    .line 52
    .line 53
    :cond_4
    if-gez v3, :cond_14

    .line 54
    .line 55
    if-gt v1, p2, :cond_14

    .line 56
    .line 57
    :cond_5
    :goto_1
    move-object v7, p0

    .line 58
    check-cast v7, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-nez p3, :cond_6

    .line 65
    .line 66
    invoke-virtual {p1, v2, v7, p2, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_2

    .line 71
    :cond_6
    const/4 v6, 0x0

    .line 72
    move-object v4, p1

    .line 73
    move v5, p3

    .line 74
    move v8, p2

    .line 75
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    :goto_2
    if-eqz v0, :cond_7

    .line 80
    .line 81
    goto :goto_8

    .line 82
    :cond_7
    if-eq p2, v1, :cond_14

    .line 83
    .line 84
    add-int/2addr p2, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_8
    if-lez v3, :cond_9

    .line 87
    .line 88
    if-le p2, v1, :cond_a

    .line 89
    .line 90
    :cond_9
    if-gez v3, :cond_14

    .line 91
    .line 92
    if-gt v1, p2, :cond_14

    .line 93
    .line 94
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ltz p2, :cond_11

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    sub-int/2addr v4, v0

    .line 105
    if-ltz v4, :cond_11

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    sub-int/2addr v4, v0

    .line 112
    if-le p2, v4, :cond_b

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_b
    move v4, v2

    .line 116
    :goto_4
    const/4 v5, 0x1

    .line 117
    if-ge v4, v0, :cond_12

    .line 118
    .line 119
    add-int v6, v2, v4

    .line 120
    .line 121
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    add-int v7, p2, v4

    .line 126
    .line 127
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-ne v6, v7, :cond_c

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_c
    if-nez p3, :cond_d

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_d
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eq v6, v7, :cond_f

    .line 146
    .line 147
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-ne v6, v7, :cond_e

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_e
    :goto_5
    move v5, v2

    .line 159
    :cond_f
    :goto_6
    if-nez v5, :cond_10

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_11
    :goto_7
    move v5, v2

    .line 166
    :cond_12
    if-eqz v5, :cond_13

    .line 167
    .line 168
    :goto_8
    move p0, p2

    .line 169
    goto :goto_9

    .line 170
    :cond_13
    if-eq p2, v1, :cond_14

    .line 171
    .line 172
    add-int/2addr p2, v3

    .line 173
    goto :goto_3

    .line 174
    :cond_14
    const/4 p0, -0x1

    .line 175
    :goto_9
    return p0
.end method

.method public static Δ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "missingDelimiterValue"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    add-int/2addr v0, v1

    .line 17
    const/16 v2, 0x2e

    .line 18
    .line 19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 37
    .line 38
    invoke-static {p0, v0}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object p0
.end method
