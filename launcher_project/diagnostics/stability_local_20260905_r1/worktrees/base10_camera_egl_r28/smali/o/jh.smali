.class public final synthetic Lo/jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic ˋ:Lcom/google/android/material/sidesheet/SideSheetBehavior;

.field public final synthetic ˏ:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/jh;->ˋ:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iput p2, p0, Lo/jh;->ˏ:I

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/jh;->ˋ:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v1, p0, Lo/jh;->ˏ:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˋ(Lcom/google/android/material/sidesheet/SideSheetBehavior;ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p1

    return p1
.end method
