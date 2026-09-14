.class public abstract Lo/i3;
.super Lo/j3;
.source "SourceFile"

# interfaces
.implements Lo/g2;


# static fields
.field public static final synthetic ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lo/i3;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/j3;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/i3;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lo/i3;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lo/i3;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lo/i3;->ͷ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Ͷ()V
    .locals 7

    .line 1
    sget-object v0, Lo/ei;->ˋ:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lo/i3;->_isCompleted:I

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lo/i3;->_queue:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v3, Lo/e6;->Ͱ:Lo/vh;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    sget-object v5, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    :cond_1
    invoke-virtual {v5, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move v4, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    :goto_0
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    instance-of v5, v2, Lo/t7;

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    check-cast v2, Lo/t7;

    .line 41
    .line 42
    invoke-virtual {v2}, Lo/t7;->ˏ()Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    if-ne v2, v3, :cond_5

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    new-instance v3, Lo/t7;

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    invoke-direct {v3, v5, v0}, Lo/t7;-><init>(IZ)V

    .line 54
    .line 55
    .line 56
    move-object v5, v2

    .line 57
    check-cast v5, Ljava/lang/Runnable;

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Lo/t7;->ˋ(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    sget-object v5, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 63
    .line 64
    :cond_6
    invoke-virtual {v5, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    move v4, v0

    .line 71
    goto :goto_1

    .line 72
    :cond_7
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-eq v6, v2, :cond_6

    .line 77
    .line 78
    :goto_1
    if-eqz v4, :cond_0

    .line 79
    .line 80
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lo/i3;->ͻ()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    cmp-long v0, v0, v2

    .line 87
    .line 88
    if-lez v0, :cond_8

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lo/i3;->_delayed:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lo/h3;

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0}, Lo/e6;->Ή()V

    .line 100
    .line 101
    .line 102
    :cond_9
    return-void
.end method

.method public ͷ(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/i3;->_queue:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lo/i3;->_isCompleted:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_1
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    sget-object v3, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    :cond_2
    const/4 v0, 0x0

    .line 16
    invoke-virtual {v3, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    :goto_1
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_4
    instance-of v3, v0, Lo/t7;

    .line 34
    .line 35
    if-eqz v3, :cond_9

    .line 36
    .line 37
    move-object v3, v0

    .line 38
    check-cast v3, Lo/t7;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Lo/t7;->ˋ(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_8

    .line 45
    .line 46
    if-eq v4, v1, :cond_5

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    if-eq v4, v0, :cond_d

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    sget-object v2, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    invoke-virtual {v3}, Lo/t7;->Ͳ()Lo/t7;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_6
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eq v1, v0, :cond_6

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_8
    :goto_2
    move v2, v1

    .line 73
    goto :goto_4

    .line 74
    :cond_9
    sget-object v3, Lo/e6;->Ͱ:Lo/vh;

    .line 75
    .line 76
    if-ne v0, v3, :cond_a

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_a
    new-instance v3, Lo/t7;

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    .line 83
    invoke-direct {v3, v4, v1}, Lo/t7;-><init>(IZ)V

    .line 84
    .line 85
    .line 86
    move-object v4, v0

    .line 87
    check-cast v4, Ljava/lang/Runnable;

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Lo/t7;->ˋ(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lo/t7;->ˋ(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    sget-object v4, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 96
    .line 97
    :cond_b
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_c

    .line 102
    .line 103
    move v2, v1

    .line 104
    goto :goto_3

    .line 105
    :cond_c
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-eq v5, v0, :cond_b

    .line 110
    .line 111
    :goto_3
    if-eqz v2, :cond_0

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_d
    :goto_4
    if-eqz v2, :cond_e

    .line 115
    .line 116
    invoke-virtual {p0}, Lo/j3;->Ͳ()Ljava/lang/Thread;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eq v0, p1, :cond_f

    .line 125
    .line 126
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_e
    sget-object v0, Lo/c2;->ʹ:Lo/c2;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lo/c2;->ͷ(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    :cond_f
    :goto_5
    return-void
.end method

.method public final ͺ()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo/j3;->Ͳ:Lo/ib;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v3, v0, Lo/ib;->ˏ:I

    .line 8
    .line 9
    iget v0, v0, Lo/ib;->Ͱ:I

    .line 10
    .line 11
    if-ne v3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v2

    .line 17
    :goto_1
    if-nez v0, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    iget-object v0, p0, Lo/i3;->_delayed:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lo/h3;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Lo/e6;->ͼ()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget-object v0, p0, Lo/i3;->_queue:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_4
    instance-of v3, v0, Lo/t7;

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    check-cast v0, Lo/t7;

    .line 43
    .line 44
    invoke-virtual {v0}, Lo/t7;->ͱ()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_3

    .line 49
    :cond_5
    sget-object v3, Lo/e6;->Ͱ:Lo/vh;

    .line 50
    .line 51
    if-ne v0, v3, :cond_6

    .line 52
    .line 53
    :goto_2
    move v1, v2

    .line 54
    :cond_6
    :goto_3
    return v1
.end method

.method public final ͻ()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/j3;->ʹ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-object v0, p0, Lo/i3;->_delayed:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lo/h3;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lo/e6;->ͼ()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    monitor-enter v0

    .line 26
    monitor-exit v0

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/i3;->_queue:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    instance-of v6, v0, Lo/t7;

    .line 36
    .line 37
    if-eqz v6, :cond_6

    .line 38
    .line 39
    move-object v5, v0

    .line 40
    check-cast v5, Lo/t7;

    .line 41
    .line 42
    invoke-virtual {v5}, Lo/t7;->ͳ()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    sget-object v7, Lo/t7;->ʹ:Lo/vh;

    .line 47
    .line 48
    if-eq v6, v7, :cond_3

    .line 49
    .line 50
    move-object v5, v6

    .line 51
    check-cast v5, Ljava/lang/Runnable;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    sget-object v6, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    .line 56
    invoke-virtual {v5}, Lo/t7;->Ͳ()Lo/t7;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    :cond_4
    invoke-virtual {v6, p0, v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eq v3, v0, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    sget-object v6, Lo/e6;->Ͱ:Lo/vh;

    .line 75
    .line 76
    if-ne v0, v6, :cond_7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    sget-object v6, Lo/i3;->ͳ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 80
    .line 81
    :cond_8
    invoke-virtual {v6, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_9

    .line 86
    .line 87
    move v5, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_9
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-eq v7, v0, :cond_8

    .line 94
    .line 95
    move v5, v4

    .line 96
    :goto_1
    if-eqz v5, :cond_1

    .line 97
    .line 98
    move-object v5, v0

    .line 99
    check-cast v5, Ljava/lang/Runnable;

    .line 100
    .line 101
    :goto_2
    if-eqz v5, :cond_a

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 104
    .line 105
    .line 106
    return-wide v1

    .line 107
    :cond_a
    iget-object v0, p0, Lo/j3;->Ͳ:Lo/ib;

    .line 108
    .line 109
    const-wide v5, 0x7fffffffffffffffL

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    if-nez v0, :cond_b

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_b
    iget v7, v0, Lo/ib;->ˏ:I

    .line 118
    .line 119
    iget v0, v0, Lo/ib;->Ͱ:I

    .line 120
    .line 121
    if-ne v7, v0, :cond_c

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_c
    move v3, v4

    .line 125
    :goto_3
    if-eqz v3, :cond_d

    .line 126
    .line 127
    :goto_4
    move-wide v3, v5

    .line 128
    goto :goto_5

    .line 129
    :cond_d
    move-wide v3, v1

    .line 130
    :goto_5
    cmp-long v0, v3, v1

    .line 131
    .line 132
    if-nez v0, :cond_e

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_e
    iget-object v0, p0, Lo/i3;->_queue:Ljava/lang/Object;

    .line 136
    .line 137
    if-eqz v0, :cond_10

    .line 138
    .line 139
    instance-of v3, v0, Lo/t7;

    .line 140
    .line 141
    if-eqz v3, :cond_f

    .line 142
    .line 143
    check-cast v0, Lo/t7;

    .line 144
    .line 145
    invoke-virtual {v0}, Lo/t7;->ͱ()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_10

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_f
    sget-object v3, Lo/e6;->Ͱ:Lo/vh;

    .line 153
    .line 154
    if-ne v0, v3, :cond_12

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_10
    iget-object v0, p0, Lo/i3;->_delayed:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lo/h3;

    .line 160
    .line 161
    if-eqz v0, :cond_11

    .line 162
    .line 163
    monitor-enter v0

    .line 164
    monitor-exit v0

    .line 165
    :cond_11
    :goto_6
    move-wide v1, v5

    .line 166
    :cond_12
    :goto_7
    return-wide v1
.end method

.method public final ͼ()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/i3;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lo/i3;->_delayed:Ljava/lang/Object;

    return-void
.end method
