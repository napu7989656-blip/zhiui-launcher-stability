.class public Lcom/byd/launcher/pip/DualPipLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final synthetic ΐ:I


# instance fields
.field public ʹ:Landroid/view/View;

.field public ˋ:I

.field public ˏ:I

.field public Ͱ:I

.field public ͱ:I

.field public Ͳ:Landroid/view/View;

.field public ͳ:Landroid/view/View;

.field public Ͷ:Z

.field public ͷ:Z

.field public ͺ:Z

.field public ͻ:F

.field public ͼ:I

.field public ͽ:I

.field public Ά:Lo/t2;

.field public Έ:Lo/u2;

.field public Ή:Z

.field public Ί:Lo/q2;

.field public Ό:Z

.field public Ύ:F

.field public Ώ:Lo/s2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͺ:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͼ:I

    iput p2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͽ:I

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    invoke-virtual {p0}, Lcom/byd/launcher/pip/DualPipLayout;->ˏ()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͺ:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͼ:I

    iput p2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͽ:I

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    iput-boolean p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    invoke-virtual {p0}, Lcom/byd/launcher/pip/DualPipLayout;->ˏ()V

    return-void
.end method


# virtual methods
.method public getLeftPanelWidth()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRightPanelWidth()I
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byd/launcher/pip/DualPipLayout;->Ͱ(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_12

    if-eq v1, v4, :cond_0

    const/4 v6, 0x3

    if-eq v1, v6, :cond_12

    goto/16 :goto_a

    :cond_0
    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    if-eqz v1, :cond_10

    iget p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͻ:F

    sub-float p1, v0, p1

    iput v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͻ:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_f

    .line 1
    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    sget v1, Lo/if;->pip_divider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ˋ:I

    mul-int/2addr v1, v4

    :cond_3
    sub-int/2addr v5, v1

    if-gtz v5, :cond_4

    goto/16 :goto_5

    :cond_4
    iget v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͼ:I

    if-lez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    iget v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͽ:I

    if-lez v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_1
    add-int v6, v1, v4

    if-gtz v6, :cond_7

    div-int/lit8 v1, v5, 0x2

    goto :goto_2

    :cond_7
    if-eq v6, v5, :cond_8

    int-to-double v7, v1

    int-to-double v9, v6

    div-double/2addr v7, v9

    int-to-double v9, v5

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    :goto_2
    sub-int v4, v5, v1

    :cond_8
    float-to-int p1, p1

    iget-boolean v6, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    if-eqz v6, :cond_9

    sub-int/2addr v1, p1

    add-int/2addr v4, p1

    goto :goto_3

    :cond_9
    add-int/2addr v1, p1

    sub-int/2addr v4, p1

    :goto_3
    iget p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ˏ:I

    if-ge v1, p1, :cond_a

    sub-int v4, v5, p1

    move v1, p1

    :cond_a
    if-ge v4, p1, :cond_b

    sub-int v1, v5, p1

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    add-int v4, v1, p1

    if-eq v4, v5, :cond_c

    sub-int p1, v5, v1

    :cond_c
    iput v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͼ:I

    iput p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͽ:I

    iget-object v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v5, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v6, v1, :cond_d

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    move v3, v2

    :cond_d
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v1, p1, :cond_e

    iput p1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    move v3, v2

    :cond_e
    if-eqz v3, :cond_f

    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_5
    return v2

    .line 2
    :cond_10
    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    if-nez v1, :cond_24

    iput v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ύ:F

    iget v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͻ:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͱ:I

    mul-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ί:Lo/q2;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v5, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ί:Lo/q2;

    :cond_11
    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    goto/16 :goto_a

    :cond_12
    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ί:Lo/q2;

    if-eqz v1, :cond_13

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v5, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ί:Lo/q2;

    :cond_13
    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    const/16 v6, 0x8

    if-eqz v1, :cond_19

    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͼ:I

    iput p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͽ:I

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_14
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_15
    invoke-virtual {p0}, Lcom/byd/launcher/pip/DualPipLayout;->ͱ()V

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ά:Lo/t2;

    if-eqz v0, :cond_18

    check-cast v0, Lo/hd;

    .line 3
    iget-object v0, v0, Lo/hd;->ˋ:Lo/nd;

    iget-object v1, v0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, v0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v1, :cond_16

    if-lez v4, :cond_16

    iget-object v5, v0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    const/16 v7, 0xa0

    invoke-virtual {v5, v1, v4, v7}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    iput v3, v0, Lo/nd;->γ:I

    iput v3, v0, Lo/nd;->δ:I

    .line 4
    :cond_16
    iget-object v1, v0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v1, v0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, v0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    return v2

    .line 5
    :cond_19
    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    if-nez v1, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_21

    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz p1, :cond_1a

    invoke-virtual {p1, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1a
    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1b
    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ώ:Lo/s2;

    if-eqz p1, :cond_20

    .line 6
    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-nez v1, :cond_1c

    goto :goto_7

    :cond_1c
    iget-boolean v5, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    if-eqz v5, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    goto :goto_6

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    div-int/2addr v1, v4

    iget p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͱ:I

    sub-int v4, v1, p1

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1e

    add-int/2addr v1, p1

    int-to-float p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1e

    move p1, v2

    goto :goto_8

    :cond_1e
    :goto_7
    move p1, v3

    :goto_8
    if-eqz p1, :cond_20

    .line 7
    iget-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ώ:Lo/s2;

    check-cast p1, Lo/wc;

    iget-object v0, p1, Lo/wc;->ˋ:Lo/nd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v1, p1, Lo/wc;->ˏ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    iget-object v5, v0, Lo/nd;->ͱ:Landroid/os/Handler;

    iget-object v7, p1, Lo/wc;->Ͱ:[Ljava/lang/Runnable;

    iget-object p1, p1, Lo/wc;->ͱ:Landroid/view/View;

    if-nez v4, :cond_1f

    aget-object v4, v7, v3

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lo/nd;->ͳ:Lcom/byd/launcher/pip/DualPipLayout;

    invoke-virtual {v0}, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ()V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_1f
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    aget-object p1, v7, v3

    const-wide/16 v0, 0xbb8

    invoke-virtual {v5, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    :goto_9
    return v2

    .line 9
    :cond_21
    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_22
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_a

    :cond_23
    invoke-virtual {p0, v0}, Lcom/byd/launcher/pip/DualPipLayout;->Ͱ(F)Z

    move-result v1

    if-eqz v1, :cond_24

    iput v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͻ:F

    iput v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ύ:F

    iput-boolean v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ό:Z

    iput-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    new-instance p1, Lo/q2;

    invoke-direct {p1, p0, v2}, Lo/q2;-><init>(Lcom/byd/launcher/pip/DualPipLayout;I)V

    iput-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ί:Lo/q2;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_24
    :goto_a
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnDividerClickListener(Lo/s2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ώ:Lo/s2;

    return-void
.end method

.method public setOnDragStateChangedListener(Lo/t2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ά:Lo/t2;

    return-void
.end method

.method public setOnSwapListener(Lo/u2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Έ:Lo/u2;

    return-void
.end method

.method public final ˋ()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x6

    if-eqz v1, :cond_0

    sget v1, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_right_panel:I

    sget v5, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_divider:I

    sget v5, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v4, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_divider:I

    sget v5, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_left_panel:I

    sget v5, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v4, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_left_panel:I

    goto :goto_0

    :cond_0
    sget v1, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_left_panel:I

    sget v5, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_divider:I

    sget v5, Lo/if;->pip_left_panel:I

    invoke-virtual {v0, v1, v4, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_divider:I

    sget v5, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_right_panel:I

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lo/if;->pip_right_panel:I

    sget v5, Lo/if;->pip_divider:I

    invoke-virtual {v0, v1, v4, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    sget v1, Lo/if;->pip_right_panel:I

    :goto_0
    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Lcom/byd/launcher/pip/DualPipLayout;->ͱ()V

    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Έ:Lo/u2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final ˏ()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ˋ:I

    const/high16 v1, 0x43240000    # 164.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ˏ:I

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iput v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͱ:I

    iput v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͱ:I

    new-instance v1, Lo/dd;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lo/dd;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v0, Lo/q2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/q2;-><init>(Lcom/byd/launcher/pip/DualPipLayout;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final Ͱ(F)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͱ:I

    sub-int v3, v2, v0

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    add-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͱ:I

    sub-int v3, v2, v0

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    add-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    return v1
.end method

.method public final ͱ()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dual_pip_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "panels_swapped"

    iget-boolean v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v3, v1, v2

    if-lez v3, :cond_0

    const-string v4, "left_panel_weight"

    int-to-float v1, v1

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "right_panel_weight"

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final Ͳ()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͺ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 39
    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 63
    .line 64
    .line 65
    sget v0, Lo/if;->pip_divider:I

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ʹ:Landroid/view/View;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    if-eq v0, v8, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ʹ:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-object v3, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-lez v0, :cond_8

    .line 114
    .line 115
    if-gtz v3, :cond_4

    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_4
    const/4 v4, 0x1

    .line 120
    iput-boolean v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͺ:Z

    .line 121
    .line 122
    iget-object v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 123
    .line 124
    const/4 v5, 0x2

    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, p0, Lcom/byd/launcher/pip/DualPipLayout;->Έ:Lo/u2;

    .line 135
    .line 136
    if-eqz v4, :cond_5

    .line 137
    .line 138
    check-cast v4, Lo/hd;

    .line 139
    .line 140
    iget-object v4, v4, Lo/hd;->ˋ:Lo/nd;

    .line 141
    .line 142
    invoke-static {v4}, Lo/nd;->ˋ(Lo/nd;)V

    .line 143
    .line 144
    .line 145
    iget-object v4, v4, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    const/4 v5, 0x4

    .line 150
    invoke-virtual {v4, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_5
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 154
    .line 155
    const v5, 0x3ecccccd    # 0.4f

    .line 156
    .line 157
    .line 158
    invoke-direct {v4, v5, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 159
    .line 160
    .line 161
    new-instance v7, Landroid/view/animation/PathInterpolator;

    .line 162
    .line 163
    const v5, 0x3e4ccccd    # 0.2f

    .line 164
    .line 165
    .line 166
    invoke-direct {v7, v1, v1, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 167
    .line 168
    .line 169
    iget-boolean v1, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    .line 170
    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    neg-int v0, v0

    .line 175
    :goto_0
    int-to-float v5, v0

    .line 176
    if-eqz v1, :cond_7

    .line 177
    .line 178
    neg-int v0, v3

    .line 179
    int-to-float v0, v0

    .line 180
    goto :goto_1

    .line 181
    :cond_7
    int-to-float v0, v3

    .line 182
    :goto_1
    move v6, v0

    .line 183
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-wide/16 v1, 0xfa

    .line 194
    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Lo/r2;

    .line 225
    .line 226
    move-object v3, v1

    .line 227
    move-object v4, p0

    .line 228
    invoke-direct/range {v3 .. v8}, Lo/r2;-><init>(Lcom/byd/launcher/pip/DualPipLayout;FFLandroid/view/animation/PathInterpolator;Landroid/view/View;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/byd/launcher/pip/DualPipLayout;->ˋ()V

    .line 240
    .line 241
    .line 242
    :cond_9
    :goto_3
    return-void
.end method
