.class public abstract Lo/yg;
.super Lo/bh;
.source "SourceFile"


# direct methods
.method public static final Γ(Lo/s3;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lo/r3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lo/r3;-><init>(Lo/s3;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lo/r3;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lo/r3;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final Δ(Lo/vg;Lkotlin/jvm/functions/Function1;)Lo/s3;
    .locals 1

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lo/h5;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lo/h5;-><init>(Lo/vg;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lo/s3;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lo/s3;-><init>(Lo/h5;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public static final Ε(Lo/vg;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Lo/vg;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lo/b3;->Ͱ:Lo/b3;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lo/a2;->Έ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v1
.end method
