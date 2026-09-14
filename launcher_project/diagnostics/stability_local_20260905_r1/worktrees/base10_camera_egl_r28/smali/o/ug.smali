.class public final Lo/ug;
.super Lo/tg;
.source "SourceFile"


# instance fields
.field public final Ͷ:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo/O00;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lo/tg;-><init>(Ljava/lang/Object;Lo/O00;)V

    iput-object p3, p0, Lo/ug;->Ͷ:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final Έ()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lo/q7;->Έ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lo/ug;->Α()V

    const/4 v0, 0x1

    return v0
.end method

.method public final Α()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/tg;->ʹ:Lo/OOO;

    .line 2
    .line 3
    check-cast v0, Lo/O00;

    .line 4
    .line 5
    iget-object v0, v0, Lo/O00;->ʹ:Lo/k1;

    .line 6
    .line 7
    iget-object v1, p0, Lo/ug;->Ͷ:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v2, p0, Lo/tg;->ͳ:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Lo/a2;->Ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/k1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
