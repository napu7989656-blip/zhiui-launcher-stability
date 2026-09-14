.class public final Lo/oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public stabilitySocActionToken:Lcom/byd/launcher/stability/ReadAfterAction$Token;
.field public final synthetic ˋ:I

.field public final synthetic ˏ:I

.field public final synthetic Ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lo/oa;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo/oa;->ˏ:I

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
    iget v0, p0, Lo/oa;->ˋ:I

    .line 2
    .line 3
    iget v1, p0, Lo/oa;->ˏ:I

    .line 4
    .line 5
    const-string v2, "NavBarSvc"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    const-string v0, "Rotate screen IPC error: "

    .line 12
    .line 13
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    const-string v0, "Set cycle mode failed: "

    .line 18
    .line 19
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    const-string v0, "Set wind level failed: "

    .line 24
    .line 25
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_3
    const-string v0, "\u80ce\u538b\u67e5\u8be2\u5931\u8d25: "

    .line 30
    .line 31
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x5

    .line 35
    if-ge v1, p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    add-int/lit8 v0, v1, 0x1

    .line 46
    .line 47
    mul-int/lit16 v0, v0, 0xbb8

    .line 48
    .line 49
    const/16 v2, 0x4e20

    .line 50
    .line 51
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance v2, Lo/sa;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-direct {v2, p0, v1, v3}, Lo/sa;-><init>(Lo/oa;II)V

    .line 61
    .line 62
    .line 63
    int-to-long v0, v0

    .line 64
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "\u95e8\u9501\u533a\u57df"

    .line 71
    .line 72
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, "\u64cd\u4f5c\u5931\u8d25: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v2, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_0
    invoke-static {p0}, Lcom/byd/launcher/stability/SocAction;->finishCallback(Lo/oa;)V
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "SOC target set FAILED: "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v0, "QuickSettingsMgr"

    .line 109
    .line 110
    invoke-static {v0, p1}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
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
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v1, v6, Lo/oa;->ˋ:I

    .line 6
    .line 7
    const-string v7, "NavBarSvc"

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :pswitch_0
    iget-object v1, v6, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    iget v2, v6, Lo/oa;->ˏ:I

    .line 19
    .line 20
    iput v2, v1, Lcom/byd/launcher/NavBarService;->Δ:I

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Rotate screen: setPadRotation("

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v2, v6, Lo/oa;->ˏ:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ") result="

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v7, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    iget-object v0, v6, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 55
    .line 56
    iget v1, v6, Lo/oa;->ˏ:I

    .line 57
    .line 58
    iget v2, v0, Lo/Ζ;->ͻ:I

    .line 59
    .line 60
    if-eq v2, v1, :cond_0

    .line 61
    .line 62
    iput v1, v0, Lo/Ζ;->ͻ:I

    .line 63
    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void

    .line 69
    :pswitch_2
    iget-object v0, v6, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 74
    .line 75
    iget v1, v6, Lo/oa;->ˏ:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lo/Ζ;->ͳ(I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_3
    const-string v1, "fl"

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const-string v1, "fr"

    .line 89
    .line 90
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    const-string v1, "rl"

    .line 95
    .line 96
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    const-string v1, "rr"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-lez v9, :cond_2

    .line 107
    .line 108
    if-lez v10, :cond_2

    .line 109
    .line 110
    if-lez v11, :cond_2

    .line 111
    .line 112
    if-gtz v12, :cond_1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    move v14, v8

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    const/4 v14, 0x1

    .line 118
    :goto_1
    if-gtz v9, :cond_4

    .line 119
    .line 120
    if-gtz v10, :cond_4

    .line 121
    .line 122
    if-gtz v11, :cond_4

    .line 123
    .line 124
    if-lez v12, :cond_3

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move v0, v8

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 130
    :goto_3
    iget-object v15, v6, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    move-object v0, v15

    .line 135
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 136
    .line 137
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 138
    .line 139
    new-instance v4, Lo/ra;

    .line 140
    .line 141
    move-object v0, v4

    .line 142
    move-object/from16 v1, p0

    .line 143
    .line 144
    move v2, v9

    .line 145
    move v3, v10

    .line 146
    move-object v8, v4

    .line 147
    move v4, v11

    .line 148
    move-object v13, v5

    .line 149
    move v5, v12

    .line 150
    invoke-direct/range {v0 .. v5}, Lo/ra;-><init>(Lo/oa;IIII)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v1, "\u80ce\u538b\u67e5\u8be2: fl="

    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, " fr="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, " rl="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, " rr="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    if-eqz v14, :cond_6

    .line 191
    .line 192
    const-string v1, " (partial, will retry)"

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_6
    const-string v1, " (ok)"

    .line 196
    .line 197
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v7, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    if-eqz v14, :cond_c

    .line 208
    .line 209
    iget v0, v6, Lo/oa;->ˏ:I

    .line 210
    .line 211
    const/16 v1, 0x14

    .line 212
    .line 213
    if-ge v0, v1, :cond_c

    .line 214
    .line 215
    check-cast v15, Lcom/byd/launcher/NavBarService;

    .line 216
    .line 217
    iget-object v1, v15, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 218
    .line 219
    if-eqz v1, :cond_c

    .line 220
    .line 221
    if-nez v0, :cond_7

    .line 222
    .line 223
    const/16 v1, 0x12c

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_7
    const/4 v1, 0x1

    .line 227
    if-ne v0, v1, :cond_8

    .line 228
    .line 229
    const/16 v1, 0x258

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_8
    const/4 v1, 0x2

    .line 233
    if-ne v0, v1, :cond_9

    .line 234
    .line 235
    const/16 v1, 0x4b0

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_9
    const/4 v1, 0x6

    .line 239
    if-ge v0, v1, :cond_a

    .line 240
    .line 241
    const/16 v1, 0x7d0

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_a
    const/16 v1, 0xa

    .line 245
    .line 246
    if-ge v0, v1, :cond_b

    .line 247
    .line 248
    const/16 v1, 0xfa0

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_b
    const/16 v1, 0x1f40

    .line 252
    .line 253
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v3, "\u80ce\u538b\u6570\u636e\u65e0\u6548\uff0c"

    .line 256
    .line 257
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v3, "ms\u540e\u91cd\u8bd5 (attempt "

    .line 264
    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    add-int/lit8 v3, v0, 0x1

    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v3, ")"

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v7, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v15, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 286
    .line 287
    new-instance v3, Lo/sa;

    .line 288
    .line 289
    const/4 v4, 0x0

    .line 290
    invoke-direct {v3, v6, v0, v4}, Lo/sa;-><init>(Lo/oa;II)V

    .line 291
    .line 292
    .line 293
    int-to-long v0, v1

    .line 294
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    .line 296
    .line 297
    :cond_c
    :pswitch_4
    return-void

    .line 298
    :goto_6
    invoke-static {v6}, Lcom/byd/launcher/stability/SocAction;->finishCallback(Lo/oa;)V
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v2, "SOC target set: value="

    .line 301
    .line 302
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget v2, v6, Lo/oa;->ˏ:I

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v2, " readBack="

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v2, "readBack"

    .line 316
    .line 317
    const/4 v3, -0x1

    .line 318
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v1, "QuickSettingsMgr"

    .line 330
    .line 331
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
