.class final Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;
.super Ljava/lang/Object;
.source "MediaArtworkWork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/MediaArtworkWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Delivery"
.end annotation


# instance fields
.field final request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

.field result:Lcom/byd/launcher/stability/MediaArtworkWork$Result;


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkWork$Result;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    iput-object p2, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->result:Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    return-void
.end method


# virtual methods
.method discard()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->result:Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->result:Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    invoke-interface {v0}, Lcom/byd/launcher/stability/MediaArtworkWork$Result;->discard()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->access$100(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Lcom/byd/launcher/stability/MediaArtworkWork;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$600(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 135
    invoke-static {}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->access$100(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Lcom/byd/launcher/stability/MediaArtworkWork;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$900(Lcom/byd/launcher/stability/MediaArtworkWork;)Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;

    move-result-object v2

    if-ne v2, p0, :cond_2

    iget-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->request:Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    invoke-virtual {v2}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->current()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 138
    invoke-static {v1, v2}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$902(Lcom/byd/launcher/stability/MediaArtworkWork;Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;)Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;

    iget-object v3, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->result:Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    iput-object v2, p0, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->result:Lcom/byd/launcher/stability/MediaArtworkWork$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 141
    :try_start_1
    invoke-interface {v3}, Lcom/byd/launcher/stability/MediaArtworkWork$Result;->deliver()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v1, v2}, Lcom/byd/launcher/stability/MediaArtworkWork;->access$600(Lcom/byd/launcher/stability/MediaArtworkWork;Ljava/lang/RuntimeException;)V

    .line 142
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 137
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/byd/launcher/stability/MediaArtworkWork$Delivery;->discard()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
