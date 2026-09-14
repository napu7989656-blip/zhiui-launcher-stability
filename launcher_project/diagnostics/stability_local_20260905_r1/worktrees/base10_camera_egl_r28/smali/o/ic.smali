.class public final Lo/ic;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Ͱ:Lkotlin/jvm/functions/Function1;

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Lo/k1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/k1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ic;->Ͱ:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lo/ic;->ͱ:Ljava/lang/Object;

    iput-object p3, p0, Lo/ic;->Ͳ:Lo/k1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lo/ic;->Ͳ:Lo/k1;

    .line 4
    .line 5
    iget-object v0, p0, Lo/ic;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v1, p0, Lo/ic;->ͱ:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lo/a2;->Ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/k1;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    .line 13
    .line 14
    return-object p1
.end method
