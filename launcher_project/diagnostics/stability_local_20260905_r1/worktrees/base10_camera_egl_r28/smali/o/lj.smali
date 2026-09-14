.class public final Lo/lj;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final ˋ:Landroid/widget/ImageView;

.field public final ˏ:Landroid/widget/TextView;

.field public final Ͱ:Landroidx/cardview/widget/CardView;

.field public ͱ:Landroid/widget/TextView;

.field public Ͳ:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/lj;->Ͳ:Z

    sget v0, Lo/if;->iv_control_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/lj;->ˋ:Landroid/widget/ImageView;

    sget v0, Lo/if;->tv_control_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/lj;->ˏ:Landroid/widget/TextView;

    sget v0, Lo/if;->card_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lo/lj;->Ͱ:Landroidx/cardview/widget/CardView;

    return-void
.end method
