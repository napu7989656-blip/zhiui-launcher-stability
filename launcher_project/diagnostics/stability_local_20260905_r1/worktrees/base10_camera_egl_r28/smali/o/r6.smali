.class public final Lo/r6;
.super Lo/o7;
.source "SourceFile"


# instance fields
.field public final synthetic ͱ:Lo/s6;

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/q7;Lo/s6;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/r6;->ͱ:Lo/s6;

    iput-object p3, p0, Lo/r6;->Ͳ:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lo/o7;-><init>(Lo/q7;)V

    return-void
.end method


# virtual methods
.method public final Ͱ(Ljava/lang/Object;)Lo/vh;
    .locals 1

    .line 1
    check-cast p1, Lo/q7;

    .line 2
    .line 3
    iget-object p1, p0, Lo/r6;->ͱ:Lo/s6;

    .line 4
    .line 5
    invoke-virtual {p1}, Lo/s6;->Α()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lo/r6;->Ͳ:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sget-object p1, Lo/a2;->ͺ:Lo/vh;

    .line 21
    .line 22
    :goto_1
    return-object p1
.end method
