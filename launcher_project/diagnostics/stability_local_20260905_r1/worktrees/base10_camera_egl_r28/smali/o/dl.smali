.class public final Lo/dl;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;IF)V
    .locals 0

    .line 1
    iput p3, p0, Lo/dl;->ˋ:I

    iput p4, p0, Lo/dl;->ˏ:F

    const p3, 0x1090008

    invoke-direct {p0, p1, p3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget p3, p0, Lo/dl;->ˋ:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget p3, p0, Lo/dl;->ˏ:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float v1, p3, v0

    float-to-int v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v3, p3, v2

    float-to-int v3, v3

    mul-float/2addr v0, p3

    float-to-int v0, v0

    mul-float/2addr p3, v2

    float-to-int p3, p3

    invoke-virtual {p2, v1, v3, v0, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget p3, p0, Lo/dl;->ˋ:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41500000    # 13.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-object p1
.end method
