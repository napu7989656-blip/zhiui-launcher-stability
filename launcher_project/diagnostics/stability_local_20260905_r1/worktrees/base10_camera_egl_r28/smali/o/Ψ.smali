.class public final synthetic Lo/Ψ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/AppLauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/AppLauncherActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/Ψ;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/Ψ;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

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
    .locals 3

    .line 1
    iget v0, p0, Lo/Ψ;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/Ψ;->ͱ:Lcom/byd/launcher/AppLauncherActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "ADB\u8fde\u63a5\u5931\u8d25\uff0c\u65e0\u6cd5\u6295\u5c4f"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v0, "ADB\u8fde\u63a5\u5931\u8d25"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_2
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/byd/launcher/AppLauncherActivity;->ˋ()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_0
    iget-object v0, v1, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string v0, "ADB\u8fde\u63a5\u5931\u8d25\uff0c\u65e0\u6cd5\u5378\u8f7d"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
