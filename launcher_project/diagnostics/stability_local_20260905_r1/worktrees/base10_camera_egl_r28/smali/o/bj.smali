.class public final Lo/bj;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lo/oj;


# direct methods
.method public constructor <init>(Lo/oj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/bj;->ˋ:Lo/oj;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lo/bj;->ˋ:Lo/oj;

    iget-object v2, v1, Lo/oj;->ͺ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v1, v1, Lo/oj;->ͺ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/nj;

    iget p1, p1, Lo/nj;->ʹ:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method
