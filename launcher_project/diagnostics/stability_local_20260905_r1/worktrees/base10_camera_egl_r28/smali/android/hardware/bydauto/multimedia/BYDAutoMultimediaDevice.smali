.class public Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;
.super Landroid/hardware/bydauto/AbsBYDAutoDevice;
.source "SourceFile"


# static fields
.field public static final ACTION_PAUSE:I = 0x2

.field public static final ACTION_PLAY:I = 0x1

.field public static final ACTION_PLAY_NEXT:I = 0x3

.field public static final ACTION_PLAY_PRE:I = 0x4

.field public static final MULTIMEDIA_PLAY_MODE_ALL_REPEAT:I = 0x0

.field public static final MULTIMEDIA_PLAY_MODE_PREVIEW:I = 0x4

.field public static final MULTIMEDIA_PLAY_MODE_RANDOM:I = 0x2

.field public static final MULTIMEDIA_PLAY_MODE_SCAN:I = 0x3

.field public static final MULTIMEDIA_PLAY_MODE_SINGLE_REPEAT:I = 0x1

.field public static final MULTIMEDIA_STATE_PAUSE:I = 0x2

.field public static final MULTIMEDIA_STATE_PLAY:I = 0x1

.field public static final MULTIMEDIA_STATE_STOP:I = 0x0

.field public static final MULTIMEDIA_TYPE_AM:I = 0x1

.field public static final MULTIMEDIA_TYPE_BT:I = 0x6

.field public static final MULTIMEDIA_TYPE_FM:I = 0x0

.field public static final MULTIMEDIA_TYPE_LOCAL_AUDIO:I = 0x7

.field public static final MULTIMEDIA_TYPE_LOCAL_VIDEO:I = 0x8

.field public static final MULTIMEDIA_TYPE_SD_AUDIO:I = 0x4

.field public static final MULTIMEDIA_TYPE_SD_VIDEO:I = 0x5

.field public static final MULTIMEDIA_TYPE_USB_AUDIO:I = 0x2

.field public static final MULTIMEDIA_TYPE_USB_VIDEO:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/bydauto/AbsBYDAutoDevice;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/multimedia/BYDAutoMultimediaDevice;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public controlMedia(II)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMediaType()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlayMode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlayState()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postEvent(IIILjava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerListener(Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListener(Landroid/hardware/bydauto/multimedia/AbsBYDAutoMultimediaListener;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
