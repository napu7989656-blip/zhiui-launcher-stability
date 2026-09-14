.class public abstract Lo/ͻ;
.super Lo/Β;
.source "SourceFile"

# interfaces
.implements Lo/d;


# virtual methods
.method public final ˋ(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/ͻ;->Ύ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, " was cancelled"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lo/Β;->ͱ(Ljava/lang/Throwable;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lo/ͻ;->Ώ(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final Ͳ(Lo/z0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lo/ͺ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lo/ͺ;

    .line 7
    .line 8
    iget v1, v0, Lo/ͺ;->Ͳ:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lo/ͺ;->Ͳ:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lo/ͺ;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lo/ͺ;-><init>(Lo/ͻ;Lo/z0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lo/ͺ;->Ͱ:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lo/t1;->Ͱ:Lo/t1;

    .line 28
    .line 29
    iget v2, v0, Lo/ͺ;->Ͳ:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lo/ͻ;->Α()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v2, Lo/a2;->ͱ:Lo/vh;

    .line 57
    .line 58
    if-eq p1, v2, :cond_4

    .line 59
    .line 60
    instance-of v0, p1, Lo/v;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    check-cast p1, Lo/v;

    .line 65
    .line 66
    iget-object p1, p1, Lo/v;->ͳ:Ljava/lang/Throwable;

    .line 67
    .line 68
    new-instance v0, Lo/h;

    .line 69
    .line 70
    invoke-direct {v0, p1}, Lo/h;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    move-object p1, v0

    .line 74
    :cond_3
    return-object p1

    .line 75
    :cond_4
    iput v3, v0, Lo/ͺ;->Ͳ:I

    .line 76
    .line 77
    invoke-static {v0}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lo/e6;->ͷ(Lo/z0;)Lo/O00;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    new-instance v0, Lo/Ͱ;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lo/Ͱ;-><init>(Lo/O00;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    new-instance v4, Lo/Ͳ;

    .line 96
    .line 97
    invoke-direct {v4, p1, v0}, Lo/Ͳ;-><init>(Lo/O00;Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    move-object v0, v4

    .line 101
    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lo/ͻ;->Ή(Lo/Ͱ;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    new-instance v2, Lo/ʹ;

    .line 108
    .line 109
    invoke-direct {v2, p0, v0}, Lo/ʹ;-><init>(Lo/ͻ;Lo/Ͱ;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lo/O00;->Ή(Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {p0}, Lo/ͻ;->Α()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    instance-of v5, v4, Lo/v;

    .line 121
    .line 122
    if-eqz v5, :cond_8

    .line 123
    .line 124
    check-cast v4, Lo/v;

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Lo/Ͱ;->Ύ(Lo/v;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    if-eq v4, v2, :cond_6

    .line 131
    .line 132
    iget v2, v0, Lo/Ͱ;->ʹ:I

    .line 133
    .line 134
    if-ne v2, v3, :cond_9

    .line 135
    .line 136
    new-instance v2, Lo/j;

    .line 137
    .line 138
    invoke-direct {v2, v4}, Lo/j;-><init>(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_9
    move-object v2, v4

    .line 143
    :goto_2
    invoke-virtual {v0, v4}, Lo/Ͱ;->Ό(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget v3, p1, Lo/l2;->Ͳ:I

    .line 148
    .line 149
    invoke-virtual {p1, v2, v3, v0}, Lo/O00;->Ώ(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-virtual {p1}, Lo/O00;->ͽ()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 157
    .line 158
    if-ne p1, v1, :cond_a

    .line 159
    .line 160
    return-object v1

    .line 161
    :cond_a
    :goto_4
    check-cast p1, Lo/j;

    .line 162
    .line 163
    iget-object p1, p1, Lo/j;->ˋ:Ljava/lang/Object;

    .line 164
    .line 165
    return-object p1
.end method

.method public final Ά()Lo/rf;
    .locals 2

    .line 1
    invoke-super {p0}, Lo/Β;->Ά()Lo/rf;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/v;

    :cond_0
    return-object v0
.end method

.method public Ή(Lo/Ͱ;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo/ͻ;->Ί()Z

    move-result v0

    iget-object v1, p0, Lo/Β;->ͱ:Lo/n7;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lo/q7;->ͼ()Lo/q7;

    move-result-object v0

    instance-of v4, v0, Lo/rg;

    xor-int/2addr v4, v3

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p1, v1}, Lo/q7;->ʹ(Lo/q7;Lo/n7;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    new-instance v0, Lo/Ͷ;

    invoke-direct {v0, p1, p0, v2}, Lo/Ͷ;-><init>(Lo/q7;Lo/Β;I)V

    :goto_0
    invoke-virtual {v1}, Lo/q7;->ͼ()Lo/q7;

    move-result-object v4

    instance-of v5, v4, Lo/rg;

    xor-int/2addr v5, v3

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, p1, v1, v0}, Lo/q7;->Ί(Lo/q7;Lo/q7;Lo/o7;)I

    move-result v4

    if-eq v4, v3, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method public abstract Ί()Z
.end method

.method public abstract Ό()Z
.end method

.method public Ύ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Β;->ͱ:Lo/n7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo/q7;->ͻ()Lo/q7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lo/v;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lo/v;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lo/Β;->ͺ(Lo/v;)V

    .line 19
    .line 20
    .line 21
    move-object v2, v0

    .line 22
    :cond_1
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lo/ͻ;->Ό()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    :goto_1
    return v0
.end method

.method public Ώ(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/Β;->ͷ()Lo/v;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lo/q7;->ͼ()Lo/q7;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Lo/n7;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lo/ͻ;->ΐ(Ljava/lang/Object;Lo/v;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v1}, Lo/q7;->Έ()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lo/yf;

    .line 31
    .line 32
    iget-object v1, v1, Lo/yf;->ˋ:Lo/q7;

    .line 33
    .line 34
    invoke-virtual {v1}, Lo/q7;->ͽ()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    check-cast v1, Lo/rg;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lo/a2;->Ύ(Ljava/lang/Object;Lo/q7;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "Cannot happen"

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public ΐ(Ljava/lang/Object;Lo/v;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    check-cast p1, Lo/rg;

    invoke-virtual {p1, p2}, Lo/rg;->Ώ(Lo/v;)V

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/rg;

    invoke-virtual {v2, p2}, Lo/rg;->Ώ(Lo/v;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public Α()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lo/Β;->Έ()Lo/rg;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/a2;->ͱ:Lo/vh;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lo/rg;->ΐ()Lo/vh;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/rg;->Ό()V

    invoke-virtual {v0}, Lo/rg;->Ύ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lo/rg;->Α()V

    goto :goto_0
.end method
