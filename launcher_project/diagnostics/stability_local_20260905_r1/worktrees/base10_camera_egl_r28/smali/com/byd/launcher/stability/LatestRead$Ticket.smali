.class public final Lcom/byd/launcher/stability/LatestRead$Ticket;
.super Ljava/lang/Object;
.source "LatestRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/LatestRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ticket"
.end annotation


# instance fields
.field private final identity:Ljava/lang/Object;

.field private final state:Lcom/byd/launcher/stability/LatestRead;


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/LatestRead;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/byd/launcher/stability/LatestRead$Ticket;->state:Lcom/byd/launcher/stability/LatestRead;

    .line 20
    iput-object p2, p0, Lcom/byd/launcher/stability/LatestRead$Ticket;->identity:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/LatestRead;Ljava/lang/Object;Lcom/byd/launcher/stability/LatestRead$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/byd/launcher/stability/LatestRead$Ticket;-><init>(Lcom/byd/launcher/stability/LatestRead;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isCurrent()Z
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/byd/launcher/stability/LatestRead$Ticket;->state:Lcom/byd/launcher/stability/LatestRead;

    invoke-static {v0}, Lcom/byd/launcher/stability/LatestRead;->access$100(Lcom/byd/launcher/stability/LatestRead;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/launcher/stability/LatestRead$Ticket;->identity:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
