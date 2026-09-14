.class public final Lo/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public ʹ:Z

.field public ˋ:F

.field public ˏ:Z

.field public Ͱ:Z

.field public ͱ:Z

.field public Ͳ:F

.field public ͳ:Landroid/widget/ImageView;

.field public Ͷ:F

.field public final synthetic ͷ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lo/zb;->ˏ:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lo/zb;->Ͱ:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lo/zb;->ͱ:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-boolean p1, p0, Lo/zb;->ʹ:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isServiceDestroyed(Lcom/byd/launcher/NavBarService;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    const/4 v0, 0x0
    return v0
    :stability_owner_alive

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    .line 1
    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->ο:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lo/zb;->ʹ:Z

    iput-object v1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->η:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-array v4, v2, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    aget v7, v4, v0

    int-to-float v8, v7

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    int-to-float v7, v8

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_2

    aget v4, v4, v3

    int-to-float v5, v4

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v4

    int-to-float p1, p1

    cmpg-float p1, v6, p1

    if-gtz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->η:Landroid/widget/ImageView;

    iput-object p1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lo/zb;->Ͷ:F

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ͷ()V

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Η()V

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Γ()V

    :cond_4
    iget-object p1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lo/zb;->ʹ:Z

    if-nez p1, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v8, p0, Lo/zb;->Ͷ:F

    sub-float/2addr p1, v8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v8, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v8, v6}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v8

    int-to-float v8, v8

    cmpl-float p1, p1, v8

    if-lez p1, :cond_5

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v8, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v3, p0, Lo/zb;->ʹ:Z

    iput-object v1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    iget p1, p0, Lo/zb;->Ͷ:F

    iput p1, p0, Lo/zb;->ˋ:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-boolean v0, p0, Lo/zb;->ˏ:Z

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Γ()V

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v3, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v7, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    :cond_8
    :goto_3
    iget-object p1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iput-object v1, p0, Lo/zb;->ͳ:Landroid/widget/ImageView;

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    .line 5
    invoke-virtual {p1, v4, v5}, Lcom/byd/launcher/NavBarService;->Ζ(J)V

    return v3

    .line 6
    :cond_9
    :goto_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_22

    if-eq v8, v3, :cond_1d

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v8, v2, :cond_d

    if-eq v8, v7, :cond_c

    if-eq v8, v6, :cond_a

    goto/16 :goto_d

    :cond_a
    if-ne p1, v2, :cond_b

    iput-boolean v3, p0, Lo/zb;->Ͱ:Z

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr p2, p1

    div-float/2addr p2, v4

    iput p2, p0, Lo/zb;->Ͳ:F

    :cond_b
    return v3

    :cond_c
    iput-boolean v0, p0, Lo/zb;->ˏ:Z

    iput-boolean v0, p0, Lo/zb;->Ͱ:Z

    iput-boolean v0, p0, Lo/zb;->ͱ:Z

    goto/16 :goto_c

    :cond_d
    iget-boolean v5, p0, Lo/zb;->Ͱ:Z

    if-nez v5, :cond_e

    if-lt p1, v2, :cond_e

    iput-boolean v3, p0, Lo/zb;->Ͱ:Z

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v6, v5

    div-float/2addr v6, v4

    iput v6, p0, Lo/zb;->Ͳ:F

    :cond_e
    iget-boolean v5, p0, Lo/zb;->Ͱ:Z

    const/16 v6, 0x1e

    if-eqz v5, :cond_17

    iget-boolean v5, p0, Lo/zb;->ͱ:Z

    if-nez v5, :cond_17

    if-lt p1, v2, :cond_17

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v7, v5

    div-float/2addr v7, v4

    iget v4, p0, Lo/zb;->Ͳ:F

    sub-float/2addr v7, v4

    iget-object v4, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v4, v6}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v7, v4

    const-string v5, "NavBarSvc"

    if-lez v4, :cond_14

    iput-boolean v3, p0, Lo/zb;->ͱ:Z

    iput-boolean v3, p0, Lo/zb;->ˏ:Z

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    const-string p2, "launcher_prefs"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pip_enabled"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Two-finger swipe DOWN detected, pipEnabled="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pipShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v1, :cond_f

    .line 7
    iget-boolean v1, v1, Lo/nd;->Η:Z

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_5

    :cond_f
    move v1, v0

    .line 8
    :goto_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_13

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz p1, :cond_10

    .line 9
    iget-boolean p2, p1, Lo/nd;->Η:Z

    if-eqz p2, :cond_10

    move p2, v3

    goto :goto_6

    :cond_10
    move p2, v0

    :goto_6
    if-eqz p1, :cond_11

    .line 10
    invoke-virtual {p1}, Lo/nd;->ͷ()Z

    move-result p1

    if-eqz p1, :cond_11

    move p1, v3

    goto :goto_7

    :cond_11
    move p1, v0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PiP swipe-down branch: showing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tempHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    invoke-virtual {p1, v0}, Lo/nd;->Έ(Z)V

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/byd/launcher/NavBarService;->Ψ:J

    goto :goto_8

    :cond_12
    if-nez p2, :cond_13

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ϝ()V

    :cond_13
    :goto_8
    return v3

    :cond_14
    iget-object v4, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v4, v6}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v7, v4

    if-gez v4, :cond_17

    iput-boolean v3, p0, Lo/zb;->ͱ:Z

    iput-boolean v3, p0, Lo/zb;->ˏ:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Two-finger swipe UP detected, pipShowing="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object p2, p2, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz p2, :cond_15

    .line 11
    iget-boolean p2, p2, Lo/nd;->Η:Z

    if-eqz p2, :cond_15

    move v0, v3

    .line 12
    :cond_15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz p2, :cond_16

    .line 13
    iget-boolean p2, p2, Lo/nd;->Η:Z

    if-eqz p2, :cond_16

    .line 14
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϋ()V

    :cond_16
    return v3

    :cond_17
    iget-boolean v4, p0, Lo/zb;->ˏ:Z

    if-nez v4, :cond_21

    iget-boolean v4, p0, Lo/zb;->Ͱ:Z

    if-nez v4, :cond_21

    if-ge p1, v2, :cond_21

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lo/zb;->ˋ:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p2, v6}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_21

    iput-boolean v3, p0, Lo/zb;->ˏ:Z

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    .line 15
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    if-eqz p2, :cond_1c

    .line 16
    iget-boolean p2, p2, Lo/ff;->ͷ:Z

    if-eqz p2, :cond_18

    goto :goto_9

    .line 17
    :cond_18
    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Α:Z

    if-nez p2, :cond_1c

    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Β:Z

    if-eqz p2, :cond_19

    goto :goto_9

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/byd/launcher/NavBarService;->ξ:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x258

    cmp-long p2, v4, v6

    if-gez p2, :cond_1a

    goto :goto_9

    :cond_1a
    iget-boolean p2, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    if-nez p2, :cond_1b

    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    if-eqz p2, :cond_1b

    invoke-static {p1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result p2

    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Lcom/byd/launcher/NavBarService;->Έ(Z)V

    invoke-virtual {p1, p2}, Lcom/byd/launcher/NavBarService;->Ή(Z)V

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ω()V

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Α()V

    :cond_1b
    iget-object p2, p1, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    iget v0, p1, Lcom/byd/launcher/NavBarService;->ͺ:I

    .line 18
    iput v0, p2, Lo/ff;->Α:I

    .line 19
    iput-object v1, p2, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 20
    iget p1, p1, Lcom/byd/launcher/NavBarService;->ν:I

    invoke-virtual {p2, p1}, Lo/ff;->Ύ(I)V

    :cond_1c
    :goto_9
    return v3

    .line 21
    :cond_1d
    iget-boolean p1, p0, Lo/zb;->ˏ:Z

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lo/zb;->ͱ:Z

    if-eqz p1, :cond_1e

    goto :goto_a

    :cond_1e
    move p1, v0

    goto :goto_b

    :cond_1f
    :goto_a
    move p1, v3

    :goto_b
    iput-boolean v0, p0, Lo/zb;->ˏ:Z

    iput-boolean v0, p0, Lo/zb;->Ͱ:Z

    iput-boolean v0, p0, Lo/zb;->ͱ:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    .line 22
    invoke-virtual {p1, v4, v5}, Lcom/byd/launcher/NavBarService;->Ζ(J)V

    goto :goto_d

    .line 23
    :cond_20
    :goto_c
    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/byd/launcher/NavBarService;->Ζ(J)V

    :cond_21
    :goto_d
    return v3

    :cond_22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lo/zb;->ˋ:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-boolean v0, p0, Lo/zb;->ˏ:Z

    iput-boolean v0, p0, Lo/zb;->Ͱ:Z

    iput-boolean v0, p0, Lo/zb;->ͱ:Z

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ͷ()V

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Η()V

    iget-object p1, p0, Lo/zb;->ͷ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Γ()V

    return v3
.end method
