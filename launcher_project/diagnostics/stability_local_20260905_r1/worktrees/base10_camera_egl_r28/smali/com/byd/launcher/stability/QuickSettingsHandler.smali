.class public final Lcom/byd/launcher/stability/QuickSettingsHandler;
.super Landroid/os/Handler;
.source "QuickSettingsHandler.java"


# instance fields
.field private final owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object p1, p0, Lcom/byd/launcher/stability/QuickSettingsHandler;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/byd/launcher/stability/QuickSettingsHandler;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/byd/launcher/stability/QuickSettingsHandler;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    .line 21
    iget-object p2, p0, Lcom/byd/launcher/stability/QuickSettingsHandler;->owner:Ljava/lang/Object;

    invoke-static {p2}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/byd/launcher/stability/QuickSettingsHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return v1

    :cond_1
    return p1
.end method
