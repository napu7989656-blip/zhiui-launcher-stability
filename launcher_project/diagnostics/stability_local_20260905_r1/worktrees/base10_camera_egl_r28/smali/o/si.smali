.class public final Lo/si;
.super Lo/jg;
.source "SourceFile"


# instance fields
.field public final ͳ:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lo/z0;Lo/k1;)V
    .locals 2

    .line 1
    sget-object v0, Lo/ti;->Ͱ:Lo/ti;

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lo/k1;->get(Lo/j1;)Lo/i1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, v0}, Lo/k1;->plus(Lo/k1;)Lo/k1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p2

    .line 15
    :goto_0
    invoke-direct {p0, p1, v0}, Lo/jg;-><init>(Lo/z0;Lo/k1;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lo/si;->ͳ:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-interface {p1}, Lo/z0;->getContext()Lo/k1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v1, Lo/z;->Ͱ:Lo/z;

    .line 30
    .line 31
    invoke-interface {p1, v1}, Lo/k1;->get(Lo/j1;)Lo/i1;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of p1, p1, Lo/n1;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-static {p2, p1}, Lo/a2;->Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2, p1}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lo/mc;

    .line 48
    .line 49
    invoke-direct {v1, p2, p1}, Lo/mc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public final Ͷ(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/si;->ͳ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/mc;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lo/mc;->Ͱ:Ljava/lang/Object;

    check-cast v3, Lo/k1;

    iget-object v1, v1, Lo/mc;->ͱ:Ljava/lang/Object;

    invoke-static {v3, v1}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lo/e6;->Ά(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/jg;->Ͳ:Lo/z0;

    invoke-interface {v0}, Lo/z0;->getContext()Lo/k1;

    move-result-object v1

    invoke-static {v1, v2}, Lo/a2;->Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lo/a2;->Ή:Lo/vh;

    if-eq v3, v4, :cond_1

    invoke-static {v0, v1, v3}, Lo/e6;->ΐ(Lo/z0;Lo/k1;Ljava/lang/Object;)Lo/si;

    move-result-object v2

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lo/z0;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/si;->Τ()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {v1, v3}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lo/si;->Τ()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {v1, v3}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final Τ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/si;->ͳ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
