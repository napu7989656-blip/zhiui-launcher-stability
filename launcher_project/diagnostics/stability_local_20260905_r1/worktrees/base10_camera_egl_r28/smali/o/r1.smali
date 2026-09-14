.class public final Lo/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic ͼ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final ͽ:Lo/vh;


# instance fields
.field private volatile synthetic _isTerminated:I

.field volatile synthetic controlState:J

.field private volatile synthetic parkedWorkersStack:J

.field public final ʹ:Lo/i5;

.field public final Ͱ:I

.field public final ͱ:I

.field public final Ͳ:J

.field public final ͳ:Ljava/lang/String;

.field public final Ͷ:Lo/i5;

.field public final ͷ:Lo/zf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/vh;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/r1;->ͽ:Lo/vh;

    const-string v0, "parkedWorkersStack"

    const-class v1, Lo/r1;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/r1;->ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "controlState"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_isTerminated"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/r1;->ͼ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/r1;->Ͱ:I

    iput p2, p0, Lo/r1;->ͱ:I

    iput-wide p3, p0, Lo/r1;->Ͳ:J

    iput-object p5, p0, Lo/r1;->ͳ:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    if-eqz v1, :cond_7

    if-lt p2, p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    const-string v2, "Max pool size "

    if-eqz v1, :cond_6

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, p5

    :goto_2
    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, p5

    :goto_3
    if-eqz v0, :cond_4

    new-instance p2, Lo/i5;

    invoke-direct {p2}, Lo/i5;-><init>()V

    iput-object p2, p0, Lo/r1;->ʹ:Lo/i5;

    new-instance p2, Lo/i5;

    invoke-direct {p2}, Lo/i5;-><init>()V

    iput-object p2, p0, Lo/r1;->Ͷ:Lo/i5;

    iput-wide v1, p0, Lo/r1;->parkedWorkersStack:J

    new-instance p2, Lo/zf;

    add-int/lit8 p3, p1, 0x1

    invoke-direct {p2, p3}, Lo/zf;-><init>(I)V

    iput-object p2, p0, Lo/r1;->ͷ:Lo/zf;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lo/r1;->controlState:J

    iput p5, p0, Lo/r1;->_isTerminated:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Idle worker keep alive time "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Core pool size "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be at least 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final close()V
    .locals 9

    .line 1
    sget-object v0, Lo/r1;->ͼ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v3, v0, Lo/q1;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    check-cast v0, Lo/q1;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v4

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v3, v0, Lo/q1;->ͷ:Lo/r1;

    .line 29
    .line 30
    invoke-static {v3, p0}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v0, v4

    .line 38
    :goto_1
    iget-object v3, p0, Lo/r1;->ͷ:Lo/zf;

    .line 39
    .line 40
    monitor-enter v3

    .line 41
    :try_start_0
    iget-wide v5, p0, Lo/r1;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    const-wide/32 v7, 0x1fffff

    .line 44
    .line 45
    .line 46
    and-long/2addr v5, v7

    .line 47
    long-to-int v5, v5

    .line 48
    monitor-exit v3

    .line 49
    if-gt v2, v5, :cond_7

    .line 50
    .line 51
    move v3, v2

    .line 52
    :goto_2
    iget-object v6, p0, Lo/r1;->ͷ:Lo/zf;

    .line 53
    .line 54
    invoke-virtual {v6, v3}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v6}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    check-cast v6, Lo/q1;

    .line 62
    .line 63
    if-eq v6, v0, :cond_6

    .line 64
    .line 65
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v7, 0x2710

    .line 75
    .line 76
    invoke-virtual {v6, v7, v8}, Ljava/lang/Thread;->join(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iget-object v6, v6, Lo/q1;->Ͱ:Lo/tm;

    .line 81
    .line 82
    iget-object v7, p0, Lo/r1;->Ͷ:Lo/i5;

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v8, Lo/tm;->ˏ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    .line 89
    invoke-virtual {v8, v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Lo/yh;

    .line 94
    .line 95
    if-eqz v8, :cond_4

    .line 96
    .line 97
    invoke-virtual {v7, v8}, Lo/r7;->ˋ(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v6}, Lo/tm;->ͱ()Lo/yh;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-nez v8, :cond_5

    .line 105
    .line 106
    move v8, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_5
    invoke-virtual {v7, v8}, Lo/r7;->ˋ(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move v8, v2

    .line 112
    :goto_4
    if-nez v8, :cond_4

    .line 113
    .line 114
    :cond_6
    if-eq v3, v5, :cond_7

    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    iget-object v1, p0, Lo/r1;->Ͷ:Lo/i5;

    .line 120
    .line 121
    invoke-virtual {v1}, Lo/r7;->ˏ()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lo/r1;->ʹ:Lo/i5;

    .line 125
    .line 126
    invoke-virtual {v1}, Lo/r7;->ˏ()V

    .line 127
    .line 128
    .line 129
    :goto_5
    if-eqz v0, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lo/q1;->ˋ(Z)Lo/yh;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-nez v1, :cond_a

    .line 136
    .line 137
    :cond_8
    iget-object v1, p0, Lo/r1;->ʹ:Lo/i5;

    .line 138
    .line 139
    invoke-virtual {v1}, Lo/r7;->ͱ()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lo/yh;

    .line 144
    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    iget-object v1, p0, Lo/r1;->Ͷ:Lo/i5;

    .line 148
    .line 149
    invoke-virtual {v1}, Lo/r7;->ͱ()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lo/yh;

    .line 154
    .line 155
    if-nez v1, :cond_a

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    const/4 v1, 0x5

    .line 160
    invoke-virtual {v0, v1}, Lo/q1;->Ͷ(I)Z

    .line 161
    .line 162
    .line 163
    :cond_9
    const-wide/16 v0, 0x0

    .line 164
    .line 165
    iput-wide v0, p0, Lo/r1;->parkedWorkersStack:J

    .line 166
    .line 167
    iput-wide v0, p0, Lo/r1;->controlState:J

    .line 168
    .line 169
    :goto_6
    return-void

    .line 170
    :cond_a
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :catchall_0
    move-exception v1

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-interface {v4, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    monitor-exit v3

    .line 189
    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lo/bi;->ͳ:Lo/zh;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lo/r1;->ˏ(Ljava/lang/Runnable;Lo/zh;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo/r1;->ͷ:Lo/zf;

    invoke-virtual {v1}, Lo/zf;->ˋ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v3

    :goto_0
    if-ge v8, v1, :cond_7

    iget-object v9, p0, Lo/r1;->ͷ:Lo/zf;

    invoke-virtual {v9, v8}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/q1;

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    iget-object v10, v9, Lo/q1;->Ͱ:Lo/tm;

    invoke-virtual {v10}, Lo/tm;->Ͱ()I

    move-result v10

    iget v9, v9, Lo/q1;->ͱ:I

    invoke-static {v9}, Lo/v1;->ΐ(I)I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v3, :cond_4

    const/4 v11, 0x2

    if-eq v9, v11, :cond_3

    const/4 v11, 0x3

    if-eq v9, v11, :cond_2

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    iget-wide v8, p0, Lo/r1;->controlState:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/r1;->ͳ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Pool Size {core = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/r1;->Ͱ:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/r1;->ͱ:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, Worker States {CPU = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dormant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", terminated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, running workers queues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/r1;->ʹ:Lo/i5;

    invoke-virtual {v0}, Lo/r7;->Ͱ()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/r1;->Ͷ:Lo/i5;

    invoke-virtual {v0}, Lo/r7;->Ͱ()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v8

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x3ffffe00000L

    and-long/2addr v2, v8

    const/16 v0, 0x15

    shr-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/r1;->Ͱ:I

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v2, v8

    const/16 v4, 0x2a

    shr-long/2addr v2, v4

    long-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʹ()Z
    .locals 12

    .line 1
    :cond_0
    iget-wide v2, p0, Lo/r1;->parkedWorkersStack:J

    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    iget-object v1, p0, Lo/r1;->ͷ:Lo/zf;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v6, v0

    .line 15
    check-cast v6, Lo/q1;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, -0x1

    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-wide/32 v0, 0x200000

    .line 24
    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    const-wide/32 v4, -0x200000

    .line 28
    .line 29
    .line 30
    and-long/2addr v0, v4

    .line 31
    move-object v4, v6

    .line 32
    :cond_2
    invoke-virtual {v4}, Lo/q1;->Ͱ()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    sget-object v9, Lo/r1;->ͽ:Lo/vh;

    .line 37
    .line 38
    if-ne v4, v9, :cond_3

    .line 39
    .line 40
    move v5, v8

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    if-nez v4, :cond_4

    .line 43
    .line 44
    move v5, v7

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    check-cast v4, Lo/q1;

    .line 47
    .line 48
    invoke-virtual {v4}, Lo/q1;->ˏ()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    :goto_0
    if-ltz v5, :cond_0

    .line 55
    .line 56
    sget-object v4, Lo/r1;->ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 57
    .line 58
    int-to-long v10, v5

    .line 59
    or-long/2addr v10, v0

    .line 60
    move-object v0, v4

    .line 61
    move-object v1, p0

    .line 62
    move-wide v4, v10

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {v6, v9}, Lo/q1;->ʹ(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    if-nez v6, :cond_5

    .line 73
    .line 74
    return v7

    .line 75
    :cond_5
    sget-object v0, Lo/q1;->ͺ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 76
    .line 77
    invoke-virtual {v0, v6, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    return v0
.end method

.method public final ˋ()I
    .locals 10

    .line 1
    iget-object v0, p0, Lo/r1;->ͷ:Lo/zf;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lo/r1;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lo/r1;->controlState:J

    .line 12
    .line 13
    const-wide/32 v3, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long v5, v1, v3

    .line 17
    .line 18
    long-to-int v5, v5

    .line 19
    const-wide v6, 0x3ffffe00000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v6

    .line 25
    const/16 v6, 0x15

    .line 26
    .line 27
    shr-long/2addr v1, v6

    .line 28
    long-to-int v1, v1

    .line 29
    sub-int v1, v5, v1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-gez v1, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_1
    iget v6, p0, Lo/r1;->Ͱ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    if-lt v1, v6, :cond_2

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :cond_2
    :try_start_2
    iget v6, p0, Lo/r1;->ͱ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    if-lt v5, v6, :cond_3

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_3
    :try_start_3
    iget-wide v5, p0, Lo/r1;->controlState:J

    .line 48
    .line 49
    and-long/2addr v5, v3

    .line 50
    long-to-int v5, v5

    .line 51
    const/4 v6, 0x1

    .line 52
    add-int/2addr v5, v6

    .line 53
    if-lez v5, :cond_4

    .line 54
    .line 55
    iget-object v7, p0, Lo/r1;->ͷ:Lo/zf;

    .line 56
    .line 57
    invoke-virtual {v7, v5}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    if-nez v7, :cond_4

    .line 62
    .line 63
    move v7, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    move v7, v2

    .line 66
    :goto_0
    if-eqz v7, :cond_7

    .line 67
    .line 68
    new-instance v7, Lo/q1;

    .line 69
    .line 70
    invoke-direct {v7, p0, v5}, Lo/q1;-><init>(Lo/r1;I)V

    .line 71
    .line 72
    .line 73
    iget-object v8, p0, Lo/r1;->ͷ:Lo/zf;

    .line 74
    .line 75
    invoke-virtual {v8, v5, v7}, Lo/zf;->Ͱ(ILo/q1;)V

    .line 76
    .line 77
    .line 78
    sget-object v8, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 79
    .line 80
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    and-long/2addr v3, v8

    .line 85
    long-to-int v3, v3

    .line 86
    if-ne v5, v3, :cond_5

    .line 87
    .line 88
    move v2, v6

    .line 89
    :cond_5
    if-eqz v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    add-int/2addr v1, v6

    .line 95
    monitor-exit v0

    .line 96
    return v1

    .line 97
    :cond_6
    :try_start_4
    const-string v1, "Failed requirement."

    .line 98
    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :cond_7
    const-string v1, "Failed requirement."

    .line 110
    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0

    .line 123
    throw v1
.end method

.method public final ˏ(Ljava/lang/Runnable;Lo/zh;Z)V
    .locals 4

    .line 1
    sget-object v0, Lo/bi;->Ͳ:Lo/i9;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, Lo/yh;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lo/yh;

    .line 15
    .line 16
    iput-wide v0, p1, Lo/yh;->Ͱ:J

    .line 17
    .line 18
    iput-object p2, p1, Lo/yh;->ͱ:Lo/zh;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lo/ai;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, Lo/ai;-><init>(Ljava/lang/Runnable;JLo/zh;)V

    .line 24
    .line 25
    .line 26
    move-object p1, v2

    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    instance-of v0, p2, Lo/q1;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p2, Lo/q1;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p2, v1

    .line 40
    :goto_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    iget-object v0, p2, Lo/q1;->ͷ:Lo/r1;

    .line 43
    .line 44
    invoke-static {v0, p0}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    move-object v1, p2

    .line 51
    :cond_2
    const/4 p2, 0x1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget v0, v1, Lo/q1;->ͱ:I

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    if-ne v0, v2, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    iget-object v2, p1, Lo/yh;->ͱ:Lo/zh;

    .line 62
    .line 63
    iget v2, v2, Lo/zh;->ˋ:I

    .line 64
    .line 65
    if-nez v2, :cond_5

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    if-ne v0, v2, :cond_5

    .line 69
    .line 70
    :goto_2
    move-object v0, p1

    .line 71
    goto :goto_3

    .line 72
    :cond_5
    iput-boolean p2, v1, Lo/q1;->Ͷ:Z

    .line 73
    .line 74
    iget-object v0, v1, Lo/q1;->Ͱ:Lo/tm;

    .line 75
    .line 76
    invoke-virtual {v0, p1, p3}, Lo/tm;->ˋ(Lo/yh;Z)Lo/yh;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_3
    const/4 v2, 0x0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    iget-object v3, v0, Lo/yh;->ͱ:Lo/zh;

    .line 84
    .line 85
    iget v3, v3, Lo/zh;->ˋ:I

    .line 86
    .line 87
    if-ne v3, p2, :cond_6

    .line 88
    .line 89
    move v3, p2

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    move v3, v2

    .line 92
    :goto_4
    if-eqz v3, :cond_7

    .line 93
    .line 94
    iget-object v3, p0, Lo/r1;->Ͷ:Lo/i5;

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_7
    iget-object v3, p0, Lo/r1;->ʹ:Lo/i5;

    .line 98
    .line 99
    :goto_5
    invoke-virtual {v3, v0}, Lo/r7;->ˋ(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object p3, p0, Lo/r1;->ͳ:Ljava/lang/String;

    .line 114
    .line 115
    const-string v0, " was terminated"

    .line 116
    .line 117
    invoke-static {p2, p3, v0}, Lo/v1;->ʹ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_9
    :goto_6
    if-eqz p3, :cond_a

    .line 126
    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_a
    move p2, v2

    .line 131
    :goto_7
    iget-object p1, p1, Lo/yh;->ͱ:Lo/zh;

    .line 132
    .line 133
    iget p1, p1, Lo/zh;->ˋ:I

    .line 134
    .line 135
    if-nez p1, :cond_e

    .line 136
    .line 137
    if-eqz p2, :cond_b

    .line 138
    .line 139
    return-void

    .line 140
    :cond_b
    invoke-virtual {p0}, Lo/r1;->ʹ()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_c

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_c
    iget-wide p1, p0, Lo/r1;->controlState:J

    .line 148
    .line 149
    invoke-virtual {p0, p1, p2}, Lo/r1;->ͳ(J)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_d

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_d
    invoke-virtual {p0}, Lo/r1;->ʹ()Z

    .line 157
    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_e
    sget-object p1, Lo/r1;->ͻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 161
    .line 162
    const-wide/32 v0, 0x200000

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    if-eqz p2, :cond_f

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_f
    invoke-virtual {p0}, Lo/r1;->ʹ()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_10

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_10
    invoke-virtual {p0, v0, v1}, Lo/r1;->ͳ(J)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_11

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_11
    invoke-virtual {p0}, Lo/r1;->ʹ()Z

    .line 187
    .line 188
    .line 189
    :goto_8
    return-void
.end method

.method public final Ͱ()Z
    .locals 1

    .line 1
    iget v0, p0, Lo/r1;->_isTerminated:I

    return v0
.end method

.method public final ͱ(Lo/q1;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lo/q1;->Ͱ()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lo/r1;->ͽ:Lo/vh;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lo/r1;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    const-wide/32 v1, 0x200000

    add-long/2addr v1, v4

    const-wide/32 v6, -0x200000

    and-long/2addr v1, v6

    invoke-virtual {p1}, Lo/q1;->ˏ()I

    move-result v3

    iget-object v6, p0, Lo/r1;->ͷ:Lo/zf;

    invoke-virtual {v6, v0}, Lo/zf;->ˏ(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/q1;->ʹ(Ljava/lang/Object;)V

    sget-object v0, Lo/r1;->ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v3

    or-long/2addr v6, v1

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final Ͳ(Lo/q1;II)V
    .locals 8

    .line 1
    :cond_0
    iget-wide v2, p0, Lo/r1;->parkedWorkersStack:J

    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    const-wide/32 v4, 0x200000

    .line 9
    .line 10
    .line 11
    add-long/2addr v4, v2

    .line 12
    const-wide/32 v6, -0x200000

    .line 13
    .line 14
    .line 15
    and-long/2addr v4, v6

    .line 16
    if-ne v0, p2, :cond_5

    .line 17
    .line 18
    if-nez p3, :cond_4

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    :cond_1
    invoke-virtual {v0}, Lo/q1;->Ͱ()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lo/r1;->ͽ:Lo/vh;

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    check-cast v0, Lo/q1;

    .line 36
    .line 37
    invoke-virtual {v0}, Lo/q1;->ˏ()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move v0, p3

    .line 46
    :cond_5
    :goto_0
    if-ltz v0, :cond_0

    .line 47
    .line 48
    sget-object v1, Lo/r1;->ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 49
    .line 50
    int-to-long v6, v0

    .line 51
    or-long/2addr v4, v6

    .line 52
    move-object v0, v1

    .line 53
    move-object v1, p0

    .line 54
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    return-void
.end method

.method public final ͳ(J)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_0

    move v0, p1

    :cond_0
    iget p2, p0, Lo/r1;->Ͱ:I

    if-ge v0, p2, :cond_2

    invoke-virtual {p0}, Lo/r1;->ˋ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Lo/r1;->ˋ()I

    :cond_1
    if-lez v0, :cond_2

    return v1

    :cond_2
    return p1
.end method
