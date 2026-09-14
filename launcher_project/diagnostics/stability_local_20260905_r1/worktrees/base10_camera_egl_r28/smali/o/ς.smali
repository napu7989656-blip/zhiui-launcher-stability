.class public final synthetic Lo/ς;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/AppLauncherActivity;

.field public final synthetic Ͳ:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/ς;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ς;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lo/ς;->Ͳ:Ljava/util/List;

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
    .locals 4

    .line 1
    iget v0, p0, Lo/ς;->Ͱ:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v2, p0, Lo/ς;->Ͳ:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lo/ς;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :pswitch_0
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, v3, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v3, v2}, Lcom/byd/launcher/AppLauncherActivity;->Ͳ(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void

    .line 39
    :pswitch_1
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Lcom/byd/launcher/AppLauncherActivity;->Ͳ(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void

    .line 57
    :goto_1
    iget-object v0, v3, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {v3, v2}, Lcom/byd/launcher/AppLauncherActivity;->Ͳ(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
