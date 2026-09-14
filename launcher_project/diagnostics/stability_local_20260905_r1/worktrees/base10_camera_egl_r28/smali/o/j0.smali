.class public final Lo/j0;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# instance fields
.field public final synthetic Ͱ:[Lo/k1;

.field public final synthetic ͱ:Lo/tf;


# direct methods
.method public constructor <init>([Lo/k1;Lo/tf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/j0;->Ͱ:[Lo/k1;

    iput-object p2, p0, Lo/j0;->ͱ:Lo/tf;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lo/ui;

    .line 2
    .line 3
    check-cast p2, Lo/i1;

    .line 4
    .line 5
    const-string v0, "<anonymous parameter 0>"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "element"

    .line 11
    .line 12
    invoke-static {p2, p1}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lo/j0;->ͱ:Lo/tf;

    .line 16
    .line 17
    iget v0, p1, Lo/tf;->Ͱ:I

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    iput v1, p1, Lo/tf;->Ͱ:I

    .line 22
    .line 23
    iget-object p1, p0, Lo/j0;->Ͱ:[Lo/k1;

    .line 24
    .line 25
    aput-object p2, p1, v0

    .line 26
    .line 27
    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    .line 28
    .line 29
    return-object p1
.end method
