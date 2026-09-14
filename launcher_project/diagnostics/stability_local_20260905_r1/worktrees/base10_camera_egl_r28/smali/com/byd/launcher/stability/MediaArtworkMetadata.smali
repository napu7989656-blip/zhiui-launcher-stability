.class public final Lcom/byd/launcher/stability/MediaArtworkMetadata;
.super Ljava/lang/Object;
.source "MediaArtworkMetadata.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/media/MediaMetadata;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 12
    new-instance p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 13
    :cond_0
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 14
    const-string v1, "android.media.metadata.ART"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 15
    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 16
    new-instance p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    invoke-direct {p0, v1, v0, v0, v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 17
    :cond_3
    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 18
    const-string v1, "android.media.metadata.ART_URI"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    .line 19
    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    if-nez p0, :cond_6

    move-object v2, v0

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    if-nez p0, :cond_7

    move-object p0, v0

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object p0

    .line 23
    :goto_1
    new-instance v3, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    if-nez p0, :cond_8

    move-object p0, v0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method
