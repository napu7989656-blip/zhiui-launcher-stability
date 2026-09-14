.class public final synthetic Lo/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    .line 1
    iput p3, p0, Lo/bg;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/bg;->Ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo/bg;->ͱ:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x3
    if-ne p3, v0, :soc_action_capture_done
    move-object v0, p1
    check-cast v0, Lo/re;
    iget-object v0, v0, Lo/re;->Ͱ:Ljava/lang/Object;
    check-cast v0, Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/SocAction;->begin(Lo/ff;)Lcom/byd/launcher/stability/ReadAfterAction$Token;
    move-result-object v0
    iput-object v0, p0, Lo/bg;->stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    :soc_action_capture_done
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/bg;->Ͳ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/bg;->Ͱ:I

    .line 2
    .line 3
    const-string v1, "QuickSettingsMgr"

    .line 4
    .line 5
    iget v2, p0, Lo/bg;->ͱ:I

    .line 6
    .line 7
    iget-object v3, p0, Lo/bg;->Ͳ:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :pswitch_0
    check-cast v3, Lo/nd;

    .line 15
    .line 16
    sget-object v0, Lo/nd;->χ:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    :try_start_0
    const-string v0, "{\"command\":\"setDisplayImePolicy\",\"params\":{\"displayId\":0,\"policy\":0}}"

    .line 24
    .line 25
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendRaw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_0
    return-void

    .line 33
    :pswitch_1
    check-cast v3, Landroid/widget/ImageView;

    .line 34
    .line 35
    sget v0, Lo/oj;->Α:I

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :pswitch_2
    check-cast v3, Lo/re;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object v0, v3, Lo/re;->Ͱ:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lo/ff;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    new-instance v4, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "value"

    .line 77
    .line 78
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v5, "setSOCTarget"

    .line 82
    .line 83
    new-instance v6, Lo/oa;

    .line 84
    .line 85
    const/4 v7, 0x5

    .line 86
    invoke-direct {v6, v3, v2, v7}, Lo/oa;-><init>(Ljava/lang/Object;II)V
    iget-object v7, p0, Lo/bg;->stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
    iput-object v7, v6, Lo/oa;->stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5, v4, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-static {p0}, Lcom/byd/launcher/stability/SocAction;->finishJob(Lo/bg;)V
    const-string v0, "SOC slider: CoreService not connected"

    .line 94
    .line 95
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_1
    move-exception v0
    invoke-static {p0}, Lcom/byd/launcher/stability/SocAction;->finishJob(Lo/bg;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "SOC slider sendCommand error: "

    .line 103
    .line 104
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v2, v1}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void

    .line 111
    :pswitch_3
    check-cast v3, Lo/se;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const-string v0, "settings put system screen_brightness "

    .line 117
    .line 118
    :try_start_2
    iget-object v3, v3, Lo/se;->Ͱ:Lo/ff;

    .line 119
    .line 120
    iget-object v3, v3, Lo/ff;->ˋ:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v3}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_3

    .line 130
    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/16 v2, 0x7d0

    .line 144
    .line 145
    invoke-static {v0, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catch_2
    move-exception v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v3, "setBrightness adb: "

    .line 153
    .line 154
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v2, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_1
    return-void

    .line 161
    :pswitch_4
    check-cast v3, Lo/ak;

    .line 162
    .line 163
    iget v0, v3, Lo/ak;->Ͷ:I

    .line 164
    .line 165
    if-eq v0, v2, :cond_4

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {v3, v2}, Lo/ak;->ˋ(I)Landroid/graphics/Bitmap;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    invoke-static {v0}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    :goto_2
    return-void

    .line 178
    :pswitch_5
    check-cast v3, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 179
    .line 180
    invoke-static {v3, v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->ˋ(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_3
    check-cast v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 185
    .line 186
    invoke-static {v3, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ˏ(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
