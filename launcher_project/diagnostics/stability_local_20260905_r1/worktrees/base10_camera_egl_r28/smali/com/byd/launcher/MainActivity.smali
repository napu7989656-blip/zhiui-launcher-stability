.class public Lcom/byd/launcher/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static volatile Λ:Ljava/lang/ref/WeakReference;


# instance fields
.field public final stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;
.field public ʹ:Ljava/lang/Runnable;

.field public final ˋ:Landroid/os/Handler;

.field public final ˏ:Lo/y7;

.field public Ͱ:Lo/y7;

.field public ͱ:Landroid/widget/ProgressBar;

.field public Ͳ:Landroidx/viewpager2/widget/ViewPager2;

.field public ͳ:Lo/e8;

.field public Ͷ:Landroid/view/View;

.field public ͷ:Landroid/widget/TextView;

.field public volatile ͺ:Z

.field public volatile ͻ:Z

.field public ͼ:Landroid/graphics/drawable/BitmapDrawable;

.field public ͽ:I

.field public Ά:Z

.field public Έ:F

.field public Ή:F

.field public Ί:Landroid/view/View;

.field public Ό:Landroid/view/View;

.field public Ύ:Landroid/widget/TextView;

.field public Ώ:Landroid/widget/TextView;

.field public ΐ:Landroid/widget/ProgressBar;

.field public Α:Landroid/widget/ProgressBar;

.field public final Β:Lo/y7;

.field public final Γ:Lo/y7;

.field public Δ:Z

.field public Ε:Z

.field public Ζ:Z

.field public Η:F

.field public volatile Θ:I

.field public volatile Ι:I

.field public volatile Κ:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    new-instance v0, Lo/y7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    iput-object v0, p0, Lcom/byd/launcher/MainActivity;->ˏ:Lo/y7;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͻ:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/byd/launcher/MainActivity;->ͽ:I

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->Ά:Z

    new-instance v1, Lo/y7;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->Β:Lo/y7;

    new-instance v1, Lo/y7;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->Γ:Lo/y7;

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->Ε:Z

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    iput v0, p0, Lcom/byd/launcher/MainActivity;->Θ:I

    iput v0, p0, Lcom/byd/launcher/MainActivity;->Ι:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/MainActivity;->Κ:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/byd/launcher/stability/MainBlurHost;
    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/MainBlurHost;-><init>(Lcom/byd/launcher/MainActivity;)V
    new-instance v1, Lcom/byd/launcher/stability/BlurPipeline;
    invoke-direct {v1, v0}, Lcom/byd/launcher/stability/BlurPipeline;-><init>(Lcom/byd/launcher/stability/BlurPipeline$Host;)V
    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;
    return-void
.end method

.method public static ʹ(Landroid/view/MotionEvent;)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static ͳ(Landroid/view/MotionEvent;)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static Ͷ(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ͺ()Lcom/byd/launcher/MainActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/MainActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static ͻ(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ".jpg"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, ".jpeg"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string v1, ".png"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string v1, ".webp"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    move v0, v3

    .line 43
    :goto_1
    if-nez v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, ".mp4"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    const-string v0, ".webm"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move p0, v2

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    :goto_2
    move p0, v3

    .line 69
    :goto_3
    if-eqz p0, :cond_5

    .line 70
    .line 71
    :cond_4
    move v2, v3

    .line 72
    :cond_5
    return v2
.end method

.method public static ͼ()Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "/sdcard/launcher/wallpapers"

    .line 2
    .line 3
    const-string v1, "MainActivity"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    new-array v7, v5, [Ljava/lang/String;

    .line 18
    .line 19
    const-string v8, "ls"

    .line 20
    .line 21
    aput-object v8, v7, v4

    .line 22
    .line 23
    aput-object v0, v7, v3

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    new-instance v7, Ljava/io/BufferedReader;

    .line 30
    .line 31
    new-instance v8, Ljava/io/InputStreamReader;

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .line 42
    .line 43
    new-instance v8, Ljava/io/BufferedReader;

    .line 44
    .line 45
    new-instance v9, Ljava/io/InputStreamReader;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-nez v10, :cond_0

    .line 72
    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v11, "/"

    .line 82
    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 98
    .line 99
    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    if-eqz v9, :cond_2

    .line 110
    .line 111
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v9, " "

    .line 115
    .line 116
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v9, "listFilesViaShell "

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v9, " -> "

    .line 141
    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v9, " files, exit="

    .line 153
    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-lez v6, :cond_3

    .line 165
    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v9, " err="

    .line 172
    .line 173
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    goto :goto_2

    .line 184
    :cond_3
    const-string v6, ""

    .line 185
    .line 186
    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, " result="

    .line 190
    .line 191
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v1, v6}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :catch_0
    move-exception v6

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v8, "listFilesViaShell failed: "

    .line 209
    .line 210
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v6, v7, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_6

    .line 221
    .line 222
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const/4 v7, 0x3

    .line 227
    new-array v7, v7, [Ljava/lang/String;

    .line 228
    .line 229
    const-string v8, "sh"

    .line 230
    .line 231
    aput-object v8, v7, v4

    .line 232
    .line 233
    const-string v4, "-c"

    .line 234
    .line 235
    aput-object v4, v7, v3

    .line 236
    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v4, "find "

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v0, " -maxdepth 1 -type f"

    .line 251
    .line 252
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    aput-object v0, v7, v5

    .line 260
    .line 261
    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    new-instance v3, Ljava/io/BufferedReader;

    .line 266
    .line 267
    new-instance v4, Ljava/io/InputStreamReader;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 277
    .line 278
    .line 279
    :cond_4
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    if-eqz v4, :cond_5

    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-nez v5, :cond_4

    .line 294
    .line 295
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 303
    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v3, "listFilesViaShell find fallback -> "

    .line 311
    .line 312
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v3, " files: "

    .line 323
    .line 324
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :catch_1
    move-exception v0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v4, "listFilesViaShell find fallback failed: "

    .line 342
    .line 343
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v0, v3, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :cond_6
    :goto_5
    return-object v2
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    if-ne v0, v2, :cond_3

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Lo/nd;->Η:Z

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ε:Z

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    iput-boolean v4, p0, Lcom/byd/launcher/MainActivity;->Ά:Z

    invoke-static {p1}, Lcom/byd/launcher/MainActivity;->ͳ(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/byd/launcher/MainActivity;->Έ:F

    invoke-static {p1}, Lcom/byd/launcher/MainActivity;->ʹ(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/byd/launcher/MainActivity;->Ή:F

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return v4

    :cond_3
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-ne v1, v5, :cond_6

    if-ne v0, v7, :cond_6

    :try_start_0
    sget v5, Lo/if;->pip_right_panel:I

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lez v8, :cond_4

    new-array v8, v7, [I

    invoke-virtual {v5, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {p1}, Lo/v7;->ˋ(Landroid/view/MotionEvent;)F

    move-result v9

    invoke-static {p1}, Lo/v7;->Β(Landroid/view/MotionEvent;)F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v6

    invoke-static {p1}, Lo/v7;->Ε(Landroid/view/MotionEvent;)F

    move-result v10

    invoke-static {p1}, Lo/v7;->Θ(Landroid/view/MotionEvent;)F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v6

    aget v11, v8, v3

    int-to-float v12, v11

    cmpl-float v12, v9, v12

    if-ltz v12, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_4

    aget v8, v8, v4

    int-to-float v9, v8

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v8, v5

    int-to-float v5, v8

    cmpg-float v5, v10, v5

    if-gtz v5, :cond_4

    move v5, v4

    goto :goto_1

    :catchall_0
    :cond_4
    move v5, v3

    :goto_1
    if-eqz v5, :cond_5

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ε:Z

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    iput-boolean v4, p0, Lcom/byd/launcher/MainActivity;->Ε:Z

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v5

    div-float/2addr v8, v6

    iput v8, p0, Lcom/byd/launcher/MainActivity;->Η:F

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_6

    iget-boolean v8, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    if-nez v8, :cond_6

    iput-boolean v4, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    invoke-virtual {v5, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_6
    iget-boolean v5, p0, Lcom/byd/launcher/MainActivity;->Ε:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    if-nez v5, :cond_d

    if-ne v0, v7, :cond_d

    if-ne v1, v7, :cond_d

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v5

    div-float/2addr v8, v6

    iget v5, p0, Lcom/byd/launcher/MainActivity;->Η:F

    sub-float/2addr v8, v5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    cmpl-float v6, v8, v5

    if-lez v6, :cond_b

    iput-boolean v4, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    .line 5
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz p1, :cond_a

    .line 6
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_7

    .line 7
    iget-boolean v1, v0, Lo/nd;->Η:Z

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    move v0, v3

    :goto_3
    if-eqz v0, :cond_9

    .line 9
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo/nd;->ͷ()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    invoke-virtual {v0, v3}, Lo/nd;->Έ(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/byd/launcher/NavBarService;->Ψ:J

    goto :goto_4

    .line 10
    :cond_9
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->ϝ()V

    :cond_a
    :goto_4
    return v4

    :cond_b
    neg-float v5, v5

    cmpg-float v5, v8, v5

    if-gez v5, :cond_d

    iput-boolean v4, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    .line 11
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz p1, :cond_c

    .line 12
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ϋ()V

    :cond_c
    return v4

    :cond_d
    iget-boolean v5, p0, Lcom/byd/launcher/MainActivity;->Ά:Z

    if-eqz v5, :cond_22

    if-lt v0, v2, :cond_22

    if-ne v1, v7, :cond_1d

    invoke-static {p1}, Lcom/byd/launcher/MainActivity;->ͳ(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/byd/launcher/MainActivity;->Έ:F

    sub-float/2addr v0, v1

    invoke-static {p1}, Lcom/byd/launcher/MainActivity;->ʹ(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lcom/byd/launcher/MainActivity;->Ή:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x42200000    # 40.0f

    cmpl-float v2, v2, v5

    const-wide/16 v6, 0x5dc

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-lez v2, :cond_15

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v2, v2, v11

    if-lez v2, :cond_15

    .line 13
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v1, :cond_1b

    cmpl-float v0, v0, v10

    if-lez v0, :cond_e

    move v9, v4

    .line 14
    :cond_e
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    if-eqz v0, :cond_14

    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-nez v2, :cond_f

    goto :goto_6

    .line 15
    :cond_f
    iget v0, v0, Lo/Ζ;->ʹ:I

    .line 16
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    add-int/2addr v9, v0

    const/4 v2, 0x7

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_11

    goto :goto_7

    :cond_11
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v0, v2}, Lo/Ζ;->ͳ(I)V

    if-nez v2, :cond_13

    .line 17
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-nez v0, :cond_12

    goto :goto_5

    :cond_12
    new-instance v5, Lo/ia;

    const/16 v9, 0xe

    invoke-direct {v5, v1, v9}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    const-string v1, "stopAc"

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v5}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    goto :goto_5

    .line 18
    :cond_13
    invoke-virtual {v1, v2}, Lcom/byd/launcher/NavBarService;->ϙ(I)V

    :goto_5
    move v0, v2

    goto :goto_7

    :cond_14
    :goto_6
    move v0, v3

    .line 19
    :goto_7
    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    iget-object v2, p0, Lcom/byd/launcher/MainActivity;->Β:Lo/y7;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->Ύ:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->ΐ:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 20
    :cond_15
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1c

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1c

    .line 21
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v0, :cond_1b

    cmpg-float v1, v1, v10

    if-gez v1, :cond_16

    move v9, v4

    .line 22
    :cond_16
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    if-eqz v1, :cond_1a

    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    if-nez v2, :cond_17

    goto :goto_8

    .line 23
    :cond_17
    iget v1, v1, Lo/Ζ;->ͱ:I

    .line 24
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_9

    :cond_18
    add-int/2addr v9, v1

    const/16 v2, 0x21

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v5, 0x11

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v1, :cond_19

    goto :goto_9

    :cond_19
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    invoke-virtual {v1, v2}, Lo/Ζ;->ͱ(I)V

    invoke-virtual {v0, v2}, Lcom/byd/launcher/NavBarService;->Ϙ(I)V

    move v1, v2

    goto :goto_9

    :cond_1a
    :goto_8
    const/16 v1, 0x19

    .line 25
    :goto_9
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    iget-object v2, p0, Lcom/byd/launcher/MainActivity;->Γ:Lo/y7;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->Ώ:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\u00b0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/byd/launcher/MainActivity;->Α:Landroid/widget/ProgressBar;

    add-int/lit8 v1, v1, -0x11

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    :cond_1b
    :goto_a
    invoke-static {p1}, Lcom/byd/launcher/MainActivity;->ͳ(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/byd/launcher/MainActivity;->Έ:F

    invoke-static {p1}, Lcom/byd/launcher/MainActivity;->ʹ(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/byd/launcher/MainActivity;->Ή:F

    :cond_1c
    return v4

    :cond_1d
    const/4 p1, 0x6

    if-eq v1, p1, :cond_1f

    if-eq v1, v4, :cond_1f

    if-ne v1, v2, :cond_1e

    goto :goto_b

    :cond_1e
    return v4

    :cond_1f
    :goto_b
    if-gt v0, v2, :cond_20

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ά:Z

    :cond_20
    if-gt v0, v4, :cond_21

    iget-boolean p1, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_21

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    invoke-virtual {p1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_21
    return v4

    :cond_22
    if-eq v1, v4, :cond_23

    if-ne v1, v2, :cond_25

    :cond_23
    iget-boolean v0, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_24

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Δ:Z

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_24
    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ά:Z

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ε:Z

    iput-boolean v3, p0, Lcom/byd/launcher/MainActivity;->Ζ:Z

    :cond_25
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->Ͳ()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1
    sget-object p1, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe5e5e6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    const-string v0, "launcher_prefs"

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "oem_statusbar_enabled"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "MainActivity"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "disable"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const/high16 v6, 0x9f0000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableSystemNotificationPanelEarly failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v1, v4, v2}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->ͱ()V

    new-instance v1, Lo/y7;

    invoke-direct {v1, p0, p1}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 6
    sput-object v1, Lo/ak;->ͻ:Ljava/lang/Runnable;

    .line 7
    sget v1, Lo/jf;->activity_main:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lo/y7;

    invoke-direct {v5, p0, v3}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget v4, Lo/if;->progress:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    sget v4, Lo/if;->wallpaper_pager:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v4, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    sget v4, Lo/if;->clock_widget:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    sget v4, Lo/if;->main_date:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/byd/launcher/MainActivity;->ͷ:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->Ό()V

    iget-object v4, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    new-instance v5, Lo/c8;

    invoke-direct {v5, p1, p0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "clock_x"

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const-string v7, "clock_y"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_3

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    new-instance v7, Lo/z7;

    invoke-direct {v7, p0, v5, v4}, Lo/z7;-><init>(Lcom/byd/launcher/MainActivity;FF)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v4, p0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    new-instance v5, Lo/d8;

    invoke-direct {v5, p0}, Lo/d8;-><init>(Lcom/byd/launcher/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "clock_visible"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/byd/launcher/MainActivity;->Ͷ:Landroid/view/View;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_5
    sget p1, Lo/if;->wind_indicator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/MainActivity;->Ί:Landroid/view/View;

    sget p1, Lo/if;->temp_indicator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/MainActivity;->Ό:Landroid/view/View;

    sget p1, Lo/if;->tv_wind_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byd/launcher/MainActivity;->Ύ:Landroid/widget/TextView;

    sget p1, Lo/if;->tv_temp_value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byd/launcher/MainActivity;->Ώ:Landroid/widget/TextView;

    sget p1, Lo/if;->pb_wind:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/byd/launcher/MainActivity;->ΐ:Landroid/widget/ProgressBar;

    sget p1, Lo/if;->pb_temp:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/byd/launcher/MainActivity;->Α:Landroid/widget/ProgressBar;

    const-string p1, "package:"

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_6

    .line 11
    invoke-static {}, Lo/Κ;->Β()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "Cannot open MANAGE_EXTERNAL_STORAGE settings"

    invoke-static {v2, v0, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 12
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lo/y7;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    const-string v1, "WallpaperLoad"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 13
    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->Ͳ()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    # BASE-01: clear only this Activity's static wallpaper callback.
    sget-object v0, Lo/ak;->ͻ:Ljava/lang/Runnable;
    instance-of v1, v0, Lo/y7;
    if-eqz v1, :base01_callback_done
    check-cast v0, Lo/y7;
    iget-object v1, v0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;
    if-ne v1, p0, :base01_callback_done
    const/4 v1, 0x0
    sput-object v1, Lo/ak;->ͻ:Ljava/lang/Runnable;
    :base01_callback_done

    sget-object v0, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sput-object v1, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/byd/launcher/MainActivity;->ͳ:Lo/e8;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->ͳ:Lo/e8;

    :cond_1
    # BASE-02: setAdapter(null) runs Adapter.onDetachedFromRecyclerView and recycles holders.
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;
    if-eqz v0, :base02_adapter_done
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;
    :base02_adapter_done
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->ͼ:Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/byd/launcher/MainActivity;->ͼ:Landroid/graphics/drawable/BitmapDrawable;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->ͼ:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x500

    .line 62
    .line 63
    and-int/2addr v0, v1

    .line 64
    if-eq v0, v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->ͱ()V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v1, Lo/y7;

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ν()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    const-string v1, "mRecyclerView"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v2, v1, Lo/ak;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    check-cast v1, Lo/ak;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v1, v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v3, v2, Lo/zj;

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    move-object v3, v2

    .line 66
    check-cast v3, Lo/zj;

    .line 67
    .line 68
    iget-object v3, v3, Lo/zj;->ˏ:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    :try_start_1
    move-object v3, v2

    .line 73
    check-cast v3, Lo/zj;

    .line 74
    .line 75
    iget-object v3, v3, Lo/zj;->ˏ:Landroid/media/MediaPlayer;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    check-cast v2, Lo/zj;

    .line 84
    .line 85
    iget-object v2, v2, Lo/zj;->ˏ:Landroid/media/MediaPlayer;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .line 89
    .line 90
    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_1
    :cond_2
    :goto_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 v0, 0x500

    .line 24
    .line 25
    and-int/2addr p1, v0

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->ͱ()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final ͱ()V
    .locals 3

    # A callback already read by another thread must not update a destroyed window.
    iget-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͺ:Z
    if-eqz v0, :base01_window_alive
    return-void
    :base01_window_alive

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    invoke-static {v1}, Lo/Κ;->Ώ(Landroid/view/Window;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final Ͳ()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "package:"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x3e9

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/byd/launcher/NavBarService;->β()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ͱ:Landroid/widget/ProgressBar;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v1, Lo/y7;

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v3, 0x1388

    .line 70
    .line 71
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/byd/launcher/MainActivity;->Έ()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lo/ta;

    .line 78
    .line 79
    invoke-direct {v1, p0, v2}, Lo/ta;-><init>(Landroid/content/ContextWrapper;I)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v2, 0x64

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final ͷ()V
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline;->current()Z
    move-result v0
    if-nez v0, :blur_owner_alive
    return-void
    :blur_owner_alive


    .line 1
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->ˏ:Lo/y7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/launcher/MainActivity;->Κ:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    new-instance v1, Lo/y7;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;
    invoke-virtual {v0, v1}, Lcom/byd/launcher/stability/BlurPipeline;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ͽ(Lo/ak;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "mRecyclerView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    if-ne v5, p2, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lo/ak;->Ͱ(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method public final Ά()V
    .locals 3

    .line 1
    const-string v0, "MainActivity"

    const-string v1, "refreshWallpaper called, syncing from /sdcard/launcher/wallpapers"

    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/y7;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    const-string v2, "WallpaperRefresh"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final Έ()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͻ:Z

    const-string v1, "MainActivity"

    if-eqz v0, :cond_0

    const-string v0, "BgInit already running, skipping"

    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BootReceiver is already initializing, skip MainActivity bgInit"

    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/launcher/MainActivity;->ͻ:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/y7;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V

    const-string v2, "BgInit"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final Ή()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-string v2, "Service instance exists but isRunning=false, trying re-show"

    .line 8
    .line 9
    const-string v3, "MainActivity"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v4, Lo/llI;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v4, v0, v5}, Lo/llI;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    const-wide/16 v6, 0x7d0

    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/byd/launcher/NavBarService;->β()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "Service recovered by re-showing UI"

    .line 37
    .line 38
    invoke-static {v3, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :cond_1
    const-string v0, "Re-show didn\'t work, proceeding with ADB"

    .line 43
    .line 44
    invoke-static {v3, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v1
.end method

.method public final Ί()V
    .locals 5
    iget-object v0, p0, Lcom/byd/launcher/MainActivity;->stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline;->current()Z
    move-result v0
    if-nez v0, :blur_owner_alive
    return-void
    :blur_owner_alive


    .line 1
    iget v0, p0, Lcom/byd/launcher/MainActivity;->Θ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/byd/launcher/MainActivity;->Θ:I

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "updateBarBlurBackgrounds: gen="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " explicit="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, " lastDisplayed="

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v4, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    move v3, v1

    .line 36
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, " retryCount="

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v3, p0, Lcom/byd/launcher/MainActivity;->Ι:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "MainActivity"

    .line 54
    .line 55
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/byd/launcher/MainActivity;->stabilityBlur:Lcom/byd/launcher/stability/BlurPipeline;

    .line 59
    .line 60
    new-instance v3, Lo/h2;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v3, p0, v4, v0, v1}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/byd/launcher/stability/BlurPipeline;->execute(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final Ό()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "\u661f\u671f\u65e5"

    const-string v4, "\u661f\u671f\u4e00"

    const-string v5, "\u661f\u671f\u4e8c"

    const-string v6, "\u661f\u671f\u4e09"

    const-string v7, "\u661f\u671f\u56db"

    const-string v8, "\u661f\u671f\u4e94"

    const-string v9, "\u661f\u671f\u516d"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u65e5  "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/launcher/MainActivity;->ͷ:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
