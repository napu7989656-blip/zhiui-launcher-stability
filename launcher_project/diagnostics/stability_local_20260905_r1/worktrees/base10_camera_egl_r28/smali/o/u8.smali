.class public final synthetic Lo/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/a9;


# direct methods
.method public synthetic constructor <init>(Lo/a9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/u8;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/u8;->ͱ:Lo/a9;

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
    iget-object v0, p0, Lo/u8;->ͱ:Lo/a9;
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :media_retry_alive
    return-void
    :media_retry_alive


    .line 1
    iget v0, p0, Lo/u8;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/u8;->ͱ:Lo/a9;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_3

    .line 9
    :pswitch_0
    invoke-virtual {v1}, Lo/a9;->ͺ()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 13
    .line 14
    const-string v2, "MusicCtrlMgr"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 23
    .line 24
    .line 25
    const-string v0, "Auto-play sent after music app launch"

    .line 26
    .line 27
    invoke-static {v2, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "Auto-play failed: "

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget v0, v1, Lo/a9;->Α:I

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    iput v0, v1, Lo/a9;->Α:I

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    if-ge v0, v3, :cond_1

    .line 60
    .line 61
    iget-object v0, v1, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v1, v1, Lo/a9;->Β:Lo/u8;

    .line 64
    .line 65
    const-wide/16 v2, 0x320

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const-string v0, "Auto-play gave up after 8 retries"

    .line 72
    .line 73
    :goto_0
    invoke-static {v2, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    const/4 v0, 0x0

    .line 77
    iput v0, v1, Lo/a9;->Α:I

    .line 78
    .line 79
    :goto_2
    return-void

    .line 80
    :pswitch_1
    iget-object v0, v1, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :pswitch_2
    iget-object v0, v1, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void

    .line 104
    :goto_3
    invoke-virtual {v1}, Lo/a9;->ͺ()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
