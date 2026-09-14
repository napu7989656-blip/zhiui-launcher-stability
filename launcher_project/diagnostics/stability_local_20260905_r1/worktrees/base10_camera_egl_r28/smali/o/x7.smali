.class public final synthetic Lo/x7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Z

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lo/x7;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Lo/x7;->ͱ:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lo/x7;->Ͱ:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 14
    .line 15
    iget-boolean v1, p0, Lo/x7;->ͱ:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->ͱ(Lcom/byd/launcher/ipc/CoreServiceClient;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lo/va;

    .line 24
    .line 25
    sget v3, Lo/va;->ˏ:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 31
    .line 32
    iget-object v0, v0, Lo/va;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 33
    .line 34
    iget-boolean v3, p0, Lo/x7;->ͱ:Z

    .line 35
    .line 36
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->ε:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->δ()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ή(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_2
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lo/ka;

    .line 59
    .line 60
    iget-boolean v1, p0, Lo/x7;->ͱ:Z

    .line 61
    .line 62
    iget-object v2, v0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/byd/launcher/NavBarService;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    const-string v1, "\u540e\u5907\u7bb1\u5df2\u6253\u5f00"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string v1, "\u540e\u5907\u7bb1\u5df2\u5173\u95ed"

    .line 72
    .line 73
    :goto_0
    sget-object v3, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->ΐ:Z

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Lo/vl;->έ(Z)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void

    .line 92
    :pswitch_3
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lo/ia;

    .line 95
    .line 96
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 97
    .line 98
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 99
    .line 100
    const-string v2, "engine_voice"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/Boolean;

    .line 107
    .line 108
    iget-boolean v3, p0, Lo/x7;->ͱ:Z

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ne v1, v3, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v2, v3}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_1
    return-void

    .line 136
    :pswitch_4
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lo/ia;

    .line 139
    .line 140
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 141
    .line 142
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 143
    .line 144
    const-string v2, "energy_feedback"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Ljava/lang/Boolean;

    .line 151
    .line 152
    iget-boolean v3, p0, Lo/x7;->ͱ:Z

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ne v1, v3, :cond_6

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 173
    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    invoke-virtual {v0, v2, v3}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_2
    return-void

    .line 180
    :pswitch_5
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lo/ia;

    .line 183
    .line 184
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 185
    .line 186
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 187
    .line 188
    const-string v2, "daylight"

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/Boolean;

    .line 195
    .line 196
    iget-boolean v3, p0, Lo/x7;->ͱ:Z

    .line 197
    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-ne v1, v3, :cond_8

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 217
    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    invoke-virtual {v0, v2, v3}, Lo/vl;->ί(Ljava/lang/String;Z)V

    .line 221
    .line 222
    .line 223
    :cond_9
    :goto_3
    return-void

    .line 224
    :pswitch_6
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Lcom/byd/launcher/MainActivity;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    iget-boolean v3, p0, Lo/x7;->ͱ:Z

    .line 233
    .line 234
    if-eqz v3, :cond_a

    .line 235
    .line 236
    move v1, v2

    .line 237
    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    :cond_b
    return-void

    .line 241
    :goto_4
    iget-object v0, p0, Lo/x7;->Ͳ:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lo/oj;

    .line 244
    .line 245
    iget-boolean v1, p0, Lo/x7;->ͱ:Z

    .line 246
    .line 247
    sget v3, Lo/oj;->Α:I

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    sget-object v3, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 253
    .line 254
    const v4, -0x7f000001

    .line 255
    .line 256
    .line 257
    const/high16 v5, -0x80000000

    .line 258
    .line 259
    if-eqz v3, :cond_d

    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-nez v6, :cond_d

    .line 266
    .line 267
    if-eqz v1, :cond_c

    .line 268
    .line 269
    move v6, v4

    .line 270
    goto :goto_5

    .line 271
    :cond_c
    move v6, v5

    .line 272
    :goto_5
    invoke-static {v3, v6}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-eqz v3, :cond_d

    .line 277
    .line 278
    iget-object v1, v0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 279
    .line 280
    new-instance v4, Lo/aj;

    .line 281
    .line 282
    invoke-direct {v4, v0, v3, v2}, Lo/aj;-><init>(Lo/oj;Landroid/graphics/drawable/LayerDrawable;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_d
    iget-object v2, v0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 290
    .line 291
    new-instance v3, Lo/lII;

    .line 292
    .line 293
    const/16 v6, 0x11

    .line 294
    .line 295
    invoke-direct {v3, v6}, Lo/lII;-><init>(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    .line 300
    .line 301
    const-wide/16 v2, 0x12c

    .line 302
    .line 303
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .line 305
    .line 306
    :catch_0
    sget-object v2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 307
    .line 308
    if-eqz v2, :cond_f

    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-nez v3, :cond_f

    .line 315
    .line 316
    if-eqz v1, :cond_e

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_e
    move v4, v5

    .line 320
    :goto_6
    invoke-static {v2, v4}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-eqz v1, :cond_f

    .line 325
    .line 326
    iget-object v2, v0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 327
    .line 328
    new-instance v3, Lo/aj;

    .line 329
    .line 330
    const/4 v4, 0x1

    .line 331
    invoke-direct {v3, v0, v1, v4}, Lo/aj;-><init>(Lo/oj;Landroid/graphics/drawable/LayerDrawable;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    .line 336
    .line 337
    :cond_f
    :goto_7
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
