.class public final Lcom/byd/launcher/stability/ArtworkInput;
.super Ljava/lang/Object;
.source "ArtworkInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/ArtworkInput$Budget;,
        Lcom/byd/launcher/stability/ArtworkInput$Connections;,
        Lcom/byd/launcher/stability/ArtworkInput$Clock;,
        Lcom/byd/launcher/stability/ArtworkInput$Gate;
    }
.end annotation


# static fields
.field public static final MAX_BYTES:I = 0x400000

.field public static final MAX_MILLIS:J = 0x1770L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static disconnect(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static http(Ljava/net/URL;Lcom/byd/launcher/stability/ArtworkInput$Budget;Lcom/byd/launcher/stability/ArtworkInput$Connections;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 51
    :goto_0
    const-string v2, "Artwork redirect limit"

    const/4 v3, 0x3

    if-gt v1, v3, :cond_7

    .line 52
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    .line 53
    const-string v4, "http"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsupported artwork redirect"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_1
    :goto_1
    invoke-interface {p2, p0}, Lcom/byd/launcher/stability/ArtworkInput$Connections;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const/4 v5, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 59
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 60
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 62
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 63
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 64
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 65
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_5

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_5

    const/16 v7, 0x12f

    if-eq v6, v7, :cond_5

    const/16 v7, 0x133

    if-eq v6, v7, :cond_5

    const/16 v7, 0x134

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0xc8

    if-lt v6, p0, :cond_4

    const/16 p0, 0x12c

    if-ge v6, p0, :cond_4

    .line 73
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long p0, v0, v2

    if-gtz p0, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 75
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 76
    invoke-static {v5, p1, v4}, Lcom/byd/launcher/stability/ArtworkInput;->read(Ljava/io/InputStream;Lcom/byd/launcher/stability/ArtworkInput$Budget;Ljava/net/HttpURLConnection;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 79
    :try_start_1
    invoke-static {v5}, Lcom/byd/launcher/stability/ArtworkInput;->close(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/byd/launcher/stability/ArtworkInput;->disconnect(Ljava/net/HttpURLConnection;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v4}, Lcom/byd/launcher/stability/ArtworkInput;->disconnect(Ljava/net/HttpURLConnection;)V

    throw p0

    .line 73
    :cond_3
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Artwork response too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Artwork HTTP status"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_5
    :goto_2
    const-string v6, "Location"

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eq v1, v3, :cond_6

    .line 69
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    :try_start_3
    invoke-static {v5}, Lcom/byd/launcher/stability/ArtworkInput;->close(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lcom/byd/launcher/stability/ArtworkInput;->disconnect(Ljava/net/HttpURLConnection;)V

    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v4}, Lcom/byd/launcher/stability/ArtworkInput;->disconnect(Ljava/net/HttpURLConnection;)V

    throw p0

    .line 68
    :cond_6
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 79
    :try_start_5
    invoke-static {v5}, Lcom/byd/launcher/stability/ArtworkInput;->close(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v4}, Lcom/byd/launcher/stability/ArtworkInput;->disconnect(Ljava/net/HttpURLConnection;)V

    .line 80
    throw p0

    :catchall_3
    move-exception p0

    .line 79
    invoke-static {v4}, Lcom/byd/launcher/stability/ArtworkInput;->disconnect(Ljava/net/HttpURLConnection;)V

    throw p0

    .line 82
    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;Lcom/byd/launcher/stability/ArtworkInput$Budget;Ljava/net/HttpURLConnection;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 35
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    move v4, v3

    .line 38
    :goto_1
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    move-result v5

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const v6, 0x400001

    sub-int/2addr v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 42
    invoke-virtual {p1}, Lcom/byd/launcher/stability/ArtworkInput$Budget;->remaining()I

    if-gez v5, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8

    if-gt v4, v5, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Artwork stream made no progress"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/high16 v4, 0x400000

    .line 46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    sub-int/2addr v4, v6

    if-gt v5, v4, :cond_4

    .line 47
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 46
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Artwork response too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing artwork stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sample(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    const v0, 0x8000

    if-gt p0, v0, :cond_2

    if-gt p1, v0, :cond_2

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3d09000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int v2, p0, v1

    sub-int/2addr v2, v0

    .line 95
    div-int/2addr v2, v1

    const/16 v3, 0x400

    if-gt v2, v3, :cond_1

    add-int v2, p1, v1

    sub-int/2addr v2, v0

    div-int/2addr v2, v1

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Artwork dimensions rejected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
