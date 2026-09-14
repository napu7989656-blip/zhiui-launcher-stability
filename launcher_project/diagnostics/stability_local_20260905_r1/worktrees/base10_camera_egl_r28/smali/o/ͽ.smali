.class public abstract Lo/ͽ;
.super Lo/s6;
.source "SourceFile"

# interfaces
.implements Lo/z0;
.implements Lo/s1;


# instance fields
.field public final ͱ:Lo/k1;


# direct methods
.method public constructor <init>(Lo/k1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lo/s6;-><init>(Z)V

    sget-object p2, Lo/z;->Ͳ:Lo/z;

    invoke-interface {p1, p2}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object p2

    check-cast p2, Lo/l6;

    invoke-virtual {p0, p2}, Lo/s6;->Δ(Lo/l6;)V

    invoke-interface {p1, p0}, Lo/k1;->plus(Lo/k1;)Lo/k1;

    move-result-object p1

    iput-object p1, p0, Lo/ͽ;->ͱ:Lo/k1;

    return-void
.end method


# virtual methods
.method public final getContext()Lo/k1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ͽ;->ͱ:Lo/k1;

    return-object v0
.end method

.method public final getCoroutineContext()Lo/k1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ͽ;->ͱ:Lo/k1;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lo/n0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lo/s6;->Ζ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lo/e6;->Ͳ:Lo/vh;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lo/ͽ;->Ͷ(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public ˏ()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lo/s6;->ˏ()Z

    move-result v0

    return v0
.end method

.method public final ͼ()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " was cancelled"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final Γ(Lo/b7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ͽ;->ͱ:Lo/k1;

    invoke-static {v0, p1}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Η()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lo/s6;->Η()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Κ(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo/n0;

    if-eqz v0, :cond_0

    check-cast p1, Lo/n0;

    iget-object v0, p1, Lo/n0;->ˋ:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lo/n0;->ˋ()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lo/ͽ;->Π(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lo/ͽ;->Ρ(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Π(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Ρ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Σ(ILo/ͽ;Lo/u4;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    sget-object v1, Lo/ui;->ˋ:Lo/ui;

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object p1, p0, Lo/ͽ;->ͱ:Lo/k1;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lo/a2;->Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-static {v2, p3}, Lo/e6;->ˏ(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, p2, p0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    invoke-static {p1, v0}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    sget-object p1, Lo/t1;->Ͱ:Lo/t1;

    .line 36
    .line 37
    if-eq p2, p1, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p2

    .line 43
    :try_start_3
    invoke-static {p1, v0}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :goto_0
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_1
    invoke-virtual {p0, p2}, Lo/ͽ;->resumeWith(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    new-instance p1, Lo/b7;

    .line 56
    .line 57
    invoke-direct {p1}, Lo/b7;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    invoke-static {p2, p0, p3}, Lo/a2;->ʹ(Ljava/lang/Object;Lo/z0;Lo/u4;)Lo/z0;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1, v1}, Lo/z0;->resumeWith(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :try_start_4
    invoke-static {p2, p0, p3}, Lo/a2;->ʹ(Ljava/lang/Object;Lo/z0;Lo/u4;)Lo/z0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v1, v0}, Lo/a2;->Α(Lo/z0;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    return-void

    .line 85
    :catchall_2
    move-exception p1

    .line 86
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0, p2}, Lo/ͽ;->resumeWith(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_4
    throw v0
.end method
