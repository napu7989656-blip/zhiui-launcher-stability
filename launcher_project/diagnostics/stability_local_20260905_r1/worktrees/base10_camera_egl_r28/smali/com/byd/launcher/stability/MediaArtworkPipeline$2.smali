.class Lcom/byd/launcher/stability/MediaArtworkPipeline$2;
.super Ljava/lang/Object;
.source "MediaArtworkPipeline.java"

# interfaces
.implements Lcom/byd/launcher/stability/MediaArtworkWork$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/MediaArtworkPipeline;->result(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$bitmap:Ljava/lang/Object;

.field final synthetic val$replaceCache:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/MediaArtworkPipeline;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iput-object p2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$bitmap:Ljava/lang/Object;

    iput-object p3, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$artist:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$replaceCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$200(Lcom/byd/launcher/stability/MediaArtworkPipeline;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$bitmap:Ljava/lang/Object;

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$artist:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;->val$replaceCache:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->commit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public discard()V
    .locals 0

    return-void
.end method
