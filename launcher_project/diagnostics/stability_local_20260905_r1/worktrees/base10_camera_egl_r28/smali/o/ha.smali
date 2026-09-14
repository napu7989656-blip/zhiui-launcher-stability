.class public final Lo/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceListener;


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "\u5df2\u8fde\u63a5"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "\u5df2\u65ad\u5f00"

    .line 7
    .line 8
    :goto_0
    const-string v1, "CoreService \u8fde\u63a5\u72b6\u6001: "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "NavBarSvc"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eqz p1, :cond_a

    .line 21
    .line 22
    const-string p1, "CoreService connected"

    .line 23
    .line 24
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 28
    .line 29
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v4, Lo/ia;

    .line 38
    .line 39
    const/4 v5, 0x5

    .line 40
    invoke-direct {v4, p1, v5}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 41
    .line 42
    .line 43
    const-string p1, "getAcState"

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v2}, Lcom/byd/launcher/NavBarService;->ς(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->σ()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->υ()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 65
    .line 66
    iget-object v4, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 67
    .line 68
    const/4 v5, 0x2

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const-string v4, "getSeatHeating"

    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    invoke-virtual {p1, v4, v6, v6, v6}, Lcom/byd/launcher/NavBarService;->τ(Ljava/lang/String;IZZ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v4, v5, v6, v2}, Lcom/byd/launcher/NavBarService;->τ(Ljava/lang/String;IZZ)V

    .line 85
    .line 86
    .line 87
    const-string v4, "getSeatVentilating"

    .line 88
    .line 89
    invoke-virtual {p1, v4, v6, v2, v2}, Lcom/byd/launcher/NavBarService;->τ(Ljava/lang/String;IZZ)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v4, v5, v2, v2}, Lcom/byd/launcher/NavBarService;->τ(Ljava/lang/String;IZZ)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 96
    .line 97
    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 98
    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    :try_start_0
    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 109
    .line 110
    const-string v4, "getDayTimeLightState"

    .line 111
    .line 112
    new-instance v6, Lo/ia;

    .line 113
    .line 114
    invoke-direct {v6, p1, v5}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4, v3, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catch_0
    move-exception p1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v4, "queryInitialDayTimeLightState err: "

    .line 125
    .line 126
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v2, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_3
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 133
    .line 134
    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 135
    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    :try_start_1
    iget-object v2, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 146
    .line 147
    const-string v4, "getEnergyFeedback"

    .line 148
    .line 149
    new-instance v6, Lo/ia;

    .line 150
    .line 151
    invoke-direct {v6, p1, v0}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v4, v3, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :catch_1
    move-exception p1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "queryInitialEnergyFeedbackState err: "

    .line 162
    .line 163
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v0, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    :goto_4
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 170
    .line 171
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 172
    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_8

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_8
    :try_start_2
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 183
    .line 184
    const-string v2, "getEngineVoiceSimulatorState"

    .line 185
    .line 186
    new-instance v4, Lo/ia;

    .line 187
    .line 188
    const/4 v6, 0x4

    .line 189
    invoke-direct {v4, p1, v6}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v2, v3, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :catch_2
    move-exception p1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v2, "queryInitialEngineVoiceState err: "

    .line 200
    .line 201
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_9
    :goto_5
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 210
    .line 211
    if-eqz p1, :cond_b

    .line 212
    .line 213
    invoke-virtual {p1}, Lo/vl;->Γ()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_b

    .line 218
    .line 219
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 220
    .line 221
    iput v5, p1, Lcom/byd/launcher/NavBarService;->Ϡ:I

    .line 222
    .line 223
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 224
    .line 225
    new-instance v1, Lo/ea;

    .line 226
    .line 227
    const/16 v2, 0x17

    .line 228
    .line 229
    invoke-direct {v1, p1, v2}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_a
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 237
    .line 238
    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->Κ:Z

    .line 239
    .line 240
    if-eqz p1, :cond_b

    .line 241
    .line 242
    iget-object p1, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 243
    .line 244
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 245
    .line 246
    new-instance v1, Lo/td;

    .line 247
    .line 248
    invoke-direct {v1, v0, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    const-wide/16 v2, 0x1388

    .line 252
    .line 253
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    .line 255
    .line 256
    :cond_b
    :goto_6
    return-void
.end method

.method public final onNotification(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ha;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p2, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v2, Lo/Ϋ;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v0, p1, v3, p2}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
