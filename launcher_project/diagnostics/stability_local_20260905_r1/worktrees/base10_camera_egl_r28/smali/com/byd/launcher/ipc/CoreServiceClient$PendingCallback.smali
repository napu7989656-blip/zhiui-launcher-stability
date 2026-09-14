.class Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/launcher/ipc/CoreServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingCallback"
.end annotation


# instance fields
.field final callback:Lcom/byd/launcher/ipc/ICoreServiceCallback;

.field final command:Ljava/lang/String;

.field final createTime:J


# direct methods
.method public constructor <init>(Lcom/byd/launcher/ipc/ICoreServiceCallback;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->callback:Lcom/byd/launcher/ipc/ICoreServiceCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->createTime:J

    iput-object p2, p0, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->command:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byd/launcher/ipc/CoreServiceClient$PendingCallback;->createTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
