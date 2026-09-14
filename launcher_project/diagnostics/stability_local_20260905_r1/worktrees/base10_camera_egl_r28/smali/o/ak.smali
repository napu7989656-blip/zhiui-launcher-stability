.class public final Lo/ak;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# static fields
.field public static volatile ͷ:Landroid/graphics/Bitmap;

.field public static volatile ͺ:Landroid/graphics/Bitmap;

.field public static volatile ͻ:Ljava/lang/Runnable;

.field public static volatile ͼ:Ljava/lang/ref/WeakReference;

.field public static final ͽ:I


# instance fields
.field public volatile ʹ:[Landroid/graphics/Bitmap;

.field public final ˋ:Ljava/util/List;

.field public final ˏ:Landroid/content/Context;

.field public final Ͱ:Ljava/util/concurrent/ExecutorService;

.field public final ͱ:Landroid/os/Handler;

.field public volatile Ͳ:Z

.field public final ͳ:Lo/uj;

.field public Ͷ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lo/ak;->ͽ:I

    return-void
.end method

.method public constructor <init>(Lcom/byd/launcher/MainActivity;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x2

    invoke-static {}, Lcom/byd/launcher/stability/WallpaperExecutor;->create()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/ak;->Ͱ:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ak;->ͱ:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ak;->Ͳ:Z

    new-instance v0, Lo/uj;

    sget v1, Lo/ak;->ͽ:I

    invoke-direct {v0, v1}, Lo/uj;-><init>(I)V

    iput-object v0, p0, Lo/ak;->ͳ:Lo/uj;

    const/4 v0, -0x1

    iput v0, p0, Lo/ak;->Ͷ:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/ak;->ˏ:Landroid/content/Context;

    iput-object p2, p0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lo/ak;->ͼ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static ˏ(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lo/ak;->ͼ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lo/ak;->ͼ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ak;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    iget-object v2, v0, Lo/ak;->ˋ:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Lo/ak;->Ͷ:I

    if-gez v2, :cond_2

    return v1

    :cond_2
    iget-object v1, v0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v2, v1

    iget-object v0, v0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static Ͱ(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 4

    .line 1
    instance-of v0, p0, Lo/zj;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    check-cast p0, Lo/zj;

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    iget-object p1, p0, Lo/zj;->Ͱ:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    const-string v0, "file:"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lo/zj;->Ͱ:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lo/zj;->Ͱ:Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lo/zj;->ˏ:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lo/zj;->ˋ:Landroid/view/TextureView;

    .line 36
    .line 37
    invoke-virtual {p0}, Lo/zj;->ˏ()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Lo/xj;

    .line 47
    .line 48
    invoke-direct {v1, p0, p1}, Lo/xj;-><init>(Lo/zj;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/16 v3, 0x3c0

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v3, 0x21c

    .line 76
    .line 77
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-lez v2, :cond_2

    .line 82
    .line 83
    if-lez v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p0, p1}, Lo/zj;->ˋ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Video playback failed: "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v1, "WallpaperAdapter"

    .line 108
    .line 109
    invoke-static {v1, p1, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lo/zj;->ˏ()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_5

    .line 121
    .line 122
    iget-object p0, p0, Lo/zj;->ˏ:Landroid/media/MediaPlayer;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object p1, p0, Lo/zj;->ˏ:Landroid/media/MediaPlayer;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    iget-object p0, p0, Lo/zj;->ˏ:Landroid/media/MediaPlayer;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .line 142
    .line 143
    :catch_1
    :cond_5
    :goto_1
    return-void
.end method

.method public static ͳ(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    sget-object v0, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    # Read the volatile callback once; onDestroy may clear it between reads.
    sget-object p0, Lo/ak;->ͻ:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x147ae14

    if-le v0, v1, :cond_1

    return v0

    :cond_1
    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    rem-int/2addr p1, v1

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, ".mp4"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, ".webm"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    :cond_1
    const/4 v2, 0x1

    .line 43
    :cond_2
    return v2
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-boolean v0, p0, Lo/ak;->Ͳ:Z
    if-eqz v0, :stability_active
    return-void
    :stability_active

    .line 1
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    rem-int/2addr p2, v0

    .line 19
    :goto_0
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/String;

    .line 26
    .line 27
    instance-of v0, p1, Lo/zj;

    .line 28
    .line 29
    if-eqz v0, :cond_10

    .line 30
    .line 31
    check-cast p1, Lo/zj;

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    const-string v2, "video_poster"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v6, v0

    .line 42
    check-cast v6, Landroid/widget/ImageView;
    if-eqz v6, :stability_no_poster
    const v2, 0x7f08032e
    invoke-virtual {v6, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :stability_no_poster

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v2, p1, Lo/zj;->ˋ:Landroid/view/TextureView;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/TextureView;->isAvailable()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, p1, Lo/zj;->ˋ:Landroid/view/TextureView;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    cmpl-float v2, v2, v3

    .line 63
    .line 64
    if-lez v2, :cond_1

    .line 65
    .line 66
    iget-object v2, p1, Lo/zj;->ˋ:Landroid/view/TextureView;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    :cond_1
    move-object v2, v0

    .line 74
    :goto_1
    if-eqz v6, :cond_7

    .line 75
    .line 76
    iget-object v3, p0, Lo/ak;->ͳ:Lo/uj;

    .line 77
    .line 78
    invoke-virtual {v3, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/graphics/Bitmap;

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    :cond_2
    move-object v3, v2

    .line 93
    :cond_3
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    :cond_4
    sget-object v4, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    move-object v3, v4

    .line 112
    :cond_5
    if-eqz v3, :cond_6

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_6

    .line 119
    .line 120
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {p1}, Lo/zj;->ˏ()V

    .line 127
    .line 128
    .line 129
    iput-object p2, p1, Lo/zj;->Ͱ:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v6, :cond_15

    .line 132
    .line 133
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lo/ak;->ͳ:Lo/uj;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/graphics/Bitmap;

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_8

    .line 151
    .line 152
    :goto_2
    move-object v0, p1

    .line 153
    goto :goto_4

    .line 154
    :cond_8
    if-eqz v2, :cond_9

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_9

    .line 161
    .line 162
    move-object v0, v2

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    sget-object p1, Lo/ak;->ͷ:Landroid/graphics/Bitmap;

    .line 165
    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_a

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    sget-object p1, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 176
    .line 177
    if-eqz p1, :cond_b

    .line 178
    .line 179
    sget-object p1, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_b

    .line 186
    .line 187
    sget-object v0, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    iget-object p1, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    .line 191
    .line 192
    if-eqz p1, :cond_d

    .line 193
    .line 194
    iget-object p1, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    .line 195
    .line 196
    array-length v2, p1

    .line 197
    :goto_3
    if-ge v1, v2, :cond_d

    .line 198
    .line 199
    aget-object v3, p1, v1

    .line 200
    .line 201
    if-eqz v3, :cond_c

    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-nez v4, :cond_c

    .line 208
    .line 209
    move-object v0, v3

    .line 210
    goto :goto_4

    .line 211
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_d
    :goto_4
    if-eqz v0, :cond_e

    .line 215
    .line 216
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    .line 218
    .line 219
    :cond_e
    const-string p1, "file:"

    .line 220
    .line 221
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_f

    .line 226
    .line 227
    const/4 p1, 0x5

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    move-object v4, p1

    .line 233
    goto :goto_5

    .line 234
    :cond_f
    move-object v4, p2

    .line 235
    :goto_5
    iget-object p1, p0, Lo/ak;->Ͱ:Ljava/util/concurrent/ExecutorService;

    .line 236
    .line 237
    new-instance v0, Lo/sj;

    .line 238
    .line 239
    const/4 v7, 0x0

    .line 240
    move-object v2, v0

    .line 241
    move-object v3, p0

    .line 242
    move-object v5, p2

    .line 243
    invoke-direct/range {v2 .. v7}, Lo/sj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :cond_10
    instance-of v0, p1, Lo/vj;

    .line 252
    .line 253
    if-eqz v0, :cond_15

    .line 254
    .line 255
    check-cast p1, Lo/vj;

    .line 256
    .line 257
    iget-object v7, p1, Lo/vj;->ˋ:Landroid/widget/ImageView;

    .line 258
    .line 259
    invoke-virtual {v7, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    const v0, 0x7f08032e
    invoke-virtual {v7, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lo/ak;->ͳ:Lo/uj;

    .line 263
    .line 264
    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroid/graphics/Bitmap;

    .line 269
    .line 270
    if-eqz v0, :cond_14

    .line 271
    .line 272
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-ltz p1, :cond_13

    .line 280
    .line 281
    iget p2, p0, Lo/ak;->Ͷ:I

    .line 282
    .line 283
    if-ltz p2, :cond_13

    .line 284
    .line 285
    iget-object p2, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_11

    .line 292
    .line 293
    move v2, v1

    .line 294
    goto :goto_6

    .line 295
    :cond_11
    iget v2, p0, Lo/ak;->Ͷ:I

    .line 296
    .line 297
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    rem-int/2addr v2, v3

    .line 302
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_12

    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    rem-int v1, p1, p2

    .line 314
    .line 315
    :goto_7
    if-ne v1, v2, :cond_15

    .line 316
    .line 317
    :cond_13
    invoke-static {v0}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V

    .line 318
    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_14
    const p1, 0x106000c

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 340
    .line 341
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    iget v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 354
    .line 355
    new-instance p1, Lo/tj;

    .line 356
    .line 357
    move-object v2, p1

    .line 358
    move-object v3, p0

    .line 359
    move-object v4, p2

    .line 360
    invoke-direct/range {v2 .. v7}, Lo/tj;-><init>(Lo/ak;Ljava/lang/String;IILandroid/widget/ImageView;)V

    .line 361
    .line 362
    .line 363
    iget-object p2, p0, Lo/ak;->Ͱ:Ljava/util/concurrent/ExecutorService;

    .line 364
    .line 365
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 366
    .line 367
    .line 368
    :cond_15
    :goto_8
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v2, "video_poster"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lo/zj;

    invoke-direct {p1, p2, v0}, Lo/zj;-><init>(Landroid/widget/FrameLayout;Landroid/view/TextureView;)V

    return-object p1

    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lo/vj;

    invoke-direct {p1, p2}, Lo/vj;-><init>(Landroid/widget/ImageView;)V

    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/ak;->Ͳ:Z

    iget-object p1, p0, Lo/ak;->Ͱ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lo/ak;->ͱ:Landroid/os/Handler;
    const/4 p1, 0x0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo/zj;

    if-eqz v0, :cond_0

    check-cast p1, Lo/zj;

    invoke-virtual {p1}, Lo/zj;->ˏ()V

    :cond_0
    return-void
.end method

.method public final ˋ(I)Landroid/graphics/Bitmap;
    .locals 3

    iget-boolean v0, p0, Lo/ak;->Ͳ:Z
    if-eqz v0, :stability_active
    const/4 v0, 0x0
    return-object v0
    :stability_active

    .line 1
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lo/ak;->ͳ:Lo/uj;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v2, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    iget-object v0, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final ͱ(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lo/ak;->ˏ:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    const-string v0, "cat"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final Ͳ(I)V
    .locals 6

    iget-boolean v0, p0, Lo/ak;->Ͳ:Z
    if-eqz v0, :stability_active
    return-void
    :stability_active

    .line 1
    iput p1, p0, Lo/ak;->Ͷ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lo/ak;->ˋ:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x3

    .line 23
    if-gt v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    rem-int v1, p1, v0

    .line 27
    .line 28
    add-int/lit8 v2, v1, -0x1

    .line 29
    .line 30
    add-int/2addr v2, v0

    .line 31
    rem-int/2addr v2, v0

    .line 32
    add-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    rem-int/2addr v3, v0

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v4, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    .line 37
    .line 38
    array-length v4, v4

    .line 39
    if-ge v0, v4, :cond_3

    .line 40
    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    if-eq v0, v2, :cond_2

    .line 44
    .line 45
    if-eq v0, v3, :cond_2

    .line 46
    .line 47
    iget-object v4, p0, Lo/ak;->ʹ:[Landroid/graphics/Bitmap;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object v5, v4, v0

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lo/ak;->ˋ(I)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-static {v0}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    new-instance v0, Lo/bg;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-direct {v0, p0, p1, v1}, Lo/bg;-><init>(Ljava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lo/ak;->ͱ:Landroid/os/Handler;

    .line 72
    .line 73
    const-wide/16 v1, 0xc8

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lo/ak;->ͱ:Landroid/os/Handler;

    .line 79
    .line 80
    const-wide/16 v1, 0x258

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lo/ak;->ͱ:Landroid/os/Handler;

    .line 86
    .line 87
    const-wide/16 v1, 0x4b0

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lo/ak;->ͱ:Landroid/os/Handler;

    .line 93
    .line 94
    const-wide/16 v1, 0x7d0

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method
