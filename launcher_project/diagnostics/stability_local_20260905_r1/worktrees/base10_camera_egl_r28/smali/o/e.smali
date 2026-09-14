.class public final Lo/e;
.super Lo/th;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# instance fields
.field public Ͱ:I

.field public synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Lo/u3;

.field public final synthetic ͳ:Lo/g;


# direct methods
.method public constructor <init>(Lo/z0;Lo/g;Lo/u3;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lo/e;->Ͳ:Lo/u3;

    iput-object p2, p0, Lo/e;->ͳ:Lo/g;

    invoke-direct {p0, p1}, Lo/th;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lo/z0;)Lo/z0;
    .locals 3

    .line 1
    new-instance v0, Lo/e;

    iget-object v1, p0, Lo/e;->Ͳ:Lo/u3;

    iget-object v2, p0, Lo/e;->ͳ:Lo/g;

    invoke-direct {v0, p2, v2, v1}, Lo/e;-><init>(Lo/z0;Lo/g;Lo/u3;)V

    iput-object p1, v0, Lo/e;->ͱ:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo/s1;

    .line 2
    .line 3
    check-cast p2, Lo/z0;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lo/e;->create(Ljava/lang/Object;Lo/z0;)Lo/z0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lo/e;

    .line 10
    .line 11
    sget-object p2, Lo/ui;->ˋ:Lo/ui;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lo/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 2
    .line 3
    iget v1, p0, Lo/e;->Ͱ:I

    .line 4
    .line 5
    sget-object v2, Lo/ui;->ˋ:Lo/ui;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lo/e;->ͱ:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lo/s1;

    .line 31
    .line 32
    iget-object v1, p0, Lo/e;->ͳ:Lo/g;

    .line 33
    .line 34
    iget v4, v1, Lo/g;->ˏ:I

    .line 35
    .line 36
    const/4 v5, -0x3

    .line 37
    const/4 v6, -0x2

    .line 38
    if-ne v4, v5, :cond_2

    .line 39
    .line 40
    move v4, v6

    .line 41
    :cond_2
    new-instance v5, Lo/f;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-direct {v5, v1, v7}, Lo/f;-><init>(Lo/g;Lo/z0;)V

    .line 45
    .line 46
    .line 47
    iget v8, v1, Lo/g;->Ͱ:I

    .line 48
    .line 49
    if-eq v4, v6, :cond_a

    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    const/4 v9, 0x0

    .line 53
    if-eq v4, v6, :cond_7

    .line 54
    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    const v6, 0x7fffffff

    .line 58
    .line 59
    .line 60
    if-eq v4, v6, :cond_4

    .line 61
    .line 62
    if-ne v4, v3, :cond_3

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    if-ne v8, v6, :cond_3

    .line 66
    .line 67
    new-instance v4, Lo/v0;

    .line 68
    .line 69
    invoke-direct {v4, v7}, Lo/v0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    new-instance v6, Lo/ϰ;

    .line 74
    .line 75
    invoke-direct {v6, v4, v8, v7}, Lo/ϰ;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    move-object v4, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    new-instance v4, Lo/k7;

    .line 81
    .line 82
    invoke-direct {v4, v7, v9}, Lo/k7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    if-ne v8, v3, :cond_6

    .line 87
    .line 88
    new-instance v4, Lo/k7;

    .line 89
    .line 90
    invoke-direct {v4, v7, v3}, Lo/k7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    new-instance v4, Lo/ϰ;

    .line 95
    .line 96
    invoke-direct {v4, v3, v8, v7}, Lo/ϰ;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_7
    if-ne v8, v3, :cond_8

    .line 101
    .line 102
    move v9, v3

    .line 103
    :cond_8
    if-eqz v9, :cond_9

    .line 104
    .line 105
    new-instance v4, Lo/v0;

    .line 106
    .line 107
    invoke-direct {v4, v7}, Lo/v0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    const-string v0, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_a
    new-instance v4, Lo/ϰ;

    .line 124
    .line 125
    if-ne v8, v3, :cond_b

    .line 126
    .line 127
    sget-object v6, Lo/d;->ˋ:Lo/c;

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    sget v6, Lo/c;->ˏ:I

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_b
    move v6, v3

    .line 136
    :goto_0
    invoke-direct {v4, v6, v8, v7}, Lo/ϰ;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-interface {p1}, Lo/s1;->getCoroutineContext()Lo/k1;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v1, v1, Lo/g;->ˋ:Lo/k1;

    .line 144
    .line 145
    invoke-static {p1, v1, v3}, Lo/e6;->Ͷ(Lo/k1;Lo/k1;Z)Lo/k1;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget-object v1, Lo/m2;->ˋ:Lo/f2;

    .line 150
    .line 151
    if-eq p1, v1, :cond_c

    .line 152
    .line 153
    sget-object v6, Lo/z;->Ͱ:Lo/z;

    .line 154
    .line 155
    invoke-interface {p1, v6}, Lo/k1;->get(Lo/j1;)Lo/i1;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    if-nez v6, :cond_c

    .line 160
    .line 161
    invoke-interface {p1, v1}, Lo/k1;->plus(Lo/k1;)Lo/k1;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    :cond_c
    new-instance v1, Lo/ud;

    .line 166
    .line 167
    invoke-direct {v1, p1, v4}, Lo/ud;-><init>(Lo/k1;Lo/ͻ;)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x3

    .line 171
    invoke-virtual {v1, p1, v1, v5}, Lo/ͽ;->Σ(ILo/ͽ;Lo/u4;)V

    .line 172
    .line 173
    .line 174
    iput v3, p0, Lo/e;->Ͱ:I

    .line 175
    .line 176
    iget-object p1, p0, Lo/e;->Ͳ:Lo/u3;

    .line 177
    .line 178
    invoke-static {p1, v1, v3, p0}, Lo/e6;->ʹ(Lo/u3;Lo/ud;ZLo/z0;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-ne p1, v0, :cond_d

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_d
    move-object p1, v2

    .line 186
    :goto_2
    if-ne p1, v0, :cond_e

    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_e
    :goto_3
    return-object v2
.end method
