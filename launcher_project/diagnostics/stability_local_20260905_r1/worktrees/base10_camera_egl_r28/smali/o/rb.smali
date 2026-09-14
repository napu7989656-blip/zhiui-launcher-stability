.class public final Lo/rb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:Lcom/byd/launcher/ipc/CoreServiceClient;


# direct methods
.method public synthetic constructor <init>(ZLcom/byd/launcher/ipc/CoreServiceClient;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/rb;->ˋ:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lo/rb;->ˏ:Z

    .line 4
    .line 5
    iput-object p2, p0, Lo/rb;->Ͱ:Lcom/byd/launcher/ipc/CoreServiceClient;

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
    .locals 2

    .line 1
    iget v0, p0, Lo/rb;->ˋ:I

    .line 2
    .line 3
    const-string v1, "NavBarSvc"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    const-string v0, "adjustAcWind get error: "

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    const-string v0, "adjustAcTemp get error: "

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    iget v0, p0, Lo/rb;->ˋ:I

    .line 2
    .line 3
    const-string v1, " -> "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lo/rb;->Ͱ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 7
    .line 8
    iget-boolean v4, p0, Lo/rb;->ˏ:Z

    .line 9
    .line 10
    const-string v5, "NavBarSvc"

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :pswitch_0
    const-string v0, "adjustAcWind: "

    .line 17
    .line 18
    :try_start_0
    const-string v6, "windLevel"

    .line 19
    .line 20
    const/4 v7, 0x3

    .line 21
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    add-int/lit8 v4, p1, 0x1

    .line 28
    .line 29
    const/4 v6, 0x7

    .line 30
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    add-int/lit8 v4, p1, -0x1

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v7, "level"

    .line 48
    .line 49
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v7, "setAcWindLevel"

    .line 53
    .line 54
    invoke-virtual {v3, v7, v6, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v5, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "adjustAcWind set error: "

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void

    .line 91
    :goto_2
    const-string v0, "adjustAcTemp: "

    .line 92
    .line 93
    :try_start_1
    const-string v6, "driverTemp"

    .line 94
    .line 95
    const/16 v7, 0x18

    .line 96
    .line 97
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    add-int/lit8 v4, p1, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_1
    add-int/lit8 v4, p1, -0x1

    .line 107
    .line 108
    :goto_3
    new-instance v6, Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v7, "type"

    .line 114
    .line 115
    const/4 v8, 0x1

    .line 116
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    const-string v7, "temp"

    .line 120
    .line 121
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    const-string v7, "setAcTemperature"

    .line 125
    .line 126
    invoke-virtual {v3, v7, v6, v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v5, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :catch_1
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v1, "adjustAcTemp set error: "

    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
