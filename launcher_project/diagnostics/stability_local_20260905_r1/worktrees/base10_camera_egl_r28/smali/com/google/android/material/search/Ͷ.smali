.class public final synthetic Lcom/google/android/material/search/Ͷ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ˋ:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field public final synthetic ˏ:F

.field public final synthetic Ͱ:F

.field public final synthetic ͱ:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/Ͷ;->ˋ:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput p2, p0, Lcom/google/android/material/search/Ͷ;->ˏ:F

    iput p3, p0, Lcom/google/android/material/search/Ͷ;->Ͱ:F

    iput-object p4, p0, Lcom/google/android/material/search/Ͷ;->ͱ:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/search/Ͷ;->Ͱ:F

    iget-object v1, p0, Lcom/google/android/material/search/Ͷ;->ͱ:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/material/search/Ͷ;->ˋ:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget v3, p0, Lcom/google/android/material/search/Ͷ;->ˏ:F

    invoke-static {v2, v3, v0, v1, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->ͱ(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
