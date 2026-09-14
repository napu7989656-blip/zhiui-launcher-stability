.class public final Lcom/byd/launcher/stability/TileBatch;
.super Ljava/lang/Object;
.source "TileBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/TileBatch$Entry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lcom/byd/launcher/stability/TileBatch$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final epoch:Ljava/lang/Object;

.field public final owner:Ljava/lang/Object;

.field public final queue:Lcom/byd/launcher/stability/TileSlot$Queue;

.field public final root:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/byd/launcher/stability/TileSlot$Queue;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->entries:Ljava/util/IdentityHashMap;

    .line 10
    iput-object p1, p0, Lcom/byd/launcher/stability/TileBatch;->owner:Ljava/lang/Object;

    iput-object p2, p0, Lcom/byd/launcher/stability/TileBatch;->root:Ljava/lang/Object;

    iput-object p3, p0, Lcom/byd/launcher/stability/TileBatch;->epoch:Ljava/lang/Object;

    iput-object p4, p0, Lcom/byd/launcher/stability/TileBatch;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;

    return-void
.end method


# virtual methods
.method public capture(Ljava/lang/Object;Lcom/byd/launcher/stability/TileSlot;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->entries:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/byd/launcher/stability/TileBatch$Entry;

    invoke-virtual {p2}, Lcom/byd/launcher/stability/TileSlot;->begin()Lcom/byd/launcher/stability/TileSlot$Ticket;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/byd/launcher/stability/TileBatch$Entry;-><init>(Lcom/byd/launcher/stability/TileSlot$Ticket;Ljava/lang/Object;Ljava/lang/Object;Lcom/byd/launcher/stability/TileBatch$1;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public current(Ljava/lang/Object;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->entries:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byd/launcher/stability/TileBatch$Entry;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/byd/launcher/stability/TileBatch$Entry;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    invoke-virtual {p1}, Lcom/byd/launcher/stability/TileSlot$Ticket;->isCurrent()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entry(Ljava/lang/Object;)Lcom/byd/launcher/stability/TileBatch$Entry;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->entries:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byd/launcher/stability/TileBatch$Entry;

    return-object p1
.end method

.method public post(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->entries:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byd/launcher/stability/TileBatch$Entry;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/byd/launcher/stability/TileBatch$Entry;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    iget-object v0, p0, Lcom/byd/launcher/stability/TileBatch;->queue:Lcom/byd/launcher/stability/TileSlot$Queue;

    invoke-virtual {p1, v0, p2}, Lcom/byd/launcher/stability/TileSlot$Ticket;->post(Lcom/byd/launcher/stability/TileSlot$Queue;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
