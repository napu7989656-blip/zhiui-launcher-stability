.class Lcom/byd/launcher/stability/BlurPipeline$1;
.super Ljava/lang/Object;
.source "BlurPipeline.java"

# interfaces
.implements Lcom/byd/launcher/stability/LatestVisualWork$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/BlurPipeline;-><init>(Lcom/byd/launcher/stability/BlurPipeline$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/BlurPipeline;

.field final synthetic val$host:Lcom/byd/launcher/stability/BlurPipeline$Host;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/BlurPipeline$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$1;->this$0:Lcom/byd/launcher/stability/BlurPipeline;

    iput-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$1;->val$host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$1;->val$host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/BlurPipeline$Host;->failed(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$1;->val$host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/byd/launcher/stability/BlurPipeline$Host;->post(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$1;->val$host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/BlurPipeline$Host;->remove(Ljava/lang/Runnable;)V

    return-void
.end method
