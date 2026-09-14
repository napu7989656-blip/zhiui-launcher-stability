.class public final Lo/ͺ;
.super Lo/a1;
.source "SourceFile"


# instance fields
.field public synthetic Ͱ:Ljava/lang/Object;

.field public final synthetic ͱ:Lo/ͻ;

.field public Ͳ:I


# direct methods
.method public constructor <init>(Lo/ͻ;Lo/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ͺ;->ͱ:Lo/ͻ;

    invoke-direct {p0, p2}, Lo/a1;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lo/ͺ;->Ͱ:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lo/ͺ;->Ͳ:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lo/ͺ;->Ͳ:I

    .line 9
    .line 10
    iget-object p1, p0, Lo/ͺ;->ͱ:Lo/ͻ;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lo/ͻ;->Ͳ(Lo/z0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance v0, Lo/j;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lo/j;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
