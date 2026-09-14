.class public Lo/jg;
.super Lo/ͽ;
.source "SourceFile"

# interfaces
.implements Lo/u1;


# instance fields
.field public final Ͳ:Lo/z0;


# direct methods
.method public constructor <init>(Lo/z0;Lo/k1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lo/ͽ;-><init>(Lo/k1;Z)V

    iput-object p1, p0, Lo/jg;->Ͳ:Lo/z0;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lo/u1;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/jg;->Ͳ:Lo/z0;

    instance-of v1, v0, Lo/u1;

    if-eqz v1, :cond_0

    check-cast v0, Lo/u1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ʹ(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/jg;->Ͳ:Lo/z0;

    .line 2
    .line 3
    invoke-static {v0}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lo/e6;->Ά(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p1, v1}, Lo/a2;->Α(Lo/z0;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public Ͷ(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/jg;->Ͳ:Lo/z0;

    invoke-static {p1}, Lo/e6;->Ά(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/z0;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final Ε()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
