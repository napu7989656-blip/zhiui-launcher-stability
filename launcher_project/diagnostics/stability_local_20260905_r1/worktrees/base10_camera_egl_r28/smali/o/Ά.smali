.class public abstract Lo/Ά;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/i1;


# instance fields
.field private final key:Lo/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/j1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/j1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ά;->key:Lo/j1;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/u4;",
            ")TR;"
        }
    .end annotation

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1, p0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public get(Lo/j1;)Lo/i1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->ͻ(Lo/i1;Lo/j1;)Lo/i1;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lo/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/j1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/Ά;->key:Lo/j1;

    return-object v0
.end method

.method public minusKey(Lo/j1;)Lo/k1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->Ί(Lo/i1;Lo/j1;)Lo/k1;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lo/k1;)Lo/k1;
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
