.class public final Lo/ej;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Landroid/view/View;

.field public final synthetic ˏ:Lo/oj;


# direct methods
.method public constructor <init>(Lo/oj;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ej;->ˏ:Lo/oj;

    iput-object p2, p0, Lo/ej;->ˋ:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lo/ej;->ˋ:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lo/ej;->ˏ:Lo/oj;

    invoke-virtual {p1}, Lo/oj;->Ί()V

    iget-object p1, p1, Lo/oj;->ͷ:Lo/ia;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/ia;->Ͱ()V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lo/ej;->ˋ:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lo/ej;->ˏ:Lo/oj;

    invoke-virtual {p1}, Lo/oj;->Ί()V

    iget-object p1, p1, Lo/oj;->ͷ:Lo/ia;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/ia;->Ͱ()V

    :cond_0
    return-void
.end method
