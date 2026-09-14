.class public final Lo/f;
.super Lo/th;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# instance fields
.field public Ͱ:I

.field public synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Lo/g;


# direct methods
.method public constructor <init>(Lo/g;Lo/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/f;->Ͳ:Lo/g;

    invoke-direct {p0, p2}, Lo/th;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lo/z0;)Lo/z0;
    .locals 2

    .line 1
    new-instance v0, Lo/f;

    iget-object v1, p0, Lo/f;->Ͳ:Lo/g;

    invoke-direct {v0, v1, p2}, Lo/f;-><init>(Lo/g;Lo/z0;)V

    iput-object p1, v0, Lo/f;->ͱ:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo/vd;

    .line 2
    .line 3
    check-cast p2, Lo/z0;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lo/f;->create(Ljava/lang/Object;Lo/z0;)Lo/z0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lo/f;

    .line 10
    .line 11
    sget-object p2, Lo/ui;->ˋ:Lo/ui;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lo/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    iget v1, p0, Lo/f;->Ͱ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    iget-object p1, p0, Lo/f;->ͱ:Ljava/lang/Object;

    check-cast p1, Lo/vd;

    iput v2, p0, Lo/f;->Ͱ:I

    iget-object v1, p0, Lo/f;->Ͳ:Lo/g;

    invoke-virtual {v1, p1, p0}, Lo/g;->ˏ(Lo/vd;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method
