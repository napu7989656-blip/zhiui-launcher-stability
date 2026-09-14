.class public final Lo/j2;
.super Lo/l2;
.source "SourceFile"

# interfaces
.implements Lo/u1;
.implements Lo/z0;


# static fields
.field public static final synthetic ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final ʹ:Lo/z0;

.field public final ͳ:Lo/n1;

.field public Ͷ:Ljava/lang/Object;

.field public final ͷ:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lo/j2;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/j2;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/n1;Lo/z0;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lo/l2;-><init>(I)V

    iput-object p1, p0, Lo/j2;->ͳ:Lo/n1;

    iput-object p2, p0, Lo/j2;->ʹ:Lo/z0;

    sget-object p1, Lo/a2;->Ͷ:Lo/vh;

    iput-object p1, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    invoke-virtual {p0}, Lo/j2;->getContext()Lo/k1;

    move-result-object p1

    invoke-static {p1}, Lo/a2;->Θ(Lo/k1;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/j2;->ͷ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lo/u1;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/j2;->ʹ:Lo/z0;

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
    iget-object v0, p0, Lo/j2;->ʹ:Lo/z0;

    invoke-interface {v0}, Lo/z0;->getContext()Lo/k1;

    move-result-object v0

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/j2;->ʹ:Lo/z0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo/z0;->getContext()Lo/k1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move-object v4, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v4, Lo/n0;

    .line 17
    .line 18
    invoke-direct {v4, v3, v2}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Lo/j2;->ͳ:Lo/n1;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lo/n1;->isDispatchNeeded(Lo/k1;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    iput-object v4, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    .line 30
    .line 31
    iput v3, p0, Lo/l2;->Ͳ:I

    .line 32
    .line 33
    invoke-virtual {v2, v1, p0}, Lo/n1;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    invoke-static {}, Lo/ei;->ˋ()Lo/j3;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v5, v1, Lo/j3;->Ͱ:J

    .line 42
    .line 43
    const-wide v7, 0x100000000L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long v2, v5, v7

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    if-ltz v2, :cond_2

    .line 52
    .line 53
    move v2, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v2, v3

    .line 56
    :goto_1
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iput-object v4, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, p0, Lo/l2;->Ͳ:I

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Lo/j3;->ͱ(Lo/l2;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {v1, v5}, Lo/j3;->ͳ(Z)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-virtual {p0}, Lo/j2;->getContext()Lo/k1;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lo/j2;->ͷ:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v2, v3}, Lo/a2;->Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-interface {v0, p1}, Lo/z0;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_2
    invoke-static {v2, v3}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {v1}, Lo/j3;->ʹ()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    invoke-static {v2, v3}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    const/4 v0, 0x0

    .line 99
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lo/l2;->Ͳ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v1}, Lo/j3;->Ͱ()V

    .line 103
    .line 104
    .line 105
    :goto_3
    return-void

    .line 106
    :catchall_2
    move-exception p1

    .line 107
    invoke-virtual {v1}, Lo/j3;->Ͱ()V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/j2;->ͳ:Lo/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/j2;->ʹ:Lo/z0;

    invoke-static {v1}, Lo/a2;->Κ(Lo/z0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʹ()Lo/O00;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lo/a2;->ͷ:Lo/vh;

    if-nez v0, :cond_1

    iput-object v1, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v2, v0, Lo/O00;

    if-eqz v2, :cond_4

    sget-object v2, Lo/j2;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    check-cast v0, Lo/O00;

    return-object v0

    :cond_4
    if-eq v0, v1, :cond_0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistent state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ˋ(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo/p0;

    if-eqz v0, :cond_0

    check-cast p1, Lo/p0;

    iget-object p1, p1, Lo/p0;->ˏ:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final ˏ()Lo/z0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final ͳ()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    sget-object v1, Lo/a2;->Ͷ:Lo/vh;

    iput-object v1, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    return-object v0
.end method

.method public final Ͷ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ͷ(Ljava/util/concurrent/CancellationException;)Z
    .locals 5

    .line 1
    :cond_0
    iget-object v0, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lo/a2;->ͷ:Lo/vh;

    invoke-static {v0, v1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    sget-object v2, Lo/j2;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v2, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    :goto_0
    if-eqz v3, :cond_0

    return v4

    :cond_3
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    return v4

    :cond_4
    sget-object v1, Lo/j2;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_5

    move v4, v3

    :goto_1
    if-eqz v4, :cond_0

    return v3
.end method

.method public final ͺ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lo/O00;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lo/O00;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lo/O00;->ͻ()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final ͻ(Lo/OOO;)Ljava/lang/Throwable;
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lo/j2;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lo/a2;->ͷ:Lo/vh;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    sget-object v5, Lo/j2;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v5, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    :goto_0
    if-eqz v3, :cond_0

    return-object v2

    :cond_3
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_7

    sget-object p1, Lo/j2;->ͺ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_4

    :goto_1
    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
