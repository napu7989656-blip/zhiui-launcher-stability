.class public final Lo/pa;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p1, :cond_0

    const p1, -0x19000001

    goto :goto_0

    :cond_0
    const p1, -0x19ddddde

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method
