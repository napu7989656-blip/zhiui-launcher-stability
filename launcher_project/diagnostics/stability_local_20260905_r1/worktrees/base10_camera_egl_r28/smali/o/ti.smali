.class public final Lo/ti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/i1;
.implements Lo/j1;


# static fields
.field public static final Ͱ:Lo/ti;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/ti;

    invoke-direct {v0}, Lo/ti;-><init>()V

    sput-object v0, Lo/ti;->Ͱ:Lo/ti;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final get(Lo/j1;)Lo/i1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->ͻ(Lo/i1;Lo/j1;)Lo/i1;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lo/j1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final minusKey(Lo/j1;)Lo/k1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->Ί(Lo/i1;Lo/j1;)Lo/k1;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lo/k1;)Lo/k1;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lo/a2;->Ό(Lo/k1;Lo/k1;)Lo/k1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
