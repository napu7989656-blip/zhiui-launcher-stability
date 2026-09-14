.class public final Lo/t;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lo/u;


# direct methods
.method public constructor <init>(Lo/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/t;->ˋ:Lo/u;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lo/t;->ˋ:Lo/u;

    invoke-virtual {v0}, Lo/u;->ˏ()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
