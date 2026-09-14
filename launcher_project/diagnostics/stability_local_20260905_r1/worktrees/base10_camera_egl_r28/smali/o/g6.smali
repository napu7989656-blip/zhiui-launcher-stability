.class public final Lo/g6;
.super Lo/a1;
.source "SourceFile"


# instance fields
.field public Ͱ:I

.field public final synthetic ͱ:Lo/u4;

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/z0;Lo/k1;Lo/u4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lo/g6;->ͱ:Lo/u4;

    iput-object p4, p0, Lo/g6;->Ͳ:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p3}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lo/a1;-><init>(Lo/z0;Lo/k1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo/g6;->Ͱ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lo/g6;->Ͱ:I

    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, Lo/g6;->Ͱ:I

    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    iget-object p1, p0, Lo/g6;->ͱ:Lo/u4;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lo/e6;->ˏ(ILjava/lang/Object;)V

    iget-object v0, p0, Lo/g6;->Ͳ:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
