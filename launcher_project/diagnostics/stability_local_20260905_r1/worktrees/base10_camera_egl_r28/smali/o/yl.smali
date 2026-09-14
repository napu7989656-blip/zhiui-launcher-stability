.class public final Lo/yl;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ˏ:Landroid/widget/ImageView;

.field public final Ͱ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->iv_app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/yl;->ˏ:Landroid/widget/ImageView;

    sget v0, Lo/if;->tv_app_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/yl;->Ͱ:Landroid/widget/TextView;

    return-void
.end method
