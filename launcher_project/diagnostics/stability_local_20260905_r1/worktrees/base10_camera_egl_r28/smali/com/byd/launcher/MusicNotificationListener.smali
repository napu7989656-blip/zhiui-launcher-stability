.class public Lcom/byd/launcher/MusicNotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field public static final Ͱ:[Ljava/lang/String;

.field public static volatile ͱ:Lo/fb;

.field public static volatile Ͳ:Lcom/byd/launcher/MusicNotificationListener;


# instance fields
.field public ˋ:Ljava/lang/String;

.field public ˏ:J


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "com.netease.cloudmusic.iot"

    const-string v1, "com.netease.cloudmusic.auto"

    const-string v2, "com.netease.cloudmusic"

    const-string v3, "com.kugou.android.auto"

    const-string v4, "com.kugou.android"

    const-string v5, "com.tencent.qqmusiccar"

    const-string v6, "com.tencent.qqmusic"

    const-string v7, "cn.kuwo.player.auto"

    const-string v8, "cn.kuwo.player"

    const-string v9, "com.luna.music.car"

    const-string v10, "com.byd.mediacenter"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byd/launcher/MusicNotificationListener;->Ͱ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/byd/launcher/MusicNotificationListener;->ˋ:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/byd/launcher/MusicNotificationListener;->ˏ:J

    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 4

    .line 1
    const-string v0, "MusicNotiListener"

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "onListenerConnected super error: "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    sput-object p0, Lcom/byd/launcher/MusicNotificationListener;->Ͳ:Lcom/byd/launcher/MusicNotificationListener;

    .line 19
    .line 20
    const-string v1, "NotificationListener connected"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byd/launcher/MusicNotificationListener;->ˏ()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 4

    .line 1
    const-string v0, "MusicNotiListener"

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "onListenerDisconnected super error: "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 v1, 0x0

    .line 19
    sput-object v1, Lcom/byd/launcher/MusicNotificationListener;->Ͳ:Lcom/byd/launcher/MusicNotificationListener;

    .line 20
    .line 21
    const-string v1, "NotificationListener disconnected"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/byd/launcher/MusicNotificationListener;->ˋ(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lcom/byd/launcher/MusicNotificationListener;->Ͱ:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    const/16 v3, 0xb

    .line 13
    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p1, v1

    .line 30
    :goto_1
    if-nez p1, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    sget-object p1, Lcom/byd/launcher/MusicNotificationListener;->ͱ:Lo/fb;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object v0, p1, Lo/fb;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v2, Lo/db;

    .line 42
    .line 43
    invoke-direct {v2, p1, v1}, Lo/db;-><init>(Lo/fb;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method

.method public final ˋ(Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/byd/launcher/MusicNotificationListener;->Ͱ:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    const/16 v4, 0xb

    .line 13
    .line 14
    if-ge v3, v4, :cond_2

    .line 15
    .line 16
    aget-object v4, v1, v3

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    return-void

    .line 39
    :cond_4
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 40
    .line 41
    const-string v1, "android.title"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v0, :cond_7

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_6

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    move-object v3, v2

    .line 64
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 65
    .line 66
    iget-object v4, p0, Lcom/byd/launcher/MusicNotificationListener;->ˋ:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_7

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    iget-wide v5, p0, Lcom/byd/launcher/MusicNotificationListener;->ˏ:J

    .line 79
    .line 80
    sub-long/2addr v3, v5

    .line 81
    const-wide/16 v5, 0x5dc

    .line 82
    .line 83
    cmp-long v3, v3, v5

    .line 84
    .line 85
    if-gez v3, :cond_7

    .line 86
    .line 87
    return-void

    .line 88
    :cond_7
    if-eqz v0, :cond_14

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_9

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_8

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_3

    .line 107
    :cond_8
    move-object v3, v2

    .line 108
    :cond_9
    :goto_3
    const-string v1, "android.text"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_a

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_4

    .line 121
    :cond_a
    move-object v1, v2

    .line 122
    :goto_4
    if-nez v1, :cond_c

    .line 123
    .line 124
    const-string v1, "android.subText"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_b

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto :goto_5

    .line 137
    :cond_b
    move-object v1, v2

    .line 138
    :cond_c
    :goto_5
    :try_start_0
    const-string v4, "android.largeIcon"

    .line 139
    .line 140
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    instance-of v5, v4, Landroid/graphics/Bitmap;

    .line 145
    .line 146
    if-eqz v5, :cond_d

    .line 147
    .line 148
    check-cast v4, Landroid/graphics/Bitmap;

    .line 149
    .line 150
    move-object v2, v4

    .line 151
    goto :goto_6

    .line 152
    :cond_d
    instance-of v5, v4, Landroid/graphics/drawable/Icon;

    .line 153
    .line 154
    if-eqz v5, :cond_e

    .line 155
    .line 156
    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    .line 168
    if-eqz v5, :cond_e

    .line 169
    .line 170
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    .line 172
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 173
    .line 174
    .line 175
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    :cond_e
    :goto_6
    if-nez v2, :cond_10

    .line 177
    .line 178
    :try_start_1
    const-string v4, "android.largeIcon.big"

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    instance-of v5, v4, Landroid/graphics/Bitmap;

    .line 185
    .line 186
    if-eqz v5, :cond_f

    .line 187
    .line 188
    check-cast v4, Landroid/graphics/Bitmap;

    .line 189
    .line 190
    move-object v2, v4

    .line 191
    goto :goto_7

    .line 192
    :cond_f
    instance-of v5, v4, Landroid/graphics/drawable/Icon;

    .line 193
    .line 194
    if-eqz v5, :cond_10

    .line 195
    .line 196
    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 207
    .line 208
    if-eqz v5, :cond_10

    .line 209
    .line 210
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 213
    .line 214
    .line 215
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :catch_1
    :cond_10
    :goto_7
    if-nez v2, :cond_11

    .line 217
    .line 218
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v4, :cond_11

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 233
    .line 234
    if-eqz v5, :cond_11

    .line 235
    .line 236
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 237
    .line 238
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 239
    .line 240
    .line 241
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 242
    :catch_2
    :cond_11
    const-string v4, "android.mediaSession"

    .line 243
    .line 244
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    if-eqz v0, :cond_13

    .line 253
    .line 254
    :try_start_3
    new-instance v4, Landroid/media/session/MediaController;

    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-direct {v4, v5, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_13

    .line 268
    .line 269
    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 270
    .line 271
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-nez v2, :cond_12

    .line 276
    .line 277
    const-string v4, "android.media.metadata.ART"

    .line 278
    .line 279
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    :cond_12
    if-nez v2, :cond_13

    .line 284
    .line 285
    const-string v4, "android.media.metadata.DISPLAY_ICON"

    .line 286
    .line 287
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 288
    .line 289
    .line 290
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 291
    move-object v2, v0

    .line 292
    goto :goto_8

    .line 293
    :catch_3
    move-exception v0

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v5, "Failed to get album art from MediaSession: "

    .line 297
    .line 298
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v5, "MusicNotiListener"

    .line 302
    .line 303
    invoke-static {v0, v4, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_13
    :goto_8
    move-object v0, v2

    .line 307
    move-object v2, v3

    .line 308
    goto :goto_9

    .line 309
    :cond_14
    move-object v0, v2

    .line 310
    move-object v1, v0

    .line 311
    :goto_9
    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 312
    .line 313
    if-eqz p1, :cond_15

    .line 314
    .line 315
    array-length p1, p1

    .line 316
    :cond_15
    if-eqz v2, :cond_16

    .line 317
    .line 318
    iput-object v2, p0, Lcom/byd/launcher/MusicNotificationListener;->ˋ:Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    iput-wide v3, p0, Lcom/byd/launcher/MusicNotificationListener;->ˏ:J

    .line 325
    .line 326
    :cond_16
    sget-object p1, Lcom/byd/launcher/MusicNotificationListener;->ͱ:Lo/fb;

    .line 327
    .line 328
    if-eqz p1, :cond_18

    .line 329
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 331
    .line 332
    .line 333
    move-result-wide v3

    .line 334
    iget-wide v5, p1, Lo/fb;->ˋ:J

    .line 335
    .line 336
    sub-long v5, v3, v5

    .line 337
    .line 338
    const-wide/16 v7, 0x3e8

    .line 339
    .line 340
    cmp-long v5, v5, v7

    .line 341
    .line 342
    if-gez v5, :cond_17

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_17
    iput-wide v3, p1, Lo/fb;->ˋ:J

    .line 346
    .line 347
    iget-object v3, p1, Lo/fb;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 348
    .line 349
    iget-object v3, v3, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 350
    .line 351
    new-instance v4, Lo/eb;

    .line 352
    .line 353
    invoke-direct {v4, p1, v0, v2, v1}, Lo/eb;-><init>(Lo/fb;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    .line 358
    .line 359
    :cond_18
    :goto_a
    return-void
.end method

.method public final ˏ()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lcom/byd/launcher/MusicNotificationListener;->ˋ(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "scanExistingNotifications failed: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "MusicNotiListener"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
