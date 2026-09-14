.class public Lcom/byd/launcher/pip/PipLeftPanel;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public ˋ:Z

.field public ˏ:F

.field public final Ͱ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/byd/launcher/pip/PipLeftPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->Ͱ:F

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    iget-boolean p1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v2, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v0

    div-float/2addr p1, v3

    :goto_0
    iput p1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˏ:F

    return v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v4, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v0

    div-float/2addr p1, v3

    iget-boolean v0, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˏ:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->Ͱ:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput-boolean v2, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    return p1

    :cond_4
    iput-boolean v1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    return v1

    :cond_5
    iput-boolean v1, p0, Lcom/byd/launcher/pip/PipLeftPanel;->ˋ:Z

    return v1
.end method
