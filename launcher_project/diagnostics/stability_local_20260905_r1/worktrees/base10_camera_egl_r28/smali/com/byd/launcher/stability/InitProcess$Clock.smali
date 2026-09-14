.class interface abstract Lcom/byd/launcher/stability/InitProcess$Clock;
.super Ljava/lang/Object;
.source "InitProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/InitProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Clock"
.end annotation


# virtual methods
.method public abstract nanoTime()J
.end method

.method public abstract sleep()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
