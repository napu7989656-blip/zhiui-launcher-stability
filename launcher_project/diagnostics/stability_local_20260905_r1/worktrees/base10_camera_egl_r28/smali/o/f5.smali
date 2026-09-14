.class public abstract Lo/f5;
.super Lo/e5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    .line 1
    const-class v3, Landroid/view/ViewParent;

    const-string v4, "getParent"

    const-string v5, "getParent()Landroid/view/ViewParent;"

    .line 2
    sget-object v2, Lo/III;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/e5;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    .line 3
    const-class v3, Landroidx/activity/OnBackPressedDispatcher;

    const-string v4, "updateEnabledCallbacks"

    const-string v5, "updateEnabledCallbacks()V"

    move-object v0, p0

    move-object v2, p1

    .line 4
    invoke-direct/range {v0 .. v5}, Lo/e5;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
