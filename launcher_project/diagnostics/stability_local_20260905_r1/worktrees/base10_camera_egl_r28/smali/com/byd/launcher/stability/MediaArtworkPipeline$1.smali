.class Lcom/byd/launcher/stability/MediaArtworkPipeline$1;
.super Ljava/lang/Object;
.source "MediaArtworkPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/MediaArtworkPipeline;->update(Ljava/lang/Object;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

.field final synthetic val$author:Ljava/lang/String;

.field final synthetic val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

.field final synthetic val$snapshot:Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 50
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iput-object p2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    iput-object p3, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$snapshot:Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    iput-object p4, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$author:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-static {v0, v1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$000(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$snapshot:Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    iget-object v0, v0, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->bitmap:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$snapshot:Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    invoke-static {v0, v1, v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$100(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 55
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$snapshot:Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    iget-object v1, v1, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->uri:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$000(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$200(Lcom/byd/launcher/stability/MediaArtworkPipeline;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-interface {v0, v1, v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->pause(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-static {v0, v1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$000(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$snapshot:Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    invoke-static {v0, v1, v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$100(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 57
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 61
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$000(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$200(Lcom/byd/launcher/stability/MediaArtworkPipeline;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->scale(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 63
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->this$0:Lcom/byd/launcher/stability/MediaArtworkPipeline;

    iget-object v3, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;->val$author:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v0, v3, v4, v5}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->access$300(Lcom/byd/launcher/stability/MediaArtworkPipeline;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->post(Lcom/byd/launcher/stability/MediaArtworkWork$Result;)Z

    :cond_5
    :goto_1
    return-void
.end method
