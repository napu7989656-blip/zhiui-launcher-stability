.class public final synthetic Lo/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilityNavRead:Lcom/byd/launcher/stability/NavRead;
.field public final stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;
.field public final stabilityNavTicket:Lcom/byd/launcher/stability/LatestRead$Ticket;
.field public final stabilityNavRoot:Landroid/view/View;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;

.field public final synthetic Ͳ:Landroid/widget/SeekBar;

.field public final synthetic ͳ:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    iput p4, p0, Lo/je;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/je;->ͱ:Lo/ff;

    .line 4
    .line 5
    iput-object p2, p0, Lo/je;->Ͳ:Landroid/widget/SeekBar;

    .line 6
    .line 7
    iput-object p3, p0, Lo/je;->ͳ:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1
    if-eq p4, v0, :nav_capture_done
    iget-object v0, p1, Lo/ff;->stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestRead;->issue()Lcom/byd/launcher/stability/LatestRead$Ticket;
    move-result-object v0
    iput-object v0, p0, Lo/je;->stabilityNavTicket:Lcom/byd/launcher/stability/LatestRead$Ticket;
    iget-object v0, p1, Lo/ff;->ͳ:Landroid/view/View;
    iput-object v0, p0, Lo/je;->stabilityNavRoot:Landroid/view/View;
    new-instance v0, Lcom/byd/launcher/stability/NavRead;
    invoke-direct {v0, p1}, Lcom/byd/launcher/stability/NavRead;-><init>(Lo/ff;)V
    iput-object v0, p0, Lo/je;->stabilityNavRead:Lcom/byd/launcher/stability/NavRead;
    :nav_capture_done

    const/4 v0, 0x1
    if-ne p4, v0, :instrument_capture_done
    iget-object v0, p1, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    const/4 p4, 0x0
    invoke-virtual {v0, p4}, Lcom/byd/launcher/stability/InstrumentReads;->begin(Z)Lcom/byd/launcher/stability/InstrumentReads$Request;
    move-result-object v0
    iput-object v0, p0, Lo/je;->stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;
    :instrument_capture_done

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/je;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/je;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :pswitch_0
    iget-object v0, p0, Lo/je;->Ͳ:Landroid/widget/SeekBar;

    .line 10
    .line 11
    iget-object v2, p0, Lo/je;->ͳ:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v3, p0, Lo/je;->ͱ:Lo/ff;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v4, "QuickSettingsMgr"

    .line 19
    .line 20
    const-string v5, "setupInstBrt: initial rawApi="

    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v9, -0x1

    .line 41
    filled-new-array {v9}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const-string v10, "getBacklightBrightness"

    .line 46
    .line 47
    new-instance v11, Lo/te;

    .line 48
    .line 49
    invoke-direct {v11, v9, v7, v1}, Lo/te;-><init>([ILjava/util/concurrent/CountDownLatch;I)V

    .line 50
    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    invoke-virtual {v6, v10, v12, v11}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 54
    .line 55
    .line 56
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    const-wide/16 v10, 0x2

    .line 59
    .line 60
    invoke-virtual {v7, v10, v11, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    move-result v6
    if-nez v6, :wait_completed
    const/4 v1, -0x1
    goto :wait_value_ready
    :wait_completed

    .line 61
    .line 62
    .line 63
    aget v1, v9, v1
    :wait_value_ready

    .line 64
    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :wait_interrupted
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    const/16 v5, 0xc

    .line 81
    .line 82
    const-string v6, "setupInstBrt: rawApi="

    .line 83
    .line 84
    if-lt v1, v5, :cond_0

    .line 85
    .line 86
    const/16 v5, 0x16

    .line 87
    .line 88
    if-gt v1, v5, :cond_0

    .line 89
    .line 90
    :try_start_1
    invoke-static {v1}, Lo/ff;->ͺ(I)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, " -> step="

    .line 103
    .line 104
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, " -> display="

    .line 111
    .line 112
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    mul-int/lit8 v1, v5, 0xa

    .line 116
    .line 117
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v4, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lo/je;->stabilityInstrumentRequest:Lcom/byd/launcher/stability/InstrumentReads$Request;

    .line 128
    .line 129
    new-instance v3, Lo/be;

    .line 130
    .line 131
    invoke-direct {v3, v0, v5, v2, v8}, Lo/be;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v5, v3}, Lcom/byd/launcher/stability/InstrumentReads$Request;->complete(ILjava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, " out of valid range, skip initial UI sync"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v2, "getBacklightBrightness: "

    .line 163
    .line 164
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_1
    :goto_0
    return-void

    .line 171
    :pswitch_1
    iget-object v0, p0, Lo/je;->stabilityNavRead:Lcom/byd/launcher/stability/NavRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/NavRead;->current()Z
    move-result v0
    if-nez v0, :nav_worker_current_pswitch_1
    return-void
    :nav_worker_current_pswitch_1
    iget-object v0, p0, Lo/je;->ͱ:Lo/ff;

    .line 172
    .line 173
    iget-object v1, p0, Lo/je;->Ͳ:Landroid/widget/SeekBar;

    .line 174
    .line 175
    iget-object v2, p0, Lo/je;->ͳ:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v0}, Lo/ff;->Ͷ()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-ltz v3, :cond_2

    .line 182
    .line 183
    # Nav v3 cache is committed with the accepted result on the main Handler.

    .line 184
    .line 185
    # Owned Handler selected by NavVolumeApply.submit.

    .line 186
    .line 187
    new-instance v4, Lo/be;

    .line 188
    .line 189
    const/4 v5, 0x2

    .line 190
    invoke-direct {v4, v1, v3, v2, v5}, Lo/be;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;I)V

    .line 191
    .line 192
    .line 193
    invoke-static {p0, v3, v4}, Lcom/byd/launcher/stability/NavVolumeApply;->submit(Lo/je;ILjava/lang/Runnable;)V

    .line 194
    .line 195
    .line 196
    :cond_2
    return-void

    .line 197
    :goto_1
    iget-object v0, p0, Lo/je;->stabilityNavRead:Lcom/byd/launcher/stability/NavRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/NavRead;->current()Z
    move-result v0
    if-nez v0, :nav_worker_current_goto_1
    return-void
    :nav_worker_current_goto_1
    iget-object v0, p0, Lo/je;->ͱ:Lo/ff;

    .line 198
    .line 199
    iget-object v2, p0, Lo/je;->Ͳ:Landroid/widget/SeekBar;

    .line 200
    .line 201
    iget-object v3, p0, Lo/je;->ͳ:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v0}, Lo/ff;->Ͷ()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-ltz v4, :cond_3

    .line 208
    .line 209
    # Nav v4 cache is committed with the accepted result on the main Handler.

    .line 210
    .line 211
    # Owned Handler selected by NavVolumeApply.submit.

    .line 212
    .line 213
    new-instance v5, Lo/be;

    .line 214
    .line 215
    invoke-direct {v5, v2, v4, v3, v1}, Lo/be;-><init>(Landroid/widget/SeekBar;ILandroid/widget/TextView;I)V

    .line 216
    .line 217
    .line 218
    invoke-static {p0, v4, v5}, Lcom/byd/launcher/stability/NavVolumeApply;->submit(Lo/je;ILjava/lang/Runnable;)V

    .line 219
    .line 220
    .line 221
    :cond_3
    return-void

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    :wait_interrupted
    move-exception v0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    return-void
.end method
