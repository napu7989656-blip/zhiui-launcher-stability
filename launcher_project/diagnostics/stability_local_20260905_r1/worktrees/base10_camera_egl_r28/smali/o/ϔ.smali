.class public final synthetic Lo/ϔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ϔ;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/ϔ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo/ϔ;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget p1, p0, Lo/ϔ;->ˋ:I

    .line 2
    .line 3
    iget-object p2, p0, Lo/ϔ;->Ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lo/ϔ;->ˏ:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v0, Lcom/byd/launcher/AppLauncherActivity;

    .line 12
    .line 13
    check-cast p2, Lo/Ϡ;

    .line 14
    .line 15
    sget-object p1, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p1, p2, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p2, p2, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 33
    .line 34
    new-instance v3, Lo/Ϋ;

    .line 35
    .line 36
    invoke-direct {v3, v0, p1, v2, p2}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const-string p2, "Uninstall-"

    .line 40
    .line 41
    invoke-static {p2, p1}, Lo/v1;->Ί(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v1, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_0
    check-cast v0, Lo/oj;

    .line 53
    .line 54
    check-cast p2, Lo/nj;

    .line 55
    .line 56
    sget p1, Lo/oj;->Α:I

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance p1, Lo/ka;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {p1, v0, p2, v2, v1}, Lo/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    const-string v1, "openTrunk"

    .line 70
    .line 71
    invoke-virtual {v0, v1, p2, p1}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
