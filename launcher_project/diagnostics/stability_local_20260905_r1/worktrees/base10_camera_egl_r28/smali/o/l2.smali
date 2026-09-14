.class public abstract Lo/l2;
.super Lo/yh;
.source "SourceFile"


# instance fields
.field public Ͳ:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object v2, Lo/bi;->ͳ:Lo/zh;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v2}, Lo/yh;-><init>(JLo/zh;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lo/l2;->Ͳ:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    sget-object v0, Lo/ui;->ˋ:Lo/ui;

    iget-object v1, p0, Lo/yh;->ͱ:Lo/zh;

    :try_start_0
    invoke-virtual {p0}, Lo/l2;->ˏ()Lo/z0;

    move-result-object v2

    check-cast v2, Lo/j2;

    iget-object v3, v2, Lo/j2;->ʹ:Lo/z0;

    iget-object v2, v2, Lo/j2;->ͷ:Ljava/lang/Object;

    invoke-interface {v3}, Lo/z0;->getContext()Lo/k1;

    move-result-object v4

    invoke-static {v4, v2}, Lo/a2;->Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lo/a2;->Ή:Lo/vh;

    const/4 v6, 0x0

    if-eq v2, v5, :cond_0

    invoke-static {v3, v4, v2}, Lo/e6;->ΐ(Lo/z0;Lo/k1;Ljava/lang/Object;)Lo/si;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    :try_start_1
    invoke-interface {v3}, Lo/z0;->getContext()Lo/k1;

    move-result-object v7

    invoke-virtual {p0}, Lo/l2;->ͳ()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8}, Lo/l2;->Ͱ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_3

    iget v10, p0, Lo/l2;->Ͳ:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v12, 0x2

    if-ne v10, v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    sget-object v10, Lo/z;->Ͳ:Lo/z;

    invoke-interface {v7, v10}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object v7

    check-cast v7, Lo/l6;

    goto :goto_2

    :cond_3
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lo/l6;->ˏ()Z

    move-result v10

    if-nez v10, :cond_4

    check-cast v7, Lo/s6;

    invoke-virtual {v7}, Lo/s6;->Ί()Ljava/util/concurrent/CancellationException;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lo/l2;->ˋ(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v7}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    move-result-object v7

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_5

    :cond_4
    if-eqz v9, :cond_5

    invoke-static {v9}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    move-result-object v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v8}, Lo/l2;->ͱ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    invoke-interface {v3, v7}, Lo/z0;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    :try_start_2
    invoke-virtual {v5}, Lo/si;->Τ()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-static {v4, v2}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lo/l2;->Ͳ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_5
    if-eqz v5, :cond_8

    :try_start_4
    invoke-virtual {v5}, Lo/si;->Τ()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-static {v4, v2}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    :cond_9
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo/l2;->Ͳ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public abstract ˋ(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract ˏ()Lo/z0;
.end method

.method public Ͱ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lo/n0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lo/n0;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lo/n0;->ˋ:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public ͱ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final Ͳ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Lo/c7;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lo/c7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lo/l2;->ˏ()Lo/z0;

    move-result-object p1

    invoke-interface {p1}, Lo/z0;->getContext()Lo/k1;

    move-result-object p1

    invoke-static {p1, p2}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract ͳ()Ljava/lang/Object;
.end method
