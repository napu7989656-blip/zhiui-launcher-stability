.class public final Lo/y8;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# instance fields
.field public stabilityRecoveryToken:Ljava/lang/Object;

.field public ˋ:Z

.field public ˏ:J

.field public final synthetic Ͱ:Lo/a9;


# direct methods
.method public constructor <init>(Lo/a9;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lo/y8;->Ͱ:Lo/a9;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/y8;->ˋ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/y8;->ˏ:J

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2
    invoke-virtual {p0}, Lo/y8;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :session_callback_alive
    return-void
    :session_callback_alive

    .line 1
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-boolean v0, v0, Lo/a9;->ͺ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-object v1, v0, Lo/a9;->ʹ:Lo/ia;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lo/a9;->Ͱ(Landroid/media/MediaMetadata;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 6
    invoke-virtual {p0}, Lo/y8;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :session_callback_alive
    return-void
    :session_callback_alive

    .line 1
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-boolean v0, v0, Lo/a9;->ͺ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-object v0, v0, Lo/a9;->ʹ:Lo/ia;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iput v1, v0, Lo/a9;->Θ:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lo/y8;->ˋ:Z

    if-ne p1, v2, :cond_2

    iget-wide v2, p0, Lo/y8;->ˏ:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lo/y8;->ˋ:Z

    iput-wide v0, p0, Lo/y8;->ˏ:J

    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-object v0, v0, Lo/a9;->ʹ:Lo/ia;

    invoke-virtual {v0, p1}, Lo/ia;->ͳ(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 4
    invoke-virtual {p0}, Lo/y8;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :session_callback_alive
    return-void
    :session_callback_alive

    .line 1
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-boolean v0, v0, Lo/a9;->ͺ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-object v1, v0, Lo/a9;->ʹ:Lo/ia;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/a9;->ˏ()V
    iget-object v1, v0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    iput-object v1, p0, Lo/y8;->stabilityRecoveryToken:Ljava/lang/Object;

    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-object v0, v0, Lo/a9;->ʹ:Lo/ia;

    invoke-virtual {v0}, Lo/ia;->ʹ()V

    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;

    iget-object v0, v0, Lo/a9;->ˏ:Landroid/os/Handler;

    new-instance v1, Lo/td;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stabilityCurrent()Z
    .locals 3
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;
    if-eqz v0, :invalid
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v1
    if-eqz v1, :invalid
    iget-object v1, v0, Lo/a9;->ͼ:Lo/y8;
    if-ne v1, p0, :invalid
    iget-object v1, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    if-eqz v1, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method

.method public stabilityRecoveryCurrent()Z
    .locals 3
    iget-object v0, p0, Lo/y8;->Ͱ:Lo/a9;
    if-eqz v0, :invalid
    invoke-virtual {v0}, Lo/a9;->stabilityCurrent()Z
    move-result v1
    if-eqz v1, :invalid
    iget-object v1, p0, Lo/y8;->stabilityRecoveryToken:Ljava/lang/Object;
    if-eqz v1, :invalid
    iget-object v2, v0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-ne v1, v2, :invalid
    iget-object v1, v0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    if-nez v1, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method
