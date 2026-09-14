.class Lcom/byd/launcher/stability/InstrumentReads$1;
.super Ljava/lang/Object;
.source "InstrumentReads.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/launcher/stability/InstrumentReads;->applyCached(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/launcher/stability/InstrumentReads;

.field final synthetic val$capturedEpoch:Ljava/lang/Object;

.field final synthetic val$delegate:Ljava/lang/Runnable;

.field final synthetic val$root:Ljava/lang/Object;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)V
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

    .line 48
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    iput-object p2, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$capturedEpoch:Ljava/lang/Object;

    iput p3, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$value:I

    iput-object p4, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$root:Ljava/lang/Object;

    iput-object p5, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$delegate:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$100(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Runnable;

    move-result-object v1

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$102(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$200(Lcom/byd/launcher/stability/InstrumentReads;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$capturedEpoch:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$300(Lcom/byd/launcher/stability/InstrumentReads;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$value:I

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->cached()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    .line 55
    invoke-static {v1}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$root:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads$Host;->usable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->val$delegate:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    :try_start_2
    iget-object v2, p0, Lcom/byd/launcher/stability/InstrumentReads$1;->this$0:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$400(Lcom/byd/launcher/stability/InstrumentReads;)Lcom/byd/launcher/stability/InstrumentReads$Host;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/byd/launcher/stability/InstrumentReads$Host;->failed(Ljava/lang/RuntimeException;)V

    .line 57
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
