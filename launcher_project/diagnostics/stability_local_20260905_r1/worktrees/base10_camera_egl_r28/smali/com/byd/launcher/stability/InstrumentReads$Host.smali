.class public interface abstract Lcom/byd/launcher/stability/InstrumentReads$Host;
.super Ljava/lang/Object;
.source "InstrumentReads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/InstrumentReads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract cached()I
.end method

.method public abstract commit(I)V
.end method

.method public abstract delays()[I
.end method

.method public abstract failed(Ljava/lang/RuntimeException;)V
.end method

.method public abstract post(Ljava/lang/Runnable;J)Z
.end method

.method public abstract refresh()V
.end method

.method public abstract remove(Ljava/lang/Runnable;)V
.end method

.method public abstract retryState(IZ)V
.end method

.method public abstract root()Ljava/lang/Object;
.end method

.method public abstract usable(Ljava/lang/Object;)Z
.end method
