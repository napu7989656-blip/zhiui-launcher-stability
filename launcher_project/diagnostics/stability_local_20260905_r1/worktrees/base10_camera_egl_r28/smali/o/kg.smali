.class public final synthetic Lo/kg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
.implements Lcom/google/android/material/animation/AnimatableView$Listener;


# instance fields
.field public final synthetic ˋ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/kg;->ˋ:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/kg;->ˋ:Ljava/lang/Object;

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/kg;->ˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/search/SearchBar;

    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchBar;->ˋ(Lcom/google/android/material/search/SearchBar;Z)V

    return-void
.end method
