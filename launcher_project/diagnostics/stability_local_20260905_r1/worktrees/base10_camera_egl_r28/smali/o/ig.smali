.class public abstract Lo/ig;
.super Lo/l3;
.source "SourceFile"


# instance fields
.field public final Ͱ:Lo/r1;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 7

    .line 1
    const-string v5, "DefaultDispatcher"

    .line 2
    .line 3
    invoke-direct {p0}, Lo/l3;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v6, Lo/r1;

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move-wide v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lo/r1;-><init>(IIJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lo/ig;->Ͱ:Lo/r1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lo/r1;->ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    sget-object p1, Lo/bi;->ͳ:Lo/zh;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lo/ig;->Ͱ:Lo/r1;

    .line 7
    .line 8
    invoke-virtual {v1, p2, p1, v0}, Lo/r1;->ˏ(Ljava/lang/Runnable;Lo/zh;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchYield(Lo/k1;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lo/r1;->ͺ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    sget-object p1, Lo/bi;->ͳ:Lo/zh;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Lo/ig;->Ͱ:Lo/r1;

    .line 7
    .line 8
    invoke-virtual {v1, p2, p1, v0}, Lo/r1;->ˏ(Ljava/lang/Runnable;Lo/zh;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
