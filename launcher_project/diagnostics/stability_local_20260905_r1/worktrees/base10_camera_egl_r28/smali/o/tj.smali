.class public final synthetic Lo/tj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Landroid/widget/ImageView;

.field public final synthetic Ͱ:Lo/ak;

.field public final synthetic ͱ:Ljava/lang/String;

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:I


# direct methods
.method public synthetic constructor <init>(Lo/ak;Ljava/lang/String;IILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tj;->Ͱ:Lo/ak;

    iput-object p2, p0, Lo/tj;->ͱ:Ljava/lang/String;

    iput p3, p0, Lo/tj;->Ͳ:I

    iput p4, p0, Lo/tj;->ͳ:I

    iput-object p5, p0, Lo/tj;->ʹ:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lo/tj;->Ͱ:Lo/ak;

    .line 2
    .line 3
    iget-object v1, p0, Lo/tj;->ͱ:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lo/tj;->Ͳ:I

    .line 6
    .line 7
    iget v3, p0, Lo/tj;->ͳ:I

    .line 8
    .line 9
    iget-object v4, p0, Lo/tj;->ʹ:Landroid/widget/ImageView;

    .line 10
    .line 11
    iget-boolean v5, v0, Lo/ak;->Ͳ:Z

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    :try_start_0
    const-string v5, "file:"

    .line 18
    .line 19
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x5

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v6, v1

    .line 32
    :goto_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    .line 33
    .line 34
    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    .line 40
    invoke-virtual {v0, v6, v5}, Lo/ak;->ͱ(Ljava/lang/String;Z)Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v10, 0x0

    .line 45
    :try_start_1
    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 46
    .line 47
    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 54
    .line 55
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 56
    .line 57
    if-gt v11, v3, :cond_3

    .line 58
    .line 59
    if-le v9, v2, :cond_4

    .line 60
    .line 61
    :cond_3
    div-int/lit8 v11, v11, 0x2

    .line 62
    .line 63
    div-int/lit8 v9, v9, 0x2

    .line 64
    .line 65
    :goto_1
    div-int v12, v11, v8

    .line 66
    .line 67
    if-lt v12, v3, :cond_4

    .line 68
    .line 69
    div-int v12, v9, v8

    .line 70
    .line 71
    if-lt v12, v2, :cond_4

    .line 72
    .line 73
    mul-int/lit8 v8, v8, 0x2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    .line 81
    invoke-virtual {v0, v6, v5}, Lo/ak;->ͱ(Ljava/lang/String;Z)Ljava/io/InputStream;

    .line 82
    .line 83
    .line 84
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :try_start_3
    invoke-static {v2, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-static {v0, v1, v3, v4}, Lcom/byd/launcher/stability/WallpaperFrameApply;->submit(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :catchall_1
    move-exception v2

    .line 156
    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 160
    :catchall_2
    move-exception v0

    .line 161
    if-eqz v9, :cond_8

    .line 162
    .line 163
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catchall_3
    move-exception v2

    .line 168
    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v3, "Load wallpaper failed: "

    .line 176
    .line 177
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v2, "WallpaperAdapter"

    .line 188
    .line 189
    invoke-static {v2, v1, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_4
    return-void
.end method
