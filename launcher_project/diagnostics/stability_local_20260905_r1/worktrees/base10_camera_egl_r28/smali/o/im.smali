.class public final Lo/im;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ˏ:Landroid/widget/TextView;

.field public final Ͱ:Landroid/widget/TextView;

.field public final ͱ:Landroid/widget/TextView;

.field public final Ͳ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->tv_tyre_fl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/im;->ˏ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_tyre_fr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/im;->Ͱ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_tyre_rl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/im;->ͱ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_tyre_rr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/im;->Ͳ:Landroid/widget/TextView;

    return-void
.end method
