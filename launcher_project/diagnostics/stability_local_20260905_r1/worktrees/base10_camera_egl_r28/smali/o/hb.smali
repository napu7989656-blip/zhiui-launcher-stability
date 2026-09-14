.class public final synthetic Lo/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ia;


# direct methods
.method public synthetic constructor <init>(Lo/ia;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/hb;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/hb;->ͱ:Lo/ia;

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
    iget v0, p0, Lo/hb;->Ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lo/hb;->ͱ:Lo/ia;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 13
    .line 14
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Β()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    const-class v2, Lcom/byd/launcher/MainActivity;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const/high16 v2, 0x14000000

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_0
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lo/hb;->ͱ:Lo/ia;

    .line 39
    .line 40
    iget-object v1, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    iput-object v2, v1, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 44
    .line 45
    iget-boolean v1, v1, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Γ:Z

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Β:Z

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ˏ(Lcom/byd/launcher/NavBarService;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :pswitch_2
    iget-object v0, p0, Lo/hb;->ͱ:Lo/ia;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 73
    .line 74
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Α()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_3
    iget-object v0, p0, Lo/hb;->ͱ:Lo/ia;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 86
    .line 87
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Α()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_4
    iget-object v0, p0, Lo/hb;->ͱ:Lo/ia;

    .line 94
    .line 95
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->φ()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_0
    iget-object v0, p0, Lo/hb;->ͱ:Lo/ia;

    .line 102
    .line 103
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 106
    .line 107
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
