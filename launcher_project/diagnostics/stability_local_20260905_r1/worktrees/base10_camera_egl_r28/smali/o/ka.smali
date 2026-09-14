.class public final Lo/ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Z

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lo/ka;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lo/ka;->ˏ:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p3, p0, Lo/ka;->Ͱ:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lo/ka;->ˋ:I

    .line 2
    .line 3
    const-string v1, "NavBarSvc"

    .line 4
    .line 5
    iget-object v2, p0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    const-string v0, "\u540e\u5907\u7bb1\u64cd\u4f5c\u5931\u8d25: "

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    iget-object p1, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v0, Lo/qa;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, p0, v1}, Lo/qa;-><init>(Lo/ka;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lo/ka;->ˏ:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " \u5931\u8d25: "

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v2, Lcom/byd/launcher/NavBarService;

    .line 58
    .line 59
    iget-object p1, v2, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 60
    .line 61
    iget-boolean v0, p0, Lo/ka;->Ͱ:Z

    .line 62
    .line 63
    xor-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v3, "inside_light"

    .line 70
    .line 71
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string p1, "vehicle_ctrl_prefs"

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "inside_light_active"

    .line 86
    .line 87
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    iget-object p1, v2, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 95
    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    invoke-virtual {p1, v3, v0}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_0
    return-void

    .line 102
    :goto_0
    check-cast v2, Lo/oj;

    .line 103
    .line 104
    iget-object p1, v2, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 105
    .line 106
    new-instance v0, Lo/td;

    .line 107
    .line 108
    const/16 v1, 0x13

    .line 109
    .line 110
    invoke-direct {v0, v1, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    iget v0, p0, Lo/ka;->ˋ:I

    .line 2
    .line 3
    const-wide/16 v1, 0x7d0

    .line 4
    .line 5
    const-string v3, "result"

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    const-string v5, "NavBarSvc"

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
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    :cond_0
    const-string v0, ""

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string v3, "method"

    .line 26
    .line 27
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "\u540e\u5907\u7bb1\u64cd\u4f5c("

    .line 34
    .line 35
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lo/ka;->ˏ:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "): result="

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, " method="

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v5, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 71
    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    iget-boolean v0, p0, Lo/ka;->Ͱ:Z

    .line 75
    .line 76
    iput-boolean v0, p1, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 77
    .line 78
    iget-object p1, p0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 83
    .line 84
    iget-boolean v0, p0, Lo/ka;->Ͱ:Z

    .line 85
    .line 86
    new-instance v3, Lo/x7;

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    invoke-direct {v3, v4, p0, v0}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance v0, Lo/qa;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v0, p0, v3}, Lo/qa;-><init>(Lo/ka;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object p1, p0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 112
    .line 113
    new-instance v0, Lo/qa;

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-direct {v0, p0, v3}, Lo/qa;-><init>(Lo/ka;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lo/ka;->ˏ:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " OK"

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v5, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :goto_1
    if-eqz p1, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    :cond_3
    iget-object p1, p0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Lo/oj;

    .line 157
    .line 158
    iget-object v0, p1, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 159
    .line 160
    iget-object v3, p0, Lo/ka;->ˏ:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v3, Lo/nj;

    .line 163
    .line 164
    new-instance v5, Lo/hj;

    .line 165
    .line 166
    iget-boolean v6, p0, Lo/ka;->Ͱ:Z

    .line 167
    .line 168
    invoke-direct {v5, p0, v4, v3, v6}, Lo/hj;-><init>(Lo/ka;ILo/nj;Z)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    .line 173
    .line 174
    iget-object p1, p1, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 175
    .line 176
    new-instance v0, Lo/ag;

    .line 177
    .line 178
    const/16 v4, 0x16

    .line 179
    .line 180
    invoke-direct {v0, v4, p0, v3}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
