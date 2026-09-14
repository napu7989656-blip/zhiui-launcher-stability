.class public final synthetic Lo/ni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic ˋ:[I

.field public final synthetic ˏ:[I


# direct methods
.method public synthetic constructor <init>([I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ni;->ˋ:[I

    iput-object p2, p0, Lo/ni;->ˏ:[I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lo/ni;->ˋ:[I

    .line 12
    .line 13
    iget-object v3, p0, Lo/ni;->ˏ:[I

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-eq v1, v6, :cond_0

    .line 21
    .line 22
    move v4, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    aget v6, v2, v5

    .line 30
    .line 31
    sub-int/2addr v1, v6

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    float-to-int p2, p2

    .line 37
    aget v2, v2, v4

    .line 38
    .line 39
    sub-int/2addr p2, v2

    .line 40
    aget v2, v3, v5

    .line 41
    .line 42
    add-int/2addr v2, v1

    .line 43
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 48
    .line 49
    aget v1, v3, v4

    .line 50
    .line 51
    add-int/2addr v1, p2

    .line 52
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    float-to-int p1, p1

    .line 67
    aput p1, v2, v5

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    float-to-int p1, p1

    .line 74
    aput p1, v2, v4

    .line 75
    .line 76
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 77
    .line 78
    aput p1, v3, v5

    .line 79
    .line 80
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 81
    .line 82
    aput p1, v3, v4

    .line 83
    .line 84
    :goto_0
    return v4
.end method
