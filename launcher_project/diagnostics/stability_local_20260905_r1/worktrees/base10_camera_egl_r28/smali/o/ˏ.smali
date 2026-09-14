.class public final Lo/ˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʹ:Lo/v5;

.field public ˋ:Ljava/lang/Class;

.field public ˏ:Ljava/lang/ClassLoader;

.field public Ͱ:Ljava/lang/Object;

.field public final ͱ:Z

.field public Ͳ:I

.field public ͳ:I

.field public Ͷ:Ljava/lang/Object;

.field public final ͷ:Landroid/content/Context;

.field public ͺ:J

.field public ͻ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v1, Lo/ˏ;->ͱ:Z

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    iput v3, v1, Lo/ˏ;->Ͳ:I

    .line 11
    .line 12
    iput v3, v1, Lo/ˏ;->ͳ:I

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    iput-wide v4, v1, Lo/ˏ;->ͺ:J

    .line 17
    .line 18
    iput v2, v1, Lo/ˏ;->ͻ:I

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, v4

    .line 29
    :goto_0
    iput-object v0, v1, Lo/ˏ;->ͷ:Landroid/content/Context;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    :try_start_0
    const-string v0, "android.hardware.AVMCamera"

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v1, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 39
    .line 40
    iput-boolean v5, v1, Lo/ˏ;->ͱ:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :catch_0
    const-string v6, "android.hardware.AVMCamera"

    .line 44
    .line 45
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    const-string v7, "/system/framework/bmmcamera.jar"

    .line 48
    .line 49
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lo/ˏ;->ˏ()Ljava/lang/ClassLoader;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    iput-object v7, v1, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 70
    .line 71
    iput-object v0, v1, Lo/ˏ;->ˏ:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_1
    if-eqz v0, :cond_3

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iput-object v7, v1, Lo/ˏ;->ˋ:Ljava/lang/Class;

    .line 89
    .line 90
    iput-object v0, v1, Lo/ˏ;->ˏ:Ljava/lang/ClassLoader;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    .line 94
    .line 95
    :goto_2
    move v0, v5

    .line 96
    goto :goto_4

    .line 97
    :catch_1
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const-string v0, "AVMCameraHelper"

    .line 103
    .line 104
    const-string v6, "All strategies failed - AVMCamera requires the system\'s bmmcamera ClassLoader"

    .line 105
    .line 106
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :goto_3
    move v0, v2

    .line 110
    :goto_4
    iput-boolean v0, v1, Lo/ˏ;->ͱ:Z

    .line 111
    .line 112
    :goto_5
    iget-boolean v0, v1, Lo/ˏ;->ͱ:Z

    .line 113
    .line 114
    if-eqz v0, :cond_a

    .line 115
    .line 116
    const-string v13, "dms"

    .line 117
    .line 118
    const-string v14, "rvs"

    .line 119
    .line 120
    const-string v15, "rf"

    .line 121
    .line 122
    const-string v12, "rear"

    .line 123
    .line 124
    const-string v11, "front"

    .line 125
    .line 126
    const-string v10, "pano_l"

    .line 127
    .line 128
    const-string v9, "pano_h"

    .line 129
    .line 130
    :try_start_3
    iget-object v0, v1, Lo/ˏ;->ˏ:Ljava/lang/ClassLoader;

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_4
    const-class v0, Lo/ˏ;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_6
    const-string v6, "android.hardware.BmmCameraInfo"

    .line 142
    .line 143
    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v6, "getCameraId"

    .line 148
    .line 149
    new-array v7, v5, [Ljava/lang/Class;

    .line 150
    .line 151
    const-class v8, Ljava/lang/String;

    .line 152
    .line 153
    aput-object v8, v7, v2

    .line 154
    .line 155
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    move-object v6, v9

    .line 160
    move-object v7, v10

    .line 161
    move-object v3, v8

    .line 162
    move-object v8, v11

    .line 163
    move-object v2, v9

    .line 164
    move-object v9, v12

    .line 165
    move-object v5, v10

    .line 166
    move-object v10, v15

    .line 167
    move-object/from16 v16, v11

    .line 168
    .line 169
    move-object v11, v14

    .line 170
    move-object/from16 v17, v12

    .line 171
    .line 172
    move-object v12, v13

    .line 173
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const/4 v7, 0x0

    .line 178
    :goto_7
    const/4 v0, 0x7

    .line 179
    if-ge v7, v0, :cond_9

    .line 180
    .line 181
    aget-object v0, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 182
    .line 183
    :try_start_4
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 201
    sparse-switch v9, :sswitch_data_0

    .line 202
    .line 203
    .line 204
    move-object/from16 v9, v16

    .line 205
    .line 206
    :cond_5
    move-object/from16 v10, v17

    .line 207
    .line 208
    goto/16 :goto_8

    .line 209
    .line 210
    :sswitch_0
    move-object/from16 v9, v16

    .line 211
    .line 212
    :try_start_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 216
    if-eqz v0, :cond_5

    .line 217
    .line 218
    const/4 v0, 0x2

    .line 219
    move-object/from16 v10, v17

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    goto/16 :goto_a

    .line 224
    .line 225
    :sswitch_1
    move-object/from16 v9, v16

    .line 226
    .line 227
    move-object/from16 v10, v17

    .line 228
    .line 229
    :try_start_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    const/4 v0, 0x3

    .line 236
    goto :goto_9

    .line 237
    :sswitch_2
    move-object/from16 v9, v16

    .line 238
    .line 239
    move-object/from16 v10, v17

    .line 240
    .line 241
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_6

    .line 246
    .line 247
    const/4 v0, 0x5

    .line 248
    goto :goto_9

    .line 249
    :sswitch_3
    move-object/from16 v9, v16

    .line 250
    .line 251
    move-object/from16 v10, v17

    .line 252
    .line 253
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_6

    .line 258
    .line 259
    const/4 v0, 0x6

    .line 260
    goto :goto_9

    .line 261
    :sswitch_4
    move-object/from16 v9, v16

    .line 262
    .line 263
    move-object/from16 v10, v17

    .line 264
    .line 265
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_6

    .line 270
    .line 271
    const/4 v0, 0x4

    .line 272
    goto :goto_9

    .line 273
    :sswitch_5
    move-object/from16 v9, v16

    .line 274
    .line 275
    move-object/from16 v10, v17

    .line 276
    .line 277
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_6

    .line 282
    .line 283
    const/4 v0, 0x1

    .line 284
    goto :goto_9

    .line 285
    :sswitch_6
    move-object/from16 v9, v16

    .line 286
    .line 287
    move-object/from16 v10, v17

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_6

    .line 294
    .line 295
    const/4 v0, 0x0

    .line 296
    goto :goto_9

    .line 297
    :catchall_2
    move-exception v0

    .line 298
    goto :goto_b

    .line 299
    :cond_6
    :goto_8
    const/4 v0, -0x1

    .line 300
    :goto_9
    if-eqz v0, :cond_8

    .line 301
    .line 302
    const/4 v11, 0x1

    .line 303
    if-eq v0, v11, :cond_7

    .line 304
    .line 305
    goto :goto_c

    .line 306
    :cond_7
    iput v8, v1, Lo/ˏ;->ͳ:I

    .line 307
    .line 308
    goto :goto_c

    .line 309
    :cond_8
    iput v8, v1, Lo/ˏ;->Ͳ:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 310
    .line 311
    goto :goto_c

    .line 312
    :catchall_3
    move-exception v0

    .line 313
    move-object/from16 v9, v16

    .line 314
    .line 315
    :goto_a
    move-object/from16 v10, v17

    .line 316
    .line 317
    :goto_b
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 318
    .line 319
    .line 320
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 321
    .line 322
    move-object/from16 v16, v9

    .line 323
    .line 324
    move-object/from16 v17, v10

    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :cond_9
    const/4 v2, 0x1

    .line 329
    :try_start_8
    new-array v0, v2, [Ljava/lang/Object;

    .line 330
    .line 331
    const-string v2, "pano_apa"

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    aput-object v2, v0, v5

    .line 335
    .line 336
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 343
    .line 344
    .line 345
    goto :goto_d

    .line 346
    :catchall_4
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    :catchall_5
    :cond_a
    :goto_d
    return-void

    .line 351
    :sswitch_data_0
    .sparse-switch
        -0x3b56a525 -> :sswitch_6
        -0x3b56a521 -> :sswitch_5
        0xe34 -> :sswitch_4
        0x1850a -> :sswitch_3
        0x1baaf -> :sswitch_2
        0x3559a4 -> :sswitch_1
        0x5d2de29 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final ˋ()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    const-string v1, "enablePreviewCallback"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AVMCameraHelper"

    const-string v2, "enablePreviewCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final ˏ()Ljava/lang/ClassLoader;
    .locals 7

    .line 1
    const-string v0, "android.hardware.JNIBMMCamera"

    const-string v1, "android.hardware.JNILoader"

    const-string v2, "android.hardware.BMMLog"

    const-string v3, "android.hardware.BmmCameraInfo"

    const-string v4, "android.hardware.NormalCamera"

    const-string v5, "android.hardware.bydauto.panorama.BYDAutoPanoramaDevice"

    const-string v6, "android.hardware.bydauto.BYDAutoDevice"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "android.hardware.AVMCamera"

    const/4 v4, 0x7

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    return-object v4

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-class v0, Lo/ˏ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    return-object v0

    :catch_1
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lo/ˏ;->ͷ:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-string v2, "com.byd.cdr"

    const-string v4, "com.byd.auto_camera"

    const-string v5, "com.byd.camera.remotectrl"

    const-string v6, "com.byd.cameramanager"

    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v4, 0x4

    if-ge v1, v4, :cond_5

    aget-object v4, v2, v1

    const/4 v5, 0x3

    :try_start_4
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_4

    return-object v4

    :catchall_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final Ͱ(I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lo/ˏ;->ͱ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    const-string v2, "open"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    const-string v0, "Failed to open AVMCamera"

    const-string v2, "AVMCameraHelper"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  Caused by: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final ͱ(Lo/v5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/ˏ;->ͱ:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lo/ˏ;->ʹ:Lo/v5;

    :try_start_0
    iget-object p1, p0, Lo/ˏ;->ˏ:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    const-string v0, "android.hardware.AVMCamera$IPreviewCallback"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "android.hardware.AVMCamera$IPreviewCallback"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lo/ˋ;

    invoke-direct {v2, p0}, Lo/ˋ;-><init>(Lo/ˏ;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ˏ;->Ͷ:Ljava/lang/Object;

    iget-object v0, p0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    const-string v1, "setPreviewCallback"

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/ˏ;->Ͷ:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "AVMCameraHelper"

    const-string v1, "setPreviewCallback failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final Ͳ()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    const-string v1, "setPreviewSize"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x1400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AVMCameraHelper"

    const-string v2, "setPreviewSize failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final ͳ(Landroid/view/Surface;)V
    .locals 8

    .line 1
    const-class v0, Landroid/view/Surface;

    iget-object v1, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    const-string v5, "addPreviewSurface"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :try_start_1
    iget-object v4, p0, Lo/ˏ;->ˋ:Ljava/lang/Class;

    const-string v5, "setPreviewSurface"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lo/ˏ;->Ͱ:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v0, "AVMCameraHelper"

    const-string v1, "setPreviewSurface also failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
