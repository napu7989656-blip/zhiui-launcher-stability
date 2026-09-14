.class public abstract Lo/xg;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final ˋ(Lo/vg;Lo/z0;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1}, Lo/vg;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lo/wg;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Lo/ui;->ˋ:Lo/ui;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object p1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, v0, Lo/wg;->Ͳ:Ljava/util/Iterator;

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    iput p1, v0, Lo/wg;->Ͱ:I

    .line 22
    .line 23
    iput-object p2, v0, Lo/wg;->ͳ:Lo/z0;

    .line 24
    .line 25
    sget-object p1, Lo/t1;->Ͱ:Lo/t1;

    .line 26
    .line 27
    const-string v0, "frame"

    .line 28
    .line 29
    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object p2, Lo/t1;->Ͱ:Lo/t1;

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    return-object v2
.end method
