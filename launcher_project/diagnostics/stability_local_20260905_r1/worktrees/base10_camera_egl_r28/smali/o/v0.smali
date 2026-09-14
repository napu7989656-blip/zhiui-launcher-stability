.class public final Lo/v0;
.super Lo/ͻ;
.source "SourceFile"


# instance fields
.field public ʹ:Ljava/lang/Object;

.field public final ͳ:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/ͻ;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lo/a2;->ˋ:Lo/vh;

    iput-object p1, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final Ͷ()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "(value="

    iget-object v1, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final ͻ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final ͼ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final ͽ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lo/Β;->ͷ()Lo/v;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/v0;->ʹ:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    sget-object v2, Lo/a2;->ˋ:Lo/vh;

    .line 19
    .line 20
    if-ne v1, v2, :cond_4

    .line 21
    .line 22
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lo/ͻ;->Ά()Lo/rf;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    instance-of v3, v1, Lo/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    :try_start_3
    invoke-interface {v1, p1}, Lo/rf;->ˋ(Ljava/lang/Object;)Lo/vh;

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lo/rf;->ͱ()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Lo/rf;->Ͱ()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_4
    :goto_0
    :try_start_4
    iget-object v1, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-ne v1, v2, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget-object v2, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    invoke-static {v2, v1, v3}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_6
    :goto_1
    iput-object p1, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    .line 69
    .line 70
    if-nez v3, :cond_7

    .line 71
    .line 72
    sget-object p1, Lo/a2;->ˏ:Lo/vh;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_7
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public final Ή(Lo/Ͱ;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    sget-object v2, Lo/a2;->ˋ:Lo/vh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final Ώ(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lo/a2;->ˋ:Lo/vh;

    .line 7
    .line 8
    iget-object v2, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, p0, Lo/Β;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-static {v4, v2, v3}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :cond_1
    :goto_0
    iput-object v1, p0, Lo/v0;->ʹ:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1}, Lo/ͻ;->Ώ(Z)V

    .line 28
    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    throw v3

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final Α()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/v0;->ͳ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lo/v0;->ʹ:Ljava/lang/Object;

    sget-object v2, Lo/a2;->ˋ:Lo/vh;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lo/Β;->ͷ()Lo/v;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lo/a2;->ͱ:Lo/vh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    iput-object v2, p0, Lo/v0;->ʹ:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
