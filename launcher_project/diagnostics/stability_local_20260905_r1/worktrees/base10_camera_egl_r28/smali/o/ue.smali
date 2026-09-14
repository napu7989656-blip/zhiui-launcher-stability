.class public final synthetic Lo/ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p4, p0, Lo/ue;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ue;->ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo/ue;->ͱ:I

    .line 6
    .line 7
    iput p3, p0, Lo/ue;->Ͳ:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lo/ue;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const-string v4, " kPa"

    .line 7
    .line 8
    const-string v5, "-- kPa"

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x1

    .line 13
    iget v9, p0, Lo/ue;->Ͳ:I

    .line 14
    .line 15
    iget v10, p0, Lo/ue;->ͱ:I

    .line 16
    .line 17
    iget-object v11, p0, Lo/ue;->ͳ:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :pswitch_0
    check-cast v11, Lo/nd;

    .line 25
    .line 26
    sget-object v0, Lo/nd;->χ:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    if-lez v10, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    :cond_0
    if-eq v9, v8, :cond_4

    .line 49
    .line 50
    if-eq v9, v3, :cond_3

    .line 51
    .line 52
    if-eq v9, v2, :cond_2

    .line 53
    .line 54
    if-eq v9, v1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, v11, Lo/nd;->ͼ:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, v11, Lo/nd;->ͻ:Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, v11, Lo/nd;->ͺ:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget-object v0, v11, Lo/nd;->ͷ:Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_1
    return-void

    .line 80
    :pswitch_1
    check-cast v11, Lo/oj;

    .line 81
    .line 82
    sget v0, Lo/oj;->Α:I

    .line 83
    .line 84
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 88
    .line 89
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "window"

    .line 93
    .line 94
    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string v1, "state"

    .line 98
    .line 99
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string v1, "setBodyWindowCtrlState"

    .line 103
    .line 104
    invoke-virtual {v11, v1, v0, v7}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    :catch_0
    return-void

    .line 108
    :pswitch_2
    check-cast v11, Lo/se;

    .line 109
    .line 110
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const-string v0, "QuickSettingsMgr"

    .line 114
    .line 115
    const-string v1, "instBrt VERIFY after SET "

    .line 116
    .line 117
    const-string v2, "instBrt SET sent: step="

    .line 118
    .line 119
    :try_start_1
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    new-instance v4, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v5, "value"

    .line 137
    .line 138
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v5, "setBacklightBrightness"

    .line 142
    .line 143
    invoke-virtual {v3, v5, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v2, " apiVal="

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v0, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-wide/16 v4, 0x1f4

    .line 170
    .line 171
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 175
    .line 176
    invoke-direct {v2, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 177
    .line 178
    .line 179
    const/4 v4, -0x1

    .line 180
    filled-new-array {v4}, [I

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    const-string v5, "getBacklightBrightness"

    .line 185
    .line 186
    new-instance v9, Lo/f8;

    .line 187
    .line 188
    invoke-direct {v9, v11, v4, v8, v2}, Lo/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v5, v7, v9}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 192
    .line 193
    .line 194
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    .line 196
    const-wide/16 v7, 0x2

    .line 197
    .line 198
    invoke-virtual {v2, v7, v8, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 199
    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v1, ": GET returned "

    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    aget v1, v4, v6

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, " -> step="

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    aget v1, v4, v6

    .line 225
    .line 226
    invoke-static {v1}, Lo/ff;->ͺ(I)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, " -> display="

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    aget v1, v4, v6

    .line 239
    .line 240
    invoke-static {v1}, Lo/ff;->ͺ(I)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    mul-int/lit8 v1, v1, 0xa

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :catch_1
    move-exception v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v3, "setBacklightBrightness: "

    .line 261
    .line 262
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_6
    :goto_2
    return-void

    .line 269
    :goto_3
    check-cast v11, Lo/vl;

    .line 270
    .line 271
    :goto_4
    iget-object v0, v11, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-ge v6, v0, :cond_d

    .line 278
    .line 279
    iget-object v0, v11, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    instance-of v7, v0, Lo/im;

    .line 290
    .line 291
    if-eqz v7, :cond_c

    .line 292
    .line 293
    check-cast v0, Lo/im;

    .line 294
    .line 295
    if-gtz v10, :cond_7

    .line 296
    .line 297
    move-object v7, v5

    .line 298
    goto :goto_5

    .line 299
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    :goto_5
    if-eq v9, v8, :cond_b

    .line 315
    .line 316
    if-eq v9, v3, :cond_a

    .line 317
    .line 318
    if-eq v9, v2, :cond_9

    .line 319
    .line 320
    if-eq v9, v1, :cond_8

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_8
    iget-object v0, v0, Lo/im;->Ͳ:Landroid/widget/TextView;

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_9
    iget-object v0, v0, Lo/im;->ͱ:Landroid/widget/TextView;

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_a
    iget-object v0, v0, Lo/im;->Ͱ:Landroid/widget/TextView;

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_b
    iget-object v0, v0, Lo/im;->ˏ:Landroid/widget/TextView;

    .line 333
    .line 334
    :goto_6
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    :cond_c
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_d
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
