.class public abstract Lo/a1;
.super Lo/ll;
.source "SourceFile"


# instance fields
.field private final _context:Lo/k1;

.field private transient intercepted:Lo/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/z0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/z0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/z0;->getContext()Lo/k1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lo/a1;-><init>(Lo/z0;Lo/k1;)V

    return-void
.end method

.method public constructor <init>(Lo/z0;Lo/k1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lo/ll;-><init>(Lo/z0;)V

    iput-object p2, p0, Lo/a1;->_context:Lo/k1;

    return-void
.end method


# virtual methods
.method public getContext()Lo/k1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/a1;->_context:Lo/k1;

    invoke-static {v0}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lo/z0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/z0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/a1;->intercepted:Lo/z0;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/a1;->getContext()Lo/k1;

    move-result-object v0

    sget v1, Lo/b1;->ˏ:I

    sget-object v1, Lo/z;->Ͱ:Lo/z;

    invoke-interface {v0, v1}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object v0

    check-cast v0, Lo/b1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo/b1;->interceptContinuation(Lo/z0;)Lo/z0;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lo/a1;->intercepted:Lo/z0;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/a1;->intercepted:Lo/z0;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lo/a1;->getContext()Lo/k1;

    move-result-object v1

    sget v2, Lo/b1;->ˏ:I

    sget-object v2, Lo/z;->Ͱ:Lo/z;

    invoke-interface {v1, v2}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object v1

    invoke-static {v1}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    check-cast v1, Lo/b1;

    invoke-interface {v1, v0}, Lo/b1;->releaseInterceptedContinuation(Lo/z0;)V

    :cond_0
    sget-object v0, Lo/m0;->Ͱ:Lo/m0;

    iput-object v0, p0, Lo/a1;->intercepted:Lo/z0;

    return-void
.end method
