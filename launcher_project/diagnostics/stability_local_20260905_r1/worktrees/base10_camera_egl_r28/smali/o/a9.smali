.class public final Lo/a9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ι:[Ljava/lang/String;

.field public static final Κ:[Ljava/lang/String;


# instance fields
.field public ʹ:Lo/ia;

.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Landroid/os/Handler;

.field public final Ͱ:Ljava/util/concurrent/ExecutorService;

.field public volatile ͱ:Ljava/util/concurrent/Future;

.field public Ͳ:Landroid/media/session/MediaSessionManager;

.field public ͳ:Landroid/media/session/MediaController;

.field public final Ͷ:Landroid/content/ComponentName;

.field public final ͷ:Lo/x8;

.field public volatile ͺ:Z

.field private stabilityDisposed:Z

.field private stabilityStarted:Z

.field public volatile ͻ:Z

.field public volatile ͼ:Lo/y8;

.field public volatile stabilitySessionToken:Ljava/lang/Object;

.field public final stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;

.field public ͽ:Landroid/graphics/Bitmap;

.field public Ά:Ljava/lang/String;

.field public Έ:Ljava/lang/String;

.field public Ή:Ljava/lang/String;

.field public Ί:Ljava/lang/String;

.field public Ό:J

.field public Ύ:Z

.field public Ώ:Ljava/lang/String;

.field public ΐ:Landroid/graphics/Bitmap;

.field public Α:I

.field public final Β:Lo/u8;

.field public Γ:Ljava/lang/Runnable;

.field public Δ:I

.field public Ε:Z

.field public Ζ:J

.field public Η:I

.field public Θ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "com.netease.cloudmusic.iot"

    const-string v1, "com.netease.cloudmusic.auto"

    const-string v2, "com.netease.cloudmusic"

    const-string v3, "com.kugou.android.auto"

    const-string v4, "com.kugou.android"

    const-string v5, "com.tencent.qqmusiccar"

    const-string v6, "com.tencent.qqmusic"

    const-string v7, "cn.kuwo.player.auto"

    const-string v8, "cn.kuwo.player"

    const-string v9, "com.luna.music.car"

    const-string v10, "com.byd.mediacenter"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/a9;->Ι:[Ljava/lang/String;

    const-string v0, "cloudmusic"

    const-string v1, "\u97f3\u4e50\u64ad\u653e\u4e2d"

    const-string v2, "\u6b63\u5728\u64ad\u653e"

    const-string v3, "\u7f51\u6613\u4e91\u97f3\u4e50"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/a9;->Κ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/a9;->ˏ:Landroid/os/Handler;

    new-instance v0, Lcom/byd/launcher/stability/MediaArtworkHost;
    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/MediaArtworkHost;-><init>(Lo/a9;)V
    new-instance v1, Lcom/byd/launcher/stability/MediaArtworkPipeline;
    invoke-direct {v1, v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;-><init>(Lcom/byd/launcher/stability/MediaArtworkPipeline$Host;)V
    iput-object v1, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    const/4 v0, 0x0
    iput-object v0, p0, Lo/a9;->Ͱ:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lo/x8;

    invoke-direct {v0, p0}, Lo/x8;-><init>(Lo/a9;)V

    iput-object v0, p0, Lo/a9;->ͷ:Lo/x8;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/a9;->ͺ:Z

    iput-boolean v0, p0, Lo/a9;->ͻ:Z

    new-instance v1, Lo/y8;

    invoke-direct {v1, p0}, Lo/y8;-><init>(Lo/a9;)V

    iput-object v1, p0, Lo/a9;->ͼ:Lo/y8;

    const-string v1, ""

    iput-object v1, p0, Lo/a9;->Ά:Ljava/lang/String;

    iput-object v1, p0, Lo/a9;->Έ:Ljava/lang/String;

    iput-object v1, p0, Lo/a9;->Ή:Ljava/lang/String;

    iput-object v1, p0, Lo/a9;->Ί:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lo/a9;->Ό:J

    iput-boolean v0, p0, Lo/a9;->Ύ:Z

    iput-object v1, p0, Lo/a9;->Ώ:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/a9;->ΐ:Landroid/graphics/Bitmap;

    iput v0, p0, Lo/a9;->Α:I

    new-instance v1, Lo/u8;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo/u8;-><init>(Lo/a9;I)V

    iput-object v1, p0, Lo/a9;->Β:Lo/u8;

    iput v0, p0, Lo/a9;->Δ:I

    iput-boolean v0, p0, Lo/a9;->Ε:Z

    iput v0, p0, Lo/a9;->Η:I

    iput v0, p0, Lo/a9;->Θ:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/a9;->ˋ:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/byd/launcher/MusicNotificationListener;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lo/a9;->Ͷ:Landroid/content/ComponentName;

    return-void
.end method

.method public static ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    if-gt v0, v2, :cond_1

    if-gt v1, v2, :cond_1

    return-object p0

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x43800000    # 256.0f

    div-float v3, v2, v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public final ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    iget-object v0, p0, Lo/a9;->ˋ:Landroid/content/Context;
    const/4 v1, 0x0
    invoke-static {v0, p1, v1}, Lcom/byd/launcher/stability/MediaUriReader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public final ˋ(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/a9;->ͱ:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lo/a9;->Ͱ:Ljava/util/concurrent/ExecutorService;
    if-nez v0, :legacy_art_executor_present
    return-void
    :legacy_art_executor_present

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lo/a9;->ͱ:Ljava/util/concurrent/Future;

    return-void
.end method

.method public final ˏ()V
    .locals 3
    iget-object v2, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    if-eqz v2, :art_detach_continue
    invoke-virtual {v2}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->invalidate()V
    :art_detach_continue
    iget-object v0, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iget-object v1, p0, Lo/a9;->ͼ:Lo/y8;
    const/4 v2, 0x0
    iput-object v2, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v2, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    new-instance v2, Ljava/lang/Object;
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    iput-object v2, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-eqz v0, :done
    if-eqz v1, :done
    :try_start
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    goto :done
    :failed
    move-exception v2
    :done
    return-void
.end method

.method public final Ͱ(Landroid/media/MediaMetadata;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v1, p1
    if-eqz v1, :art_metadata_done
    invoke-virtual {v7}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :art_metadata_alive
    :art_metadata_done
    return-void
    :art_metadata_alive

    iget-object v0, v7, Lo/a9;->ʹ:Lo/ia;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    const-string v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v8, "android.media.metadata.DISPLAY_ICON"

    const-string v9, "android.media.metadata.ART"

    const-string v10, "android.media.metadata.ART_URI"

    const-string v11, "android.media.metadata.ALBUM_ART_URI"

    if-nez v0, :cond_4

    invoke-virtual {v1, v9}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1, v11}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v11}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {v1, v10}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v10}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v12, ""

    if-eqz v2, :cond_5

    move-object v13, v2

    goto :goto_2

    :cond_5
    move-object v13, v12

    :goto_2
    if-eqz v3, :cond_6

    move-object v14, v3

    goto :goto_3

    :cond_6
    move-object v14, v12

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v15, v7, Lo/a9;->Ή:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v7, Lo/a9;->Ί:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    iget-wide v10, v7, Lo/a9;->Ό:J

    sub-long v10, v5, v10

    const-wide/16 v19, 0x320

    cmp-long v10, v10, v19

    if-gez v10, :cond_9

    iget-boolean v10, v7, Lo/a9;->Ύ:Z

    if-nez v10, :cond_7

    if-nez v0, :cond_9

    :cond_7
    return-void

    :cond_8
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :cond_9
    iput-object v13, v7, Lo/a9;->Ή:Ljava/lang/String;

    iput-object v14, v7, Lo/a9;->Ί:Ljava/lang/String;

    iput-wide v5, v7, Lo/a9;->Ό:J

    iput-boolean v0, v7, Lo/a9;->Ύ:Z

    const/4 v5, 0x2

    :try_start_0
    const-string v0, "android.media.metadata.USER_RATING"

    .line 1
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/media/Rating;->isRated()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_a

    invoke-virtual {v0}, Landroid/media/Rating;->hasHeart()Z

    move-result v6

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v6

    if-ne v6, v5, :cond_b

    invoke-virtual {v0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v6

    :goto_4
    move v15, v6

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroid/media/Rating;->getStarRating()F

    move-result v6

    const/high16 v10, 0x40800000    # 4.0f

    cmpl-float v6, v6, v10

    if-gez v6, :cond_c

    invoke-virtual {v0}, Landroid/media/Rating;->getPercentRating()F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v10, 0x42a00000    # 80.0f

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_d

    :cond_c
    const/4 v15, 0x1

    goto :goto_5

    :cond_d
    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_f

    if-nez v0, :cond_f

    :try_start_1
    const-string v0, "android.media.metadata.RATING"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/Rating;->isRated()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_e

    invoke-virtual {v0}, Landroid/media/Rating;->hasHeart()Z

    move-result v15

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v6

    if-ne v6, v5, :cond_f

    invoke-virtual {v0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_f
    :goto_7
    iget-boolean v0, v7, Lo/a9;->Ε:Z

    if-eq v15, v0, :cond_11

    iput-boolean v15, v7, Lo/a9;->Ε:Z

    iget-object v0, v7, Lo/a9;->ʹ:Lo/ia;

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v15}, Lo/vl;->Ω(Z)V

    :cond_10
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ύ:Lo/hd;

    if-eqz v0, :cond_11

    .line 3
    iget-object v6, v0, Lo/hd;->ˋ:Lo/nd;

    iget-object v6, v6, Lo/nd;->ͱ:Landroid/os/Handler;

    new-instance v10, Lo/md;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v15, v11}, Lo/md;-><init>(Lo/hd;ZI)V

    invoke-virtual {v6, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    if-eqz v2, :cond_15

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lo/a9;->Κ:[Ljava/lang/String;

    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x4

    if-ge v10, v11, :cond_14

    aget-object v11, v6, v10

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_9

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_14
    const/16 v16, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/16 v16, 0x1

    :goto_a
    if-eqz v16, :cond_17

    .line 5
    iget-object v2, v7, Lo/a9;->Ά:Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_16
    iget-object v3, v7, Lo/a9;->Έ:Ljava/lang/String;

    goto :goto_b

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iput-object v2, v7, Lo/a9;->Ά:Ljava/lang/String;

    :cond_18
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iput-object v3, v7, Lo/a9;->Έ:Ljava/lang/String;

    :cond_19
    :goto_b
    invoke-virtual {v7, v1, v2, v3}, Lo/a9;->stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public final ͱ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/a9;->ʹ:Lo/ia;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lo/a9;->Ή:Ljava/lang/String;

    iput-object v1, p0, Lo/a9;->Ί:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/a9;->Ό:J

    invoke-virtual {p0, v0}, Lo/a9;->Ͱ(Landroid/media/MediaMetadata;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Ͳ()V
    .locals 6

    .line 1
    const-string v0, "MusicCtrlMgr"

    .line 2
    .line 3
    const-string v1, "Launched music app: "

    .line 4
    .line 5
    iget-object v2, p0, Lo/a9;->ˋ:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    const/high16 v5, 0x10000000

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "Failed to launch music app "

    .line 50
    .line 51
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ": "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method public final ͳ()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const-string v0, "MusicCtrlMgr"

    .line 2
    .line 3
    iget-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_1
    const-string v3, "android.media.metadata.ALBUM_ART"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_2
    const-string v3, "android.media.metadata.ART"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_3
    const-string v3, "android.media.metadata.DISPLAY_ICON"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    return-object v3

    .line 43
    :cond_4
    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    const-string v3, "Got album art from MediaDescription iconBitmap"

    .line 56
    .line 57
    invoke-static {v0, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_5
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_6

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0, v1}, Lo/a9;->ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    const-string v3, "Got album art from MediaDescription iconUri"

    .line 88
    .line 89
    invoke-static {v0, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "loadAlbumArtFromMediaSession failed: "

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v3, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    return-object v2
.end method

.method public final Ͷ(Ljava/util/List;)V
    .locals 9
    invoke-virtual {p0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :session_owner_alive
    return-void
    :session_owner_alive

    .line 1
    if-eqz p1, :cond_11

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/media/session/MediaController;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lo/a9;->ˋ:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_5

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/media/session/MediaController;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v3, 0x0

    .line 74
    :goto_1
    if-nez v3, :cond_9

    .line 75
    .line 76
    iget-object p1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lo/a9;->ˏ()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lo/a9;->ʹ:Lo/ia;

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p1}, Lo/ia;->ʹ()V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void

    .line 91
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/media/session/MediaController;

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_8

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Landroid/media/session/MediaController;

    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    sget-object v6, Lo/a9;->Ι:[Ljava/lang/String;

    .line 118
    .line 119
    move v7, v1

    .line 120
    :goto_3
    const/16 v8, 0xb

    .line 121
    .line 122
    if-ge v7, v8, :cond_6

    .line 123
    .line 124
    aget-object v8, v6, v7

    .line 125
    .line 126
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_7

    .line 131
    .line 132
    move-object v2, v4

    .line 133
    goto :goto_2

    .line 134
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move-object v3, v2

    .line 138
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v4, 0x3

    .line 147
    if-eqz v2, :cond_c

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroid/media/session/MediaController;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    if-eqz v5, :cond_a

    .line 160
    .line 161
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-ne v5, v4, :cond_a

    .line 166
    .line 167
    if-eqz v0, :cond_b

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_b

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_a

    .line 184
    .line 185
    :cond_b
    move-object v3, v2

    .line 186
    :cond_c
    iget-object p1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 187
    .line 188
    if-eqz p1, :cond_d

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_d

    .line 203
    .line 204
    return-void

    .line 205
    :cond_d
    invoke-virtual {p0}, Lo/a9;->ˏ()V

    .line 206
    .line 207
    .line 208
    iput-object v3, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 209
    .line 210
    iput v1, p0, Lo/a9;->Θ:I

    .line 211
    .line 212
    iget-object p1, p0, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 213
    .line 214
    new-instance v0, Lo/y8;
    invoke-direct {v0, p0}, Lo/y8;-><init>(Lo/a9;)V
    iput-object v0, p0, Lo/a9;->ͼ:Lo/y8;

    .line 215
    .line 216
    :session_register_start
    invoke-virtual {v3, v0, p1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :session_register_end
    .catch Ljava/lang/Exception; {:session_register_start .. :session_register_end} :session_register_failed
    const-string p1, ""
    iput-object p1, p0, Lo/a9;->Ή:Ljava/lang/String;
    iput-object p1, p0, Lo/a9;->Ί:Ljava/lang/String;
    const-wide/16 v5, 0x0
    iput-wide v5, p0, Lo/a9;->Ό:J
    goto :session_register_ok
    :session_register_failed
    move-exception p1
    invoke-virtual {p0}, Lo/a9;->ˏ()V
    return-void
    :session_register_ok

    .line 217
    .line 218
    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v0, "Attached to: "

    .line 222
    .line 223
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string v0, "MusicCtrlMgr"

    .line 238
    .line 239
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_e

    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lo/a9;->Ͱ(Landroid/media/MediaMetadata;)V

    .line 249
    .line 250
    .line 251
    :cond_e
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    if-eqz p1, :cond_10

    .line 256
    .line 257
    iget-object v0, p0, Lo/a9;->ʹ:Lo/ia;

    .line 258
    .line 259
    if-eqz v0, :cond_10

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-ne p1, v4, :cond_f

    .line 266
    .line 267
    const/4 v1, 0x1

    .line 268
    :cond_f
    invoke-virtual {v0, v1}, Lo/ia;->ͳ(Z)V

    .line 269
    .line 270
    .line 271
    :cond_10
    return-void

    .line 272
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lo/a9;->ˏ()V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lo/a9;->ʹ:Lo/ia;

    .line 276
    .line 277
    if-eqz p1, :cond_12

    .line 278
    .line 279
    invoke-virtual {p1}, Lo/ia;->ʹ()V

    .line 280
    .line 281
    .line 282
    :cond_12
    return-void
.end method

.method public final ͷ()V
    .locals 6

    .line 1
    const-string v0, "MusicCtrlMgr"

    iget-object v1, p0, Lo/a9;->ʹ:Lo/ia;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v5, p0, Lo/a9;->ʹ:Lo/ia;

    invoke-virtual {v5, v1}, Lo/ia;->ͳ(Z)V

    iput v4, p0, Lo/a9;->Θ:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lo/a9;->Θ:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/a9;->Θ:I

    iget-object v1, p0, Lo/a9;->ʹ:Lo/ia;

    invoke-virtual {v1, v4}, Lo/ia;->ͳ(Z)V

    iget v1, p0, Lo/a9;->Θ:I

    if-lt v1, v2, :cond_3

    const-string v1, "pollCurrentState: persistent null state, session likely dead"

    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/a9;->ˏ()V

    iget-object v1, p0, Lo/a9;->ʹ:Lo/ia;

    invoke-virtual {v1}, Lo/ia;->ʹ()V

    :cond_3
    :goto_1
    iget v1, p0, Lo/a9;->Η:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/a9;->Η:I

    if-lt v1, v2, :cond_5

    iput v4, p0, Lo/a9;->Η:I

    iget-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lo/a9;->Ͱ(Landroid/media/MediaMetadata;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pollCurrentState via MediaSession failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pollCurrentState: session dead (IllegalState): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/a9;->ˏ()V

    iget-object v0, p0, Lo/a9;->ʹ:Lo/ia;

    invoke-virtual {v0}, Lo/ia;->ʹ()V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/a9;->Ζ:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    iput-wide v0, p0, Lo/a9;->Ζ:J

    invoke-virtual {p0}, Lo/a9;->ͺ()V

    :cond_7
    return-void
.end method

.method public final ͺ()V
    .locals 4
    invoke-virtual {p0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-nez v0, :refresh_alive
    return-void
    :refresh_alive

    .line 1
    iget-object v0, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lo/a9;->ͻ:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lo/a9;->ͷ:Lo/x8;

    iget-object v2, p0, Lo/a9;->Ͷ:Landroid/content/ComponentName;

    iget-object v3, p0, Lo/a9;->ˏ:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/a9;->ͻ:Z

    const-string v0, "MusicCtrlMgr"

    const-string v1, "Session listener registered on retry"

    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lo/a9;->Ͷ:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :try_start_2
    iget-object v2, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    :try_start_3
    iget-object v2, p0, Lo/a9;->ˋ:Landroid/content/Context;

    const-string v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lo/a9;->Ͷ:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v2, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v1}, Lo/a9;->Ͷ(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public stabilityCurrent()Z
    .locals 2
    iget-boolean v0, p0, Lo/a9;->ͺ:Z
    if-nez v0, :invalid
    iget-object v0, p0, Lo/a9;->ʹ:Lo/ia;
    if-eqz v0, :invalid
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;
    instance-of v1, v0, Lcom/byd/launcher/NavBarService;
    if-eqz v1, :invalid
    check-cast v0, Lcom/byd/launcher/NavBarService;
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z
    if-nez v1, :invalid
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v0, v1, :invalid
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    if-ne v1, p0, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method

.method public stabilityCloseArtwork()V
    .locals 1
    iget-object v0, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->close()V
    :done
    return-void
.end method

.method public stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    iget-object v0, p0, Lo/a9;->stabilityArtwork:Lcom/byd/launcher/stability/MediaArtworkPipeline;
    if-eqz v0, :done
    iget-object v1, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    :try_start
    invoke-static {p1}, Lcom/byd/launcher/stability/MediaArtworkMetadata;->from(Landroid/media/MediaMetadata;)Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;
    move-result-object v2
    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->update(Ljava/lang/Object;Lcom/byd/launcher/stability/MediaArtworkPipeline$Input;Ljava/lang/String;Ljava/lang/String;)V
    :try_end
    .catch Ljava/lang/RuntimeException; {:try_start .. :try_end} :failed
    goto :done
    :failed
    move-exception v1
    invoke-virtual {v0}, Lcom/byd/launcher/stability/MediaArtworkPipeline;->invalidate()V
    const-string v2, "MusicCtrlMgr"
    const-string v3, "Artwork metadata snapshot failed"
    invoke-static {v2, v3, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :done
    return-void
.end method

.method public stabilityDispose()V
    .locals 4
    iget-boolean v0, p0, Lo/a9;->stabilityDisposed:Z
    if-nez v0, :done
    const/4 v0, 0x1
    iput-boolean v0, p0, Lo/a9;->stabilityDisposed:Z
    iput-boolean v0, p0, Lo/a9;->ͺ:Z
    const/4 v1, 0x0
    iput-object v1, p0, Lo/a9;->ʹ:Lo/ia;
    iput-object v1, p0, Lo/a9;->ͽ:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lo/a9;->ΐ:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lo/a9;->Ώ:Ljava/lang/String;
    iput-object v1, p0, Lo/a9;->Γ:Ljava/lang/Runnable;
    iget-object v2, p0, Lo/a9;->ͱ:Ljava/util/concurrent/Future;
    iput-object v1, p0, Lo/a9;->ͱ:Ljava/util/concurrent/Future;
    if-eqz v2, :after_future
    :try_future
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :end_future
    .catch Ljava/lang/RuntimeException; {:try_future .. :end_future} :fail_future
    goto :after_future
    :fail_future
    move-exception v3
    :after_future
    :try_art
    invoke-virtual {p0}, Lo/a9;->stabilityCloseArtwork()V
    :end_art
    .catch Ljava/lang/RuntimeException; {:try_art .. :end_art} :fail_art
    goto :after_art
    :fail_art
    move-exception v3
    :after_art
    :try_handler
    iget-object v2, p0, Lo/a9;->ˏ:Landroid/os/Handler;
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :end_handler
    .catch Ljava/lang/RuntimeException; {:try_handler .. :end_handler} :fail_handler
    goto :after_handler
    :fail_handler
    move-exception v3
    :after_handler
    iget-object v2, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iget-object v3, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iput-object v1, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v1, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-eqz v2, :after_detach
    if-eqz v3, :after_detach
    :try_detach
    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :end_detach
    .catch Ljava/lang/RuntimeException; {:try_detach .. :end_detach} :fail_detach
    goto :after_detach
    :fail_detach
    move-exception v3
    :after_detach
    iput-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iput-object v1, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v1, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    iget-object v2, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;
    iput-object v1, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;
    iput-boolean v1, p0, Lo/a9;->ͻ:Z
    if-eqz v2, :done
    :try_listener
    iget-object v3, p0, Lo/a9;->ͷ:Lo/x8;
    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :end_listener
    .catch Ljava/lang/RuntimeException; {:try_listener .. :end_listener} :fail_listener
    goto :done
    :fail_listener
    move-exception v3
    :done
    return-void
.end method

.method public stabilityStart()V
    .locals 10
    invoke-virtual {p0}, Lo/a9;->stabilityCurrent()Z
    move-result v0
    if-eqz v0, :start_done
    iget-boolean v0, p0, Lo/a9;->stabilityStarted:Z
    if-nez v0, :start_done
    const/4 v9, 0x1
    iput-boolean v9, p0, Lo/a9;->stabilityStarted:Z
    move-object v0, p0
    const-wide/16 v1, 0xbb8
    const/4 v3, 0x3
    const-string v4, "MusicCtrlMgr"
    :try_start_2
    iget-object v5, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;
    if-nez v5, :cond_9
    iget-object v5, v0, Lo/a9;->ˋ:Landroid/content/Context;

    .line 365
    .line 366
    const-string v6, "media_session"

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    check-cast v5, Landroid/media/session/MediaSessionManager;

    .line 373
    .line 374
    iput-object v5, v0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;

    .line 375
    .line 376
    if-nez v5, :cond_9

    .line 377
    .line 378
    const/4 v6, 0x0
    iput-boolean v6, p0, Lo/a9;->stabilityStarted:Z
    const-string v0, "MediaSessionManager not available"

    .line 379
    .line 380
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 381
    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_9
    :try_start_3
    iget-boolean v6, p0, Lo/a9;->ͻ:Z
    if-nez v6, :catch_1
    iget-object v6, v0, Lo/a9;->ͷ:Lo/x8;

    .line 385
    .line 386
    iget-object v7, v0, Lo/a9;->Ͷ:Landroid/content/ComponentName;

    .line 387
    .line 388
    iget-object v8, v0, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 389
    .line 390
    invoke-virtual {v5, v6, v7, v8}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 391
    .line 392
    .line 393
    iput-boolean v9, v0, Lo/a9;->ͻ:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 394
    .line 395
    :catch_1
    :try_start_4
    invoke-virtual {v0}, Lo/a9;->ͺ()V

    .line 396
    .line 397
    .line 398
    new-instance v5, Lo/c8;

    .line 399
    .line 400
    invoke-direct {v5, v3, v0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    iget-object v0, v0, Lo/a9;->ˏ:Landroid/os/Handler;

    .line 407
    .line 408
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    move-result v6
    if-nez v6, :media_poll_posted
    const/4 v6, 0x0
    iput-boolean v6, p0, Lo/a9;->stabilityStarted:Z
    :media_poll_posted
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 409
    .line 410
    .line 411
    goto :goto_2

    .line 412
    :catch_2
    move-exception v0
    const/4 v6, 0x0
    iput-boolean v6, p0, Lo/a9;->stabilityStarted:Z

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v2, "start failed: "

    .line 416
    .line 417
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v0, v1, v4}, Lo/v1;->Ύ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_a
    :goto_2
    return-void

    :start_done
    return-void
.end method
