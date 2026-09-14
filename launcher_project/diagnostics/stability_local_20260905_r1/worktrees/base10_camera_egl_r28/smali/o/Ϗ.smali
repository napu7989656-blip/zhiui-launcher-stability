.class public final synthetic Lo/Ϗ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/AppLauncherActivity;

.field public final synthetic Ͳ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/AppLauncherActivity;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/Ϗ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/Ϗ;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lo/Ϗ;->Ͳ:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lo/Ϗ;->Ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lo/Ϗ;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

    .line 8
    .line 9
    iget-object v1, p0, Lo/Ϗ;->Ͳ:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v2, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/byd/launcher/AppLauncherActivity;->ͱ(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/byd/launcher/AppLauncherActivity;->Ͷ:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sput-wide v2, Lcom/byd/launcher/AppLauncherActivity;->ͷ:J

    .line 27
    .line 28
    iget-object v2, v0, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v3, Lo/ς;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-direct {v3, v0, v1, v4}, Lo/ς;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/util/ArrayList;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :goto_0
    iget-object v0, p0, Lo/Ϗ;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

    .line 41
    .line 42
    iget-object v1, p0, Lo/Ϗ;->Ͳ:Landroid/content/Context;

    .line 43
    .line 44
    sget-object v2, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/byd/launcher/AppLauncherActivity;->ͱ(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sput-object v1, Lcom/byd/launcher/AppLauncherActivity;->Ͷ:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    sput-wide v2, Lcom/byd/launcher/AppLauncherActivity;->ͷ:J

    .line 60
    .line 61
    iget-object v2, v0, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v3, Lo/ς;

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    invoke-direct {v3, v0, v1, v4}, Lo/ς;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/util/ArrayList;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
