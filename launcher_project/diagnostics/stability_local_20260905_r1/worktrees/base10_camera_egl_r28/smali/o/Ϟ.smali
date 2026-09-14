.class public final Lo/Ϟ;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/List;

.field public final synthetic ˏ:Lcom/byd/launcher/AppLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lo/Ϟ;->ˋ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ϟ;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lo/Ϝ;

    .line 2
    .line 3
    iget-object v0, p0, Lo/Ϟ;->ˋ:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lo/Ϡ;

    .line 10
    .line 11
    iget-object v1, p1, Lo/Ϝ;->ˋ:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v2, v0, Lo/Ϡ;->ˏ:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p1, Lo/Ϝ;->ˏ:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lo/Ϟ;->ˏ:Lcom/byd/launcher/AppLauncherActivity;

    .line 26
    .line 27
    iget-boolean v1, v1, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 28
    .line 29
    invoke-static {v1}, Lo/ci;->ͷ(Z)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    new-instance v2, Lo/Ϙ;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, v3, p0, v0}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    new-instance v1, Lo/Ϛ;

    .line 50
    .line 51
    invoke-direct {v1, p0, v0, p2}, Lo/Ϛ;-><init>(Lo/Ϟ;Lo/Ϡ;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget v0, Lo/jf;->item_app:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lo/Ϝ;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lo/Ϝ;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method
