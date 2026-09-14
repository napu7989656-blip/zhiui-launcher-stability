.class public final Lo/hm;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ʹ:Landroid/widget/TextView;

.field public final ˏ:Landroid/widget/TextView;

.field public final Ͱ:Landroid/widget/TextView;

.field public final ͱ:Landroid/widget/TextView;

.field public final Ͳ:Landroid/widget/TextView;

.field public final ͳ:Landroid/widget/TextView;

.field public final Ͷ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->tv_trip_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/hm;->ˏ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_unit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/hm;->Ͱ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_sub1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/hm;->ͱ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_sub2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/hm;->Ͳ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/hm;->ͳ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_fuel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/hm;->ʹ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_trip_elec_unit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/hm;->Ͷ:Landroid/widget/TextView;

    return-void
.end method
