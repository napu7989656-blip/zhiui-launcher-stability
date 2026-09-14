.class public final Landroidx/activity/ViewTreeFullyDrawnReporterOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final get(Landroid/view/View;)Landroidx/activity/FullyDrawnReporterOwner;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/activity/ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$1;->INSTANCE:Landroidx/activity/ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$1;

    invoke-static {p0, v0}, Lo/bh;->Β(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lo/vg;

    move-result-object p0

    sget-object v0, Landroidx/activity/ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2;->INSTANCE:Landroidx/activity/ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2;

    invoke-static {p0, v0}, Lo/yg;->Δ(Lo/vg;Lkotlin/jvm/functions/Function1;)Lo/s3;

    move-result-object p0

    invoke-static {p0}, Lo/yg;->Γ(Lo/s3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/FullyDrawnReporterOwner;

    return-object p0
.end method

.method public static final set(Landroid/view/View;Landroidx/activity/FullyDrawnReporterOwner;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullyDrawnReporterOwner"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/activity/R$id;->report_drawn:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
