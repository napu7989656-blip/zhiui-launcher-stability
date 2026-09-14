.class public Lcom/byd/launcher/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static ˋ(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "BootReceiver"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Service is alive, skipping accessibility restart"

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "/"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-class v4, Lcom/byd/launcher/NavBarService;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v0, v2}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-class v4, Lcom/byd/launcher/MusicNotificationListener;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v4, "Round 1: direct accessibility set"

    .line 58
    .line 59
    invoke-static {v1, v4}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "settings put secure enabled_accessibility_services "

    .line 65
    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/16 v6, 0x7d0

    .line 77
    .line 78
    invoke-static {v4, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    const-wide/16 v7, 0x12c

    .line 82
    .line 83
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 84
    .line 85
    .line 86
    const-string v4, "settings put secure accessibility_enabled 1"

    .line 87
    .line 88
    invoke-static {v4, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    move v10, v9

    .line 93
    :goto_0
    const/4 v11, 0x6

    .line 94
    const-wide/16 v12, 0x1f4

    .line 95
    .line 96
    if-ge v10, v11, :cond_2

    .line 97
    .line 98
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_1

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "Service alive after round 1, wait "

    .line 107
    .line 108
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v10, v10, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-eqz v10, :cond_3

    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    const-string v10, "Round 2: toggle accessibility off/on for rebind"

    .line 129
    .line 130
    invoke-static {v1, v10}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v10, "settings put secure accessibility_enabled 0"

    .line 134
    .line 135
    invoke-static {v10, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 139
    .line 140
    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-static {v10, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    :goto_1
    const/16 v10, 0x8

    .line 163
    .line 164
    if-ge v9, v10, :cond_5

    .line 165
    .line 166
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_4

    .line 171
    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v0, "Service alive after round 2 toggle, wait "

    .line 175
    .line 176
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :goto_3
    invoke-static {v1, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v9, v9, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_6

    .line 201
    .line 202
    return-void

    .line 203
    :cond_6
    const-string v9, "Round 3: force-stop for system rebind (last resort)"

    .line 204
    .line 205
    invoke-static {v1, v9}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v10, "cmd notification disallow_listener "

    .line 214
    .line 215
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v2, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_0
    move-exception v2

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v8, "Pre-cleanup disallow_listener failed: "

    .line 236
    .line 237
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v7, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v2, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-static {v4, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    const-wide/16 v2, 0xc8

    .line 262
    .line 263
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 264
    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v3, "am force-stop "

    .line 269
    .line 270
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const/16 v2, 0xbb8

    .line 281
    .line 282
    invoke-static {v0, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    const-wide/16 v2, 0x5dc

    .line 286
    .line 287
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 288
    .line 289
    .line 290
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 291
    .line 292
    const-class v2, Lcom/byd/launcher/MainActivity;

    .line 293
    .line 294
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .line 296
    .line 297
    const/high16 v2, 0x10000000

    .line 298
    .line 299
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    .line 304
    .line 305
    const-string p0, "Relaunched MainActivity after force-stop"

    .line 306
    .line 307
    invoke-static {v1, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catch_1
    move-exception p0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v2, "Relaunch MainActivity failed: "

    .line 315
    .line 316
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-static {p0, v0, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :goto_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const-string v0, "statusbar"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 16
    .line 17
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v2, " received, NavBarService running="

    .line 25
    .line 26
    invoke-static {p2, v2}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Lcom/byd/launcher/NavBarService;->β()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "BootReceiver"

    .line 42
    .line 43
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "launcher_prefs"

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v5, "oem_statusbar_enabled"

    .line 54
    .line 55
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move v5, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/high16 v5, 0x9f0000

    .line 64
    .line 65
    :goto_0
    const/4 v6, 0x1

    .line 66
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    const-string v9, "disable"

    .line 77
    .line 78
    new-array v10, v6, [Ljava/lang/Class;

    .line 79
    .line 80
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    aput-object v11, v10, v4

    .line 83
    .line 84
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    new-array v9, v6, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    aput-object v5, v9, v4

    .line 95
    .line 96
    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    if-nez v2, :cond_2

    .line 100
    .line 101
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v8, "disable2"

    .line 106
    .line 107
    new-array v9, v6, [Ljava/lang/Class;

    .line 108
    .line 109
    aput-object v11, v9, v4

    .line 110
    .line 111
    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    new-array v8, v6, [Ljava/lang/Object;

    .line 116
    .line 117
    const/4 v9, 0x5

    .line 118
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    aput-object v9, v8, v4

    .line 123
    .line 124
    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    :catch_0
    :catchall_0
    :cond_2
    if-nez v2, :cond_3

    .line 128
    .line 129
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v5, "collapsePanels"

    .line 140
    .line 141
    new-array v7, v4, [Ljava/lang/Class;

    .line 142
    .line 143
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 144
    .line 145
    .line 146
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    goto :goto_1

    .line 148
    :catch_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v5, "collapse"

    .line 153
    .line 154
    new-array v7, v4, [Ljava/lang/Class;

    .line 155
    .line 156
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_1
    new-array v5, v4, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    .line 164
    .line 165
    :catchall_1
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-eqz p2, :cond_4

    .line 170
    .line 171
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    if-nez p2, :cond_4

    .line 176
    .line 177
    new-instance p2, Landroid/content/Intent;

    .line 178
    .line 179
    const-class v0, Lcom/byd/launcher/MainActivity;

    .line 180
    .line 181
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .line 183
    .line 184
    const/high16 v0, 0x10000000

    .line 185
    .line 186
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_5

    .line 197
    .line 198
    const-string p1, "Service is alive, skipping"

    .line 199
    .line 200
    invoke-static {v3, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_5
    sget-object p2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 205
    .line 206
    if-eqz p2, :cond_6

    .line 207
    .line 208
    const-string v0, "Service instance exists but isRunning=false, trying to re-show UI"

    .line 209
    .line 210
    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Landroid/os/Handler;

    .line 214
    .line 215
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Lo/llI;

    .line 223
    .line 224
    invoke-direct {v1, p2, v4}, Lo/llI;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    new-instance p2, Landroid/os/Handler;

    .line 231
    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lo/lIl;

    .line 240
    .line 241
    invoke-direct {v0, p0, p1, v4}, Lo/lIl;-><init>(Lcom/byd/launcher/BootReceiver;Landroid/content/Context;I)V

    .line 242
    .line 243
    .line 244
    const-wide/16 v1, 0x7d0

    .line 245
    .line 246
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_6
    sget-object p2, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    .line 252
    invoke-virtual {p2, v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-nez p2, :cond_7

    .line 257
    .line 258
    const-string p1, "Another thread is toggling accessibility, waiting for it to finish..."

    .line 259
    .line 260
    invoke-static {v3, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Ljava/lang/Thread;

    .line 264
    .line 265
    new-instance p2, Lo/lII;

    .line 266
    .line 267
    invoke-direct {p2, v4}, Lo/lII;-><init>(I)V

    .line 268
    .line 269
    .line 270
    const-string v0, "BootWait"

    .line 271
    .line 272
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_7
    new-instance p2, Ljava/lang/Thread;

    .line 280
    .line 281
    new-instance v0, Lo/lIl;

    .line 282
    .line 283
    invoke-direct {v0, p0, p1, v6}, Lo/lIl;-><init>(Lcom/byd/launcher/BootReceiver;Landroid/content/Context;I)V

    .line 284
    .line 285
    .line 286
    const-string p1, "BootInit"

    .line 287
    .line 288
    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 292
    .line 293
    .line 294
    return-void
.end method
