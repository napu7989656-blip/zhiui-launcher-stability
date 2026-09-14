.class public final Lcom/byd/launcher/stability/WallpaperDelivery;
.super Ljava/lang/Object;
.source "WallpaperDelivery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/WallpaperDelivery$Pending;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliver(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;

    invoke-direct {v0, p1}, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;-><init>(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 22
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->access$000(Lcom/byd/launcher/stability/WallpaperDelivery$Pending;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
