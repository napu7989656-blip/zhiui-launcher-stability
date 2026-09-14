.class Lcom/byd/launcher/stability/InstrumentReads$3;
.super Ljava/lang/Object;
.source "InstrumentReads.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/InstrumentReads;->scheduleRetry(Lcom/byd/launcher/stability/InstrumentReads$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/InstrumentReads;

.field final synthetic val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)V
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

    .line 91
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    iput-object p2, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$1400(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Runnable;

    move-result-object v1

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$1402(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$1100(Lcom/byd/launcher/stability/InstrumentReads;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/byd/launcher/stability/InstrumentReads$Host;->retryState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$800(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads$Request;->access$900(Lcom/byd/launcher/stability/InstrumentReads$Request;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->usable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->refresh()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 97
    :try_start_2
    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$3;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->failed(Ljava/lang/RuntimeException;)V

    .line 98
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
