.class public final Lo/Ϣ;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final ˋ:Landroidx/recyclerview/widget/RecyclerView;

.field public ˏ:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    iput v0, p0, Lo/Ϣ;->ˏ:I

    sget v0, Lo/if;->page_grid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/Ϣ;->ˋ:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
