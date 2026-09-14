.class public final Lo/k2;
.super Lo/jg;
.source "SourceFile"


# static fields
.field public static final synthetic ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lo/k2;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/k2;->ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/z0;Lo/k1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lo/jg;-><init>(Lo/z0;Lo/k1;)V

    const/4 p1, 0x0

    iput p1, p0, Lo/k2;->_decision:I

    return-void
.end method


# virtual methods
.method public final ʹ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/k2;->Ͷ(Ljava/lang/Object;)V

    return-void
.end method

.method public final Ͷ(Ljava/lang/Object;)V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lo/k2;->_decision:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-ne v0, v2, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Already resumed"

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_2
    sget-object v0, Lo/k2;->ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    move v1, v2

    .line 32
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    iget-object v0, p0, Lo/jg;->Ͳ:Lo/z0;

    .line 36
    .line 37
    invoke-static {v0}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1}, Lo/e6;->Ά(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v0, p1, v1}, Lo/a2;->Α(Lo/z0;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final Τ()Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lo/k2;->_decision:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Already suspended"

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_2
    sget-object v0, Lo/k2;->ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    move v1, v2

    .line 32
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    .line 34
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_3
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v1, v0, Lo/t5;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Lo/t5;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    const/4 v1, 0x0

    .line 50
    :goto_1
    if-eqz v1, :cond_6

    .line 51
    .line 52
    iget-object v1, v1, Lo/t5;->ˋ:Lo/s5;

    .line 53
    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    move-object v0, v1

    .line 58
    :cond_6
    :goto_2
    nop

    .line 59
    instance-of v1, v0, Lo/n0;

    .line 60
    .line 61
    if-nez v1, :cond_7

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_7
    check-cast v0, Lo/n0;

    .line 65
    .line 66
    iget-object v0, v0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 67
    .line 68
    throw v0
.end method
