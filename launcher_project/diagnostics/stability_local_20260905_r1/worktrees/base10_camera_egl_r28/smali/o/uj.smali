.class public final Lo/uj;
.super Landroid/util/LruCache;
.source "SourceFile"


# virtual methods
.method public final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    div-int/lit16 p1, p1, 0x400

    .line 10
    .line 11
    return p1
.end method
