.class public final synthetic Lo/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ff;

.field public final synthetic Ͳ:Lo/df;


# direct methods
.method public synthetic constructor <init>(Lo/ff;Lo/df;I)V
    .locals 2

    .line 1
    iput p3, p0, Lo/ce;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ce;->ͱ:Lo/ff;

    .line 4
    .line 5
    iput-object p2, p0, Lo/ce;->Ͳ:Lo/df;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x3
    if-ne p3, v0, :tile_capture_done
    invoke-static {p1, p2}, Lcom/byd/launcher/stability/TileSnapshots;->capture(Lo/ff;Lo/df;)Lcom/byd/launcher/stability/TileBatch;
    move-result-object v0
    iput-object v0, p0, Lo/ce;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    :tile_capture_done
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ce;->ͱ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ce;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lo/ce;->ͱ:Lo/ff;

    .line 10
    .line 11
    iget-object v2, p0, Lo/ce;->Ͳ:Lo/df;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16


    .line 17
    .line 18
    new-instance v4, Lo/ce;

    .line 19
    .line 20
    invoke-direct {v4, v0, v2, v1}, Lo/ce;-><init>(Lo/ff;Lo/df;I)V

    .line 21
    .line 22
    .line 23


    .line 24
    .line 25
    .line 26
    const/4 v3, 0x7
    invoke-static {v0, v3, v2, v4}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lo/ce;->ͱ:Lo/ff;

    .line 31
    .line 32
    iget-object v2, p0, Lo/ce;->Ͳ:Lo/df;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37


    .line 38
    .line 39
    new-instance v4, Lo/ce;

    .line 40
    .line 41
    invoke-direct {v4, v0, v2, v1}, Lo/ce;-><init>(Lo/ff;Lo/df;I)V

    .line 42
    .line 43
    .line 44


    .line 45
    .line 46
    .line 47
    const/4 v3, 0x7
    invoke-static {v0, v3, v2, v4}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    iget-object v0, p0, Lo/ce;->ͱ:Lo/ff;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lo/ce;->Ͳ:Lo/df;

    .line 57
    .line 58
    iget-object v3, v1, Lo/df;->ʹ:Lo/bf;

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    check-cast v3, Lo/ke;

    .line 63
    .line 64
    invoke-virtual {v3}, Lo/ke;->ˏ()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v3, v1, Lo/df;->ˏ:Ljava/lang/String;

    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lo/ff;->Ͱ(Lo/df;ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    iget-object v0, p0, Lo/ce;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v0}, Lcom/byd/launcher/stability/TileSnapshots;->usable(Lcom/byd/launcher/stability/TileBatch;)Z
    move-result v0
    if-nez v0, :tile_worker_usable
    return-void
    :tile_worker_usable
    iget-object v5, p0, Lo/ce;->ͱ:Lo/ff;

    .line 76
    .line 77
    iget-object v6, p0, Lo/ce;->Ͳ:Lo/df;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object v0, v6, Lo/df;->Ͷ:Landroid/widget/FrameLayout;

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    iget-wide v3, v6, Lo/df;->ͼ:J

    .line 92
    .line 93
    sub-long/2addr v0, v3

    .line 94
    const-wide/16 v3, 0xbb8

    .line 95
    .line 96
    cmp-long v0, v0, v3

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    if-gez v0, :cond_3

    .line 100
    .line 101
    iget-object v0, v6, Lo/df;->ͷ:Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget-object v0, v6, Lo/df;->ʹ:Lo/bf;

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    check-cast v0, Lo/ke;

    .line 110
    .line 111
    invoke-virtual {v0}, Lo/ke;->ˏ()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_2
    iget-object v0, p0, Lo/ce;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;

    .line 116
    .line 117
    new-instance v2, Lo/Ϋ;

    .line 118
    .line 119
    invoke-direct {v2, v5, v6, v1}, Lo/Ϋ;-><init>(Lo/ff;Lo/df;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    iget-object v0, v6, Lo/df;->ͳ:Lo/ef;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    iget-object v3, p0, Lo/ce;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;
    invoke-static {v3, v6, v0}, Lcom/byd/launcher/stability/TileSnapshots;->read(Lcom/byd/launcher/stability/TileBatch;Lo/df;Lo/ef;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    :cond_4
    move v7, v2

    .line 135
    iget-object v0, v6, Lo/df;->ͷ:Landroid/widget/TextView;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    iget-object v0, v6, Lo/df;->ʹ:Lo/bf;

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    check-cast v0, Lo/ke;

    .line 144
    .line 145
    invoke-virtual {v0}, Lo/ke;->ˏ()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move-object v8, v0

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    move-object v8, v1

    .line 152
    :goto_2
    iget-object v0, p0, Lo/ce;->stabilityTileBatch:Lcom/byd/launcher/stability/TileBatch;

    .line 153
    .line 154
    new-instance v2, Lo/fe;

    .line 155
    .line 156
    const/4 v9, 0x1

    .line 157
    move-object v4, v2

    .line 158
    invoke-direct/range {v4 .. v9}, Lo/fe;-><init>(Lo/ff;Lo/df;ZLjava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-static {v0, v2}, Lcom/byd/launcher/stability/TileSnapshots;->post(Lcom/byd/launcher/stability/TileBatch;Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "refreshTileState: "

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v2, "QuickSettingsMgr"

    .line 174
    .line 175
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_4
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
