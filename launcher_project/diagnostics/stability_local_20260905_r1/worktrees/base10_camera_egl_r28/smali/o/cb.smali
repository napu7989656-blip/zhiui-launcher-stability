.class public final Lo/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/tl;


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    iget-object v0, p0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->έ()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    .line 9
    .line 10
    const-string v1, "launcher_prefs"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "map_app_package"

    .line 18
    .line 19
    const-string v4, "com.byd.automap"

    .line 20
    .line 21
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "com.autonavi.amapauto"

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    move v2, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v4, "com.baidu.naviauto"

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    move v2, v5

    .line 46
    :cond_1
    :goto_0
    if-ne v2, v5, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->θ(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    if-ne v2, v6, :cond_3

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    const/high16 v2, 0x10000000

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->Υ(Landroid/view/View;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    :cond_3
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->η(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void
.end method

.method public onMapCompanyClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "company"

    const-string v1, "\u53bb\u516c\u53f8"

    iget-object v2, p0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-static {v2, v0, v1, p1}, Lcom/byd/launcher/NavBarService;->Ͱ(Lcom/byd/launcher/NavBarService;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onMapHomeClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "home"

    const-string v1, "\u56de\u5bb6"

    iget-object v2, p0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-static {v2, v0, v1, p1}, Lcom/byd/launcher/NavBarService;->Ͱ(Lcom/byd/launcher/NavBarService;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onMusicClick(Landroid/view/View;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    const-string v0, "launchMusicAppWithAnim: started selectedPkg="

    .line 4
    .line 5
    iget-object v1, p0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/byd/launcher/NavBarService;->Υ(Landroid/view/View;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->έ()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "launchMusicAppWithAnim: selectedPkg="

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "NavBarSvc"

    .line 37
    .line 38
    invoke-static {v5, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/high16 v4, 0x10000000

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-virtual {v1, v6, p1}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v8, "launchMusicAppWithAnim: start selectedPkg="

    .line 76
    .line 77
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, " with anim failed: "

    .line 84
    .line 85
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v7, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v1, v6}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "launchMusicAppWithAnim: started selectedPkg without anim"

    .line 95
    .line 96
    invoke-static {v5, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :catch_1
    move-exception v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v6, "launchMusicAppWithAnim: start selectedPkg without anim also failed: "

    .line 105
    .line 106
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "launchMusicAppWithAnim: no launch intent for selectedPkg="

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_0
    invoke-static {v5, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    const-string v0, "com.netease.cloudmusic.iot"

    .line 131
    .line 132
    const-string v3, "com.netease.cloudmusic.auto"

    .line 133
    .line 134
    const-string v6, "com.netease.cloudmusic"

    .line 135
    .line 136
    filled-new-array {v0, v3, v6}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const/4 v8, 0x0

    .line 141
    :goto_1
    const/4 v9, 0x3

    .line 142
    if-ge v8, v9, :cond_3

    .line 143
    .line 144
    aget-object v9, v7, v8

    .line 145
    .line 146
    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    if-eqz v10, :cond_2

    .line 151
    .line 152
    invoke-virtual {v10, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    :try_start_2
    invoke-virtual {v1, v10, p1}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v12, "launchMusicAppWithAnim: fallback started pkg="

    .line 164
    .line 165
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-static {v5, v11}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    .line 177
    .line 178
    goto/16 :goto_3

    .line 179
    .line 180
    :catch_2
    move-exception v11

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v13, "launchMusicAppWithAnim: fallback start pkg="

    .line 184
    .line 185
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v9, " failed: "

    .line 192
    .line 193
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-static {v11, v12, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :try_start_3
    invoke-virtual {v1, v10}, Lcom/byd/launcher/NavBarService;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catch_3
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_3
    iget-object p1, v1, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 207
    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    const-string p1, "launchMusicAppWithAnim: all package launches failed, trying musicControlManager.launchMusicApp()"

    .line 211
    .line 212
    invoke-static {v5, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, v1, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 216
    .line 217
    const-string v1, "com.kugou.android.auto"

    .line 218
    .line 219
    const-string v2, "com.kugou.android"

    .line 220
    .line 221
    filled-new-array {v0, v3, v6, v1, v2}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v1, p1, Lo/a9;->ˋ:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const/4 v3, 0x0

    .line 232
    :goto_2
    const/4 v5, 0x5

    .line 233
    if-ge v3, v5, :cond_5

    .line 234
    .line 235
    aget-object v5, v0, v3

    .line 236
    .line 237
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-eqz v5, :cond_4

    .line 242
    .line 243
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    :try_start_4
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 247
    .line 248
    .line 249
    iget-object v5, p1, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 250
    .line 251
    new-instance v6, Lo/u8;

    .line 252
    .line 253
    invoke-direct {v6, p1, v9}, Lo/u8;-><init>(Lo/a9;I)V

    .line 254
    .line 255
    .line 256
    const-wide/16 v7, 0x7d0

    .line 257
    .line 258
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :catch_4
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_5
    iget-object p1, p1, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 266
    .line 267
    if-eqz p1, :cond_7

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_7

    .line 278
    .line 279
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    :try_start_5
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_6
    const-string p1, "launchMusicAppWithAnim: musicControlManager null, no way to launch"

    .line 287
    .line 288
    invoke-static {v5, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object p1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 292
    .line 293
    new-instance v0, Lo/m9;

    .line 294
    .line 295
    const/16 v2, 0x15

    .line 296
    .line 297
    invoke-direct {v0, v1, v2}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    .line 302
    .line 303
    :catch_5
    :cond_7
    :goto_3
    return-void
.end method
