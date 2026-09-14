.class public final Lo/tb;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final ˋ:Landroid/widget/ImageView;

.field public final ˏ:Landroid/widget/ImageView;

.field public final Ͱ:Landroid/widget/TextView;

.field public final ͱ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->iv_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/tb;->ˋ:Landroid/widget/ImageView;

    sget v0, Lo/if;->tv_item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/tb;->Ͱ:Landroid/widget/TextView;

    sget v0, Lo/if;->card_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/tb;->ͱ:Landroid/view/View;

    sget v0, Lo/if;->iv_check_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/tb;->ˏ:Landroid/widget/ImageView;

    return-void
.end method
