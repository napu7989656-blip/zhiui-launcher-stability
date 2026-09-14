.class public final Lo/ud;
.super Lo/ͽ;
.source "SourceFile"

# interfaces
.implements Lo/vd;
.implements Lo/d;


# instance fields
.field public final Ͳ:Lo/d;


# direct methods
.method public constructor <init>(Lo/k1;Lo/ͻ;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lo/ͽ;-><init>(Lo/k1;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lo/ud;->Ͳ:Lo/d;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final ˋ(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/s6;->Α()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lo/n0;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Lo/q6;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lo/q6;

    .line 14
    .line 15
    invoke-virtual {v0}, Lo/q6;->ͱ()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    if-nez p1, :cond_3

    .line 29
    .line 30
    new-instance p1, Lo/m6;

    .line 31
    .line 32
    invoke-virtual {p0}, Lo/ͽ;->ͼ()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {p1, v0, v1, p0}, Lo/m6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/l6;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0, p1}, Lo/ud;->ͺ(Ljava/util/concurrent/CancellationException;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    return-void
.end method

.method public final ˏ()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lo/ͽ;->ˏ()Z

    move-result v0

    return v0
.end method

.method public final Ͱ(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lo/sg;->Ͱ(Ljava/lang/Object;Lo/z0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final ͱ(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lo/sg;->ͱ(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final Ͳ(Lo/z0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lo/qf;->Ͳ(Lo/z0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 8
    .line 9
    return-object p1
.end method

.method public final ͳ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lo/sg;->ͳ()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final ͺ(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lo/qf;->ˋ(Ljava/util/concurrent/CancellationException;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lo/s6;->ͷ(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Π(ZLjava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    invoke-interface {v0, p2}, Lo/sg;->ͱ(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/ͽ;->ͱ:Lo/k1;

    invoke-static {p1, p2}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final Ρ(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lo/ui;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lo/ud;->Ͳ:Lo/d;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lo/sg;->ͱ(Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
