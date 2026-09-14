.class public final Lo/e2;
.super Lo/l3;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final Ͱ:Lo/e2;

.field public static final ͱ:Lo/n1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo/e2;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/e2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo/e2;->Ͱ:Lo/e2;

    .line 7
    .line 8
    sget-object v0, Lo/vi;->Ͱ:Lo/vi;

    .line 9
    .line 10
    sget v1, Lo/xh;->ˋ:I

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    const/16 v2, 0xc

    .line 19
    .line 20
    const-string v3, "kotlinx.coroutines.io.parallelism"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v3, v1, v4, v4, v2}, Lo/a2;->Η(Ljava/lang/String;IIII)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lo/n1;->limitedParallelism(I)Lo/n1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lo/e2;->ͱ:Lo/n1;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo/e2;->ͱ:Lo/n1;

    invoke-virtual {v0, p1, p2}, Lo/n1;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchYield(Lo/k1;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo/e2;->ͱ:Lo/n1;

    invoke-virtual {v0, p1, p2}, Lo/n1;->dispatchYield(Lo/k1;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo/z2;->Ͱ:Lo/z2;

    invoke-virtual {p0, v0, p1}, Lo/e2;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final limitedParallelism(I)Lo/n1;
    .locals 1

    .line 1
    sget-object v0, Lo/vi;->Ͱ:Lo/vi;

    invoke-virtual {v0, p1}, Lo/n1;->limitedParallelism(I)Lo/n1;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
