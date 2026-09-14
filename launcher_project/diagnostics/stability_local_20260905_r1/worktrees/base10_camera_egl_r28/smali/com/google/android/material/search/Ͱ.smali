.class public final synthetic Lcom/google/android/material/search/Ͱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/search/Ͱ;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/search/Ͱ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/search/Ͱ;->ˋ:I

    iget-object v1, p0, Lcom/google/android/material/search/Ͱ;->ˏ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->Ͱ(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/view/View;

    invoke-static {p1, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->ˋ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->ˋ(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
