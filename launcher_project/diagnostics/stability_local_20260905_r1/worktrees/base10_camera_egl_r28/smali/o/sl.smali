.class public final Lo/sl;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Ljava/util/List;

.field public final Ͱ:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lo/sl;->ˋ:Landroid/content/Context;

    iput-object p2, p0, Lo/sl;->ˏ:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lo/sl;->Ͱ:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/sl;->ˏ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/sl;->ˋ(I)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lo/sl;->ˋ:Landroid/content/Context;

    invoke-static {p2}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const p2, -0xe5e5e6

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/sl;->ˏ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/sl;->ˋ(I)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public final ˋ(I)Landroid/widget/LinearLayout;
    .locals 9

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/sl;->ˋ:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lo/sl;->ˏ(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lo/sl;->ˏ(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lo/sl;->ˏ(I)I

    move-result v3

    invoke-virtual {p0, v5}, Lo/sl;->ˏ(I)I

    move-result v7

    invoke-virtual {v0, v4, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x1e

    invoke-virtual {p0, v4}, Lo/sl;->ˏ(I)I

    move-result v4

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lo/sl;->ˏ(I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lo/sl;->ˏ:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v2, v5, v2

    :try_start_0
    iget-object v5, p0, Lo/sl;->Ͱ:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v5, 0x1080093

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v7

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v6

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v7, :cond_0

    const p1, -0xcccccd

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v7, :cond_1

    const v1, -0x666667

    goto :goto_2

    :cond_1
    const v1, -0x777778

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final ˏ(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    iget-object v0, p0, Lo/sl;->ˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
