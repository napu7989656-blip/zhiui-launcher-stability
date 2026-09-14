.class public final Lo/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public synthetic constructor <init>(ILcom/byd/launcher/NavBarService;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ma;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/ma;->Ͱ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput-boolean p3, p0, Lo/ma;->ˏ:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lo/ma;->ˋ:I

    .line 2
    .line 3
    const-string v1, "NavBarSvc"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "setDoorLock failed: "

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ", trying individual"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v1, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lo/ma;->ˏ:Z

    .line 32
    .line 33
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 34
    .line 35
    iget-object v0, p0, Lo/ma;->Ͱ:Lcom/byd/launcher/NavBarService;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    :goto_0
    const/4 v3, 0x4

    .line 42
    const/4 v4, 0x0

    .line 43
    if-gt v2, v3, :cond_0

    .line 44
    .line 45
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v5, "area"

    .line 51
    .line 52
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v5, "action"

    .line 56
    .line 57
    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 61
    .line 62
    const-string v6, "setDoorLock"

    .line 63
    .line 64
    new-instance v7, Lo/oa;

    .line 65
    .line 66
    invoke-direct {v7, v0, v2, v4}, Lo/oa;-><init>(Ljava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6, v3, v7}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v3

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v5, "toggleDoor area="

    .line 77
    .line 78
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, " error: "

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v4, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v0, Lo/la;

    .line 98
    .line 99
    invoke-direct {v0, p0, v4}, Lo/la;-><init>(Lo/ma;I)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v1, 0x7d0

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_2
    const-string v0, "AC power toggle failed: "

    .line 109
    .line 110
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget p1, p0, Lo/ma;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/ma;->Ͱ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iget-boolean v1, p0, Lo/ma;->ˏ:Z

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p1, "locked"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "unlocked"

    .line 17
    .line 18
    :goto_0
    const-string v1, "setDoorLock OK: "

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, "NavBarSvc"

    .line 25
    .line 26
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v0, Lo/la;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, p0, v1}, Lo/la;-><init>(Lo/ma;I)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x3e8

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    iget-object p1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lo/Ζ;->Ͱ(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 49
    .line 50
    new-instance v0, Lo/td;

    .line 51
    .line 52
    const/16 v1, 0xd

    .line 53
    .line 54
    invoke-direct {v0, v1, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
