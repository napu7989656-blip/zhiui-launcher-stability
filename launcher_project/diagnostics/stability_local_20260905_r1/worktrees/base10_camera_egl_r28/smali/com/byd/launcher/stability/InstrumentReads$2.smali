.class Lcom/byd/launcher/stability/InstrumentReads$2;
.super Ljava/lang/Object;
.source "InstrumentReads.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/InstrumentReads;->publish(Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/InstrumentReads;

.field final synthetic val$delegate:Ljava/lang/Runnable;

.field final synthetic val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 69
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    iput-object p2, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    iput p3, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$step:I

    iput-object p4, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$delegate:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$700(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Runnable;

    move-result-object v1

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$702(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$800(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads$Request;->access$900(Lcom/byd/launcher/stability/InstrumentReads$Request;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->usable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$step:I

    if-ltz v1, :cond_2

    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$delegate:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$1000(Lcom/byd/launcher/stability/InstrumentReads;)V

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$1102(Lcom/byd/launcher/stability/InstrumentReads;I)I

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    invoke-interface {v1, v2, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->retryState(IZ)V

    .line 78
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    iget v2, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$step:I

    invoke-interface {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->commit(I)V

    .line 79
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$delegate:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads$Request;->access$1200(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->val$request:Lcom/byd/launcher/stability/InstrumentReads$Request;

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$1300(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 81
    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$2;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->failed(Ljava/lang/RuntimeException;)V

    .line 82
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
