.class public abstract Landroidx/lifecycle/LifecycleCoroutineScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/s1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic getCoroutineContext()Lo/k1;
.end method

.method public abstract getLifecycle$lifecycle_common()Landroidx/lifecycle/Lifecycle;
.end method

.method public final launchWhenCreated(Lo/u4;)Lo/l6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/u4;",
            ")",
            "Lo/l6;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScope$launchWhenCreated$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/lifecycle/LifecycleCoroutineScope$launchWhenCreated$1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lo/u4;Lo/z0;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v0, p1}, Lo/e6;->ͽ(Lo/s1;Lo/j5;Lo/u4;I)Lo/kh;

    move-result-object p1

    return-object p1
.end method

.method public final launchWhenResumed(Lo/u4;)Lo/l6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/u4;",
            ")",
            "Lo/l6;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScope$launchWhenResumed$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/lifecycle/LifecycleCoroutineScope$launchWhenResumed$1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lo/u4;Lo/z0;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v0, p1}, Lo/e6;->ͽ(Lo/s1;Lo/j5;Lo/u4;I)Lo/kh;

    move-result-object p1

    return-object p1
.end method

.method public final launchWhenStarted(Lo/u4;)Lo/l6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/u4;",
            ")",
            "Lo/l6;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScope$launchWhenStarted$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/lifecycle/LifecycleCoroutineScope$launchWhenStarted$1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lo/u4;Lo/z0;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v0, p1}, Lo/e6;->ͽ(Lo/s1;Lo/j5;Lo/u4;I)Lo/kh;

    move-result-object p1

    return-object p1
.end method
