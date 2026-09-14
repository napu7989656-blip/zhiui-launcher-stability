.class public final synthetic Lo/uc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/nd;


# direct methods
.method public synthetic constructor <init>(Lo/nd;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/uc;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/uc;->ͱ:Lo/nd;

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
    .locals 9

    .line 1
    iget v0, p0, Lo/uc;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Lo/uc;->ͱ:Lo/nd;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v4, "PiPManager"

    .line 17
    .line 18
    :try_start_0
    const-string v5, "android.os.ServiceManager"

    .line 19
    .line 20
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "getService"

    .line 25
    .line 26
    new-array v7, v1, [Ljava/lang/Class;

    .line 27
    .line 28
    const-class v8, Ljava/lang/String;

    .line 29
    .line 30
    aput-object v8, v7, v2

    .line 31
    .line 32
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v6, "byd.launcher.touch"

    .line 39
    .line 40
    aput-object v6, v1, v2

    .line 41
    .line 42
    invoke-virtual {v5, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/os/IBinder;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    new-instance v5, Lo/qc;

    .line 57
    .line 58
    invoke-direct {v5, v0}, Lo/qc;-><init>(Lo/nd;)V

    .line 59
    .line 60
    .line 61
    iput-object v5, v0, Lo/nd;->ρ:Lo/qc;

    .line 62
    .line 63
    invoke-interface {v1, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lo/nd;->Ο:Landroid/os/IBinder;

    .line 67
    .line 68
    const-string v1, "Binder touch service connected: byd.launcher.touch"

    .line 69
    .line 70
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string v1, "Binder touch service not available, using fallback"

    .line 75
    .line 76
    invoke-static {v4, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Lo/nd;->Ο:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v5, "Failed to connect binder touch service: "

    .line 86
    .line 87
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object v3, v0, Lo/nd;->Ο:Landroid/os/IBinder;

    .line 94
    .line 95
    :goto_0
    return-void

    .line 96
    :pswitch_1
    iget-object v0, p0, Lo/uc;->ͱ:Lo/nd;

    .line 97
    .line 98
    iget-object v0, v0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void

    .line 106
    :pswitch_2
    iget-object v0, p0, Lo/uc;->ͱ:Lo/nd;

    .line 107
    .line 108
    iget-object v1, v0, Lo/nd;->Ζ:Landroid/os/Handler;

    .line 109
    .line 110
    iget-object v2, v0, Lo/nd;->ή:Lo/c8;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    :try_start_1
    iget-object v1, v0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 116
    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 120
    .line 121
    .line 122
    iput-object v3, v0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .line 124
    :catch_1
    :cond_2
    const/4 v1, -0x1

    .line 125
    iput v1, v0, Lo/nd;->Ε:I

    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_3
    iget-object v0, p0, Lo/uc;->ͱ:Lo/nd;

    .line 129
    .line 130
    iget-object v1, v0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lo/nd;->ˏ(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_1
    iget-object v0, p0, Lo/uc;->ͱ:Lo/nd;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    :try_start_2
    new-instance v4, Ljava/net/Socket;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 163
    .line 164
    const-string v2, "127.0.0.1"

    .line 165
    .line 166
    const/16 v5, 0x22b9

    .line 167
    .line 168
    invoke-direct {v1, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const/16 v2, 0x7d0

    .line 172
    .line 173
    invoke-virtual {v4, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lo/nd;->Ν:[B

    .line 177
    .line 178
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :try_start_3
    iput-object v4, v0, Lo/nd;->Μ:Ljava/net/Socket;

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iput-object v2, v0, Lo/nd;->Λ:Ljava/io/OutputStream;

    .line 186
    .line 187
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :try_start_4
    const-string v1, "PiPManager"

    .line 189
    .line 190
    const-string v2, "Binary touch socket connected to port 8889"

    .line 191
    .line 192
    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_0
    move-exception v2

    .line 197
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 199
    :catch_2
    move-exception v1

    .line 200
    const-string v2, "PiPManager"

    .line 201
    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v5, "Failed to connect binary touch socket: "

    .line 205
    .line 206
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v4, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lo/nd;->Ν:[B

    .line 213
    .line 214
    monitor-enter v1

    .line 215
    :try_start_7
    iput-object v3, v0, Lo/nd;->Μ:Ljava/net/Socket;

    .line 216
    .line 217
    iput-object v3, v0, Lo/nd;->Λ:Ljava/io/OutputStream;

    .line 218
    .line 219
    monitor-exit v1

    .line 220
    :goto_2
    return-void

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 223
    throw v0

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
