.class public final synthetic Lo/ke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/ef;
.implements Lo/bf;
.implements Lo/e4;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/ff;


# direct methods
.method public synthetic constructor <init>(Lo/ff;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ke;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ke;->ˏ:Lo/ff;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 7

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ke;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    const/4 v0, 0x0
    return v0
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ke;->ˋ:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "value"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_1

    .line 12
    .line 13
    :pswitch_1
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "wifi"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move v3, v4

    .line 41
    :catch_0
    :cond_0
    return v3

    .line 42
    :pswitch_2
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string v1, "getHDCState"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ltz v1, :cond_2

    .line 54
    .line 55
    if-ne v1, v4, :cond_1

    .line 56
    .line 57
    move v3, v4

    .line 58
    :cond_1
    iput-boolean v3, v0, Lo/ff;->Π:Z

    .line 59
    .line 60
    :cond_2
    iget-boolean v0, v0, Lo/ff;->Π:Z

    .line 61
    .line 62
    return v0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string v5, "getSocSaveSwitch"

    .line 69
    .line 70
    invoke-static {v5, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ltz v2, :cond_4

    .line 75
    .line 76
    if-ne v2, v1, :cond_3

    .line 77
    .line 78
    move v3, v4

    .line 79
    :cond_3
    iput-boolean v3, v0, Lo/ff;->Ξ:Z

    .line 80
    .line 81
    :cond_4
    iget-boolean v0, v0, Lo/ff;->Ξ:Z

    .line 82
    .line 83
    return v0

    .line 84
    :pswitch_4
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    move v3, v4

    .line 102
    :catch_1
    :cond_5
    return v3

    .line 103
    :pswitch_5
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-string v5, "getEnergyFeedback"

    .line 109
    .line 110
    invoke-static {v5, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ltz v2, :cond_7

    .line 115
    .line 116
    if-ne v2, v1, :cond_6

    .line 117
    .line 118
    move v3, v4

    .line 119
    :cond_6
    iput-boolean v3, v0, Lo/ff;->Ν:Z

    .line 120
    .line 121
    :cond_7
    iget-boolean v0, v0, Lo/ff;->Ν:Z

    .line 122
    .line 123
    return v0

    .line 124
    :pswitch_6
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const-string v1, "getEngineVoiceSimulatorState"

    .line 130
    .line 131
    const-string v2, "state"

    .line 132
    .line 133
    invoke-static {v1, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ltz v1, :cond_9

    .line 138
    .line 139
    if-ne v1, v4, :cond_8

    .line 140
    .line 141
    move v3, v4

    .line 142
    :cond_8
    iput-boolean v3, v0, Lo/ff;->Ο:Z

    .line 143
    .line 144
    :cond_9
    iget-boolean v0, v0, Lo/ff;->Ο:Z

    .line 145
    .line 146
    return v0

    .line 147
    :pswitch_7
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    :try_start_2
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 153
    .line 154
    const-string v2, "audio"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Landroid/media/AudioManager;

    .line 161
    .line 162
    if-eqz v1, :cond_a

    .line 163
    .line 164
    const/4 v2, 0x3

    .line 165
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 166
    .line 167
    .line 168
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    goto :goto_0

    .line 170
    :catch_2
    :cond_a
    iget-boolean v0, v0, Lo/ff;->ͻ:Z

    .line 171
    .line 172
    :goto_0
    return v0

    .line 173
    :goto_1
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    :try_start_3
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 179
    .line 180
    const-string v2, "connectivity"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 187
    .line 188
    if-nez v1, :cond_b

    .line 189
    .line 190
    iget-boolean v0, v0, Lo/ff;->Μ:Z

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const-string v5, "getMobileDataEnabled"

    .line 198
    .line 199
    new-array v6, v3, [Ljava/lang/Class;

    .line 200
    .line 201
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-array v5, v3, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 212
    .line 213
    if-eqz v2, :cond_c

    .line 214
    .line 215
    check-cast v1, Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_c

    .line 222
    .line 223
    move v3, v4

    .line 224
    :cond_c
    iput-boolean v3, v0, Lo/ff;->Μ:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    .line 226
    move v0, v3

    .line 227
    goto :goto_2

    .line 228
    :catch_3
    iget-boolean v0, v0, Lo/ff;->Μ:Z

    .line 229
    .line 230
    :goto_2
    return v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final ˋ(Ljava/util/ArrayList;)V
    .locals 1

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ke;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo/ff;->Έ(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, v0, Lo/ff;->ͳ:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lo/ff;->Ό()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final ˏ()Ljava/lang/String;
    .locals 6

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ke;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    const-string v0, ""
    return-object v0
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ke;->ˋ:I

    .line 2
    .line 3
    const-string v1, "\u2026"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :sswitch_0
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-le v4, v3, :cond_2

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v0, "\u84dd\u7259 \u5df2\u5f00"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    :cond_1
    const-string v0, "\u84dd\u7259"

    .line 72
    .line 73
    :cond_2
    :goto_0
    return-object v0

    .line 74
    :sswitch_1
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 75
    .line 76
    iget-boolean v0, v0, Lo/ff;->Ξ:Z

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    const-string v0, "\u5f3a\u5236\u4fdd\u7535"

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-string v0, "\u667a\u80fd\u4fdd\u7535"

    .line 84
    .line 85
    :goto_1
    return-object v0

    .line 86
    :sswitch_2
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 87
    .line 88
    iget-boolean v0, v0, Lo/ff;->Ν:Z

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string v0, "\u8f83\u5927"

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    const-string v0, "\u6807\u51c6"

    .line 96
    .line 97
    :goto_2
    return-object v0

    .line 98
    :sswitch_3
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 99
    .line 100
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v0}, Lo/ci;->Ͱ(Landroid/content/Context;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    if-eq v0, v1, :cond_6

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    if-eq v0, v1, :cond_5

    .line 113
    .line 114
    const-string v0, "\u6df1\u8272\u6a21\u5f0f"

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    const-string v0, "\u81ea\u52a8"

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    const-string v0, "\u6d45\u8272"

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    const-string v0, "\u6df1\u8272"

    .line 124
    .line 125
    :goto_3
    return-object v0

    .line 126
    :goto_4
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    :try_start_1
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v4, "wifi"

    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 144
    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_9

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    const-string v4, "<unknown ssid>"

    .line 166
    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_8

    .line 178
    .line 179
    const-string v4, "\""

    .line 180
    .line 181
    const-string v5, ""

    .line 182
    .line 183
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-le v4, v3, :cond_a

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    goto :goto_5

    .line 213
    :cond_8
    const-string v0, "WiFi \u5df2\u5f00"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catch_1
    :cond_9
    const-string v0, "WiFi"

    .line 217
    .line 218
    :cond_a
    :goto_5
    return-object v0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method


.method public final stabilityRead()Z
    .locals 7

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ke;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    const/4 v0, 0x0
    return v0
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ke;->ˋ:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "value"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_1

    .line 12
    .line 13
    :pswitch_1
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "wifi"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move v3, v4

    .line 41
    :catch_0
    :cond_0
    return v3

    .line 42
    :pswitch_2
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string v1, "getHDCState"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ltz v1, :cond_2

    .line 54
    .line 55
    if-ne v1, v4, :cond_1

    .line 56
    .line 57
    move v3, v4

    .line 58
    :cond_1
    # Return the computed Π state; commit it only with its UI result.
    return v3

    .line 59
    .line 60
    :cond_2
    iget-boolean v0, v0, Lo/ff;->Π:Z

    .line 61
    .line 62
    return v0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string v5, "getSocSaveSwitch"

    .line 69
    .line 70
    invoke-static {v5, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ltz v2, :cond_4

    .line 75
    .line 76
    if-ne v2, v1, :cond_3

    .line 77
    .line 78
    move v3, v4

    .line 79
    :cond_3
    # Return the computed Ξ state; commit it only with its UI result.
    return v3

    .line 80
    .line 81
    :cond_4
    iget-boolean v0, v0, Lo/ff;->Ξ:Z

    .line 82
    .line 83
    return v0

    .line 84
    :pswitch_4
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    move v3, v4

    .line 102
    :catch_1
    :cond_5
    return v3

    .line 103
    :pswitch_5
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-string v5, "getEnergyFeedback"

    .line 109
    .line 110
    invoke-static {v5, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ltz v2, :cond_7

    .line 115
    .line 116
    if-ne v2, v1, :cond_6

    .line 117
    .line 118
    move v3, v4

    .line 119
    :cond_6
    # Return the computed Ν state; commit it only with its UI result.
    return v3

    .line 120
    .line 121
    :cond_7
    iget-boolean v0, v0, Lo/ff;->Ν:Z

    .line 122
    .line 123
    return v0

    .line 124
    :pswitch_6
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const-string v1, "getEngineVoiceSimulatorState"

    .line 130
    .line 131
    const-string v2, "state"

    .line 132
    .line 133
    invoke-static {v1, v2}, Lo/ff;->ͼ(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ltz v1, :cond_9

    .line 138
    .line 139
    if-ne v1, v4, :cond_8

    .line 140
    .line 141
    move v3, v4

    .line 142
    :cond_8
    # Return the computed Ο state; commit it only with its UI result.
    return v3

    .line 143
    .line 144
    :cond_9
    iget-boolean v0, v0, Lo/ff;->Ο:Z

    .line 145
    .line 146
    return v0

    .line 147
    :pswitch_7
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    :try_start_2
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 153
    .line 154
    const-string v2, "audio"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Landroid/media/AudioManager;

    .line 161
    .line 162
    if-eqz v1, :cond_a

    .line 163
    .line 164
    const/4 v2, 0x3

    .line 165
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 166
    .line 167
    .line 168
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    goto :goto_0

    .line 170
    :catch_2
    :cond_a
    iget-boolean v0, v0, Lo/ff;->ͻ:Z

    .line 171
    .line 172
    :goto_0
    return v0

    .line 173
    :goto_1
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    :try_start_3
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 179
    .line 180
    const-string v2, "connectivity"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 187
    .line 188
    if-nez v1, :cond_b

    .line 189
    .line 190
    iget-boolean v0, v0, Lo/ff;->Μ:Z

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const-string v5, "getMobileDataEnabled"

    .line 198
    .line 199
    new-array v6, v3, [Ljava/lang/Class;

    .line 200
    .line 201
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-array v5, v3, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 212
    .line 213
    if-eqz v2, :cond_c

    .line 214
    .line 215
    check-cast v1, Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_c

    .line 222
    .line 223
    move v3, v4

    .line 224
    :cond_c
    # Return the computed Μ state; commit it only with its UI result.
    return v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    .line 226
    move v0, v3

    .line 227
    goto :goto_2

    .line 228
    :catch_3
    iget-boolean v0, v0, Lo/ff;->Μ:Z

    .line 229
    .line 230
    :goto_2
    return v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final stabilityCommit(Z)V
    .locals 3
    iget-object v0, p0, Lo/ke;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :done
    iget v1, p0, Lo/ke;->ˋ:I
    const/16 v2, 0xb
    if-ge v1, v2, :mobile
    if-ltz v1, :mobile
    sparse-switch v1, :fields
    :done
    return-void
    :voice
    iput-boolean p1, v0, Lo/ff;->Ο:Z
    return-void
    :energy
    iput-boolean p1, v0, Lo/ff;->Ν:Z
    return-void
    :soc
    iput-boolean p1, v0, Lo/ff;->Ξ:Z
    return-void
    :hdc
    iput-boolean p1, v0, Lo/ff;->Π:Z
    return-void
    :mobile
    iput-boolean p1, v0, Lo/ff;->Μ:Z
    return-void
    :fields
    .sparse-switch
        0x1 -> :mobile
        0x2 -> :voice
        0x3 -> :energy
        0x4 -> :mobile
        0x6 -> :soc
        0x7 -> :mobile
        0x8 -> :hdc
        0x9 -> :mobile
    .end sparse-switch
.end method
