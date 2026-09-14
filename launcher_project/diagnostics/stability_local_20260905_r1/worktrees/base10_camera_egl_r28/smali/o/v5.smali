.class public final synthetic Lo/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Lo/y3;
.implements Lo/e4;
.implements Lo/em;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/v5;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/v5;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/v5;->ˏ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->ˋ(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/v5;->ˏ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->ˋ(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p1

    return p1
.end method

.method public final run(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/v5;->ˋ:I

    iget-object v1, p0, Lo/v5;->ˏ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/material/carousel/MaskableFrameLayout;

    invoke-static {v1, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->ˋ(Lcom/google/android/material/carousel/MaskableFrameLayout;Landroid/graphics/Canvas;)V

    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v1, p1}, Lcom/google/android/material/navigation/NavigationView;->ˋ(Lcom/google/android/material/navigation/NavigationView;Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final ˋ(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/v5;->ˏ:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/oj;

    .line 4
    .line 5
    sget v1, Lo/oj;->Α:I

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lo/oj;->Ό(Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lo/oj;->ͼ()V

    .line 11
    .line 12
    .line 13
    iget-object p1, v0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, v0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Lo/oj;->Ά()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
