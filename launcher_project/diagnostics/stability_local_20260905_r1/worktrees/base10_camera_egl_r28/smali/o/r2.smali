.class public final synthetic Lo/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Landroid/view/View;

.field public final synthetic Ͱ:Lcom/byd/launcher/pip/DualPipLayout;

.field public final synthetic ͱ:F

.field public final synthetic Ͳ:F

.field public final synthetic ͳ:Landroid/view/animation/PathInterpolator;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/pip/DualPipLayout;FFLandroid/view/animation/PathInterpolator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/r2;->Ͱ:Lcom/byd/launcher/pip/DualPipLayout;

    iput p2, p0, Lo/r2;->ͱ:F

    iput p3, p0, Lo/r2;->Ͳ:F

    iput-object p4, p0, Lo/r2;->ͳ:Landroid/view/animation/PathInterpolator;

    iput-object p5, p0, Lo/r2;->ʹ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget v0, Lcom/byd/launcher/pip/DualPipLayout;->ΐ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/r2;->Ͱ:Lcom/byd/launcher/pip/DualPipLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byd/launcher/pip/DualPipLayout;->ˋ()V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lo/r2;->ͱ:F

    .line 9
    .line 10
    neg-float v1, v1

    .line 11
    iget v2, p0, Lo/r2;->Ͳ:F

    .line 12
    .line 13
    neg-float v2, v2

    .line 14
    iget-object v3, v0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-wide/16 v3, 0xfa

    .line 36
    .line 37
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v5, p0, Lo/r2;->ͳ:Landroid/view/animation/PathInterpolator;

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lo/ag;

    .line 69
    .line 70
    const/16 v3, 0x17

    .line 71
    .line 72
    iget-object v4, p0, Lo/r2;->ʹ:Landroid/view/View;

    .line 73
    .line 74
    invoke-direct {v2, v3, v0, v4}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
