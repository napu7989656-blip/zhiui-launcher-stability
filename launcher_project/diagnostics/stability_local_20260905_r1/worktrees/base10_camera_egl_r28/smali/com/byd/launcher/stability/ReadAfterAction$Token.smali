.class public final Lcom/byd/launcher/stability/ReadAfterAction$Token;
.super Ljava/lang/Object;
.source "ReadAfterAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/ReadAfterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# instance fields
.field private final gate:Lcom/byd/launcher/stability/ReadAfterAction;

.field private final started:J


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/ReadAfterAction;J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/stability/ReadAfterAction$Token;->gate:Lcom/byd/launcher/stability/ReadAfterAction;

    iput-wide p2, p0, Lcom/byd/launcher/stability/ReadAfterAction$Token;->started:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/ReadAfterAction;JLcom/byd/launcher/stability/ReadAfterAction$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/byd/launcher/stability/ReadAfterAction$Token;-><init>(Lcom/byd/launcher/stability/ReadAfterAction;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/ReadAfterAction$Token;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/byd/launcher/stability/ReadAfterAction$Token;->started:J

    return-wide v0
.end method


# virtual methods
.method public finish()Z
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/byd/launcher/stability/ReadAfterAction$Token;->gate:Lcom/byd/launcher/stability/ReadAfterAction;

    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/ReadAfterAction$Token;->gate:Lcom/byd/launcher/stability/ReadAfterAction;

    invoke-static {v1}, Lcom/byd/launcher/stability/ReadAfterAction;->access$200(Lcom/byd/launcher/stability/ReadAfterAction;)Lcom/byd/launcher/stability/ReadAfterAction$Token;

    move-result-object v1

    if-eq v1, p0, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/byd/launcher/stability/ReadAfterAction$Token;->gate:Lcom/byd/launcher/stability/ReadAfterAction;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/byd/launcher/stability/ReadAfterAction;->access$202(Lcom/byd/launcher/stability/ReadAfterAction;Lcom/byd/launcher/stability/ReadAfterAction$Token;)Lcom/byd/launcher/stability/ReadAfterAction$Token;

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
