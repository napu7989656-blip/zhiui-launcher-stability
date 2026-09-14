.class public final Lo/wh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/g7;
.implements Ljava/io/Serializable;


# instance fields
.field public Ͱ:Lo/g4;

.field public volatile ͱ:Ljava/lang/Object;

.field public final Ͳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/g4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/wh;->Ͱ:Lo/g4;

    .line 5
    .line 6
    sget-object p1, Lo/z;->ͳ:Lo/z;

    .line 7
    .line 8
    iput-object p1, p0, Lo/wh;->ͱ:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p0, p0, Lo/wh;->Ͳ:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lo/u5;

    invoke-virtual {p0}, Lo/wh;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/u5;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/wh;->ͱ:Ljava/lang/Object;

    sget-object v1, Lo/z;->ͳ:Lo/z;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/wh;->Ͳ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lo/wh;->ͱ:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/wh;->Ͱ:Lo/g4;

    invoke-static {v1}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    invoke-interface {v1}, Lo/g4;->invoke()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lo/wh;->ͱ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/wh;->Ͱ:Lo/g4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/wh;->ͱ:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lo/z;->ͳ:Lo/z;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lo/wh;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string v0, "Lazy value not initialized yet."

    .line 22
    .line 23
    :goto_1
    return-object v0
.end method
