.class public interface abstract Lcom/byd/launcher/stability/BlurPipeline$Host;
.super Ljava/lang/Object;
.source "BlurPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/BlurPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract commit(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method public abstract current()Z
.end method

.method public abstract failed(Ljava/lang/RuntimeException;)V
.end method

.method public abstract post(Ljava/lang/Runnable;J)Z
.end method

.method public abstract postChild(Ljava/lang/Object;Ljava/lang/Runnable;)Z
.end method

.method public abstract release(Ljava/lang/Object;)V
.end method

.method public abstract remove(Ljava/lang/Runnable;)V
.end method

.method public abstract removeChild(Ljava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method public abstract retry()Z
.end method

.method public abstract service()Ljava/lang/Object;
.end method
