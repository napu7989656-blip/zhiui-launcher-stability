.class public abstract Lo/Β;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/sg;


# static fields
.field public static final synthetic Ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic onCloseHandler:Ljava/lang/Object;

.field public final Ͱ:Lkotlin/jvm/functions/Function1;

.field public final ͱ:Lo/n7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "onCloseHandler"

    const-class v2, Lo/Β;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/Β;->Ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lo/n7;

    invoke-direct {p1}, Lo/n7;-><init>()V

    iput-object p1, p0, Lo/Β;->ͱ:Lo/n7;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/Β;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final ˏ(Lo/Β;Lo/O00;Ljava/lang/Object;Lo/v;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lo/Β;->ͺ(Lo/v;)V

    .line 5
    .line 6
    .line 7
    iget-object p3, p3, Lo/v;->ͳ:Ljava/lang/Throwable;

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    new-instance p3, Lo/y;

    .line 12
    .line 13
    invoke-direct {p3}, Lo/y;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p2, v0}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-static {p0, p3}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p3}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-virtual {p1, p0}, Lo/O00;->resumeWith(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static ͺ(Lo/v;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lo/q7;->ͼ()Lo/q7;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    instance-of v3, v2, Lo/Ͱ;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    check-cast v2, Lo/Ͱ;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_1
    if-nez v2, :cond_3

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    instance-of v0, v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    check-cast v1, Lo/Ͱ;

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Lo/Ͱ;->Ύ(Lo/v;)V

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, -0x1

    .line 36
    add-int/2addr v0, v2

    .line 37
    :goto_2
    if-ge v2, v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lo/Ͱ;

    .line 44
    .line 45
    invoke-virtual {v3, p0}, Lo/Ͱ;->Ύ(Lo/v;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_3
    return-void

    .line 52
    :cond_3
    invoke-virtual {v2}, Lo/q7;->Έ()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lo/yf;

    .line 63
    .line 64
    iget-object v2, v2, Lo/yf;->ˋ:Lo/q7;

    .line 65
    .line 66
    invoke-virtual {v2}, Lo/q7;->ͽ()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-static {v1, v2}, Lo/a2;->Ύ(Ljava/lang/Object;Lo/q7;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x7b

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lo/Β;->ͱ:Lo/n7;

    .line 35
    .line 36
    invoke-virtual {v1}, Lo/q7;->ͻ()Lo/q7;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-ne v2, v1, :cond_0

    .line 41
    .line 42
    const-string v1, "EmptyQueue"

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    instance-of v3, v2, Lo/v;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Lo/q7;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    instance-of v3, v2, Lo/Ͱ;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    const-string v3, "ReceiveQueued"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    instance-of v3, v2, Lo/rg;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const-string v3, "SendQueued"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v4, "UNEXPECTED:"

    .line 72
    .line 73
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_0
    invoke-virtual {v1}, Lo/q7;->ͼ()Lo/q7;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eq v4, v2, :cond_6

    .line 88
    .line 89
    const-string v2, ",queueSize="

    .line 90
    .line 91
    invoke-static {v3, v2}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lo/q7;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    :goto_1
    invoke-static {v3, v1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_5

    .line 107
    .line 108
    instance-of v6, v3, Lo/q7;

    .line 109
    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    :cond_4
    invoke-virtual {v3}, Lo/q7;->ͻ()Lo/q7;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    instance-of v2, v4, Lo/v;

    .line 127
    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ",closedForSend="

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    move-object v1, v3

    .line 152
    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const/16 v1, 0x7d

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lo/Β;->Ͷ()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method public ʹ(Lo/tg;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo/Β;->ͻ()Z

    move-result v0

    iget-object v1, p0, Lo/Β;->ͱ:Lo/n7;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lo/q7;->ͼ()Lo/q7;

    move-result-object v0

    instance-of v2, v0, Lo/rf;

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1, v1}, Lo/q7;->ʹ(Lo/q7;Lo/n7;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    new-instance v0, Lo/Ͷ;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p0, v2}, Lo/Ͷ;-><init>(Lo/q7;Lo/Β;I)V

    :goto_0
    invoke-virtual {v1}, Lo/q7;->ͼ()Lo/q7;

    move-result-object v3

    instance-of v4, v3, Lo/rf;

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v3, p1, v1, v0}, Lo/q7;->Ί(Lo/q7;Lo/q7;Lo/o7;)I

    move-result v3

    if-eq v3, v2, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-nez v2, :cond_6

    sget-object p1, Lo/a2;->Ͳ:Lo/vh;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final Ͱ(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lo/Β;->ͽ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lo/a2;->ˏ:Lo/vh;

    .line 6
    .line 7
    sget-object v2, Lo/ui;->ˋ:Lo/ui;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    invoke-static {p2}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lo/e6;->ͷ(Lo/z0;)Lo/O00;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_1
    iget-object v0, p0, Lo/Β;->ͱ:Lo/n7;

    .line 21
    .line 22
    invoke-virtual {v0}, Lo/q7;->ͻ()Lo/q7;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Lo/rf;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lo/Β;->ͼ()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_7

    .line 40
    .line 41
    iget-object v0, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    new-instance v0, Lo/tg;

    .line 46
    .line 47
    invoke-direct {v0, p1, p2}, Lo/tg;-><init>(Ljava/lang/Object;Lo/O00;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance v3, Lo/ug;

    .line 52
    .line 53
    invoke-direct {v3, p1, p2, v0}, Lo/ug;-><init>(Ljava/lang/Object;Lo/O00;Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    move-object v0, v3

    .line 57
    :goto_1
    invoke-virtual {p0, v0}, Lo/Β;->ʹ(Lo/tg;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    new-instance p1, Lo/xf;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lo/xf;-><init>(Lo/q7;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Lo/O00;->Ή(Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    instance-of v0, v3, Lo/v;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    check-cast v3, Lo/v;

    .line 77
    .line 78
    invoke-static {p0, p2, p1, v3}, Lo/Β;->ˏ(Lo/Β;Lo/O00;Ljava/lang/Object;Lo/v;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    sget-object v0, Lo/a2;->Ͳ:Lo/vh;

    .line 83
    .line 84
    if-eq v3, v0, :cond_7

    .line 85
    .line 86
    instance-of v0, v3, Lo/Ͱ;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, "enqueueSend returned "

    .line 96
    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lo/Β;->ͽ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-ne v0, v1, :cond_8

    .line 120
    .line 121
    invoke-virtual {p2, v2}, Lo/O00;->resumeWith(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    sget-object v3, Lo/a2;->Ͱ:Lo/vh;

    .line 126
    .line 127
    if-eq v0, v3, :cond_1

    .line 128
    .line 129
    instance-of v1, v0, Lo/v;

    .line 130
    .line 131
    if-eqz v1, :cond_b

    .line 132
    .line 133
    check-cast v0, Lo/v;

    .line 134
    .line 135
    invoke-static {p0, p2, p1, v0}, Lo/Β;->ˏ(Lo/Β;Lo/O00;Ljava/lang/Object;Lo/v;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    invoke-virtual {p2}, Lo/O00;->ͽ()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget-object p2, Lo/t1;->Ͱ:Lo/t1;

    .line 143
    .line 144
    if-ne p1, p2, :cond_9

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    move-object p1, v2

    .line 148
    :goto_4
    if-ne p1, p2, :cond_a

    .line 149
    .line 150
    return-object p1

    .line 151
    :cond_a
    return-object v2

    .line 152
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v1, "offerInternal returned "

    .line 157
    .line 158
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
.end method

.method public final ͱ(Ljava/lang/Throwable;)Z
    .locals 7

    .line 1
    new-instance v0, Lo/v;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lo/v;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo/Β;->ͱ:Lo/n7;

    .line 7
    .line 8
    :cond_0
    invoke-virtual {v1}, Lo/q7;->ͼ()Lo/q7;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lo/v;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    xor-int/2addr v3, v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    move v1, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v2, v0, v1}, Lo/q7;->ʹ(Lo/q7;Lo/n7;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move v1, v4

    .line 28
    :goto_0
    if-eqz v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v0, p0, Lo/Β;->ͱ:Lo/n7;

    .line 32
    .line 33
    invoke-virtual {v0}, Lo/q7;->ͼ()Lo/q7;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lo/v;

    .line 38
    .line 39
    :goto_1
    invoke-static {v0}, Lo/Β;->ͺ(Lo/v;)V

    .line 40
    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lo/Β;->onCloseHandler:Ljava/lang/Object;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    sget-object v2, Lo/a2;->ͳ:Lo/vh;

    .line 49
    .line 50
    if-eq v0, v2, :cond_5

    .line 51
    .line 52
    sget-object v3, Lo/Β;->Ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    :cond_3
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    move v5, v4

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eq v6, v0, :cond_3

    .line 67
    .line 68
    :goto_2
    if-eqz v5, :cond_5

    .line 69
    .line 70
    invoke-static {v4, v0}, Lo/e6;->ˏ(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_5
    return v1
.end method

.method public final ͳ()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/Β;->ͷ()Lo/v;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ͷ()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public final ͷ()Lo/v;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Β;->ͱ:Lo/n7;

    invoke-virtual {v0}, Lo/q7;->ͼ()Lo/q7;

    move-result-object v0

    instance-of v1, v0, Lo/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lo/v;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/Β;->ͺ(Lo/v;)V

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method public abstract ͻ()Z
.end method

.method public abstract ͼ()Z
.end method

.method public ͽ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lo/Β;->Ά()Lo/rf;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lo/a2;->Ͱ:Lo/vh;

    return-object p1

    :cond_1
    invoke-interface {v0, p1}, Lo/rf;->ˋ(Ljava/lang/Object;)Lo/vh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lo/rf;->ͱ()V

    invoke-interface {v0}, Lo/rf;->Ͱ()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Ά()Lo/rf;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/Β;->ͱ:Lo/n7;

    :goto_0
    invoke-virtual {v0}, Lo/q7;->ͺ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/q7;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_0
    instance-of v3, v1, Lo/rf;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Lo/rf;

    instance-of v2, v2, Lo/v;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lo/q7;->Ά()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lo/q7;->Ή()Lo/q7;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    check-cast v1, Lo/rf;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lo/q7;->ͽ()V

    goto :goto_0
.end method

.method public final Έ()Lo/rg;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/Β;->ͱ:Lo/n7;

    :goto_0
    invoke-virtual {v0}, Lo/q7;->ͺ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/q7;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_0
    instance-of v3, v1, Lo/rg;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Lo/rg;

    instance-of v2, v2, Lo/v;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lo/q7;->Ά()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lo/q7;->Ή()Lo/q7;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    check-cast v1, Lo/rg;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lo/q7;->ͽ()V

    goto :goto_0
.end method
