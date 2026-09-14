.class public abstract Lo/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˋ:Landroid/os/Handler;

.field public static ˏ:Landroid/widget/TextView;

.field public static final Ͱ:Lo/lII;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lo/kc;->ˋ:Landroid/os/Handler;

    new-instance v0, Lo/lII;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lo/lII;-><init>(I)V

    sput-object v0, Lo/kc;->Ͱ:Lo/lII;

    return-void
.end method

.method public static ˋ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lo/kc;->ˋ:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lo/x9;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v3, v2}, Lo/x9;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method
