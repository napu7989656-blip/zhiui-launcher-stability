.class public final Lo/p6;
.super Lo/o6;
.source "SourceFile"


# instance fields
.field public final ʹ:Lo/s6;

.field public final Ͷ:Lo/q6;

.field public final ͷ:Lo/n;

.field public final ͺ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/s6;Lo/q6;Lo/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/o6;-><init>()V

    iput-object p1, p0, Lo/p6;->ʹ:Lo/s6;

    iput-object p2, p0, Lo/p6;->Ͷ:Lo/q6;

    iput-object p3, p0, Lo/p6;->ͷ:Lo/n;

    iput-object p4, p0, Lo/p6;->ͺ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/p6;->Ύ(Ljava/lang/Throwable;)V

    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

.method public final Ύ(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/p6;->ʹ:Lo/s6;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/p6;->ͷ:Lo/n;

    .line 7
    .line 8
    invoke-static {v0}, Lo/s6;->Θ(Lo/q7;)Lo/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lo/p6;->Ͷ:Lo/q6;

    .line 13
    .line 14
    iget-object v2, p0, Lo/p6;->ͺ:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0, v2}, Lo/s6;->Ο(Lo/q6;Lo/n;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v1, v2}, Lo/s6;->Ή(Lo/q6;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lo/s6;->ʹ(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
