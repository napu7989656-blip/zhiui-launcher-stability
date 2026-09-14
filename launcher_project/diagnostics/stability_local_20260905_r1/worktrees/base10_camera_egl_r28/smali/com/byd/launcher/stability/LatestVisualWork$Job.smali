.class final Lcom/byd/launcher/stability/LatestVisualWork$Job;
.super Ljava/lang/Object;
.source "LatestVisualWork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/LatestVisualWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Job"
.end annotation


# instance fields
.field final request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

.field final work:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/LatestVisualWork$Request;Ljava/lang/Runnable;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Job;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    iput-object p2, p0, Lcom/byd/launcher/stability/LatestVisualWork$Job;->work:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/byd/launcher/stability/LatestVisualWork$Job;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->current()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/LatestVisualWork$Job;->work:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/byd/launcher/stability/LatestVisualWork$Job;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-static {v1}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->access$100(Lcom/byd/launcher/stability/LatestVisualWork$Request;)Lcom/byd/launcher/stability/LatestVisualWork;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byd/launcher/stability/LatestVisualWork;->access$900(Lcom/byd/launcher/stability/LatestVisualWork;Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method
