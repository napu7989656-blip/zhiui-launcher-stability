.class Lcom/byd/launcher/stability/BlurPipeline$4;
.super Ljava/lang/Object;
.source "BlurPipeline.java"

# interfaces
.implements Lcom/byd/launcher/stability/LatestVisualWork$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/BlurPipeline;->retry(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:J

.field final synthetic val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

.field final synthetic val$next:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Runnable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iput-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$next:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    .line 99
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/byd/launcher/stability/BlurPipeline$Host;->retry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$next:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-wide v3, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$delay:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/byd/launcher/stability/BlurPipeline;->access$300(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/Runnable;Lcom/byd/launcher/stability/BlurPipeline$Frame;J)V

    :cond_0
    return-void
.end method

.method public discard()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$4;->val$f:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    return-void
.end method
