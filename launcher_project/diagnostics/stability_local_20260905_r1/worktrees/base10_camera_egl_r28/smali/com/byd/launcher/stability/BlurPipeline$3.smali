.class Lcom/byd/launcher/stability/BlurPipeline$3;
.super Ljava/lang/Object;
.source "BlurPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/BlurPipeline;->execute(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/BlurPipeline;

.field final synthetic val$algorithm:Ljava/lang/Runnable;

.field final synthetic val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 72
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->this$0:Lcom/byd/launcher/stability/BlurPipeline;

    iput-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iput-object p3, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$algorithm:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$algorithm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-boolean v0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->posted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-boolean v1, v1, Lcom/byd/launcher/stability/BlurPipeline$Frame;->posted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$3;->val$next:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v1}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    :cond_2
    throw v0
.end method
