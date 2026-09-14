.class public final Lo/j7;
.super Lo/n1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/g2;


# instance fields
.field private volatile runningWorkers:I

.field public final Ͱ:Lo/n1;

.field public final ͱ:I

.field public final Ͳ:Lo/r7;

.field public final ͳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/n1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/n1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/j7;->Ͱ:Lo/n1;

    .line 5
    .line 6
    iput p2, p0, Lo/j7;->ͱ:I

    .line 7
    .line 8
    instance-of p2, p1, Lo/g2;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lo/g2;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget p1, Lo/d2;->ˋ:I

    .line 19
    .line 20
    :cond_1
    new-instance p1, Lo/r7;

    .line 21
    .line 22
    invoke-direct {p1}, Lo/r7;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lo/j7;->Ͳ:Lo/r7;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lo/j7;->ͳ:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/j7;->Ͳ:Lo/r7;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lo/r7;->ˋ(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lo/j7;->runningWorkers:I

    .line 7
    .line 8
    iget p2, p0, Lo/j7;->ͱ:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v1

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lo/j7;->ͳ:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    iget p2, p0, Lo/j7;->runningWorkers:I

    .line 23
    .line 24
    iget v2, p0, Lo/j7;->ͱ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-lt p2, v2, :cond_1

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :try_start_1
    iget p2, p0, Lo/j7;->runningWorkers:I

    .line 32
    .line 33
    add-int/2addr p2, v0

    .line 34
    iput p2, p0, Lo/j7;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    monitor-exit p1

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lo/j7;->Ͱ:Lo/n1;

    .line 40
    .line 41
    invoke-virtual {p1, p0, p0}, Lo/n1;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    monitor-exit p1

    .line 47
    throw p2

    .line 48
    :cond_2
    :goto_2
    return-void
.end method

.method public final dispatchYield(Lo/k1;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/j7;->Ͳ:Lo/r7;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lo/r7;->ˋ(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lo/j7;->runningWorkers:I

    .line 7
    .line 8
    iget p2, p0, Lo/j7;->ͱ:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v1

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lo/j7;->ͳ:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    iget p2, p0, Lo/j7;->runningWorkers:I

    .line 23
    .line 24
    iget v2, p0, Lo/j7;->ͱ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-lt p2, v2, :cond_1

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :try_start_1
    iget p2, p0, Lo/j7;->runningWorkers:I

    .line 32
    .line 33
    add-int/2addr p2, v0

    .line 34
    iput p2, p0, Lo/j7;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    monitor-exit p1

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lo/j7;->Ͱ:Lo/n1;

    .line 40
    .line 41
    invoke-virtual {p1, p0, p0}, Lo/n1;->dispatchYield(Lo/k1;Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    monitor-exit p1

    .line 47
    throw p2

    .line 48
    :cond_2
    :goto_2
    return-void
.end method

.method public final limitedParallelism(I)Lo/n1;
    .locals 1

    .line 1
    invoke-static {p1}, Lo/a2;->Ͳ(I)V

    iget v0, p0, Lo/j7;->ͱ:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lo/n1;->limitedParallelism(I)Lo/n1;

    move-result-object p1

    return-object p1
.end method

.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, Lo/j7;->Ͳ:Lo/r7;

    invoke-virtual {v2}, Lo/r7;->ͱ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lo/z2;->Ͱ:Lo/z2;

    invoke-static {v3, v2}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lo/j7;->Ͱ:Lo/n1;

    invoke-virtual {v2, p0}, Lo/n1;->isDispatchNeeded(Lo/k1;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lo/j7;->Ͱ:Lo/n1;

    invoke-virtual {v0, p0, p0}, Lo/n1;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lo/j7;->ͳ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lo/j7;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/j7;->runningWorkers:I

    iget-object v2, p0, Lo/j7;->Ͳ:Lo/r7;

    invoke-virtual {v2}, Lo/r7;->Ͱ()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lo/j7;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/j7;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
