.class public final Lo/am;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ˏ:Landroid/widget/TextView;

.field public final Ͱ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->tv_env_altitude:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/am;->ˏ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_env_pm25:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/am;->Ͱ:Landroid/widget/TextView;

    return-void
.end method
