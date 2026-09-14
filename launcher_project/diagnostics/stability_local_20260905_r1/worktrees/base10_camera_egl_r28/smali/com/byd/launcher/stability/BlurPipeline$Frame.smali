.class final Lcom/byd/launcher/stability/BlurPipeline$Frame;
.super Ljava/lang/Object;
.source "BlurPipeline.java"

# interfaces
.implements Lcom/byd/launcher/stability/LatestVisualWork$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/BlurPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Frame"
.end annotation


# instance fields
.field apply:Ljava/lang/Runnable;

.field blurred:Ljava/lang/Object;

.field final children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

.field count:I

.field final owned:[Ljava/lang/Object;

.field final owner:Lcom/byd/launcher/stability/BlurPipeline;

.field posted:Z

.field final request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

.field final service:Ljava/lang/Object;

.field source:Ljava/lang/Object;

.field transferred:Z


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/LatestVisualWork$Request;Ljava/lang/Object;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owned:[Ljava/lang/Object;

    const/4 v0, 0x3

    .line 110
    new-array v0, v0, [Lcom/byd/launcher/stability/BlurPipeline$Child;

    iput-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    .line 112
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    iput-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    iput-object p3, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->service:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method cancelChildren()V
    .locals 4

    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/byd/launcher/stability/BlurPipeline$Child;->cancel()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method current()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$400(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Frame;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/byd/launcher/stability/BlurPipeline$Host;->service()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->service:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deliver()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->source:Ljava/lang/Object;

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->blurred:Ljava/lang/Object;

    iget-object v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->apply:Ljava/lang/Runnable;

    const/4 v3, 0x1

    .line 131
    iput-boolean v3, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->transferred:Z

    .line 132
    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v3}, Lcom/byd/launcher/stability/BlurPipeline;->access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/byd/launcher/stability/BlurPipeline$Host;->commit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->discard()V

    throw v0
.end method

.method public discard()V
    .locals 4

    .line 122
    iget-boolean v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->transferred:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->count:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owned:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->release(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 123
    :goto_1
    iget v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->count:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owned:[Ljava/lang/Object;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_1
    iput v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->count:I

    iput-object v3, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->source:Ljava/lang/Object;

    iput-object v3, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->blurred:Ljava/lang/Object;

    iput-object v3, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->apply:Ljava/lang/Runnable;

    return-void
.end method

.method postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z
    .locals 3

    if-ltz p3, :cond_5

    .line 137
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    array-length v0, v0

    if-ge p3, v0, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Child;->cancel()V

    .line 140
    :cond_1
    new-instance v0, Lcom/byd/launcher/stability/BlurPipeline$Child;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byd/launcher/stability/BlurPipeline$Child;-><init>(Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Object;Ljava/lang/Runnable;I)V

    iget-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    aput-object v0, p2, p3

    .line 141
    :try_start_0
    iget-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {p2}, Lcom/byd/launcher/stability/BlurPipeline;->access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/byd/launcher/stability/BlurPipeline$Host;->postChild(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {p2, p1}, Lcom/byd/launcher/stability/BlurPipeline;->access$500(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/RuntimeException;)V

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    aget-object p2, p1, p3

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    aput-object v2, p1, p3

    :cond_3
    iput-object v2, v0, Lcom/byd/launcher/stability/BlurPipeline$Child;->action:Ljava/lang/Runnable;

    :cond_4
    :goto_0
    return v1

    .line 137
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slot"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method release(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->source:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/BlurPipeline$Host;->release(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0, p1}, Lcom/byd/launcher/stability/BlurPipeline;->access$500(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method retain(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 115
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->source:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->count:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owned:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owned:[Ljava/lang/Object;

    array-length v2, v0

    if-eq v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 118
    iput v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->count:I

    aput-object p1, v0, v1

    return-void

    .line 117
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected blur allocation count"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
