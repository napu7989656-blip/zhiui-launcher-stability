.class public final synthetic Lo/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic ˋ:Lo/nd;

.field public final synthetic ˏ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lo/nd;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/yc;->ˋ:Lo/nd;

    iput-object p2, p0, Lo/yc;->ˏ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/yc;->ˋ:Lo/nd;

    .line 2
    .line 3
    iget-object v1, p0, Lo/yc;->ˏ:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lo/nd;->Ύ(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method
