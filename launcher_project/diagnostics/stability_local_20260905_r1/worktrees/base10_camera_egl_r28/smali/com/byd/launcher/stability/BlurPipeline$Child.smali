.class final Lcom/byd/launcher/stability/BlurPipeline$Child;
.super Ljava/lang/Object;
.source "BlurPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/BlurPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Child"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field final frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

.field final queue:Ljava/lang/Object;

.field final slot:I


# direct methods
.method constructor <init>(Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Object;Ljava/lang/Runnable;I)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iput-object p2, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->queue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->action:Ljava/lang/Runnable;

    iput p4, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->slot:I

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->action:Ljava/lang/Runnable;

    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->queue:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Lcom/byd/launcher/stability/BlurPipeline$Host;->removeChild(Ljava/lang/Object;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v1, v1, Lcom/byd/launcher/stability/BlurPipeline$Frame;->owner:Lcom/byd/launcher/stability/BlurPipeline;

    invoke-static {v1, v0}, Lcom/byd/launcher/stability/BlurPipeline;->access$500(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    iget v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->slot:I

    aget-object v0, v0, v1

    if-eq v0, p0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->children:[Lcom/byd/launcher/stability/BlurPipeline$Child;

    iget v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->slot:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->action:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline$Child;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    invoke-virtual {v1}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
