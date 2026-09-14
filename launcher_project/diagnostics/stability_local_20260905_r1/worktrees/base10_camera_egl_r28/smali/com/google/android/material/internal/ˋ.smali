.class public final synthetic Lcom/google/android/material/internal/ˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;


# instance fields
.field public final synthetic ˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/ˋ;->ˋ:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/ˋ;->ˋ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->ˋ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->ͱ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->ˋ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->Ͱ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->ˏ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->ˏ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->Ͱ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->ͱ(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
