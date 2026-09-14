.class public final synthetic Lo/Φ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/Φ;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/Φ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo/Φ;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget v0, p0, Lo/Φ;->ˋ:I

    iget-object v1, p0, Lo/Φ;->Ͱ:Ljava/lang/Object;

    iget-object v2, p0, Lo/Φ;->ˏ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v2, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->ˏ(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_0
    check-cast v2, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v2, v1, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->ˋ(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
