.class final Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;
.super Ljava/lang/Object;
.source "QuickSettingsReadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/QuickSettingsReadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Read"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Runnable;

.field private final key:I

.field private final owner:Ljava/lang/Object;

.field private final subkey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->owner:Ljava/lang/Object;

    .line 68
    iput p2, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->key:I

    .line 69
    iput-object p3, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->subkey:Ljava/lang/Object;

    .line 70
    iput-object p4, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->delegate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->owner:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->key:I

    return p0
.end method

.method static synthetic access$300(Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->subkey:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->owner:Ljava/lang/Object;

    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/QuickSettingsReadExecutor$Read;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    const-string v1, "QuickSettingsMgr"

    const-string v2, "Background status read failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
