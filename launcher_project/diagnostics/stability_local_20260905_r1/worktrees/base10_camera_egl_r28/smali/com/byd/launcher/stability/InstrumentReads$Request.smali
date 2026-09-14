.class public final Lcom/byd/launcher/stability/InstrumentReads$Request;
.super Ljava/lang/Object;
.source "InstrumentReads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/stability/InstrumentReads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private final allowRetry:Z

.field private completed:Z

.field private final epoch:Ljava/lang/Object;

.field private final root:Ljava/lang/Object;

.field private final state:Lcom/byd/launcher/stability/InstrumentReads;


# direct methods
.method private constructor <init>(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->state:Lcom/byd/launcher/stability/InstrumentReads;

    iput-object p2, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->epoch:Ljava/lang/Object;

    iput-object p3, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->root:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->allowRetry:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Object;Ljava/lang/Object;ZLcom/byd/launcher/stability/InstrumentReads$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byd/launcher/stability/InstrumentReads$Request;-><init>(Lcom/byd/launcher/stability/InstrumentReads;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->allowRetry:Z

    return p0
.end method

.method static synthetic access$500(Lcom/byd/launcher/stability/InstrumentReads$Request;)Ljava/lang/Object;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->epoch:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/byd/launcher/stability/InstrumentReads$Request;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->completed:Z

    return p0
.end method

.method static synthetic access$602(Lcom/byd/launcher/stability/InstrumentReads$Request;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->completed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/byd/launcher/stability/InstrumentReads$Request;)Ljava/lang/Object;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->root:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public complete(ILjava/lang/Runnable;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->state:Lcom/byd/launcher/stability/InstrumentReads;

    invoke-static {v0, p0, p1, p2}, Lcom/byd/launcher/stability/InstrumentReads;->access$1500(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V

    return-void
.end method

.method public invalid()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReads$Request;->state:Lcom/byd/launcher/stability/InstrumentReads;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->access$1500(Lcom/byd/launcher/stability/InstrumentReads;Lcom/byd/launcher/stability/InstrumentReads$Request;ILjava/lang/Runnable;)V

    return-void
.end method
