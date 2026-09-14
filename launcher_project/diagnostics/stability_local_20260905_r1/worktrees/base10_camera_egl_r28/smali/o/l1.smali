.class public final Lo/l1;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# direct methods
.method public constructor <init>(Lo/uf;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo/k1;

    .line 2
    .line 3
    check-cast p2, Lo/i1;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lo/k1;->plus(Lo/k1;)Lo/k1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
