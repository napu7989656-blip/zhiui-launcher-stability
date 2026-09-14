.class public final Lo/IlI;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public ʹ:I

.field public Ͱ:Z

.field public final ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

.field public Ͳ:[B

.field public ͳ:I

.field public final Ͷ:Ljava/lang/Object;

.field public final ͷ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/IlI;->Ͷ:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/IlI;->ͷ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/IlI;->ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput v0, p0, Lo/IlI;->ͳ:I

    iput v0, p0, Lo/IlI;->ʹ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/IlI;->Ͳ:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/IlI;->Ͱ:Z

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/IlI;->Ͱ:Z

    return-void
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo/IlI;->Ͱ:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lo/IlI;->ͷ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lo/IlI;->ˋ()V

    iget v2, p0, Lo/IlI;->ͳ:I

    iget v3, p0, Lo/IlI;->ʹ:I

    if-ge v2, v3, :cond_1

    iget-object v1, p0, Lo/IlI;->Ͳ:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/IlI;->ͳ:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final read([BII)I
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    iget-boolean v0, p0, Lo/IlI;->Ͱ:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lo/IlI;->ͷ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lo/IlI;->ˋ()V

    iget v2, p0, Lo/IlI;->ʹ:I

    iget v3, p0, Lo/IlI;->ͳ:I

    sub-int v4, v2, v3

    if-lez v4, :cond_1

    sub-int/2addr v2, v3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object p3, p0, Lo/IlI;->Ͳ:[B

    iget v2, p0, Lo/IlI;->ͳ:I

    invoke-static {p3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lo/IlI;->ͳ:I

    add-int/2addr p1, v1

    iput p1, p0, Lo/IlI;->ͳ:I

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public final skip(J)J
    .locals 10

    .line 1
    iget-object v0, p0, Lo/IlI;->ͷ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lo/IlI;->ˋ()V

    iget v1, p0, Lo/IlI;->ʹ:I

    iget v2, p0, Lo/IlI;->ͳ:I

    sub-int/2addr v1, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    :cond_0
    move-wide v4, v2

    :goto_0
    cmp-long v6, p1, v2

    if-lez v6, :cond_1

    if-lez v1, :cond_1

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget v1, p0, Lo/IlI;->ͳ:I

    int-to-long v8, v1

    add-long/2addr v8, v6

    long-to-int v1, v8

    iput v1, p0, Lo/IlI;->ͳ:I

    sub-long/2addr p1, v6

    add-long/2addr v4, v6

    invoke-virtual {p0}, Lo/IlI;->ˋ()V

    iget v1, p0, Lo/IlI;->ʹ:I

    iget v6, p0, Lo/IlI;->ͳ:I

    sub-int/2addr v1, v6

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˋ()V
    .locals 3

    .line 1
    iget v0, p0, Lo/IlI;->ͳ:I

    iget v1, p0, Lo/IlI;->ʹ:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lo/IlI;->Ͷ:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget v1, p0, Lo/IlI;->ͳ:I

    iget v2, p0, Lo/IlI;->ʹ:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lo/IlI;->ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput v2, p0, Lo/IlI;->ͳ:I

    iput v2, p0, Lo/IlI;->ʹ:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/IlI;->ͱ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lo/IlI;->Ͳ:[B
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lo/IlI;->Ͳ:[B

    if-eqz v1, :cond_1

    iput v2, p0, Lo/IlI;->ͳ:I

    array-length v1, v1

    iput v1, p0, Lo/IlI;->ʹ:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lo/IlI;->ͳ:I

    iput v2, p0, Lo/IlI;->ʹ:I

    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :goto_2
    return-void
.end method
