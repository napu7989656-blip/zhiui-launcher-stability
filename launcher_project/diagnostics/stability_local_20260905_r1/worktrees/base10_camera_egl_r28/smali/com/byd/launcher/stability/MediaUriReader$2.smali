.class Lcom/byd/launcher/stability/MediaUriReader$2;
.super Ljava/lang/Object;
.source "MediaUriReader.java"

# interfaces
.implements Lcom/byd/launcher/stability/ArtworkInput$Gate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/MediaUriReader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaUriReader$2;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public current()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaUriReader$2;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
