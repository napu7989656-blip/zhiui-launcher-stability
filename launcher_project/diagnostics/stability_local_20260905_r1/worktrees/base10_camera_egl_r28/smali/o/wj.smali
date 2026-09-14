.class public final synthetic Lo/wj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic ˋ:Lo/zj;


# direct methods
.method public synthetic constructor <init>(Lo/zj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wj;->ˋ:Lo/zj;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/wj;->ˋ:Lo/zj;

    .line 2
    .line 3
    iget-object v1, v0, Lo/zj;->ˋ:Landroid/view/TextureView;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-float v4, v4

    .line 26
    int-to-float v2, v2

    .line 27
    div-float v6, v4, v2

    .line 28
    .line 29
    int-to-float v5, v5

    .line 30
    int-to-float v3, v3

    .line 31
    div-float v7, v5, v3

    .line 32
    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    new-instance v7, Landroid/graphics/Matrix;

    .line 38
    .line 39
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 40
    .line 41
    .line 42
    mul-float/2addr v2, v6

    .line 43
    div-float v8, v2, v4

    .line 44
    .line 45
    mul-float/2addr v6, v3

    .line 46
    div-float v3, v6, v5

    .line 47
    .line 48
    invoke-virtual {v7, v8, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 49
    .line 50
    .line 51
    sub-float/2addr v4, v2

    .line 52
    const/high16 v2, 0x40000000    # 2.0f

    .line 53
    .line 54
    div-float/2addr v4, v2

    .line 55
    sub-float/2addr v5, v6

    .line 56
    div-float/2addr v5, v2

    .line 57
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v7}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 64
    .line 65
    .line 66
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    .line 68
    const-string v2, "video_poster"

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/widget/ImageView;

    .line 75
    .line 76
    new-instance v2, Lo/yj;

    .line 77
    .line 78
    invoke-direct {v2, v0, p1}, Lo/yj;-><init>(Lo/zj;Landroid/widget/ImageView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
