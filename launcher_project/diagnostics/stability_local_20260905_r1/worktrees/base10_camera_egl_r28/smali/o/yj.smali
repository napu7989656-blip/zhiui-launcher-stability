.class public final Lo/yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public ˋ:I

.field public ˏ:Z

.field public final synthetic Ͱ:Landroid/widget/ImageView;

.field public final synthetic ͱ:Lo/zj;


# direct methods
.method public constructor <init>(Lo/zj;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/yj;->ͱ:Lo/zj;

    iput-object p2, p0, Lo/yj;->Ͱ:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lo/yj;->ˋ:I

    iput-boolean p1, p0, Lo/yj;->ˏ:Z

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 1
    iget p1, p0, Lo/yj;->ˋ:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/yj;->ˋ:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lo/yj;->ˏ:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lo/yj;->ˏ:Z

    iget-object p1, p0, Lo/yj;->ͱ:Lo/zj;

    iget-object v0, p1, Lo/zj;->ˋ:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lo/td;

    const/16 v2, 0xe

    iget-object v3, p0, Lo/yj;->Ͱ:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :try_start_0
    iget-object v0, p1, Lo/zj;->ˋ:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p1, Lo/zj;->Ͱ:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/ak;->ˏ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lo/ak;->ͳ(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p1, Lo/zj;->ˋ:Landroid/view/TextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_2
    return-void
.end method
