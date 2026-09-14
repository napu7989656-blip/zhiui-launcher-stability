.class public final Lo/na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/na;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

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
    .locals 3

    .line 1
    iget v0, p0, Lo/na;->Ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 22
    .line 23
    const-string v1, "NavBarSvc"

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "Watchdog: \u5bfc\u822a\u680f\u4e22\u5931\uff0c\u91cd\u65b0\u663e\u793a"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϟ()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string v0, "Watchdog: WidgetBarManager \u4e22\u5931"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 57
    .line 58
    const-wide/32 v1, 0xea60

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void

    .line 65
    :pswitch_1
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 66
    .line 67
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 73
    .line 74
    invoke-static {v0}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "com.byd.mediacenter"

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͽ:Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ξ()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {v0}, Lo/a9;->ͷ()V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 106
    .line 107
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 108
    .line 109
    if-nez v0, :cond_7

    .line 110
    .line 111
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 114
    .line 115
    const-wide/16 v1, 0x1388

    .line 116
    .line 117
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    return-void

    .line 121
    :pswitch_2
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 122
    .line 123
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->Θ:Z

    .line 124
    .line 125
    if-nez v0, :cond_8

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    const/16 v2, 0x8

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eq v0, v2, :cond_9

    .line 142
    .line 143
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 155
    .line 156
    .line 157
    :cond_9
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 160
    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    cmpl-float v0, v0, v1

    .line 168
    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ϛ(Z)V

    .line 182
    .line 183
    .line 184
    :cond_a
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 187
    .line 188
    if-eqz v0, :cond_b

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eq v0, v2, :cond_b

    .line 195
    .line 196
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->φ:Lo/yb;

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :cond_b
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 206
    .line 207
    const-wide/16 v1, 0x12c

    .line 208
    .line 209
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void

    .line 213
    :goto_4
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 214
    .line 215
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 216
    .line 217
    if-eqz v0, :cond_c

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_c
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Β()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_e

    .line 227
    .line 228
    iget-object v1, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 229
    .line 230
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 231
    .line 232
    if-eqz v2, :cond_e

    .line 233
    .line 234
    iget-boolean v1, v1, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 235
    .line 236
    if-nez v1, :cond_e

    .line 237
    .line 238
    iget-object v1, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 239
    .line 240
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 241
    .line 242
    if-eqz v2, :cond_d

    .line 243
    .line 244
    iget-boolean v2, v2, Lo/nd;->Η:Z

    .line 245
    .line 246
    if-nez v2, :cond_e

    .line 247
    .line 248
    :cond_d
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_e
    if-nez v0, :cond_f

    .line 253
    .line 254
    iget-object v0, p0, Lo/na;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 257
    .line 258
    const-wide/16 v1, 0x1f4

    .line 259
    .line 260
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    .line 262
    .line 263
    :cond_f
    :goto_5
    return-void

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
