.class public final Lo/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# instance fields
.field public final synthetic ˋ:Landroid/media/AudioTrack;

.field public final synthetic ˏ:Lo/gh;


# direct methods
.method public constructor <init>(Lo/gh;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/eh;->ˏ:Lo/gh;

    iput-object p2, p0, Lo/eh;->ˋ:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lo/eh;->ˋ:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    iget-object p1, p0, Lo/eh;->ˋ:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lo/eh;->ˏ:Lo/gh;

    iget-object p1, p1, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    iget-object v0, p0, Lo/eh;->ˋ:Landroid/media/AudioTrack;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lo/eh;->ˏ:Lo/gh;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/gh;->ˏ:Landroid/media/AudioTrack;

    :cond_0
    iget-object p1, p0, Lo/eh;->ˏ:Lo/gh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    return-void
.end method
