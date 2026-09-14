.class public final synthetic Lo/z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Lcom/byd/launcher/MainActivity;

.field public final synthetic ͱ:F

.field public final synthetic Ͳ:F


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/MainActivity;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/z7;->Ͱ:Lcom/byd/launcher/MainActivity;

    iput p2, p0, Lo/z7;->ͱ:F

    iput p3, p0, Lo/z7;->Ͳ:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/z7;->Ͱ:Lcom/byd/launcher/MainActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    .line 11
    iget v2, p0, Lo/z7;->ͱ:F

    .line 12
    .line 13
    float-to-int v2, v2

    .line 14
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 15
    .line 16
    iget v2, p0, Lo/z7;->Ͳ:F

    .line 17
    .line 18
    float-to-int v2, v2

    .line 19
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    .line 21
    const v2, 0x800033

    .line 22
    .line 23
    .line 24
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    .line 26
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
