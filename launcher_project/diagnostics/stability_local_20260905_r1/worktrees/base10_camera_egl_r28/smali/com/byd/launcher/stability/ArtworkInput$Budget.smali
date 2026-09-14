.class public final Lcom/byd/launcher/stability/ArtworkInput$Budget;
.super Ljava/lang/Object;
.source "ArtworkInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/ArtworkInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Budget"
.end annotation


# instance fields
.field private final clock:Lcom/byd/launcher/stability/ArtworkInput$Clock;

.field private final gate:Lcom/byd/launcher/stability/ArtworkInput$Gate;

.field private final start:J


# direct methods
.method public constructor <init>(Lcom/byd/launcher/stability/ArtworkInput$Clock;Lcom/byd/launcher/stability/ArtworkInput$Gate;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/byd/launcher/stability/ArtworkInput$Budget;->clock:Lcom/byd/launcher/stability/ArtworkInput$Clock;

    iput-object p2, p0, Lcom/byd/launcher/stability/ArtworkInput$Budget;->gate:Lcom/byd/launcher/stability/ArtworkInput$Gate;

    invoke-interface {p1}, Lcom/byd/launcher/stability/ArtworkInput$Clock;->millis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byd/launcher/stability/ArtworkInput$Budget;->start:J

    return-void
.end method


# virtual methods
.method public remaining()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/byd/launcher/stability/ArtworkInput$Budget;->clock:Lcom/byd/launcher/stability/ArtworkInput$Clock;

    invoke-interface {v0}, Lcom/byd/launcher/stability/ArtworkInput$Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byd/launcher/stability/ArtworkInput$Budget;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    sub-long/2addr v2, v0

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/ArtworkInput$Budget;->gate:Lcom/byd/launcher/stability/ArtworkInput$Gate;

    invoke-interface {v0}, Lcom/byd/launcher/stability/ArtworkInput$Gate;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x7d0

    .line 28
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 27
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Artwork request expired"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
