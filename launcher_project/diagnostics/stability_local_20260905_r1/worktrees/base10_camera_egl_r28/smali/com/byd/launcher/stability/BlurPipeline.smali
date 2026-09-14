.class public final Lcom/byd/launcher/stability/BlurPipeline;
.super Ljava/lang/Object;
.source "BlurPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/BlurPipeline$Frame;,
        Lcom/byd/launcher/stability/BlurPipeline$Host;,
        Lcom/byd/launcher/stability/BlurPipeline$Child;
    }
.end annotation


# static fields
.field private static final UI:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/byd/launcher/stability/BlurPipeline$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORK:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/byd/launcher/stability/BlurPipeline$Frame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile closed:Z

.field private volatile frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

.field private final host:Lcom/byd/launcher/stability/BlurPipeline$Host;

.field private trigger:Ljava/lang/Runnable;

.field private final work:Lcom/byd/launcher/stability/LatestVisualWork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/byd/launcher/stability/BlurPipeline;->UI:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/byd/launcher/stability/BlurPipeline$Host;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    .line 30
    new-instance v0, Lcom/byd/launcher/stability/LatestVisualWork;

    new-instance v1, Lcom/byd/launcher/stability/BlurPipeline$1;

    invoke-direct {v1, p0, p1}, Lcom/byd/launcher/stability/BlurPipeline$1;-><init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/BlurPipeline$Host;)V

    invoke-direct {v0, v1}, Lcom/byd/launcher/stability/LatestVisualWork;-><init>(Lcom/byd/launcher/stability/LatestVisualWork$Host;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->work:Lcom/byd/launcher/stability/LatestVisualWork;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/byd/launcher/stability/BlurPipeline;)Ljava/lang/Runnable;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 7
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Host;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    return-object p0
.end method

.method static synthetic access$300(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/Runnable;Lcom/byd/launcher/stability/BlurPipeline$Frame;J)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byd/launcher/stability/BlurPipeline;->enqueueTrigger(Ljava/lang/Runnable;Lcom/byd/launcher/stability/BlurPipeline$Frame;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/byd/launcher/stability/BlurPipeline;)Lcom/byd/launcher/stability/BlurPipeline$Frame;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/byd/launcher/stability/BlurPipeline;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    return-object p0
.end method

.method static synthetic access$500(Lcom/byd/launcher/stability/BlurPipeline;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/BlurPipeline;->report(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 7
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->UI:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static blurred(Ljava/lang/Object;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->blurred:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->retain(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private cancelFrame()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->cancelChildren()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->work:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestVisualWork;->invalidate()V

    return-void
.end method

.method private cancelTrigger()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {v1, v0}, Lcom/byd/launcher/stability/BlurPipeline$Host;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/byd/launcher/stability/BlurPipeline;->report(Ljava/lang/RuntimeException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static deliveryCurrent()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->UI:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private enqueueTrigger(Ljava/lang/Runnable;Lcom/byd/launcher/stability/BlurPipeline$Frame;J)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelTrigger()V

    .line 55
    new-instance v0, Lcom/byd/launcher/stability/BlurPipeline$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/byd/launcher/stability/BlurPipeline$2;-><init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Runnable;)V

    .line 62
    iput-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {p1, v0, p3, p4}, Lcom/byd/launcher/stability/BlurPipeline$Host;->post(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/BlurPipeline;->report(Ljava/lang/RuntimeException;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/byd/launcher/stability/BlurPipeline;->trigger:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public static postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z
    .locals 1

    .line 104
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->UI:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static publish(Ljava/lang/Runnable;)V
    .locals 1

    .line 89
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iput-object p0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->apply:Ljava/lang/Runnable;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->posted:Z

    iget-object p0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    invoke-virtual {p0, v0}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->post(Lcom/byd/launcher/stability/LatestVisualWork$Result;)Z

    return-void
.end method

.method private report(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/BlurPipeline$Host;->failed(Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static retain(Ljava/lang/Object;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->retain(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static retry(Ljava/lang/Runnable;J)V
    .locals 3

    .line 93
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 94
    iput-boolean v1, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->posted:Z

    .line 95
    iget-object v1, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->request:Lcom/byd/launcher/stability/LatestVisualWork$Request;

    new-instance v2, Lcom/byd/launcher/stability/BlurPipeline$4;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/byd/launcher/stability/BlurPipeline$4;-><init>(Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Runnable;J)V

    invoke-virtual {v1, v2}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->post(Lcom/byd/launcher/stability/LatestVisualWork$Result;)Z

    return-void
.end method

.method public static source(Ljava/lang/Object;)V
    .locals 1

    .line 84
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;->source:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static unused(Ljava/lang/Object;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->release(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static workerCurrent()Z
    .locals 1

    .line 82
    sget-object v0, Lcom/byd/launcher/stability/BlurPipeline;->WORK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byd/launcher/stability/BlurPipeline$Frame;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->closed:Z

    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelTrigger()V

    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelFrame()V

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->work:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestVisualWork;->close()V

    return-void
.end method

.method public current()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {v0}, Lcom/byd/launcher/stability/BlurPipeline$Host;->current()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)Z
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelTrigger()V

    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelFrame()V

    .line 68
    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline;->current()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/stability/BlurPipeline;->work:Lcom/byd/launcher/stability/LatestVisualWork;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestVisualWork;->begin()Lcom/byd/launcher/stability/LatestVisualWork$Request;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 71
    :cond_1
    new-instance v1, Lcom/byd/launcher/stability/BlurPipeline$Frame;

    iget-object v2, p0, Lcom/byd/launcher/stability/BlurPipeline;->host:Lcom/byd/launcher/stability/BlurPipeline$Host;

    invoke-interface {v2}, Lcom/byd/launcher/stability/BlurPipeline$Host;->service()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/byd/launcher/stability/BlurPipeline$Frame;-><init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/LatestVisualWork$Request;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/byd/launcher/stability/BlurPipeline;->frame:Lcom/byd/launcher/stability/BlurPipeline$Frame;

    .line 72
    new-instance v2, Lcom/byd/launcher/stability/BlurPipeline$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/byd/launcher/stability/BlurPipeline$3;-><init>(Lcom/byd/launcher/stability/BlurPipeline;Lcom/byd/launcher/stability/BlurPipeline$Frame;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/byd/launcher/stability/LatestVisualWork$Request;->execute(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public schedule(Ljava/lang/Runnable;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelTrigger()V

    invoke-direct {p0}, Lcom/byd/launcher/stability/BlurPipeline;->cancelFrame()V

    .line 50
    invoke-virtual {p0}, Lcom/byd/launcher/stability/BlurPipeline;->current()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/byd/launcher/stability/BlurPipeline;->enqueueTrigger(Ljava/lang/Runnable;Lcom/byd/launcher/stability/BlurPipeline$Frame;J)V

    :cond_1
    :goto_0
    return-void
.end method
