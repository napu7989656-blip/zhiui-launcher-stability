.class public final Lcom/byd/launcher/stability/TileBatch$Entry;
.super Ljava/lang/Object;
.source "TileBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/TileBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final action:Ljava/lang/Object;

.field public final frame:Ljava/lang/Object;

.field public final ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/TileSlot$Ticket;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/byd/launcher/stability/TileBatch$Entry;->ticket:Lcom/byd/launcher/stability/TileSlot$Ticket;

    iput-object p2, p0, Lcom/byd/launcher/stability/TileBatch$Entry;->frame:Ljava/lang/Object;

    iput-object p3, p0, Lcom/byd/launcher/stability/TileBatch$Entry;->action:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/TileSlot$Ticket;Ljava/lang/Object;Ljava/lang/Object;Lcom/byd/launcher/stability/TileBatch$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/byd/launcher/stability/TileBatch$Entry;-><init>(Lcom/byd/launcher/stability/TileSlot$Ticket;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
