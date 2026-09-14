.class public final Lo/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Ljava/lang/Runnable;

.field public final synthetic ͱ:Lo/a9;


# direct methods
.method public constructor <init>(Lo/a9;Lo/u8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/z8;->ͱ:Lo/a9;

    iput-object p2, p0, Lo/z8;->Ͱ:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6
    iget-object v0, p0, Lo/z8;->ͱ:Lo/a9;
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :media_retry_alive
    return-void
    :media_retry_alive


    .line 1
    iget-object v0, p0, Lo/z8;->ͱ:Lo/a9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lo/z8;->Ͱ:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "Auto command failed: "

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "MusicCtrlMgr"

    .line 27
    .line 28
    invoke-static {v1, v4, v5}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v1, v0, Lo/a9;->Δ:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    iput v1, v0, Lo/a9;->Δ:I

    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    if-ge v1, v4, :cond_1

    .line 41
    .line 42
    iget-object v0, v0, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 43
    .line 44
    const-wide/16 v1, 0x320

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iput-object v3, v0, Lo/a9;->Γ:Ljava/lang/Runnable;

    .line 51
    .line 52
    iput v2, v0, Lo/a9;->Δ:I

    .line 53
    .line 54
    :goto_1
    return-void
.end method
