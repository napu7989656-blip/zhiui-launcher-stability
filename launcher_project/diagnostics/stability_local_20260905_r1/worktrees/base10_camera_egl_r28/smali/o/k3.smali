.class public final Lo/k3;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/k3;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/k3;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/k3;->Ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lo/k3;->ˋ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lo/k3;->ˋ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lo/k3;->ˋ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lo/k3;->ˋ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :goto_0
    iget-object v0, p0, Lo/k3;->ͱ:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lo/ͼ;

    .line 38
    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    const-string p1, "(this Collection)"

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_1
    return-object p1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˋ(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 7

    .line 1
    iget v0, p0, Lo/k3;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lo/k3;->ͱ:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :pswitch_0
    :try_start_0
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    new-array v0, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Throwable;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    instance-of p1, v0, Lo/eg;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v4, v0

    .line 54
    :goto_1
    check-cast v4, Ljava/lang/Throwable;

    .line 55
    .line 56
    return-object v4

    .line 57
    :pswitch_1
    :try_start_1
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 58
    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    check-cast p1, Ljava/lang/Throwable;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 73
    .line 74
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_2
    instance-of v0, p1, Lo/eg;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move-object v4, p1

    .line 89
    :goto_3
    check-cast v4, Ljava/lang/Throwable;

    .line 90
    .line 91
    return-object v4

    .line 92
    :pswitch_2
    :try_start_2
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    aput-object v6, v0, v2

    .line 102
    .line 103
    aput-object p1, v0, v1

    .line 104
    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    check-cast p1, Ljava/lang/Throwable;

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 115
    .line 116
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 120
    :catchall_2
    move-exception p1

    .line 121
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_4
    instance-of v0, p1, Lo/eg;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    move-object v4, p1

    .line 131
    :goto_5
    check-cast v4, Ljava/lang/Throwable;

    .line 132
    .line 133
    return-object v4

    .line 134
    :goto_6
    :try_start_3
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 135
    .line 136
    new-array v0, v2, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    check-cast v0, Ljava/lang/Throwable;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 151
    .line 152
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 156
    :catchall_3
    move-exception p1

    .line 157
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :goto_7
    instance-of p1, v0, Lo/eg;

    .line 162
    .line 163
    if-eqz p1, :cond_7

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_7
    move-object v4, v0

    .line 167
    :goto_8
    check-cast v4, Ljava/lang/Throwable;

    .line 168
    .line 169
    return-object v4

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
