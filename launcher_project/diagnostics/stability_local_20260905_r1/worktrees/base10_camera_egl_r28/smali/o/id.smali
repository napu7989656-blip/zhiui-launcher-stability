.class public final Lo/id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public ˋ:Z

.field public ˏ:F

.field public final synthetic Ͱ:Lo/nd;


# direct methods
.method public constructor <init>(Lo/nd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/id;->Ͱ:Lo/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/id;->ˋ:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_4

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    iget-boolean p1, p0, Lo/id;->ˋ:Z

    return p1

    :cond_0
    if-ne v0, v5, :cond_1

    iput-boolean v3, p0, Lo/id;->ˋ:Z

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    div-float/2addr v1, v4

    iput v1, p0, Lo/id;->ˏ:F

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    iget-boolean p1, p0, Lo/id;->ˋ:Z

    return p1

    :cond_2
    iget-boolean p1, p0, Lo/id;->ˋ:Z

    if-eqz p1, :cond_3

    if-lt v0, v5, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr p2, p1

    div-float/2addr p2, v4

    iget-object p1, p0, Lo/id;->Ͱ:Lo/nd;

    iget-object v0, p1, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lo/id;->ˏ:F

    sub-float/2addr v1, p2

    cmpl-float p2, v1, v0

    if-lez p2, :cond_3

    iput-boolean v2, p0, Lo/id;->ˋ:Z

    invoke-virtual {p1}, Lo/nd;->ͳ()V

    return v3

    :cond_3
    iget-boolean p1, p0, Lo/id;->ˋ:Z

    return p1

    :cond_4
    iput-boolean v2, p0, Lo/id;->ˋ:Z

    return v2

    :cond_5
    iput-boolean v2, p0, Lo/id;->ˋ:Z

    return v2
.end method
