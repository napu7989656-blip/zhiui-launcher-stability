.class public final Lcom/byd/launcher/stability/MediaUriReader;
.super Ljava/lang/Object;
.source "MediaUriReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_0

    goto/16 :goto_5

    .line 21
    :cond_0
    new-instance v1, Lcom/byd/launcher/stability/ArtworkInput$Budget;

    new-instance v2, Lcom/byd/launcher/stability/MediaUriReader$1;

    invoke-direct {v2}, Lcom/byd/launcher/stability/MediaUriReader$1;-><init>()V

    new-instance v3, Lcom/byd/launcher/stability/MediaUriReader$2;

    invoke-direct {v3, p2}, Lcom/byd/launcher/stability/MediaUriReader$2;-><init>(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)V

    invoke-direct {v1, v2, v3}, Lcom/byd/launcher/stability/ArtworkInput$Budget;-><init>(Lcom/byd/launcher/stability/ArtworkInput$Clock;Lcom/byd/launcher/stability/ArtworkInput$Gate;)V

    .line 26
    :try_start_0
    invoke-virtual {v1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 30
    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    invoke-static {p0, v1, v0}, Lcom/byd/launcher/stability/ArtworkInput;->read(Ljava/io/InputStream;Lcom/byd/launcher/stability/ArtworkInput$Budget;Ljava/net/HttpURLConnection;)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    invoke-static {p0}, Lcom/byd/launcher/stability/ArtworkInput;->close(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/byd/launcher/stability/ArtworkInput;->close(Ljava/io/InputStream;)V

    throw p1

    .line 31
    :cond_2
    :goto_1
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/byd/launcher/stability/MediaUriReader$3;

    invoke-direct {p1}, Lcom/byd/launcher/stability/MediaUriReader$3;-><init>()V

    invoke-static {p0, v1, p1}, Lcom/byd/launcher/stability/ArtworkInput;->http(Ljava/net/URL;Lcom/byd/launcher/stability/ArtworkInput$Budget;Lcom/byd/launcher/stability/ArtworkInput$Connections;)[B

    move-result-object p1

    .line 44
    :goto_2
    invoke-virtual {v1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    .line 45
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    array-length p2, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {v1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    .line 49
    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2, v3}, Lcom/byd/launcher/stability/ArtworkInput;->sample(II)I

    move-result p2

    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 52
    array-length p2, p1

    invoke-static {p1, v2, p2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 53
    :try_start_4
    invoke-virtual {v1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    if-eqz p0, :cond_4

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/16 p2, 0x400

    if-gt p1, p2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gt p1, p2, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Oversized artwork decode"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    :goto_3
    return-object p0

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_4

    :catchall_3
    move-exception p0

    :goto_4
    if-eqz v0, :cond_5

    .line 61
    :try_start_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 62
    :catchall_4
    :cond_5
    throw p0

    :catch_0
    move-object p0, v0

    :catch_1
    if-eqz p0, :cond_6

    .line 61
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :cond_6
    :goto_5
    return-object v0
.end method
