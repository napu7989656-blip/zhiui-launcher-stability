.class public final synthetic Lo/kk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/vl;

.field public final synthetic Ͱ:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo/vl;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/kk;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/kk;->ˏ:Lo/vl;

    .line 4
    .line 5
    iput-object p2, p0, Lo/kk;->Ͱ:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v4, v0, Lo/kk;->ˋ:I

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const-string v6, "\u53d6\u6d88"

    .line 7
    .line 8
    const-string v7, "\u786e\u5b9a"

    .line 9
    .line 10
    const-string v8, "launcher_prefs"

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    iget-object v10, v0, Lo/kk;->ˏ:Lo/vl;

    .line 14
    .line 15
    const/4 v11, 0x1

    .line 16
    packed-switch v4, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :pswitch_0
    iget-object v4, v0, Lo/kk;->Ͱ:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v10, v10, Lo/vl;->ˏ:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    invoke-virtual {v12, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    new-instance v14, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    if-eqz v15, :cond_1

    .line 47
    .line 48
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget-object v2, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v2, Lo/ok;

    .line 67
    .line 68
    invoke-direct {v2, v11, v12}, Lo/ok;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    const-string v2, "autostart_package"

    .line 79
    .line 80
    const-string v8, ""

    .line 81
    .line 82
    invoke-interface {v15, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    add-int/2addr v8, v11

    .line 91
    new-array v8, v8, [Ljava/lang/String;

    .line 92
    .line 93
    const-string v11, "\u65e0\uff08\u4e0d\u81ea\u542f\u52a8\uff09"

    .line 94
    .line 95
    aput-object v11, v8, v9

    .line 96
    .line 97
    move v11, v9

    .line 98
    move v13, v11

    .line 99
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v11, v3, :cond_3

    .line 104
    .line 105
    add-int/lit8 v3, v11, 0x1

    .line 106
    .line 107
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v17

    .line 111
    move-object/from16 v1, v17

    .line 112
    .line 113
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 114
    .line 115
    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    aput-object v1, v8, v3

    .line 124
    .line 125
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    move v13, v3

    .line 140
    :cond_2
    move v11, v3

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-static {v10}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    const v2, 0x10302d2

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const v2, 0x10302d1

    .line 153
    .line 154
    .line 155
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 156
    .line 157
    invoke-direct {v1, v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 158
    .line 159
    .line 160
    const-string v2, "\u9009\u62e9\u5f00\u673a\u81ea\u542f\u52a8\u5e94\u7528"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    .line 164
    .line 165
    filled-new-array {v13}, [I

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    new-instance v3, Lo/rk;

    .line 170
    .line 171
    invoke-direct {v3, v2, v9}, Lo/rk;-><init>([II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v8, v13, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    .line 176
    .line 177
    new-instance v3, Lo/sk;

    .line 178
    .line 179
    move-object v12, v3

    .line 180
    move-object v13, v2

    .line 181
    move-object/from16 v16, v4

    .line 182
    .line 183
    move-object/from16 v17, v8

    .line 184
    .line 185
    invoke-direct/range {v12 .. v17}, Lo/sk;-><init>([ILjava/util/ArrayList;Landroid/content/SharedPreferences;Landroid/widget/TextView;[Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-eqz v2, :cond_5

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const/16 v3, 0x7f0

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 211
    .line 212
    .line 213
    :cond_5
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :goto_3
    iget-object v1, v10, Lo/vl;->ˏ:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const-string v3, "autostart_delay"

    .line 224
    .line 225
    const/4 v4, 0x6

    .line 226
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    sget-object v4, Lo/vl;->έ:[I

    .line 231
    .line 232
    array-length v8, v4

    .line 233
    new-array v8, v8, [Ljava/lang/String;

    .line 234
    .line 235
    move v10, v9

    .line 236
    :goto_4
    array-length v12, v4

    .line 237
    if-ge v9, v12, :cond_7

    .line 238
    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    aget v13, v4, v9

    .line 245
    .line 246
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v13, "\u79d2"

    .line 250
    .line 251
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    aput-object v12, v8, v9

    .line 259
    .line 260
    aget v12, v4, v9

    .line 261
    .line 262
    if-ne v12, v3, :cond_6

    .line 263
    .line 264
    move v10, v9

    .line 265
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_7
    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_8

    .line 273
    .line 274
    const v3, 0x10302d2

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_8
    const v3, 0x10302d1

    .line 279
    .line 280
    .line 281
    :goto_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 282
    .line 283
    invoke-direct {v4, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 284
    .line 285
    .line 286
    const-string v1, "\u9009\u62e9\u81ea\u542f\u52a8\u5ef6\u8fdf\u65f6\u95f4"

    .line 287
    .line 288
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    .line 290
    .line 291
    filled-new-array {v10}, [I

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    new-instance v3, Lo/rk;

    .line 296
    .line 297
    invoke-direct {v3, v1, v11}, Lo/rk;-><init>([II)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v8, v10, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    .line 302
    .line 303
    new-instance v3, Lo/ek;

    .line 304
    .line 305
    iget-object v8, v0, Lo/kk;->Ͱ:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-direct {v3, v1, v2, v11, v8}, Lo/ek;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    if-eqz v2, :cond_9

    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    const/16 v3, 0x7f0

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 333
    .line 334
    .line 335
    :cond_9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
