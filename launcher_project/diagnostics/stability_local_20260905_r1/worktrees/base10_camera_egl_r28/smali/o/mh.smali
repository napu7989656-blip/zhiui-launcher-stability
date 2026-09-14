.class public final Lo/mh;
.super Lo/a1;
.source "SourceFile"


# instance fields
.field public ʹ:Ljava/lang/Object;

.field public Ͱ:Lo/nh;

.field public ͱ:Lo/u3;

.field public Ͳ:Lo/oh;

.field public ͳ:Lo/l6;

.field public synthetic Ͷ:Ljava/lang/Object;

.field public final synthetic ͷ:Lo/nh;

.field public ͺ:I


# direct methods
.method public constructor <init>(Lo/nh;Lo/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/mh;->ͷ:Lo/nh;

    invoke-direct {p0, p2}, Lo/a1;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lo/mh;->Ͷ:Ljava/lang/Object;

    iget p1, p0, Lo/mh;->ͺ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lo/mh;->ͺ:I

    iget-object p1, p0, Lo/mh;->ͷ:Lo/nh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lo/nh;->ˋ(Lo/u3;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
