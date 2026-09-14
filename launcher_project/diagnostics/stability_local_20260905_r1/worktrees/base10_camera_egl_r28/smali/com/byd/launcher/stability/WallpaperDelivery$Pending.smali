.class final Lcom/byd/launcher/stability/WallpaperDelivery$Pending;
.super Ljava/lang/Object;
.source "WallpaperDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/WallpaperDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pending"
.end annotation


# instance fields
.field private final finished:Ljava/util/concurrent/CountDownLatch;

.field private final result:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->finished:Ljava/util/concurrent/CountDownLatch;

    .line 33
    iput-object p1, p0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->result:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/byd/launcher/stability/WallpaperDelivery$Pending;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->finished:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->result:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/byd/launcher/stability/WallpaperDelivery$Pending;->finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
