.class public final Lo/ol;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:[Landroid/view/View;

.field public final synthetic ˏ:I

.field public final synthetic Ͱ:I


# direct methods
.method public constructor <init>([Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ol;->ˋ:[Landroid/view/View;

    iput p2, p0, Lo/ol;->ˏ:I

    iput p3, p0, Lo/ol;->Ͱ:I

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/ol;->ˋ:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-ne v0, p1, :cond_0

    iget v3, p0, Lo/ol;->ˏ:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lo/ol;->Ͱ:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
