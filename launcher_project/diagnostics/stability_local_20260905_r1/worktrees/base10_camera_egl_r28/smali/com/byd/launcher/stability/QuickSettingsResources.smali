.class public final Lcom/byd/launcher/stability/QuickSettingsResources;
.super Ljava/lang/Object;
.source "QuickSettingsResources.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearQueue(Landroid/os/Handler;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static disposePanel(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 39
    :cond_0
    invoke-static {p2}, Lcom/byd/launcher/stability/QuickSettingsResources;->stopAnimations(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 42
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v2, v0

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0, p2}, Lcom/byd/launcher/stability/StatusBarResources;->removeWindow(Landroid/view/WindowManager;Landroid/view/View;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p0

    :catch_0
    :goto_1
    and-int p0, v1, v2

    return p0
.end method

.method public static removeLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eq p0, p1, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move v0, v1

    :catch_1
    return v0
.end method

.method private static stopAnimations(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 87
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move v1, v0

    .line 92
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v1, v0

    .line 96
    :goto_1
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 97
    check-cast p0, Landroid/view/ViewGroup;

    move v2, v0

    .line 99
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/byd/launcher/stability/QuickSettingsResources;->stopAnimations(Landroid/view/View;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    :catch_2
    return v0
.end method

.method public static unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method
