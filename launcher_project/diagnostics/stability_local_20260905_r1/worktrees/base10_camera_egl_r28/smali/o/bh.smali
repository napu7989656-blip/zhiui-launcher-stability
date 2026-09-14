.class public abstract Lo/bh;
.super Lo/e6;
.source "SourceFile"


# direct methods
.method public static final Β(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lo/vg;
    .locals 2

    .line 1
    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lo/d3;->ˋ:Lo/d3;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/h5;

    new-instance v1, Lo/ah;

    invoke-direct {v1, p0}, Lo/ah;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lo/h5;-><init>(Lo/ah;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
