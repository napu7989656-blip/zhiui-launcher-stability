.class public final synthetic Lo/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ˋ:Lcom/google/android/material/sidesheet/SideSheetBehavior;

.field public final synthetic ˏ:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ih;->ˋ:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iput-object p2, p0, Lo/ih;->ˏ:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p0, Lo/ih;->Ͱ:I

    iput-object p4, p0, Lo/ih;->ͱ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget v0, p0, Lo/ih;->Ͱ:I

    iget-object v1, p0, Lo/ih;->ͱ:Landroid/view/View;

    iget-object v2, p0, Lo/ih;->ˋ:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v3, p0, Lo/ih;->ˏ:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Ͱ(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
