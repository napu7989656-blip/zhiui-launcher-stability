.class public final Lo/yb;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/yb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo/yb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method
