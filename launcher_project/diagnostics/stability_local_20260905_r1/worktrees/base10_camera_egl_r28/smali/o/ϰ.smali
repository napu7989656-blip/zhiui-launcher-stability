.class public final Lo/ϰ;
.super Lo/ͻ;
.source "SourceFile"


# instance fields
.field private volatile synthetic size:I

.field public final ʹ:I

.field public final ͳ:I

.field public final Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

.field public ͷ:[Ljava/lang/Object;

.field public ͺ:I


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lo/ͻ;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo/ϰ;->ͳ:I

    .line 5
    .line 6
    iput p2, p0, Lo/ϰ;->ʹ:I

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 p3, 0x1

    .line 10
    if-lt p1, p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p3, p2

    .line 14
    :goto_0
    if-eqz p3, :cond_1

    .line 15
    .line 16
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    const/16 p3, 0x8

    .line 24
    .line 25
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p3, p1, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v0, Lo/a2;->ˋ:Lo/vh;

    .line 32
    .line 33
    invoke-static {p3, p2, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    .line 37
    .line 38
    iput p2, p0, Lo/ϰ;->size:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p3, "ArrayChannel capacity must be at least 1, but "

    .line 44
    .line 45
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " was specified"

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p2
.end method


# virtual methods
.method public final ʹ(Lo/tg;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lo/Β;->ʹ(Lo/tg;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final Ͷ()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(buffer:capacity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/ϰ;->ͳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ϰ;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ͻ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final ͼ()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/ϰ;->size:I

    iget v1, p0, Lo/ϰ;->ͳ:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/ϰ;->ʹ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final ͽ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v1, p0, Lo/ϰ;->size:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lo/Β;->ͷ()Lo/v;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    :try_start_1
    iget v2, p0, Lo/ϰ;->ͳ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    sget-object v3, Lo/a2;->ˏ:Lo/vh;

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    :try_start_2
    iput v2, p0, Lo/ϰ;->size:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    iget v2, p0, Lo/ϰ;->ʹ:I

    .line 32
    .line 33
    invoke-static {v2}, Lo/v1;->ΐ(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eq v2, v4, :cond_3

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-ne v2, v4, :cond_2

    .line 44
    .line 45
    move-object v2, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Lo/b7;

    .line 48
    .line 49
    invoke-direct {p1}, Lo/b7;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    sget-object v2, Lo/a2;->Ͱ:Lo/vh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    :goto_1
    if-eqz v2, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_5
    if-nez v1, :cond_9

    .line 64
    .line 65
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lo/ͻ;->Ά()Lo/rf;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_7

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_7
    instance-of v4, v2, Lo/v;

    .line 73
    .line 74
    if-eqz v4, :cond_8

    .line 75
    .line 76
    iput v1, p0, Lo/ϰ;->size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :cond_8
    :try_start_4
    invoke-interface {v2, p1}, Lo/rf;->ˋ(Ljava/lang/Object;)Lo/vh;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    iput v1, p0, Lo/ϰ;->size:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Lo/rf;->ͱ()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2}, Lo/rf;->Ͱ()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_9
    :goto_2
    :try_start_5
    invoke-virtual {p0, v1, p1}, Lo/ϰ;->Β(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    .line 106
    .line 107
    return-object v3

    .line 108
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public final Ή(Lo/Ͱ;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lo/ͻ;->Ή(Lo/Ͱ;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final Ί()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final Ό()Z
    .locals 1

    .line 1
    iget v0, p0, Lo/ϰ;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ύ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Lo/ͻ;->Ύ()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final Ώ(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v2, p0, Lo/ϰ;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v6, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    iget v7, p0, Lo/ϰ;->ͺ:I

    aget-object v6, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v7, Lo/a2;->ˋ:Lo/vh;

    if-eqz v0, :cond_0

    if-eq v6, v7, :cond_0

    :try_start_1
    invoke-static {v0, v6, v4}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    move-result-object v4

    :cond_0
    iget-object v6, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    iget v8, p0, Lo/ϰ;->ͺ:I

    aput-object v7, v6, v8

    add-int/lit8 v8, v8, 0x1

    array-length v6, v6

    rem-int/2addr v8, v6

    iput v8, p0, Lo/ϰ;->ͺ:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lo/ϰ;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Lo/ͻ;->Ώ(Z)V

    if-nez v4, :cond_2

    return-void

    :cond_2
    throw v4

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final Α()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lo/ϰ;->Ͷ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lo/ϰ;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lo/a2;->ͱ:Lo/vh;

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lo/Β;->ͷ()Lo/v;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v3, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    iget v4, p0, Lo/ϰ;->ͺ:I

    aget-object v5, v3, v4

    const/4 v6, 0x0

    aput-object v6, v3, v4

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lo/ϰ;->size:I

    iget v3, p0, Lo/ϰ;->ͳ:I

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    :goto_1
    invoke-virtual {p0}, Lo/Β;->Έ()Lo/rg;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lo/rg;->ΐ()Lo/vh;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lo/rg;->Ύ()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    move v6, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lo/rg;->Α()V

    move-object v6, v3

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v3, 0x0

    move-object v7, v2

    move-object v9, v6

    move v6, v3

    move-object v3, v9

    :goto_3
    if-eq v7, v2, :cond_5

    instance-of v2, v7, Lo/v;

    if-nez v2, :cond_5

    iput v1, p0, Lo/ϰ;->size:I

    iget-object v2, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    iget v8, p0, Lo/ϰ;->ͺ:I

    add-int/2addr v8, v1

    array-length v1, v2

    rem-int/2addr v8, v1

    aput-object v7, v2, v8

    :cond_5
    iget v1, p0, Lo/ϰ;->ͺ:I

    add-int/2addr v1, v4

    iget-object v2, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lo/ϰ;->ͺ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v6, :cond_6

    invoke-static {v3}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lo/rg;->Ό()V

    :cond_6
    return-object v5

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final Β(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lo/ϰ;->ͳ:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-lt p1, v2, :cond_1

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, p1, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    .line 24
    .line 25
    iget v5, p0, Lo/ϰ;->ͺ:I

    .line 26
    .line 27
    add-int/2addr v5, v3

    .line 28
    array-length v6, v4

    .line 29
    rem-int/2addr v5, v6

    .line 30
    aget-object v4, v4, v5

    .line 31
    .line 32
    aput-object v4, v1, v3

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v3, Lo/a2;->ˋ:Lo/vh;

    .line 38
    .line 39
    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    .line 43
    .line 44
    iput v2, p0, Lo/ϰ;->ͺ:I

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    .line 47
    .line 48
    iget v1, p0, Lo/ϰ;->ͺ:I

    .line 49
    .line 50
    add-int/2addr v1, p1

    .line 51
    array-length p1, v0

    .line 52
    rem-int/2addr v1, p1

    .line 53
    aput-object p2, v0, v1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lo/ϰ;->ͷ:[Ljava/lang/Object;

    .line 57
    .line 58
    iget v1, p0, Lo/ϰ;->ͺ:I

    .line 59
    .line 60
    array-length v2, v0

    .line 61
    rem-int v2, v1, v2

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    aput-object v3, v0, v2

    .line 65
    .line 66
    add-int/2addr p1, v1

    .line 67
    array-length v2, v0

    .line 68
    rem-int/2addr p1, v2

    .line 69
    aput-object p2, v0, p1

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    array-length p1, v0

    .line 74
    rem-int/2addr v1, p1

    .line 75
    iput v1, p0, Lo/ϰ;->ͺ:I

    .line 76
    .line 77
    :goto_1
    return-void
.end method
