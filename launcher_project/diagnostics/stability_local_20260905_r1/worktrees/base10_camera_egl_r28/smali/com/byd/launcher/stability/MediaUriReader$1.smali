.class Lcom/byd/launcher/stability/MediaUriReader$1;
.super Ljava/lang/Object;
.source "MediaUriReader.java"

# interfaces
.implements Lcom/byd/launcher/stability/ArtworkInput$Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/MediaUriReader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
