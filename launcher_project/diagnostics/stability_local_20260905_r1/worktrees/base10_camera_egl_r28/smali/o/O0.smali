.class public final Lo/O0;
.super Lo/a1;
.source "SourceFile"


# instance fields
.field public Ͱ:Lo/vd;

.field public synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Lo/OO;

.field public ͳ:I


# direct methods
.method public constructor <init>(Lo/OO;Lo/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/O0;->Ͳ:Lo/OO;

    invoke-direct {p0, p2}, Lo/a1;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lo/O0;->ͱ:Ljava/lang/Object;

    iget p1, p0, Lo/O0;->ͳ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lo/O0;->ͳ:I

    iget-object p1, p0, Lo/O0;->Ͳ:Lo/OO;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lo/OO;->ˏ(Lo/vd;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
