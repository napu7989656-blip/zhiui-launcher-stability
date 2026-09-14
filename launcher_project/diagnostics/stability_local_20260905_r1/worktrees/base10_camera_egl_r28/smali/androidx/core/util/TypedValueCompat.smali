.class public Landroidx/core/util/TypedValueCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/TypedValueCompat$Api34Impl;,
        Landroidx/core/util/TypedValueCompat$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field private static final INCHES_PER_MM:F = 0.03937008f

.field private static final INCHES_PER_PT:F = 0.013888889f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2
    .param p2    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroidx/core/util/TypedValueCompat$Api34Impl;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    if-eqz p0, :cond_b

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eq p0, v0, :cond_9

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p0, v0, :cond_7

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p0, v0, :cond_5

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p0, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    if-ne p0, v0, :cond_2

    .line 29
    .line 30
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 31
    .line 32
    cmpl-float p2, p0, v1

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    div-float/2addr p1, p0

    .line 38
    const p0, 0x3d214285

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Invalid unitToConvertTo "

    .line 45
    .line 46
    invoke-static {p2, p0}, Lo/v1;->Ͱ(Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 55
    .line 56
    cmpl-float p2, p0, v1

    .line 57
    .line 58
    if-nez p2, :cond_4

    .line 59
    .line 60
    return v1

    .line 61
    :cond_4
    div-float/2addr p1, p0

    .line 62
    return p1

    .line 63
    :cond_5
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 64
    .line 65
    cmpl-float p2, p0, v1

    .line 66
    .line 67
    if-nez p2, :cond_6

    .line 68
    .line 69
    return v1

    .line 70
    :cond_6
    div-float/2addr p1, p0

    .line 71
    const p0, 0x3c638e39

    .line 72
    .line 73
    .line 74
    :goto_0
    div-float/2addr p1, p0

    .line 75
    return p1

    .line 76
    :cond_7
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 77
    .line 78
    cmpl-float p2, p0, v1

    .line 79
    .line 80
    if-nez p2, :cond_8

    .line 81
    .line 82
    return v1

    .line 83
    :cond_8
    div-float/2addr p1, p0

    .line 84
    return p1

    .line 85
    :cond_9
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .line 87
    cmpl-float p2, p0, v1

    .line 88
    .line 89
    if-nez p2, :cond_a

    .line 90
    .line 91
    return v1

    .line 92
    :cond_a
    div-float/2addr p1, p0

    .line 93
    :cond_b
    return p1
.end method

.method public static dpToPx(FLandroid/util/DisplayMetrics;)F
    .locals 1
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getUnitFromComplexDimension(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    shr-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static pxToDp(FLandroid/util/DisplayMetrics;)F
    .locals 1
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static pxToSp(FLandroid/util/DisplayMetrics;)F
    .locals 1
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static spToPx(FLandroid/util/DisplayMetrics;)F
    .locals 1
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
