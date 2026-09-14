.class public final Lo/pb;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Ljava/util/List;

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;Ljava/util/List;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/pb;->ͱ:Lcom/byd/launcher/NavBarService;

    iput-object p2, p0, Lo/pb;->ˋ:Ljava/util/List;

    iput-boolean p3, p0, Lo/pb;->ˏ:Z

    iput p4, p0, Lo/pb;->Ͱ:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lo/pb;->Ͱ:I

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    mul-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p2, 0x18

    iget-object v1, p0, Lo/pb;->ˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lo/ub;

    new-instance v1, Lo/u9;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lo/pb;->ˏ:Z

    invoke-direct {v1, v2, p0, v3}, Lo/u9;-><init>(ILjava/lang/Object;Z)V

    invoke-direct {v0, p2, v3, v1}, Lo/ub;-><init>(Ljava/util/List;ZLo/u9;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

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

    new-instance p1, Lo/ob;

    invoke-direct {p1, p2}, Lo/ob;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method
