.class public final synthetic Lo/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/LauncherApp;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/LauncherApp;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/e7;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/e7;->ͱ:Lcom/byd/launcher/LauncherApp;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lo/e7;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/e7;->ͱ:Lcom/byd/launcher/LauncherApp;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    sget v0, Lcom/byd/launcher/LauncherApp;->ˏ:I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "LauncherApp"

    .line 22
    .line 23
    const-string v2, "ADB reconnected callback: NavBarService not alive, scheduling restart"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Lcom/byd/launcher/LauncherApp;->ˋ:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v2, Lo/e7;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v2, v1, v3}, Lo/e7;-><init>(Lcom/byd/launcher/LauncherApp;I)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v3, 0x3e8

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :goto_1
    sget v0, Lcom/byd/launcher/LauncherApp;->ˏ:I

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-static {v1}, Lcom/byd/launcher/LauncherApp;->ˋ(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
