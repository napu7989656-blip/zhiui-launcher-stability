.class public final Lo/g8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/g8;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/g8;->Ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo/g8;->ˏ:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Lo/g8;->ˋ:I

    .line 2
    .line 3
    const-string v1, "NavBarSvc"

    .line 4
    .line 5
    const-string v2, "VehicleCtrlMgr"

    .line 6
    .line 7
    iget-object v3, p0, Lo/g8;->ˏ:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Command failed: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " - "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v2, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    const-string v0, "refreshTrunkState error: "

    .line 42
    .line 43
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    const-string v0, "toggleAcPower error: "

    .line 48
    .line 49
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_3
    const-string v0, "getEnvironmentInfo failed: "

    .line 54
    .line 55
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_4
    const-string v0, "syncWallpapersViaIpc copy error: "

    .line 60
    .line 61
    const-string v1, "MainActivity"

    .line 62
    .line 63
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_0
    const-string v0, "BYD screen off failed: "

    .line 73
    .line 74
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget v0, p0, Lo/g8;->ˋ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "state"

    .line 5
    .line 6
    iget-object v3, p0, Lo/g8;->Ͱ:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lo/g8;->ˏ:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v1, "value"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    check-cast v3, Lo/oj;

    .line 30
    .line 31
    iget-object v0, v3, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 32
    .line 33
    check-cast v4, Lo/nj;

    .line 34
    .line 35
    new-instance v1, Lo/h2;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    invoke-direct {v1, p0, v4, p1, v2}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v0, 0x1

    .line 50
    if-ne p1, v0, :cond_0

    .line 51
    .line 52
    const-string v0, "stopAc"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "startAc"

    .line 56
    .line 57
    :goto_0
    check-cast v4, Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v4, v0, v1, v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "toggleAcPower: state="

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " -> "

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "NavBarSvc"

    .line 86
    .line 87
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_3
    check-cast v3, Lcom/byd/launcher/NavBarService;

    .line 92
    .line 93
    iget-object v0, v3, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 94
    .line 95
    check-cast v4, [D

    .line 96
    .line 97
    new-instance v1, Lo/Ϋ;

    .line 98
    .line 99
    const/4 v2, 0x3

    .line 100
    invoke-direct {v1, p0, p1, v2, v4}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v1, "syncWallpapersViaIpc copied: "

    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "destPath"

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "MainActivity"

    .line 128
    .line 129
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :goto_1
    check-cast v3, Lo/oj;

    .line 139
    .line 140
    const-string v0, "savedIAL"

    .line 141
    .line 142
    const/4 v1, -0x1

    .line 143
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, v3, Lo/oj;->Έ:I

    .line 148
    .line 149
    const-string v0, "savedBacklight"

    .line 150
    .line 151
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iput p1, v3, Lo/oj;->Ή:I

    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v0, "BYD screen off: savedIAL="

    .line 160
    .line 161
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget v0, v3, Lo/oj;->Έ:I

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, " savedBacklight="

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget v0, v3, Lo/oj;->Ή:I

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v0, "VehicleCtrlMgr"

    .line 184
    .line 185
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
