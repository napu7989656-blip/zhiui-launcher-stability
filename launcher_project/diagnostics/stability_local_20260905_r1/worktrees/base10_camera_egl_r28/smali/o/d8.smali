.class public final Lo/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public ˋ:F

.field public ˏ:F

.field public Ͱ:Z

.field public final synthetic ͱ:Lcom/byd/launcher/MainActivity;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/d8;->ͱ:Lcom/byd/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/d8;->Ͱ:Z

    return-void
.end method

.method public static ˋ(Landroid/view/MotionEvent;)[F
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    add-float/2addr v5, v0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, v0

    div-float/2addr p0, v3

    add-float/2addr p0, v2

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v5, v0, v1

    aput p0, v0, v4

    return-object v0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/4 p2, 0x6

    if-eq v0, p2, :cond_4

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_1

    iput-boolean v2, p0, Lo/d8;->Ͱ:Z

    invoke-static {p2}, Lo/d8;->ˋ(Landroid/view/MotionEvent;)[F

    move-result-object p2

    aget v0, p2, v1

    iput v0, p0, Lo/d8;->ˋ:F

    aget p2, p2, v2

    iput p2, p0, Lo/d8;->ˏ:F

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v2

    :cond_2
    iget-boolean v0, p0, Lo/d8;->Ͱ:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_3

    invoke-static {p2}, Lo/d8;->ˋ(Landroid/view/MotionEvent;)[F

    move-result-object p2

    aget v0, p2, v1

    iget v3, p0, Lo/d8;->ˋ:F

    sub-float v3, v0, v3

    aget p2, p2, v2

    iget v4, p0, Lo/d8;->ˏ:F

    sub-float v4, p2, v4

    iput v0, p0, Lo/d8;->ˋ:F

    iput p2, p0, Lo/d8;->ˏ:F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v0, 0x800033

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return v2

    :cond_4
    iget-boolean p2, p0, Lo/d8;->Ͱ:Z

    if-eqz p2, :cond_5

    iput-boolean v1, p0, Lo/d8;->Ͱ:Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lo/d8;->ͱ:Lcom/byd/launcher/MainActivity;

    const-string v3, "launcher_prefs"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    const-string v4, "clock_x"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p2, p2

    const-string v3, "clock_y"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    return v2
.end method
