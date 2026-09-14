.class public final Lcom/byd/launcher/stability/MediaArtworkPipeline;
.super Ljava/lang/Object;
.source "MediaArtworkPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;,
        Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;
    }
.end annotation


# instance fields
.field private final host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

.field private final work:Lcom/byd/launcher/stability/MediaArtworkWork;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    new-instance v0, Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-direct {v0, p1}, Lcom/byd/launcher/stability/MediaArtworkWork;-><init>(Lcom/byd/launcher/stability/MediaArtworkWork$Host;)V

    iput-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->work:Lcom/byd/launcher/stability/MediaArtworkWork;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->valid(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->read(Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/byd/launcher/stability/MediaArtworkPipeline;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    return-object p0
.end method

.method static synthetic access$300(Lcom/byd/launcher/stability/MediaArtworkPipeline;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->result(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    move-result-object p0

    return-object p0
.end method

.method private failed(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    invoke-interface {v0, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->failed(Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private read(Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;)Ljava/lang/Object;
    .locals 3

    .line 73
    iget-object v0, p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->valid(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    iget-object v2, p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->uri:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 74
    :goto_0
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->valid(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 76
    :cond_2
    iget-object v1, p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->fallbackBitmap:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->fallbackBitmap:Ljava/lang/Object;

    return-object p1

    .line 77
    :cond_3
    iget-object v1, p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->fallbackUri:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->valid(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    iget-object p2, p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->fallbackUri:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private result(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;
    .locals 7

    .line 81
    new-instance v6, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byd/launcher/stability/MediaArtworkPipeline$2;-><init>(Lcom/byd/launcher/stability/MediaArtworkPipeline;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method private valid(Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Z
    .locals 1

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->current()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->work:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkWork;->close()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->work:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkWork;->invalidate()V

    return-void
.end method

.method public update(Ljava/lang/Object;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->work:Lcom/byd/launcher/stability/MediaArtworkWork;

    invoke-virtual {v0, p1}, Lcom/byd/launcher/stability/MediaArtworkWork;->begin(Ljava/lang/Object;)Lcom/byd/launcher/stability/MediaArtworkWork$Request;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    const-string v0, ""

    if-nez p3, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, p3

    :goto_0
    if-nez p4, :cond_2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p4

    :goto_1
    if-nez p2, :cond_3

    .line 44
    new-instance p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3, p3}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object v4, p2

    .line 46
    :try_start_0
    iget-object p2, v4, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->bitmap:Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    iget-object p3, v4, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->bitmap:Ljava/lang/Object;

    invoke-interface {p2, p3}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->small(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 47
    iget-object p2, v4, Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;->bitmap:Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-direct {p0, p2, v5, v6, p3}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->result(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->post(Lcom/byd/launcher/stability/MediaArtworkWork$Result;)Z

    return-void

    .line 49
    :cond_4
    iget-object p2, p0, Lcom/byd/launcher/stability/MediaArtworkPipeline;->host:Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;

    invoke-interface {p2}, Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;->cached()Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p2, v5, v6, p3}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->result(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byd/launcher/stability/MediaArtworkWork$Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->post(Lcom/byd/launcher/stability/MediaArtworkWork$Result;)Z

    .line 50
    new-instance p2, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/byd/launcher/stability/MediaArtworkPipeline$1;-><init>(Lcom/byd/launcher/stability/MediaArtworkPipeline;Lcom/byd/launcher/stability/MediaArtworkWork$Request;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/byd/launcher/stability/MediaArtworkWork$Request;->execute(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 66
    invoke-direct {p0, p1}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->failed(Ljava/lang/RuntimeException;)V

    :goto_2
    return-void
.end method
