.class public final Lo/vi;
.super Lo/n1;
.source "SourceFile"


# static fields
.field public static final Ͱ:Lo/vi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/vi;

    invoke-direct {v0}, Lo/vi;-><init>()V

    sput-object v0, Lo/vi;->Ͱ:Lo/vi;

    return-void
.end method


# virtual methods
.method public final dispatch(Lo/k1;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lo/f2;->ͱ:Lo/f2;

    .line 2
    .line 3
    sget-object v0, Lo/bi;->ʹ:Lo/zh;

    .line 4
    .line 5
    iget-object p1, p1, Lo/ig;->Ͱ:Lo/r1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lo/r1;->ˏ(Ljava/lang/Runnable;Lo/zh;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchYield(Lo/k1;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lo/f2;->ͱ:Lo/f2;

    .line 2
    .line 3
    sget-object v0, Lo/bi;->ʹ:Lo/zh;

    .line 4
    .line 5
    iget-object p1, p1, Lo/ig;->Ͱ:Lo/r1;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lo/r1;->ˏ(Ljava/lang/Runnable;Lo/zh;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
