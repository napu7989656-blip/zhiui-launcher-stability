.class public final Lo/cm;
.super Lo/zl;
.source "SourceFile"


# instance fields
.field public final ˏ:Landroid/view/View;

.field public final Ͱ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/zl;-><init>(Landroid/view/View;)V

    sget v0, Lo/if;->btn_nav_home:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/cm;->ˏ:Landroid/view/View;

    sget v0, Lo/if;->btn_nav_company:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/cm;->Ͱ:Landroid/view/View;

    return-void
.end method
