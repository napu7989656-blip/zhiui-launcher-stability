.class public Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;
.super Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BYDMultimediaDeviceManager"


# instance fields
.field private mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

.field private mediaInfoCallback:Lo/Ϻ;

.field private playStateCallback:Lo/ϼ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;-><init>()V

    invoke-static {p1}, Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;->registerListener(Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;)V

    :cond_0
    return-void
.end method

.method private notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    const-string v2, "notification"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "event"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const-string p1, "data"

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {v0}, Lcom/byd/launcher/CoreService;->ͼ(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "Failed to create notification: "

    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "BYDMultimediaDeviceManager"

    .line 38
    .line 39
    invoke-static {p1, p2, v0}, Lo/v1;->Ή(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public controlMedia(II)I
    .locals 13

    .line 1
    const-string v0, "BYDMultimediaDeviceManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    const-string v6, "controlMedia"

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x1

    .line 24
    if-ge v5, v3, :cond_3

    .line 25
    .line 26
    :try_start_1
    aget-object v9, v1, v5

    .line 27
    .line 28
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    array-length v10, v6

    .line 43
    const/4 v11, 0x3

    .line 44
    if-ne v10, v11, :cond_2

    .line 45
    .line 46
    aget-object v10, v6, v4

    .line 47
    .line 48
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    if-ne v10, v12, :cond_2

    .line 51
    .line 52
    aget-object v6, v6, v8

    .line 53
    .line 54
    if-ne v6, v12, :cond_2

    .line 55
    .line 56
    invoke-virtual {v9, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 60
    .line 61
    new-array v3, v11, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    aput-object v5, v3, v4

    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v3, v8

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    aput-object v5, v3, v7

    .line 77
    .line 78
    invoke-virtual {v9, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "controlMedia(3-param) mode="

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p2, " action="

    .line 96
    .line 97
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, " result="

    .line 104
    .line 105
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    instance-of p1, v1, Ljava/lang/Integer;

    .line 119
    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    check-cast v1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    :cond_1
    return v4

    .line 129
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    array-length v3, v1

    .line 143
    move v5, v4

    .line 144
    :goto_1
    if-ge v5, v3, :cond_5

    .line 145
    .line 146
    aget-object v9, v1, v5

    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_4

    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    array-length v11, v10

    .line 163
    if-ne v11, v7, :cond_4

    .line 164
    .line 165
    aget-object v11, v10, v4

    .line 166
    .line 167
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 168
    .line 169
    if-ne v11, v12, :cond_4

    .line 170
    .line 171
    aget-object v10, v10, v8

    .line 172
    .line 173
    if-ne v10, v12, :cond_4

    .line 174
    .line 175
    invoke-virtual {v9, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 179
    .line 180
    new-array v3, v7, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    aput-object p1, v3, v4

    .line 187
    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    aput-object p1, v3, v8

    .line 193
    .line 194
    invoke-virtual {v9, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    return p1

    .line 205
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    const-string p1, "controlMedia not found (tried 3-param and 2-param)"

    .line 209
    .line 210
    invoke-static {v0, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .line 212
    .line 213
    return v2

    .line 214
    :catchall_0
    move-exception p1

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v1, "controlMedia error: "

    .line 218
    .line 219
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {p1, p2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return v2
.end method

.method public getMediaType()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;->getMediaType()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    return v0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "getMediaType error: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "BYDMultimediaDeviceManager"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public getPlayMediaInfoStrings()[Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getPlayMediaInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "fileName"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "artistName"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "albumName"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v6

    :goto_0
    :try_start_1
    aput-object v2, v5, v3

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    const/4 v2, 0x1

    aput-object v4, v5, v2

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v6

    :goto_2
    const/4 v2, 0x2

    aput-object v0, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-object v1
.end method

.method public getPlayMode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;->getPlayMode()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    return v0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "getPlayMode error: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "BYDMultimediaDeviceManager"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public getPlayState()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    return v0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "getPlayState error: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "BYDMultimediaDeviceManager"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public onMediaTypeChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;->onMediaTypeChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "type"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "mediaTypeChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onMediaTypeChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDMultimediaDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onPlayMediaInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;->onPlayMediaInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "fileName"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v2

    .line 18
    :goto_0
    :try_start_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v1, "artistName"

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    move-object v3, p2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v3, v2

    .line 28
    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "albumName"

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object p3, v2

    .line 37
    :goto_2
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string p3, "playMediaInfoChanged"

    .line 41
    .line 42
    invoke-direct {p0, p3, v0}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 43
    .line 44
    .line 45
    iget-object p3, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mediaInfoCallback:Lo/Ϻ;

    .line 46
    .line 47
    if-eqz p3, :cond_3

    .line 48
    .line 49
    check-cast p3, Lo/da;

    .line 50
    .line 51
    iget-object p3, p3, Lo/da;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 52
    .line 53
    iget-object v0, p3, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 54
    .line 55
    new-instance v1, Lo/ba;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {v1, p3, p1, p2, v2}, Lo/ba;-><init>(Lcom/byd/launcher/NavBarService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p3, "onPlayMediaInfoChanged error: "

    .line 69
    .line 70
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p3, "BYDMultimediaDeviceManager"

    .line 74
    .line 75
    invoke-static {p1, p2, p3}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_3
    return-void
.end method

.method public onPlayModeChanged(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;->onPlayModeChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "mode"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "playModeChanged"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onPlayModeChanged error: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "BYDMultimediaDeviceManager"

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;->onPlayStateChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "state"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v1, "playStateChanged"

    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->notifyClients(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->playStateCallback:Lo/ϼ;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    check-cast v0, Lo/da;

    .line 29
    .line 30
    iget-object p1, v0, Lo/da;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v2, Lo/aa;

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    invoke-direct {v2, v3, p1, v1}, Lo/aa;-><init>(ILcom/byd/launcher/NavBarService;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "onPlayStateChanged error: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "BYDMultimediaDeviceManager"

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;->unregisterListener(Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mBYDAutoMultimediaDevice:Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;

    :cond_0
    return-void
.end method

.method public setMediaInfoCallback(Lo/Ϻ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->mediaInfoCallback:Lo/Ϻ;

    return-void
.end method

.method public setPlayStateCallback(Lo/ϼ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byd/launcher/manager/BYDMultimediaDeviceManager;->playStateCallback:Lo/ϼ;

    return-void
.end method
