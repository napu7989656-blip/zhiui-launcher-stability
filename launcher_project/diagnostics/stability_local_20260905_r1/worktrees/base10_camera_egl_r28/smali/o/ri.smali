.class public final Lo/ri;
.super Lo/n1;
.source "SourceFile"


# static fields
.field public static final synthetic Ͱ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/ri;

    invoke-direct {v0}, Lo/ri;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lo/um;->Ͱ:Lo/z;

    invoke-interface {p1, p2}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object p1

    invoke-static {p1}, Lo/v1;->Έ(Lo/i1;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final limitedParallelism(I)Lo/n1;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
