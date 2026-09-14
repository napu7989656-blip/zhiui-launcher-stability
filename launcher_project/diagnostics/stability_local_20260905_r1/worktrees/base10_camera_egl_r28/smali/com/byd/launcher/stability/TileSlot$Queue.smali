.class public interface abstract Lcom/byd/launcher/stability/TileSlot$Queue;
.super Ljava/lang/Object;
.source "TileSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/TileSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Queue"
.end annotation


# virtual methods
.method public abstract failed(Ljava/lang/RuntimeException;)V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract remove(Ljava/lang/Runnable;)V
.end method
