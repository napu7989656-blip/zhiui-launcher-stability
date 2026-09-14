.class Lcom/byd/launcher/stability/BlurPipeline$2;
.super Ljava/lang/Object;
.source "BlurPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/BlurPipeline;->enqueueTrigger(Ljava/lang/Runnable;Lcom/byd/launcher/stability/BlurPipeline$Frame;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/BlurPipeline;

.field final synthetic val$expected:Lcom/byd/launcher/stability/BlurPipeline$Frame;

.field final synthetic val$next:Ljava/lang/Runnable;


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

    .line 55
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->this$0:Lcom/byd/launcher/stability/BlurPipeline;

    iput-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->val$expected:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iput-object p3, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->val$next:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->this$0:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$000(Lcom/byd/launcher/stability/BlurPipeline;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->this$0:Lcom/byd/launcher/stability/BlurPipeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byd/launcher/stability/BlurPipeline;->access$002(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 59
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->this$0:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline;->current()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->val$expected:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$2;->val$next:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
