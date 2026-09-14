.class public abstract Lo/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʹ:Lo/vh;

.field public static final ˋ:Lo/vh;

.field public static final ˏ:Lo/vh;

.field public static final Ͱ:Lo/vh;

.field public static final ͱ:Lo/vh;

.field public static final Ͳ:Lo/vh;

.field public static final ͳ:Lo/vh;

.field public static final Ͷ:Lo/vh;

.field public static final ͷ:Lo/vh;

.field public static final ͺ:Lo/vh;

.field public static final ͻ:Lo/vh;

.field public static final ͼ:Lo/vh;

.field public static final ͽ:Lo/vh;

.field public static final Ά:Lo/x2;

.field public static final Έ:Lo/x2;

.field public static final Ή:Lo/vh;

.field public static Ί:Ljava/lang/Boolean;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo/vh;

    .line 2
    .line 3
    const-string v1, "EMPTY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lo/a2;->ˋ:Lo/vh;

    .line 9
    .line 10
    new-instance v0, Lo/vh;

    .line 11
    .line 12
    const-string v1, "OFFER_SUCCESS"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lo/a2;->ˏ:Lo/vh;

    .line 18
    .line 19
    new-instance v0, Lo/vh;

    .line 20
    .line 21
    const-string v1, "OFFER_FAILED"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lo/a2;->Ͱ:Lo/vh;

    .line 27
    .line 28
    new-instance v0, Lo/vh;

    .line 29
    .line 30
    const-string v1, "POLL_FAILED"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lo/a2;->ͱ:Lo/vh;

    .line 36
    .line 37
    new-instance v0, Lo/vh;

    .line 38
    .line 39
    const-string v1, "ENQUEUE_FAILED"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lo/a2;->Ͳ:Lo/vh;

    .line 45
    .line 46
    new-instance v0, Lo/vh;

    .line 47
    .line 48
    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lo/a2;->ͳ:Lo/vh;

    .line 54
    .line 55
    new-instance v0, Lo/vh;

    .line 56
    .line 57
    const-string v1, "RESUME_TOKEN"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lo/a2;->ʹ:Lo/vh;

    .line 63
    .line 64
    new-instance v0, Lo/vh;

    .line 65
    .line 66
    const-string v1, "UNDEFINED"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lo/a2;->Ͷ:Lo/vh;

    .line 72
    .line 73
    new-instance v0, Lo/vh;

    .line 74
    .line 75
    const-string v1, "REUSABLE_CLAIMED"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lo/a2;->ͷ:Lo/vh;

    .line 81
    .line 82
    new-instance v0, Lo/vh;

    .line 83
    .line 84
    const-string v1, "CONDITION_FALSE"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lo/a2;->ͺ:Lo/vh;

    .line 90
    .line 91
    new-instance v0, Lo/vh;

    .line 92
    .line 93
    const-string v1, "UNLOCK_FAIL"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lo/a2;->ͻ:Lo/vh;

    .line 99
    .line 100
    new-instance v0, Lo/vh;

    .line 101
    .line 102
    const-string v1, "LOCKED"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lo/a2;->ͼ:Lo/vh;

    .line 108
    .line 109
    new-instance v1, Lo/vh;

    .line 110
    .line 111
    const-string v2, "UNLOCKED"

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sput-object v1, Lo/a2;->ͽ:Lo/vh;

    .line 117
    .line 118
    new-instance v2, Lo/x2;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Lo/x2;-><init>(Lo/vh;)V

    .line 121
    .line 122
    .line 123
    sput-object v2, Lo/a2;->Ά:Lo/x2;

    .line 124
    .line 125
    new-instance v0, Lo/x2;

    .line 126
    .line 127
    invoke-direct {v0, v1}, Lo/x2;-><init>(Lo/vh;)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lo/a2;->Έ:Lo/x2;

    .line 131
    .line 132
    new-instance v0, Lo/vh;

    .line 133
    .line 134
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 135
    .line 136
    invoke-direct {v0, v1}, Lo/vh;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lo/a2;->Ή:Lo/vh;

    .line 140
    .line 141
    return-void
.end method

.method public static final ʹ(Ljava/lang/Object;Lo/z0;Lo/u4;)Lo/z0;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lo/ll;

    if-eqz v0, :cond_0

    check-cast p2, Lo/ll;

    invoke-virtual {p2, p0, p1}, Lo/ll;->create(Ljava/lang/Object;Lo/z0;)Lo/z0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/z0;->getContext()Lo/k1;

    move-result-object v0

    sget-object v1, Lo/z2;->Ͱ:Lo/z2;

    if-ne v0, v1, :cond_1

    new-instance v0, Lo/f6;

    invoke-direct {v0, p0, p1, p2}, Lo/f6;-><init>(Ljava/lang/Object;Lo/z0;Lo/u4;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lo/g6;

    invoke-direct {v1, p1, v0, p2, p0}, Lo/g6;-><init>(Lo/z0;Lo/k1;Lo/u4;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "exception"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eq p0, p1, :cond_3

    .line 12
    .line 13
    sget-object v0, Lo/j6;->ˋ:Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x13

    .line 22
    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    sget-object v0, Lo/od;->ˋ:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_2
    return-void
.end method

.method public static ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 10
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x0
    move-object v6, p0

    .line 1
    if-eqz p0, :cond_4

    if-lez p4, :cond_4

    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v2, v0

    div-float v3, p1, v2

    int-to-float p2, p2

    int-to-float v4, v1

    div-float v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v2, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    mul-float/2addr v4, v3

    sub-float/2addr v4, p2

    div-float/2addr v4, v5

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p3, p3

    add-float/2addr v4, p3

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p3

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p4, p4

    div-float/2addr p4, v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v1, p3

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    if-lez p1, :cond_4

    if-gtz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    move-object v7, p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x40

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x40

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    move-object v8, p1

    if-eq p1, p0, :cond_2

    if-eq p0, v6, :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-static {p1, p3}, Lo/a2;->Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    move-object v9, p0

    if-eq p0, p1, :cond_3

    if-eq p1, v6, :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :bitmap_crop_error

    :cond_3
    return-object p0

    :catch_0
    move-exception p0
    invoke-static {v7, v6}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v8, v6}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v9, v6}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
    :bitmap_crop_error
    move-exception p0
    invoke-static {v7, v6}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v8, v6}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v9, v6}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    throw p0
.end method

.method public static final Ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/k1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/a2;->ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lo/e6;->ͺ(Lo/k1;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final ͱ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lo/b7;)Lo/b7;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p2, p0}, Lo/a2;->ˋ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, Lo/b7;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in undelivered element handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lo/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static final Ͳ(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    const-string v0, "Expected positive parallelism level, but got "

    .line 10
    .line 11
    invoke-static {v0, p0}, Lo/v1;->Ͱ(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public static ͳ()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v1, "ps -A | grep -E \'com\\.byd\\.launcher\\.core\'"

    const/16 v2, 0x320

    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in checkServiceStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdbUtils"

    invoke-static {v3, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final Ͷ(Ljava/lang/Throwable;)Lo/eg;
    .locals 1

    .line 1
    const-string v0, "exception"

    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/eg;

    invoke-direct {v0, p0}, Lo/eg;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 p0, 0x77

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public static ͺ()V
    .locals 4

    .line 1
    const-string v0, "RotationHelper"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->forceSystemLandscape()V

    .line 8
    .line 9
    .line 10
    const-string v1, "forceSystemLandscape: done"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "forceSystemLandscape: mBYDSettingDeviceManager is null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "forceSystemLandscape error: "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public static ͻ(Lo/i1;Lo/j1;)Lo/i1;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lo/i1;->getKey()Lo/j1;

    move-result-object v0

    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final ͼ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ͽ(Lo/v6;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lo/p;

    invoke-interface {p0}, Lo/p;->ˋ()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const-class p0, Ljava/lang/Double;

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final Ά(Lo/z0;)Lo/z0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lo/a1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo/a1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/a1;->intercepted()Lo/z0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final Έ(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(element)"

    invoke-static {p0, v0}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final Ή(I)I
    .locals 1

    .line 1
    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public static Ί(Lo/i1;Lo/j1;)Lo/k1;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lo/i1;->getKey()Lo/j1;

    move-result-object v0

    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lo/z2;->Ͱ:Lo/z2;

    :cond_0
    return-object p0
.end method

.method public static Ό(Lo/k1;Lo/k1;)Lo/k1;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/z2;->Ͱ:Lo/z2;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/i0;->Ͳ:Lo/i0;

    invoke-interface {p1, p0, v0}, Lo/k1;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/k1;

    :goto_0
    return-object p0
.end method

.method public static final Ύ(Ljava/lang/Object;Lo/q7;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static Ώ()V
    .locals 4

    .line 1
    const-string v0, "RotationHelper"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/byd/launcher/CoreService;->ͷ:Lcom/byd/launcher/manager/BYDSettingDeviceManager;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDSettingDeviceManager;->restoreRotation()V

    .line 8
    .line 9
    .line 10
    const-string v1, "restoreAutoRotation: done"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "restoreAutoRotation: mBYDSettingDeviceManager is null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "restoreAutoRotation error: "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public static final ΐ(Lo/k1;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lo/a2;->Ή:Lo/vh;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lo/fi;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    check-cast p1, Lo/fi;

    .line 12
    .line 13
    iget-object p0, p1, Lo/fi;->ˏ:[Lo/di;

    .line 14
    .line 15
    array-length p1, p0

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    if-gez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    aget-object p0, p0, p1

    .line 22
    .line 23
    invoke-static {v1}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_2
    sget-object p1, Lo/i0;->ͷ:Lo/i0;

    .line 28
    .line 29
    invoke-interface {p0, v1, p1}, Lo/k1;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    invoke-static {p0}, Lo/v1;->ͼ(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 40
    .line 41
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public static final Α(Lo/z0;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    instance-of v0, p0, Lo/j2;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    check-cast p0, Lo/j2;

    .line 6
    .line 7
    invoke-static {p1}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance v0, Lo/p0;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lo/p0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p2, Lo/n0;

    .line 25
    .line 26
    invoke-direct {p2, v1, v0}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    move-object v0, p2

    .line 30
    :goto_0
    iget-object p2, p0, Lo/j2;->ʹ:Lo/z0;

    .line 31
    .line 32
    invoke-virtual {p0}, Lo/j2;->getContext()Lo/k1;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lo/j2;->ͳ:Lo/n1;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lo/n1;->isDispatchNeeded(Lo/k1;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iput-object v0, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    .line 46
    .line 47
    iput v4, p0, Lo/l2;->Ͳ:I

    .line 48
    .line 49
    invoke-virtual {p0}, Lo/j2;->getContext()Lo/k1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v3, p1, p0}, Lo/n1;->dispatch(Lo/k1;Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_2
    invoke-static {}, Lo/ei;->ˋ()Lo/j3;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-wide v5, v2, Lo/j3;->Ͱ:J

    .line 63
    .line 64
    const-wide v7, 0x100000000L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmp-long v3, v5, v7

    .line 70
    .line 71
    if-ltz v3, :cond_3

    .line 72
    .line 73
    move v3, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v3, v1

    .line 76
    :goto_1
    if-eqz v3, :cond_4

    .line 77
    .line 78
    iput-object v0, p0, Lo/j2;->Ͷ:Ljava/lang/Object;

    .line 79
    .line 80
    iput v4, p0, Lo/l2;->Ͳ:I

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Lo/j3;->ͱ(Lo/l2;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v2, v4}, Lo/j3;->ͳ(Z)V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lo/j2;->getContext()Lo/k1;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    sget-object v6, Lo/z;->Ͳ:Lo/z;

    .line 96
    .line 97
    invoke-interface {v5, v6}, Lo/k1;->get(Lo/j1;)Lo/i1;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Lo/l6;

    .line 102
    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    invoke-interface {v5}, Lo/l6;->ˏ()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_5

    .line 110
    .line 111
    check-cast v5, Lo/s6;

    .line 112
    .line 113
    invoke-virtual {v5}, Lo/s6;->Ί()Ljava/util/concurrent/CancellationException;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p0, v0, v1}, Lo/j2;->ˋ(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lo/j2;->resumeWith(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move v1, v4

    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_5

    .line 131
    :cond_5
    :goto_2
    if-nez v1, :cond_a

    .line 132
    .line 133
    iget-object v0, p0, Lo/j2;->ͷ:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-interface {p2}, Lo/z0;->getContext()Lo/k1;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1, v0}, Lo/a2;->Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sget-object v4, Lo/a2;->Ή:Lo/vh;

    .line 144
    .line 145
    if-eq v0, v4, :cond_6

    .line 146
    .line 147
    invoke-static {p2, v1, v0}, Lo/e6;->ΐ(Lo/z0;Lo/k1;Ljava/lang/Object;)Lo/si;

    .line 148
    .line 149
    .line 150
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    move-object v4, v3

    .line 153
    :goto_3
    :try_start_1
    invoke-interface {p2, p1}, Lo/z0;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .line 155
    .line 156
    if-eqz v4, :cond_7

    .line 157
    .line 158
    :try_start_2
    invoke-virtual {v4}, Lo/si;->Τ()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_a

    .line 163
    .line 164
    :cond_7
    invoke-static {v1, v0}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catchall_1
    move-exception p1

    .line 169
    if-eqz v4, :cond_8

    .line 170
    .line 171
    invoke-virtual {v4}, Lo/si;->Τ()Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_9

    .line 176
    .line 177
    :cond_8
    invoke-static {v1, v0}, Lo/a2;->ΐ(Lo/k1;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_9
    throw p1

    .line 181
    :cond_a
    :goto_4
    invoke-virtual {v2}, Lo/j3;->ʹ()Z

    .line 182
    .line 183
    .line 184
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    if-nez p1, :cond_a

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :goto_5
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lo/l2;->Ͳ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 189
    .line 190
    .line 191
    :goto_6
    invoke-virtual {v2}, Lo/j3;->Ͱ()V

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :catchall_2
    move-exception p0

    .line 196
    invoke-virtual {v2}, Lo/j3;->Ͱ()V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_b
    invoke-interface {p0, p1}, Lo/z0;->resumeWith(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :goto_7
    return-void
.end method

.method public static Β(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    move-object/from16 v37, v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    :bitmap_blur_try
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v0, v12

    new-array v14, v13, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v14

    move v7, v0

    move v10, v0

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v12, -0x1

    add-int v6, v1, v1

    add-int/2addr v6, v3

    new-array v7, v13, [I

    new-array v8, v13, [I

    new-array v9, v13, [I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    add-int/lit8 v11, v6, 0x1

    shr-int/2addr v11, v3

    mul-int/2addr v11, v11

    mul-int/lit16 v13, v11, 0x100

    new-array v15, v13, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v13, :cond_1

    div-int v17, v3, v11

    aput v17, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    filled-new-array {v6, v3}, [I

    move-result-object v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    add-int/lit8 v11, v1, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    const/16 v19, 0x2

    move-object/from16 v20, v2

    if-ge v13, v12, :cond_6

    neg-int v2, v1

    move/from16 v29, v12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move v12, v2

    const/4 v2, 0x0

    :goto_2
    const v30, 0xff00

    const/high16 v31, 0xff0000

    move/from16 v32, v5

    move-object/from16 v33, v10

    if-gt v12, v1, :cond_3

    const/4 v5, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v10, v10, v17

    aget v10, v14, v10

    add-int v34, v12, v1

    aget-object v34, v3, v34

    and-int v31, v10, v31

    shr-int/lit8 v31, v31, 0x10

    aput v31, v34, v5

    and-int v30, v10, v30

    shr-int/lit8 v30, v30, 0x8

    const/16 v16, 0x1

    aput v30, v34, v16

    and-int/lit16 v10, v10, 0xff

    aput v10, v34, v19

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v11, v10

    aget v30, v34, v5

    mul-int v5, v30, v10

    add-int/2addr v2, v5

    aget v5, v34, v16

    mul-int v31, v5, v10

    add-int v21, v31, v21

    aget v31, v34, v19

    mul-int v10, v10, v31

    add-int v22, v10, v22

    if-lez v12, :cond_2

    add-int v26, v26, v30

    add-int v27, v27, v5

    add-int v28, v28, v31

    goto :goto_3

    :cond_2
    add-int v23, v23, v30

    add-int v24, v24, v5

    add-int v25, v25, v31

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v32

    move-object/from16 v10, v33

    goto :goto_2

    :cond_3
    move v10, v1

    move v5, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    aget v12, v15, v5

    aput v12, v7, v17

    aget v12, v15, v21

    aput v12, v8, v17

    aget v12, v15, v22

    aput v12, v9, v17

    sub-int v5, v5, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v12, v10, v1

    add-int/2addr v12, v6

    rem-int/2addr v12, v6

    aget-object v12, v3, v12

    const/16 v34, 0x0

    aget v35, v12, v34

    sub-int v23, v23, v35

    const/16 v16, 0x1

    aget v34, v12, v16

    sub-int v24, v24, v34

    aget v34, v12, v19

    sub-int v25, v25, v34

    if-nez v13, :cond_4

    add-int v34, v2, v1

    move-object/from16 v35, v15

    add-int/lit8 v15, v34, 0x1

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v33, v2

    goto :goto_5

    :cond_4
    move-object/from16 v35, v15

    :goto_5
    aget v15, v33, v2

    add-int v15, v18, v15

    aget v15, v14, v15

    and-int v34, v15, v31

    shr-int/lit8 v34, v34, 0x10

    const/16 v36, 0x0

    aput v34, v12, v36

    and-int v36, v15, v30

    shr-int/lit8 v36, v36, 0x8

    const/16 v16, 0x1

    aput v36, v12, v16

    and-int/lit16 v15, v15, 0xff

    aput v15, v12, v19

    add-int v26, v26, v34

    add-int v27, v27, v36

    add-int v28, v28, v15

    add-int v5, v5, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v6

    rem-int v12, v10, v6

    aget-object v12, v3, v12

    const/4 v15, 0x0

    aget v34, v12, v15

    add-int v23, v23, v34

    const/4 v15, 0x1

    aget v36, v12, v15

    add-int v24, v24, v36

    aget v12, v12, v19

    add-int v25, v25, v12

    sub-int v26, v26, v34

    sub-int v27, v27, v36

    sub-int v28, v28, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v35

    goto/16 :goto_4

    :cond_5
    move-object/from16 v35, v15

    add-int v18, v18, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v20

    move/from16 v12, v29

    move/from16 v5, v32

    move-object/from16 v10, v33

    goto/16 :goto_1

    :cond_6
    move/from16 v32, v5

    move-object/from16 v33, v10

    move/from16 v29, v12

    move-object/from16 v35, v15

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_c

    neg-int v2, v1

    mul-int v4, v2, v0

    move/from16 v22, v6

    move-object/from16 v23, v14

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move v6, v2

    move v14, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_7
    move/from16 v24, v0

    if-gt v6, v1, :cond_9

    const/4 v0, 0x0

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v5

    add-int v26, v6, v1

    aget-object v26, v3, v26

    aget v27, v7, v25

    aput v27, v26, v0

    aget v27, v8, v25

    const/16 v16, 0x1

    aput v27, v26, v16

    aget v25, v9, v25

    aput v25, v26, v19

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v25

    sub-int v25, v11, v25

    aget v27, v26, v0

    mul-int v0, v27, v25

    add-int/2addr v2, v0

    aget v0, v26, v16

    mul-int v28, v0, v25

    add-int v4, v28, v4

    aget v26, v26, v19

    mul-int v25, v25, v26

    add-int v10, v25, v10

    if-lez v6, :cond_7

    add-int v17, v17, v27

    add-int v18, v18, v0

    add-int v21, v21, v26

    goto :goto_8

    :cond_7
    add-int v12, v12, v27

    add-int/2addr v13, v0

    add-int v15, v15, v26

    :goto_8
    move/from16 v0, v32

    if-ge v6, v0, :cond_8

    add-int v14, v14, v24

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v32, v0

    move/from16 v0, v24

    goto :goto_7

    :cond_9
    move/from16 v0, v32

    move/from16 v26, v1

    move/from16 v25, v5

    move/from16 v14, v29

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v14, :cond_b

    const/high16 v27, -0x1000000

    aget v28, v23, v25

    and-int v27, v28, v27

    aget v28, v35, v2

    shl-int/lit8 v28, v28, 0x10

    or-int v27, v27, v28

    aget v28, v35, v4

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v35, v10

    or-int v27, v27, v28

    aput v27, v23, v25

    sub-int/2addr v2, v12

    sub-int/2addr v4, v13

    sub-int/2addr v10, v15

    sub-int v27, v26, v1

    add-int v27, v27, v22

    rem-int v27, v27, v22

    aget-object v27, v3, v27

    const/16 v28, 0x0

    aget v29, v27, v28

    sub-int v12, v12, v29

    const/16 v16, 0x1

    aget v28, v27, v16

    sub-int v13, v13, v28

    aget v28, v27, v19

    sub-int v15, v15, v28

    if-nez v5, :cond_a

    add-int v1, v6, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v24

    aput v1, v33, v6

    :cond_a
    aget v1, v33, v6

    add-int/2addr v1, v5

    aget v28, v7, v1

    const/16 v29, 0x0

    aput v28, v27, v29

    aget v29, v8, v1

    const/16 v16, 0x1

    aput v29, v27, v16

    aget v1, v9, v1

    aput v1, v27, v19

    add-int v17, v17, v28

    add-int v18, v18, v29

    add-int v21, v21, v1

    add-int v2, v2, v17

    add-int v4, v4, v18

    add-int v10, v10, v21

    add-int/lit8 v26, v26, 0x1

    rem-int v26, v26, v22

    aget-object v1, v3, v26

    const/16 v27, 0x0

    aget v28, v1, v27

    add-int v12, v12, v28

    const/16 v16, 0x1

    aget v29, v1, v16

    add-int v13, v13, v29

    aget v1, v1, v19

    add-int/2addr v15, v1

    sub-int v17, v17, v28

    sub-int v18, v18, v29

    sub-int v21, v21, v1

    add-int v25, v25, v24

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    goto/16 :goto_9

    :cond_b
    const/16 v16, 0x1

    const/16 v27, 0x0

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    move/from16 v32, v0

    move/from16 v29, v14

    move/from16 v6, v22

    move-object/from16 v14, v23

    move/from16 v0, v24

    goto/16 :goto_6

    :cond_c
    move/from16 v24, v0

    move-object/from16 v23, v14

    move/from16 v14, v29

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v20

    move-object/from16 v5, v23

    move/from16 v7, v24

    move/from16 v10, v24

    move v11, v14

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :bitmap_blur_end
    .catchall {:bitmap_blur_try .. :bitmap_blur_end} :bitmap_blur_error
    return-object v20
    :bitmap_blur_error
    move-exception v0
    move-object/from16 v1, v37
    move-object/from16 v2, p0
    invoke-static {v1, v2}, Lcom/byd/launcher/stability/BitmapCleanup;->release(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    throw v0
.end method

.method public static Γ(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, " nohup app_process /system/bin --nice-name=com.byd.launcher.core com.byd.launcher.CoreService > /sdcard/launcher/core_service.log 2>&1"

    const-string v1, "CLASSPATH="

    const-string v2, "AdbUtils"

    if-nez p0, :cond_0

    const-string p0, "Context is null for startCoreService"

    invoke-static {v2, p0}, Lo/q3;->ˏ(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ERROR: Context is null"

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lo/a2;->ͳ()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CoreService is already running, killing old process first..."

    invoke-static {v2, v5}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/a2;->Ε()V

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Lo/a2;->ͳ()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Old CoreService still alive, force killing..."

    invoke-static {v2, v5}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ps -A | grep \'com.byd.launcher.core\' | awk \'{print $2}\' | xargs kill -9"

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1
    const-string v5, "mkdir -p /sdcard/launcher"

    const/16 v6, 0x1f4

    invoke-static {v5, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v5, 0xa

    const/4 v7, 0x1

    if-ge v1, v5, :cond_3

    const-wide/16 v8, 0x12c

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Lo/a2;->ͳ()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    const-string v5, "ms"

    if-eqz v1, :cond_6

    move p0, v0

    :goto_2
    const/16 v1, 0x19

    if-ge p0, v1, :cond_4

    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    new-instance v6, Ljava/net/InetSocketAddress;

    const-string v8, "127.0.0.1"

    const/16 v9, 0x22b8

    invoke-direct {v6, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0xc8

    invoke-virtual {v1, v6, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    goto :goto_3

    :catch_0
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoreService started successfully in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms (port 8888 ready)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Service started successfully"

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoreService process running but port 8888 not ready after "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Service process started but port not ready"

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreService start command executed, but service not detected running after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tail -20 /sdcard/launcher/core_service.log"

    invoke-static {v0, v6}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreService log tail:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in startCoreService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final Δ(Lo/jg;Lo/jg;Lo/u4;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-static {v0, p2}, Lo/e6;->ˏ(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p1, p0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    new-instance p2, Lo/n0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, v0, p1}, Lo/n0;-><init>(ZLjava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    move-object p1, p2

    .line 18
    :goto_0
    sget-object p2, Lo/t1;->Ͱ:Lo/t1;

    .line 19
    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lo/s6;->Ζ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p1, Lo/e6;->Ͳ:Lo/vh;

    .line 28
    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    instance-of p1, p0, Lo/n0;

    .line 33
    .line 34
    if-nez p1, :cond_5

    .line 35
    .line 36
    instance-of p1, p0, Lo/t5;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lo/t5;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    :goto_1
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p1, Lo/t5;->ˋ:Lo/s5;

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move-object p2, p1

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    :goto_2
    move-object p2, p0

    .line 55
    :goto_3
    return-object p2

    .line 56
    :cond_5
    check-cast p0, Lo/n0;

    .line 57
    .line 58
    iget-object p0, p0, Lo/n0;->ˋ:Ljava/lang/Throwable;

    .line 59
    .line 60
    throw p0
.end method

.method public static Ε()V
    .locals 4

    .line 1
    const-string v0, "AdbUtils"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lo/a2;->ͳ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ps -A | grep -E \'com\\.byd\\.launcher\\.core\' | awk \'{print $2}\' | xargs kill -9"

    const/16 v2, 0x5dc

    invoke-static {v1, v2}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Lo/a2;->ͳ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_2
    :goto_0
    const-string v1, "CoreService is not running"

    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in stopCoreService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static final Ζ(JJJLjava/lang/String;)J
    .locals 23

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    move-wide/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v4, p6

    .line 6
    .line 7
    sget v5, Lo/xh;->ˋ:I

    .line 8
    .line 9
    :try_start_0
    invoke-static/range {p6 .. p6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v6, 0x0

    .line 15
    :goto_0
    if-nez v6, :cond_0

    .line 16
    .line 17
    move-wide/from16 v8, p0

    .line 18
    .line 19
    goto/16 :goto_a

    .line 20
    .line 21
    :cond_0
    new-instance v7, Lo/z5;

    .line 22
    .line 23
    const/4 v8, 0x2

    .line 24
    const/16 v9, 0x24

    .line 25
    .line 26
    invoke-direct {v7, v8, v9}, Lo/z5;-><init>(II)V

    .line 27
    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x1

    .line 31
    iget v7, v7, Lo/x5;->ͱ:I

    .line 32
    .line 33
    const/16 v12, 0xa

    .line 34
    .line 35
    if-gt v12, v7, :cond_1

    .line 36
    .line 37
    move v7, v11

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v7, v10

    .line 40
    :goto_1
    if-eqz v7, :cond_12

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    :cond_2
    :goto_2
    move-object/from16 v19, v6

    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/16 v9, 0x30

    .line 57
    .line 58
    if-ge v8, v9, :cond_4

    .line 59
    .line 60
    const/4 v9, -0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    if-ne v8, v9, :cond_5

    .line 63
    .line 64
    move v9, v10

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    move v9, v11

    .line 67
    :goto_3
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    if-gez v9, :cond_8

    .line 73
    .line 74
    if-ne v7, v11, :cond_6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_6
    const/16 v9, 0x2d

    .line 78
    .line 79
    if-ne v8, v9, :cond_7

    .line 80
    .line 81
    const-wide/high16 v13, -0x8000000000000000L

    .line 82
    .line 83
    move v8, v11

    .line 84
    goto :goto_4

    .line 85
    :cond_7
    const/16 v9, 0x2b

    .line 86
    .line 87
    if-ne v8, v9, :cond_2

    .line 88
    .line 89
    move v9, v10

    .line 90
    move v8, v11

    .line 91
    goto :goto_5

    .line 92
    :cond_8
    move v8, v10

    .line 93
    :goto_4
    move v9, v8

    .line 94
    :goto_5
    const-wide v15, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const-wide/16 v17, 0x0

    .line 100
    .line 101
    move-wide/from16 v10, v17

    .line 102
    .line 103
    move-wide/from16 v17, v15

    .line 104
    .line 105
    :goto_6
    if-ge v8, v7, :cond_d

    .line 106
    .line 107
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static {v5, v12}, Ljava/lang/Character;->digit(II)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-gez v5, :cond_9

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_9
    cmp-long v19, v10, v17

    .line 119
    .line 120
    if-gez v19, :cond_a

    .line 121
    .line 122
    cmp-long v17, v17, v15

    .line 123
    .line 124
    if-nez v17, :cond_2

    .line 125
    .line 126
    move-object/from16 v19, v6

    .line 127
    .line 128
    move/from16 v20, v7

    .line 129
    .line 130
    int-to-long v6, v12

    .line 131
    div-long v17, v13, v6

    .line 132
    .line 133
    cmp-long v6, v10, v17

    .line 134
    .line 135
    if-gez v6, :cond_b

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_a
    move-object/from16 v19, v6

    .line 139
    .line 140
    move/from16 v20, v7

    .line 141
    .line 142
    :cond_b
    int-to-long v6, v12

    .line 143
    mul-long/2addr v10, v6

    .line 144
    int-to-long v5, v5

    .line 145
    add-long v21, v13, v5

    .line 146
    .line 147
    cmp-long v7, v10, v21

    .line 148
    .line 149
    if-gez v7, :cond_c

    .line 150
    .line 151
    :goto_7
    const/4 v5, 0x0

    .line 152
    goto :goto_8

    .line 153
    :cond_c
    sub-long/2addr v10, v5

    .line 154
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    move-object/from16 v6, v19

    .line 157
    .line 158
    move/from16 v7, v20

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_d
    move-object/from16 v19, v6

    .line 162
    .line 163
    if-eqz v9, :cond_e

    .line 164
    .line 165
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    goto :goto_8

    .line 170
    :cond_e
    neg-long v5, v10

    .line 171
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :goto_8
    const/16 v6, 0x27

    .line 176
    .line 177
    const-string v7, "System property \'"

    .line 178
    .line 179
    if-eqz v5, :cond_11

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v8

    .line 185
    cmp-long v5, v0, v8

    .line 186
    .line 187
    if-gtz v5, :cond_f

    .line 188
    .line 189
    cmp-long v5, v8, v2

    .line 190
    .line 191
    if-gtz v5, :cond_f

    .line 192
    .line 193
    const/4 v10, 0x1

    .line 194
    goto :goto_9

    .line 195
    :cond_f
    const/4 v10, 0x0

    .line 196
    :goto_9
    if-eqz v10, :cond_10

    .line 197
    .line 198
    :goto_a
    return-wide v8

    .line 199
    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v4, "\' should be in range "

    .line 210
    .line 211
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v0, ".."

    .line 218
    .line 219
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v0, ", but is \'"

    .line 226
    .line 227
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v5

    .line 248
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v2, "\' has unrecognized value \'"

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    move-object/from16 v5, v19

    .line 264
    .line 265
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "radix 10 was not in valid range "

    .line 288
    .line 289
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v2, Lo/z5;

    .line 293
    .line 294
    invoke-direct {v2, v8, v9}, Lo/z5;-><init>(II)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0
.end method

.method public static Η(Ljava/lang/String;IIII)I
    .locals 7

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const p3, 0x7fffffff

    .line 11
    .line 12
    .line 13
    :cond_1
    int-to-long v0, p1

    .line 14
    int-to-long v2, p2

    .line 15
    int-to-long v4, p3

    .line 16
    move-object v6, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lo/a2;->Ζ(JJJLjava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
.end method

.method public static final Θ(Lo/k1;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lo/i0;->Ͷ:Lo/i0;

    invoke-interface {p0, v0, v1}, Lo/k1;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lo/e6;->Ͱ(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final Ι(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lo/eg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lo/eg;

    iget-object p0, p0, Lo/eg;->Ͱ:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final Κ(Lo/z0;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Lo/j2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lo/fg;->ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static final Λ(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "with(entries.iterator().\u2026ingletonMap(key, value) }"

    invoke-static {p0, v0}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final Μ(Lo/k1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {p0}, Lo/a2;->Θ(Lo/k1;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lo/a2;->Ή:Lo/vh;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lo/fi;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lo/fi;-><init>(Lo/k1;I)V

    sget-object p1, Lo/i0;->ͺ:Lo/i0;

    invoke-interface {p0, v0, p1}, Lo/k1;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p1}, Lo/v1;->ͼ(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
