.class public final Lo/xj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic ˋ:Ljava/lang/String;

.field public final synthetic ˏ:Lo/zj;


# direct methods
.method public constructor <init>(Lo/zj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/xj;->ˏ:Lo/zj;

    iput-object p2, p0, Lo/xj;->ˋ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    const/16 v0, 0x3c0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v0, 0x21c

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lo/xj;->ˏ:Lo/zj;

    iget-object p2, p0, Lo/xj;->ˋ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/zj;->ˋ(Ljava/lang/String;)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo/xj;->ˏ:Lo/zj;

    invoke-virtual {p1}, Lo/zj;->ˏ()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
