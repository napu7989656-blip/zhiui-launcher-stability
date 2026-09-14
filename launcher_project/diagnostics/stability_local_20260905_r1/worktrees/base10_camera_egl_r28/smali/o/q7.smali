.class public Lo/q7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic Ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;

.field volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_next"

    const-class v1, Lo/q7;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/q7;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/q7;->ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/q7;->Ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lo/q7;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lo/q7;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/q7;->_removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo/q7;->Έ()Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lo/p7;

    invoke-direct {v1, p0}, Lo/p7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʹ(Lo/q7;Lo/n7;)Z
    .locals 4

    .line 1
    sget-object v0, Lo/q7;->ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lo/q7;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1, p2}, Lo/q7;->ͷ(Lo/q7;)V

    return v3
.end method

.method public final Ͷ()Lo/q7;
    .locals 9

    .line 1
    :goto_0
    iget-object v0, p0, Lo/q7;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/q7;

    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    iget-object v4, v1, Lo/q7;->_next:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, p0, :cond_4

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    sget-object v7, Lo/q7;->ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v7, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v6

    goto :goto_3

    :cond_2
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_1

    :goto_3
    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {p0}, Lo/q7;->Ά()Z

    move-result v7

    if-eqz v7, :cond_5

    return-object v2

    :cond_5
    if-nez v4, :cond_6

    return-object v1

    :cond_6
    instance-of v7, v4, Lo/jc;

    if-eqz v7, :cond_7

    check-cast v4, Lo/jc;

    invoke-virtual {v4, v1}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    instance-of v7, v4, Lo/yf;

    if-eqz v7, :cond_c

    if-eqz v3, :cond_b

    sget-object v7, Lo/q7;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lo/yf;

    iget-object v4, v4, Lo/yf;->ˋ:Lo/q7;

    :cond_8
    invoke-virtual {v7, v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v5, v6

    goto :goto_4

    :cond_9
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_8

    :goto_4
    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    move-object v1, v3

    goto :goto_1

    :cond_b
    iget-object v1, v1, Lo/q7;->_prev:Ljava/lang/Object;

    check-cast v1, Lo/q7;

    goto :goto_2

    :cond_c
    move-object v3, v4

    check-cast v3, Lo/q7;

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_2
.end method

.method public final ͷ(Lo/q7;)V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p1, Lo/q7;->_prev:Ljava/lang/Object;

    check-cast v0, Lo/q7;

    invoke-virtual {p0}, Lo/q7;->ͺ()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lo/q7;->ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/q7;->Ά()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lo/q7;->Ͷ()Lo/q7;

    :cond_4
    return-void
.end method

.method public final ͺ()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lo/q7;->_next:Ljava/lang/Object;

    instance-of v1, v0, Lo/jc;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lo/jc;

    invoke-virtual {v0, p0}, Lo/jc;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final ͻ()Lo/q7;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lo/yf;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lo/yf;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v1, Lo/yf;->ˋ:Lo/q7;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    :cond_1
    move-object v1, v0

    .line 21
    check-cast v1, Lo/q7;

    .line 22
    .line 23
    :cond_2
    return-object v1
.end method

.method public final ͼ()Lo/q7;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/q7;->Ͷ()Lo/q7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lo/q7;->_prev:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lo/q7;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Lo/q7;->Ά()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, v0, Lo/q7;->_prev:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lo/q7;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object v0
.end method

.method public final ͽ()V
    .locals 3

    .line 1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lo/q7;->ͺ()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lo/yf;

    if-eqz v2, :cond_0

    check-cast v1, Lo/yf;

    iget-object v0, v1, Lo/yf;->ˋ:Lo/q7;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/q7;->Ͷ()Lo/q7;

    return-void
.end method

.method public Ά()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/q7;->ͺ()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/yf;

    return v0
.end method

.method public Έ()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/q7;->Ή()Lo/q7;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ή()Lo/q7;
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p0}, Lo/q7;->ͺ()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lo/yf;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lo/yf;

    .line 10
    .line 11
    iget-object v0, v0, Lo/yf;->ˋ:Lo/q7;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    if-ne v0, p0, :cond_2

    .line 15
    .line 16
    check-cast v0, Lo/q7;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_2
    move-object v1, v0

    .line 20
    check-cast v1, Lo/q7;

    .line 21
    .line 22
    iget-object v2, v1, Lo/q7;->_removedRef:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lo/yf;

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    new-instance v2, Lo/yf;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lo/yf;-><init>(Lo/q7;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lo/q7;->Ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 34
    .line 35
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    sget-object v3, Lo/q7;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 39
    .line 40
    :cond_4
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_5

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eq v4, v0, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1}, Lo/q7;->Ͷ()Lo/q7;

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    return-object v0
.end method

.method public final Ί(Lo/q7;Lo/q7;Lo/o7;)I
    .locals 3

    .line 1
    sget-object v0, Lo/q7;->ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lo/q7;->Ͱ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p3, Lo/o7;->Ͱ:Lo/q7;

    :cond_0
    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_0

    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p3, p0}, Lo/ϳ;->ˋ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    return v2
.end method
