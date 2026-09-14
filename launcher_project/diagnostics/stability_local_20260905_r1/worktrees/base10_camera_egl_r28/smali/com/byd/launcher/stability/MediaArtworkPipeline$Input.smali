.class public final Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;
.super Ljava/lang/Object;
.source "MediaArtworkPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/MediaArtworkPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field public final bitmap:Ljava/lang/Object;

.field public final fallbackBitmap:Ljava/lang/Object;

.field public final fallbackUri:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->bitmap:Ljava/lang/Object;

    invoke-static {p2}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->nonempty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->uri:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->fallbackBitmap:Ljava/lang/Object;

    invoke-static {p4}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->nonempty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->fallbackUri:Ljava/lang/String;

    return-void
.end method

.method private static nonempty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
