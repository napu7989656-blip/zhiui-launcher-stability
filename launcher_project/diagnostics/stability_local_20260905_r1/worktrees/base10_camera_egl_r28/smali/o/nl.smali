.class public final Lo/nl;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Ljava/util/List;

.field public final synthetic ˏ:Landroid/view/View;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/vl;


# direct methods
.method public constructor <init>(Lo/vl;Ljava/util/List;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/nl;->ͱ:Lo/vl;

    iput-object p2, p0, Lo/nl;->ˋ:Ljava/util/List;

    iput-object p3, p0, Lo/nl;->ˏ:Landroid/view/View;

    iput p4, p0, Lo/nl;->Ͱ:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lo/nl;->Ͱ:I

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    mul-int/lit8 p2, p2, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p2, 0x18

    .line 8
    .line 9
    iget-object v2, p0, Lo/nl;->ˋ:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x6

    .line 30
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lo/Ϩ;

    .line 41
    .line 42
    invoke-direct {v1, p2}, Lo/Ϩ;-><init>(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lo/kl;

    .line 46
    .line 47
    iget-object v2, p0, Lo/nl;->ˏ:Landroid/view/View;

    .line 48
    .line 49
    invoke-direct {p2, p0, v2, p1}, Lo/kl;-><init>(Lo/nl;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, v1, Lo/Ϩ;->ˏ:Lo/kl;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lo/ml;

    invoke-direct {p1, p2}, Lo/ml;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method
