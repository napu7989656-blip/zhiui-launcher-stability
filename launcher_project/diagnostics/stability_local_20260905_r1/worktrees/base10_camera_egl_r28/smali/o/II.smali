.class public final Lo/II;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public ʹ:I

.field public ˋ:Landroid/graphics/Bitmap;

.field public final ˏ:Landroid/graphics/Paint;

.field public final Ͱ:Landroid/graphics/Paint;

.field public ͱ:I

.field public Ͳ:I

.field public ͳ:I

.field public Ͷ:I

.field public final ͷ:F

.field public final ͺ:Landroid/graphics/Rect;

.field public final ͻ:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/II;->ˏ:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/II;->Ͱ:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lo/II;->ͺ:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lo/II;->ͻ:Landroid/graphics/RectF;

    iput-object p1, p0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, p0, Lo/II;->ͱ:I

    iput p1, p0, Lo/II;->Ͳ:I

    iput p2, p0, Lo/II;->Ͷ:I

    iput p3, p0, Lo/II;->ͷ:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lo/II;->ͻ:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    iget v3, p0, Lo/II;->ͷ:F

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lo/II;->ͱ:I

    add-int/lit8 v6, v2, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, p0, Lo/II;->Ͳ:I

    add-int/lit8 v8, v4, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Lo/II;->ͳ:I

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    :goto_0
    sub-int/2addr v2, v5

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v7, p0, Lo/II;->ʹ:I

    if-lez v7, :cond_2

    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v4, v6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-lez v2, :cond_4

    if-lez v0, :cond_4

    add-int/2addr v2, v5

    add-int/2addr v0, v6

    iget-object v4, p0, Lo/II;->ͺ:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    iget-object v2, p0, Lo/II;->ˏ:Landroid/graphics/Paint;

    if-lez v0, :cond_3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    :goto_2
    iget v0, p0, Lo/II;->Ͷ:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/II;->Ͱ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/II;->ˏ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lo/II;->Ͱ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/II;->ˏ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final ˋ(IIII)V
    .locals 1

    .line 1
    iget v0, p0, Lo/II;->ͱ:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/II;->Ͳ:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lo/II;->ͳ:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lo/II;->ʹ:I

    if-eq v0, p4, :cond_1

    :cond_0
    iput p1, p0, Lo/II;->ͱ:I

    iput p2, p0, Lo/II;->Ͳ:I

    iput p3, p0, Lo/II;->ͳ:I

    iput p4, p0, Lo/II;->ʹ:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
