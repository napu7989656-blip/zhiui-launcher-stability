.class public final Landroidx/lifecycle/PausingDispatcher;
.super Lo/n1;
.source "SourceFile"


# instance fields
.field public final dispatchQueue:Landroidx/lifecycle/DispatchQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/n1;-><init>()V

    new-instance v0, Landroidx/lifecycle/DispatchQueue;

    invoke-direct {v0}, Landroidx/lifecycle/DispatchQueue;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/PausingDispatcher;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;

    return-void
.end method


# virtual methods
.method public dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/PausingDispatcher;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/DispatchQueue;->dispatchAndEnqueue(Lo/k1;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDispatchNeeded(Lo/k1;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lo/m2;->ˋ:Lo/f2;

    .line 7
    .line 8
    sget-object v0, Lo/j8;->ˋ:Lo/h8;

    .line 9
    .line 10
    check-cast v0, Lo/j5;

    .line 11
    .line 12
    iget-object v0, v0, Lo/j5;->ͳ:Lo/j5;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lo/j5;->isDispatchNeeded(Lo/k1;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/PausingDispatcher;->dispatchQueue:Landroidx/lifecycle/DispatchQueue;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    xor-int/2addr p1, v0

    .line 29
    return p1
.end method
