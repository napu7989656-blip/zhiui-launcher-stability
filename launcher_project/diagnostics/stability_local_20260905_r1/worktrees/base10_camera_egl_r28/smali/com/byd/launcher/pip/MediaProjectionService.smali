.class public Lcom/byd/launcher/pip/MediaProjectionService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p3, 0x1a

    .line 4
    .line 5
    if-lt p2, p3, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lo/g0;->Ͳ()Landroid/app/NotificationChannel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lo/g0;->Ύ(Landroid/app/NotificationChannel;)V

    .line 12
    .line 13
    .line 14
    const-class v1, Landroid/app/NotificationManager;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/app/NotificationManager;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v1, v0}, Lo/g0;->Ώ(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-lt p2, p3, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Lo/g0;->ͱ(Landroid/content/Context;)Landroid/app/Notification$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p3, Landroid/app/Notification$Builder;

    .line 35
    .line 36
    invoke-direct {p3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const-string v0, "\u753b\u4e2d\u753b"

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    const-string v0, "\u5730\u56fe\u6295\u5f71\u8fd0\u884c\u4e2d"

    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const v0, 0x1080024

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    const/16 v0, 0x1d

    .line 63
    .line 64
    if-lt p2, v0, :cond_2

    .line 65
    .line 66
    invoke-static {p0, p3}, Lo/v7;->ΐ(Lcom/byd/launcher/pip/MediaProjectionService;Landroid/app/Notification;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/16 p2, 0x270f

    .line 71
    .line 72
    invoke-virtual {p0, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const-string p2, "result_code"

    .line 78
    .line 79
    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    const-string p3, "result_data"

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/content/Intent;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    const-string p3, "media_projection"

    .line 95
    .line 96
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Landroid/media/projection/MediaProjectionManager;

    .line 101
    .line 102
    if-eqz p3, :cond_3

    .line 103
    .line 104
    invoke-virtual {p3, p2, p1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    .line 105
    .line 106
    .line 107
    :cond_3
    const/4 p1, 0x2

    .line 108
    return p1
.end method
