.class public final Lo/O00;
.super Lo/l2;
.source "SourceFile"

# interfaces
.implements Lo/OOO;
.implements Lo/u1;


# static fields
.field public static final synthetic ͷ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field public final ʹ:Lo/k1;

.field public final ͳ:Lo/z0;

.field public Ͷ:Lo/n2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_decision"

    const-class v1, Lo/O00;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/O00;->ͷ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILo/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/l2;-><init>(I)V

    iput-object p2, p0, Lo/O00;->ͳ:Lo/z0;

    invoke-interface {p2}, Lo/z0;->getContext()Lo/k1;

    move-result-object p1

    iput-object p1, p0, Lo/O00;->ʹ:Lo/k1;

    const/4 p1, 0x0

    iput p1, p0, Lo/O00;->_decision:I

    sget-object p1, Lo/Ξ;->Ͱ:Lo/Ξ;

    iput-object p1, p0, Lo/O00;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static Ό(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ΐ(Lo/cc;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lo/n0;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    instance-of p2, p0, Lo/O0O;

    if-eqz p2, :cond_6

    instance-of p2, p0, Lo/lI;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Lo/l0;

    instance-of v0, p0, Lo/O0O;

    if-eqz v0, :cond_5

    check-cast p0, Lo/O0O;

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    move-object v2, p0

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/l0;-><init>(Ljava/lang/Object;Lo/O0O;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CancellationException;I)V

    move-object p1, p2

    :cond_6
    :goto_2
    return-object p1
.end method


# virtual methods
.method public final getCallerFrame()Lo/u1;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    instance-of v1, v0, Lo/u1;

    if-eqz v1, :cond_0

    check-cast v0, Lo/u1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()Lo/k1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/O00;->ʹ:Lo/k1;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lo/n0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lo/l2;->Ͳ:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lo/O00;->Ώ(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CancellableContinuation("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lo/O00;->ͳ:Lo/z0;

    .line 9
    .line 10
    invoke-static {v1}, Lo/a2;->Κ(Lo/z0;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "){"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 23
    .line 24
    instance-of v2, v1, Lo/cc;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string v1, "Active"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    instance-of v1, v1, Lo/a;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, "Cancelled"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "Completed"

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "}@"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public final ʹ(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lo/b7;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lo/O00;->ʹ:Lo/k1;

    invoke-static {p1, p2}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final ˋ(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 10

    .line 1
    :cond_0
    iget-object p1, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p1, Lo/cc;

    .line 4
    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    instance-of v0, p1, Lo/n0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    instance-of v0, p1, Lo/l0;

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_8

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Lo/l0;

    .line 20
    .line 21
    iget-object v1, v0, Lo/l0;->Ͳ:Ljava/lang/Throwable;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move v1, v6

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move v1, v7

    .line 28
    :goto_0
    xor-int/2addr v1, v6

    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0xf

    .line 33
    .line 34
    invoke-static {v0, v1, p2, v2}, Lo/l0;->ˋ(Lo/l0;Lo/O0O;Ljava/util/concurrent/CancellationException;I)Lo/l0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 39
    .line 40
    :cond_3
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eq v3, p1, :cond_3

    .line 52
    .line 53
    move v6, v7

    .line 54
    :goto_1
    if-eqz v6, :cond_0

    .line 55
    .line 56
    iget-object p1, v0, Lo/l0;->ˏ:Lo/O0O;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lo/O00;->Ͷ(Lo/O0O;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget-object p1, v0, Lo/l0;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lo/O00;->ͷ(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    return-void

    .line 71
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p2, "Must be called at most once"

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_8
    sget-object v8, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 84
    .line 85
    new-instance v9, Lo/l0;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    const/16 v5, 0xe

    .line 90
    .line 91
    move-object v0, v9

    .line 92
    move-object v1, p1

    .line 93
    move-object v4, p2

    .line 94
    invoke-direct/range {v0 .. v5}, Lo/l0;-><init>(Ljava/lang/Object;Lo/O0O;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CancellationException;I)V

    .line 95
    .line 96
    .line 97
    :cond_9
    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_a

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_a
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eq v0, p1, :cond_9

    .line 109
    .line 110
    move v6, v7

    .line 111
    :goto_2
    if-eqz v6, :cond_0

    .line 112
    .line 113
    return-void

    .line 114
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string p2, "Not completed"

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method public final ˏ()Lo/z0;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    return-object v0
.end method

.method public final Ͱ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo/l2;->Ͱ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final ͱ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lo/l0;

    if-eqz v0, :cond_0

    check-cast p1, Lo/l0;

    iget-object p1, p1, Lo/l0;->ˋ:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final ͳ()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Ͷ(Lo/O0O;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lo/O0O;->ˋ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lo/b7;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lo/O00;->ʹ:Lo/k1;

    invoke-static {p1, p2}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final ͷ(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lo/b7;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lo/O00;->ʹ:Lo/k1;

    invoke-static {p1, p2}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final ͺ(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :cond_0
    iget-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lo/cc;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    return-void

    .line 8
    :cond_1
    new-instance v1, Lo/a;

    .line 9
    .line 10
    instance-of v2, v0, Lo/O0O;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, v2}, Lo/a;-><init>(Lo/z0;Ljava/lang/Throwable;Z)V

    .line 13
    .line 14
    .line 15
    sget-object v3, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    :cond_2
    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eq v4, v0, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz v1, :cond_0

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    check-cast v0, Lo/O0O;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    const/4 v0, 0x0

    .line 40
    :goto_1
    if-eqz v0, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0, v0, p1}, Lo/O00;->Ͷ(Lo/O0O;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_5
    invoke-virtual {p0}, Lo/O00;->Ί()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_6

    .line 50
    .line 51
    invoke-virtual {p0}, Lo/O00;->ͻ()V

    .line 52
    .line 53
    .line 54
    :cond_6
    iget p1, p0, Lo/l2;->Ͳ:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lo/O00;->ͼ(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final ͻ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/O00;->Ͷ:Lo/n2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lo/n2;->dispose()V

    sget-object v0, Lo/bc;->Ͱ:Lo/bc;

    iput-object v0, p0, Lo/O00;->Ͷ:Lo/n2;

    return-void
.end method

.method public final ͼ(I)V
    .locals 6

    .line 1
    :cond_0
    iget v0, p0, Lo/O00;->_decision:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-ne v0, v3, :cond_1

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Already resumed"

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_2
    sget-object v0, Lo/O00;->ͷ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move v0, v3

    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    .line 37
    .line 38
    const/4 v4, 0x4

    .line 39
    if-ne p1, v4, :cond_4

    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    move v4, v2

    .line 44
    :goto_1
    if-nez v4, :cond_d

    .line 45
    .line 46
    instance-of v5, v0, Lo/j2;

    .line 47
    .line 48
    if-eqz v5, :cond_d

    .line 49
    .line 50
    if-eq p1, v3, :cond_6

    .line 51
    .line 52
    if-ne p1, v1, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    move p1, v2

    .line 56
    goto :goto_3

    .line 57
    :cond_6
    :goto_2
    move p1, v3

    .line 58
    :goto_3
    iget v5, p0, Lo/l2;->Ͳ:I

    .line 59
    .line 60
    if-eq v5, v3, :cond_8

    .line 61
    .line 62
    if-ne v5, v1, :cond_7

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_7
    move v1, v2

    .line 66
    goto :goto_5

    .line 67
    :cond_8
    :goto_4
    move v1, v3

    .line 68
    :goto_5
    if-ne p1, v1, :cond_d

    .line 69
    .line 70
    move-object p1, v0

    .line 71
    check-cast p1, Lo/j2;

    .line 72
    .line 73
    iget-object p1, p1, Lo/j2;->ͳ:Lo/n1;

    .line 74
    .line 75
    invoke-interface {v0}, Lo/z0;->getContext()Lo/k1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lo/n1;->isDispatchNeeded(Lo/k1;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_9

    .line 84
    .line 85
    invoke-virtual {p1, v0, p0}, Lo/n1;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_9
    invoke-static {}, Lo/ei;->ˋ()Lo/j3;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-wide v0, p1, Lo/j3;->Ͱ:J

    .line 94
    .line 95
    const-wide v4, 0x100000000L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    cmp-long v0, v0, v4

    .line 101
    .line 102
    if-ltz v0, :cond_a

    .line 103
    .line 104
    move v2, v3

    .line 105
    :cond_a
    if-eqz v2, :cond_b

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lo/j3;->ͱ(Lo/l2;)V

    .line 108
    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_b
    invoke-virtual {p1, v3}, Lo/j3;->ͳ(Z)V

    .line 112
    .line 113
    .line 114
    :try_start_0
    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    .line 115
    .line 116
    invoke-static {p0, v0, v3}, Lo/e6;->Ί(Lo/l2;Lo/z0;Z)V

    .line 117
    .line 118
    .line 119
    :cond_c
    invoke-virtual {p1}, Lo/j3;->ʹ()Z

    .line 120
    .line 121
    .line 122
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez v0, :cond_c

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    const/4 v1, 0x0

    .line 128
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lo/l2;->Ͳ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    :goto_6
    invoke-virtual {p1}, Lo/j3;->Ͱ()V

    .line 132
    .line 133
    .line 134
    goto :goto_7

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    invoke-virtual {p1}, Lo/j3;->Ͱ()V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_d
    invoke-static {p0, v0, v4}, Lo/e6;->Ί(Lo/l2;Lo/z0;Z)V

    .line 141
    .line 142
    .line 143
    :goto_7
    return-void
.end method

.method public final ͽ()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo/O00;->Ί()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    iget v1, p0, Lo/O00;->_decision:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    move v1, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Already suspended"

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_2
    sget-object v1, Lo/O00;->ͷ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 29
    .line 30
    invoke-virtual {v1, p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move v1, v3

    .line 37
    :goto_0
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_7

    .line 39
    .line 40
    iget-object v1, p0, Lo/O00;->Ͷ:Lo/n2;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lo/O00;->Έ()Lo/n2;

    .line 45
    .line 46
    .line 47
    :cond_3
    if-eqz v0, :cond_6

    .line 48
    .line 49
    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    .line 50
    .line 51
    instance-of v1, v0, Lo/j2;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    move-object v5, v0

    .line 56
    check-cast v5, Lo/j2;

    .line 57
    .line 58
    :cond_4
    if-eqz v5, :cond_6

    .line 59
    .line 60
    invoke-virtual {v5, p0}, Lo/j2;->ͻ(Lo/OOO;)Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p0}, Lo/O00;->ͻ()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lo/O00;->ͺ(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :cond_6
    :goto_1
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_7
    if-eqz v0, :cond_a

    .line 77
    .line 78
    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    .line 79
    .line 80
    instance-of v1, v0, Lo/j2;

    .line 81
    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    move-object v5, v0

    .line 85
    check-cast v5, Lo/j2;

    .line 86
    .line 87
    :cond_8
    if-eqz v5, :cond_a

    .line 88
    .line 89
    invoke-virtual {v5, p0}, Lo/j2;->ͻ(Lo/OOO;)Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_9

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_9
    invoke-virtual {p0}, Lo/O00;->ͻ()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lo/O00;->ͺ(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :cond_a
    :goto_2
    iget-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 103
    .line 104
    instance-of v1, v0, Lo/n0;

    .line 105
    .line 106
    if-nez v1, :cond_f

    .line 107
    .line 108
    iget v1, p0, Lo/l2;->Ͳ:I

    .line 109
    .line 110
    if-eq v1, v3, :cond_c

    .line 111
    .line 112
    if-ne v1, v2, :cond_b

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_b
    move v3, v4

    .line 116
    :cond_c
    :goto_3
    if-eqz v3, :cond_e

    .line 117
    .line 118
    iget-object v1, p0, Lo/O00;->ʹ:Lo/k1;

    .line 119
    .line 120
    sget-object v2, Lo/z;->Ͳ:Lo/z;

    .line 121
    .line 122
    invoke-interface {v1, v2}, Lo/k1;->get(Lo/j1;)Lo/i1;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lo/l6;

    .line 127
    .line 128
    if-eqz v1, :cond_e

    .line 129
    .line 130
    invoke-interface {v1}, Lo/l6;->ˏ()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_d

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_d
    check-cast v1, Lo/s6;

    .line 138
    .line 139
    invoke-virtual {v1}, Lo/s6;->Ί()Ljava/util/concurrent/CancellationException;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p0, v0, v1}, Lo/O00;->ˋ(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_e
    :goto_4
    invoke-virtual {p0, v0}, Lo/O00;->ͱ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0

    .line 152
    :cond_f
    check-cast v0, Lo/n0;

    .line 153
    .line 154
    iget-object v0, v0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 155
    .line 156
    throw v0
.end method

.method public final Ά()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/O00;->Έ()Lo/n2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v1, v1, Lo/cc;

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lo/n2;->dispose()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lo/bc;->Ͱ:Lo/bc;

    .line 20
    .line 21
    iput-object v0, p0, Lo/O00;->Ͷ:Lo/n2;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final Έ()Lo/n2;
    .locals 4

    .line 1
    sget-object v0, Lo/z;->Ͳ:Lo/z;

    iget-object v1, p0, Lo/O00;->ʹ:Lo/k1;

    invoke-interface {v1, v0}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object v0

    check-cast v0, Lo/l6;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lo/l;

    invoke-direct {v1, p0}, Lo/l;-><init>(Lo/O00;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lo/e6;->ͻ(Lo/l6;ZLo/o6;I)Lo/n2;

    move-result-object v0

    iput-object v0, p0, Lo/O00;->Ͷ:Lo/n2;

    return-object v0
.end method

.method public final Ή(Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    instance-of v0, p1, Lo/O0O;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lo/O0O;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lo/h6;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lo/h6;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    iget-object v7, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 15
    .line 16
    instance-of v1, v7, Lo/Ξ;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    sget-object v1, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    :cond_2
    invoke-virtual {v1, p0, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eq v2, v7, :cond_2

    .line 36
    .line 37
    move v8, v9

    .line 38
    :goto_1
    if-eqz v8, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_4
    instance-of v1, v7, Lo/O0O;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v1, :cond_14

    .line 45
    .line 46
    instance-of v1, v7, Lo/n0;

    .line 47
    .line 48
    if-eqz v1, :cond_9

    .line 49
    .line 50
    move-object v0, v7

    .line 51
    check-cast v0, Lo/n0;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object v3, Lo/n0;->ˏ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 57
    .line 58
    invoke-virtual {v3, v0, v9, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_8

    .line 63
    .line 64
    instance-of v3, v7, Lo/a;

    .line 65
    .line 66
    if-eqz v3, :cond_7

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object v0, v2

    .line 72
    :goto_2
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object v2, v0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 75
    .line 76
    :cond_6
    invoke-virtual {p0, p1, v2}, Lo/O00;->ʹ(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :cond_7
    return-void

    .line 80
    :cond_8
    invoke-static {v7, p1}, Lo/O00;->Ό(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    throw v2

    .line 84
    :cond_9
    instance-of v1, v7, Lo/l0;

    .line 85
    .line 86
    if-eqz v1, :cond_10

    .line 87
    .line 88
    move-object v1, v7

    .line 89
    check-cast v1, Lo/l0;

    .line 90
    .line 91
    iget-object v3, v1, Lo/l0;->ˏ:Lo/O0O;

    .line 92
    .line 93
    if-nez v3, :cond_f

    .line 94
    .line 95
    instance-of v3, v0, Lo/lI;

    .line 96
    .line 97
    if-eqz v3, :cond_a

    .line 98
    .line 99
    return-void

    .line 100
    :cond_a
    iget-object v3, v1, Lo/l0;->Ͳ:Ljava/lang/Throwable;

    .line 101
    .line 102
    if-eqz v3, :cond_b

    .line 103
    .line 104
    move v4, v8

    .line 105
    goto :goto_3

    .line 106
    :cond_b
    move v4, v9

    .line 107
    :goto_3
    if-eqz v4, :cond_c

    .line 108
    .line 109
    invoke-virtual {p0, p1, v3}, Lo/O00;->ʹ(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_c
    const/16 v3, 0x1d

    .line 114
    .line 115
    invoke-static {v1, v0, v2, v3}, Lo/l0;->ˋ(Lo/l0;Lo/O0O;Ljava/util/concurrent/CancellationException;I)Lo/l0;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v3, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 120
    .line 121
    :cond_d
    invoke-virtual {v3, p0, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_e

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_e
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eq v2, v7, :cond_d

    .line 133
    .line 134
    move v8, v9

    .line 135
    :goto_4
    if-eqz v8, :cond_1

    .line 136
    .line 137
    return-void

    .line 138
    :cond_f
    invoke-static {v7, p1}, Lo/O00;->Ό(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 139
    .line 140
    .line 141
    throw v2

    .line 142
    :cond_10
    instance-of v1, v0, Lo/lI;

    .line 143
    .line 144
    if-eqz v1, :cond_11

    .line 145
    .line 146
    return-void

    .line 147
    :cond_11
    new-instance v10, Lo/l0;

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    const/16 v6, 0x1c

    .line 152
    .line 153
    move-object v1, v10

    .line 154
    move-object v2, v7

    .line 155
    move-object v3, v0

    .line 156
    invoke-direct/range {v1 .. v6}, Lo/l0;-><init>(Ljava/lang/Object;Lo/O0O;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CancellationException;I)V

    .line 157
    .line 158
    .line 159
    sget-object v1, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 160
    .line 161
    :cond_12
    invoke-virtual {v1, p0, v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_13

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eq v2, v7, :cond_12

    .line 173
    .line 174
    move v8, v9

    .line 175
    :goto_5
    if-eqz v8, :cond_1

    .line 176
    .line 177
    return-void

    .line 178
    :cond_14
    invoke-static {v7, p1}, Lo/O00;->Ό(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    throw v2
.end method

.method public final Ί()Z
    .locals 4

    .line 1
    iget v0, p0, Lo/l2;->Ͳ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/O00;->ͳ:Lo/z0;

    check-cast v0, Lo/j2;

    invoke-virtual {v0}, Lo/j2;->Ͷ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public final Ύ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lo/l0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lo/l0;

    iget-object v0, v0, Lo/l0;->ͱ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/O00;->ͻ()V

    return v2

    :cond_0
    iput v2, p0, Lo/O00;->_decision:I

    sget-object v0, Lo/Ξ;->Ͱ:Lo/Ξ;

    iput-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public final Ώ(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lo/cc;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lo/cc;

    .line 11
    .line 12
    invoke-static {v1, p1, p2, p3}, Lo/O00;->ΐ(Lo/cc;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v4, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eq v5, v0, :cond_1

    .line 31
    .line 32
    :goto_0
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lo/O00;->Ί()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lo/O00;->ͻ()V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p0, p2}, Lo/O00;->ͼ(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    instance-of p2, v0, Lo/a;

    .line 48
    .line 49
    if-eqz p2, :cond_6

    .line 50
    .line 51
    check-cast v0, Lo/a;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object p2, Lo/a;->Ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 57
    .line 58
    invoke-virtual {p2, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_6

    .line 63
    .line 64
    if-eqz p3, :cond_5

    .line 65
    .line 66
    iget-object p1, v0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 67
    .line 68
    invoke-virtual {p0, p3, p1}, Lo/O00;->ͷ(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    return-void

    .line 72
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "Already resumed, but proposed with update "

    .line 77
    .line 78
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p2
.end method

.method public final Α(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lo/vh;
    .locals 5

    .line 1
    :cond_0
    iget-object v0, p0, Lo/O00;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lo/cc;

    .line 4
    .line 5
    sget-object v2, Lo/a2;->ʹ:Lo/vh;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lo/cc;

    .line 11
    .line 12
    iget v3, p0, Lo/l2;->Ͳ:I

    .line 13
    .line 14
    invoke-static {v1, p1, v3, p2}, Lo/O00;->ΐ(Lo/cc;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v3, Lo/O00;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    :cond_1
    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eq v4, v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lo/O00;->Ί()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lo/O00;->ͻ()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-object v2

    .line 47
    :cond_4
    instance-of p1, v0, Lo/l0;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method
