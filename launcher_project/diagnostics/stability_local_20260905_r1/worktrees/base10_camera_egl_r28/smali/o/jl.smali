.class public final Lo/jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public ˋ:I

.field public final synthetic ˏ:Landroid/view/Choreographer;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/vl;


# direct methods
.method public constructor <init>(Lo/vl;Landroid/view/Choreographer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/jl;->ͱ:Lo/vl;

    iput-object p2, p0, Lo/jl;->ˏ:Landroid/view/Choreographer;

    iput p3, p0, Lo/jl;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lo/jl;->ˋ:I

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/jl;->ͱ:Lo/vl;

    iget-object p2, p1, Lo/vl;->ͳ:Landroid/view/View;

    if-eqz p2, :cond_2

    iget-boolean p1, p1, Lo/vl;->Ί:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lo/jl;->ˋ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/jl;->ˋ:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    iget-object p1, p0, Lo/jl;->ˏ:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_1
    iget-object p1, p0, Lo/jl;->ͱ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lo/jl;->Ͱ:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lo/vl;->Ψ:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lo/td;

    const/16 v0, 0x19

    invoke-direct {p2, v0, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lo/jl;->ͱ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ͳ:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lo/jl;->ͱ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    return-void
.end method
