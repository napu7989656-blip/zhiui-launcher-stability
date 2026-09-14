.class public final Lo/tm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic Ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic Ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I

.field public final ˋ:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "lastScheduledTask"

    const-class v2, Lo/tm;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "producerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/tm;->Ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "consumerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/tm;->ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "blockingTasksInBuffer"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/tm;->Ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lo/tm;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/tm;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lo/tm;->producerIndex:I

    iput v0, p0, Lo/tm;->consumerIndex:I

    iput v0, p0, Lo/tm;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final ˋ(Lo/yh;Z)Lo/yh;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lo/tm;->ˏ(Lo/yh;)Lo/yh;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/yh;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lo/tm;->ˏ(Lo/yh;)Lo/yh;

    move-result-object p1

    return-object p1
.end method

.method public final ˏ(Lo/yh;)Lo/yh;
    .locals 2

    .line 1
    iget-object v0, p1, Lo/yh;->ͱ:Lo/zh;

    .line 2
    .line 3
    iget v0, v0, Lo/zh;->ˋ:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lo/tm;->Ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lo/tm;->producerIndex:I

    .line 18
    .line 19
    iget v1, p0, Lo/tm;->consumerIndex:I

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    const/16 v1, 0x7f

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    iget v0, p0, Lo/tm;->producerIndex:I

    .line 28
    .line 29
    and-int/2addr v0, v1

    .line 30
    :goto_1
    iget-object v1, p0, Lo/tm;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget-object v1, p0, Lo/tm;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 43
    .line 44
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lo/tm;->Ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method public final Ͱ()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/tm;->lastScheduledTask:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lo/tm;->producerIndex:I

    .line 6
    .line 7
    iget v1, p0, Lo/tm;->consumerIndex:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lo/tm;->producerIndex:I

    .line 14
    .line 15
    iget v1, p0, Lo/tm;->consumerIndex:I

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    :goto_0
    return v0
.end method

.method public final ͱ()Lo/yh;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lo/tm;->consumerIndex:I

    .line 2
    .line 3
    iget v1, p0, Lo/tm;->producerIndex:I

    .line 4
    .line 5
    sub-int v1, v0, v1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 12
    .line 13
    sget-object v3, Lo/tm;->ͱ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 14
    .line 15
    add-int/lit8 v4, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lo/tm;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lo/yh;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, v0, Lo/yh;->ͱ:Lo/zh;

    .line 35
    .line 36
    iget v1, v1, Lo/zh;->ˋ:I

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-ne v1, v2, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-eqz v2, :cond_4

    .line 44
    .line 45
    sget-object v1, Lo/tm;->Ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    :cond_4
    return-object v0
.end method

.method public final Ͳ(Lo/tm;)J
    .locals 8

    .line 1
    iget v0, p1, Lo/tm;->consumerIndex:I

    .line 2
    .line 3
    iget v1, p1, Lo/tm;->producerIndex:I

    .line 4
    .line 5
    iget-object v2, p1, Lo/tm;->ˋ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    and-int/lit8 v4, v0, 0x7f

    .line 11
    .line 12
    iget v5, p1, Lo/tm;->blockingTasksInBuffer:I

    .line 13
    .line 14
    if-eqz v5, :cond_4

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Lo/yh;

    .line 21
    .line 22
    if-eqz v5, :cond_3

    .line 23
    .line 24
    iget-object v6, v5, Lo/yh;->ͱ:Lo/zh;

    .line 25
    .line 26
    iget v6, v6, Lo/zh;->ˋ:I

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-ne v6, v3, :cond_0

    .line 30
    .line 31
    move v6, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v6, v7

    .line 34
    :goto_1
    if-eqz v6, :cond_3

    .line 35
    .line 36
    :cond_1
    const/4 v6, 0x0

    .line 37
    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-eq v6, v5, :cond_1

    .line 49
    .line 50
    move v3, v7

    .line 51
    :goto_2
    if-eqz v3, :cond_3

    .line 52
    .line 53
    sget-object v0, Lo/tm;->Ͳ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v5, v7}, Lo/tm;->ˋ(Lo/yh;Z)Lo/yh;

    .line 59
    .line 60
    .line 61
    const-wide/16 v0, -0x1

    .line 62
    .line 63
    return-wide v0

    .line 64
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {p0, p1, v3}, Lo/tm;->ͳ(Lo/tm;Z)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    return-wide v0
.end method

.method public final ͳ(Lo/tm;Z)J
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p1, Lo/tm;->lastScheduledTask:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/yh;

    .line 4
    .line 5
    const-wide/16 v1, -0x2

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_1
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget-object v5, v0, Lo/yh;->ͱ:Lo/zh;

    .line 15
    .line 16
    iget v5, v5, Lo/zh;->ˋ:I

    .line 17
    .line 18
    if-ne v5, v4, :cond_2

    .line 19
    .line 20
    move v5, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v5, v3

    .line 23
    :goto_0
    if-nez v5, :cond_3

    .line 24
    .line 25
    return-wide v1

    .line 26
    :cond_3
    sget-object v1, Lo/bi;->Ͳ:Lo/i9;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-wide v5, v0, Lo/yh;->Ͱ:J

    .line 36
    .line 37
    sub-long/2addr v1, v5

    .line 38
    sget-wide v5, Lo/bi;->ˋ:J

    .line 39
    .line 40
    cmp-long v7, v1, v5

    .line 41
    .line 42
    if-gez v7, :cond_4

    .line 43
    .line 44
    sub-long/2addr v5, v1

    .line 45
    return-wide v5

    .line 46
    :cond_4
    sget-object v1, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 47
    .line 48
    :cond_5
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eq v2, v0, :cond_5

    .line 61
    .line 62
    move v4, v3

    .line 63
    :goto_1
    if-eqz v4, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, v0, v3}, Lo/tm;->ˋ(Lo/yh;Z)Lo/yh;

    .line 66
    .line 67
    .line 68
    const-wide/16 p1, -0x1

    .line 69
    .line 70
    return-wide p1
.end method
