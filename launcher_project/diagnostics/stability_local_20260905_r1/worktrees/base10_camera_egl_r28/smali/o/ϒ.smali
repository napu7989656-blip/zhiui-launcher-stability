.class public final synthetic Lo/ϒ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:I

.field public final synthetic Ͱ:Landroid/view/KeyEvent$Callback;

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lo/ϒ;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ϒ;->Ͱ:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    iput-object p2, p0, Lo/ϒ;->ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Lo/ϒ;->ˏ:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget p1, p0, Lo/ϒ;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/ϒ;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lo/ϒ;->Ͱ:Landroid/view/KeyEvent$Callback;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :pswitch_0
    check-cast v1, Lcom/byd/launcher/AppLauncherActivity;

    .line 13
    .line 14
    check-cast v0, Lo/Ϡ;

    .line 15
    .line 16
    sget-object p1, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    if-eqz p2, :cond_7

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eq p2, p1, :cond_6

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq p2, v3, :cond_5

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq p2, v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object v3, v0, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    and-int/2addr p2, p1

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :cond_1
    move p1, v2

    .line 52
    :goto_0
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string p1, "\u7cfb\u7edf\u5e94\u7528\u65e0\u6cd5\u5378\u8f7d"

    .line 55
    .line 56
    invoke-static {v1, p1}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    iget-boolean p1, v1, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    const p1, 0x10302d2

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const p1, 0x10302d1

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    invoke-direct {p2, v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    const-string p1, "\u5378\u8f7d\u5e94\u7528"

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "\u786e\u5b9a\u8981\u5378\u8f7d \""

    .line 86
    .line 87
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, "\" \u5417\uff1f"

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance p2, Lo/ϔ;

    .line 109
    .line 110
    invoke-direct {p2, v2, v1, v0}, Lo/ϔ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "\u5378\u8f7d"

    .line 114
    .line 115
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p2, "\u53d6\u6d88"

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-boolean p2, v1, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 131
    .line 132
    if-eqz p2, :cond_8

    .line 133
    .line 134
    const/4 p2, -0x1

    .line 135
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const v1, -0xcccccd

    .line 140
    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    :cond_4
    const/4 p2, -0x2

    .line 152
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string p2, "\u6b63\u5728\u6062\u590d \""

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p2, v0, Lo/Ϡ;->ˋ:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p2, "\" ..."

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v1, p1}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Ljava/lang/Thread;

    .line 191
    .line 192
    new-instance p2, Lo/ag;

    .line 193
    .line 194
    const/4 v2, 0x4

    .line 195
    invoke-direct {p2, v2, v1, v0}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v2, "ScreenRestore-"

    .line 201
    .line 202
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v0, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_6
    const-string p1, "\u4e2d\u63a7"

    .line 222
    .line 223
    invoke-virtual {v1, v0, v2, p1}, Lcom/byd/launcher/AppLauncherActivity;->ˏ(Lo/Ϡ;ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_7
    const-string p2, "\u4eea\u8868"

    .line 228
    .line 229
    invoke-virtual {v1, v0, p1, p2}, Lcom/byd/launcher/AppLauncherActivity;->ˏ(Lo/Ϡ;ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    :goto_2
    return-void

    .line 233
    :goto_3
    check-cast v1, Landroid/widget/EditText;

    .line 234
    .line 235
    check-cast v0, Landroid/content/SharedPreferences;

    .line 236
    .line 237
    sget-object p1, Lo/vl;->Χ:[Lo/ul;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-nez p2, :cond_9

    .line 256
    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v1, "swc_mapping_"

    .line 264
    .line 265
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget v1, p0, Lo/ϒ;->ˏ:I

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v2, "tts_custom"

    .line 278
    .line 279
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v2, "swc_tts_text_"

    .line 286
    .line 287
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lo/gh;->Ͱ()Lo/gh;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-static {}, Lo/gh;->Ͳ()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_9

    .line 316
    .line 317
    filled-new-array {p1}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    new-instance v0, Lo/ag;

    .line 322
    .line 323
    const/16 v1, 0x1d

    .line 324
    .line 325
    invoke-direct {v0, v1, p2, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p2, Lo/gh;->ʹ:Ljava/util/concurrent/ExecutorService;

    .line 329
    .line 330
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 331
    .line 332
    .line 333
    :cond_9
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
