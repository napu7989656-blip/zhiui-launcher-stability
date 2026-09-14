.class public final Lo/jm;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ʹ:Landroid/widget/TextView;

.field public final ˏ:Landroid/view/View;

.field public final Ͱ:Landroid/view/View;

.field public final ͱ:Landroid/view/View;

.field public final Ͳ:Landroid/widget/ImageView;

.field public final ͳ:Landroid/widget/ImageView;

.field public final Ͷ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->iv_vehicle_car:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/jm;->ͱ:Landroid/view/View;

    sget v0, Lo/if;->btn_vehicle_lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/jm;->ˏ:Landroid/view/View;

    sget v0, Lo/if;->btn_vehicle_trunk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/jm;->Ͱ:Landroid/view/View;

    sget v0, Lo/if;->iv_vehicle_lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/jm;->Ͳ:Landroid/widget/ImageView;

    sget v0, Lo/if;->iv_vehicle_trunk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/jm;->ͳ:Landroid/widget/ImageView;

    sget v0, Lo/if;->tv_vehicle_trunk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/jm;->ʹ:Landroid/widget/TextView;

    sget v0, Lo/if;->tv_vehicle_lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/jm;->Ͷ:Landroid/widget/TextView;

    return-void
.end method
