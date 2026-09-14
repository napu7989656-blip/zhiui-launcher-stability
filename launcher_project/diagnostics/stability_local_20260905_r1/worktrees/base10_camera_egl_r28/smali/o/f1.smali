.class public final Lo/f1;
.super Landroid/os/Binder;
.source "SourceFile"


# virtual methods
.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    .line 1
    const-string v0, "com.byd.launcher.ITouchInjector"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    if-ne p1, v3, :cond_7

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/view/MotionEvent;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    if-eqz p2, :cond_5

    .line 32
    .line 33
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/CoreService;->ͱ()V

    .line 34
    .line 35
    .line 36
    const-class p4, Landroid/view/InputEvent;

    .line 37
    .line 38
    const-string v0, "setDisplayId"

    .line 39
    .line 40
    new-array v4, v2, [Ljava/lang/Class;

    .line 41
    .line 42
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v5, v4, v6

    .line 46
    .line 47
    invoke-virtual {p4, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    new-array v0, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    aput-object p1, v0, v6

    .line 58
    .line 59
    invoke-virtual {p4, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lcom/byd/launcher/CoreService;->Ή()V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-object p4, Lcom/byd/launcher/CoreService;->Ώ:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    if-eqz p4, :cond_2

    .line 74
    .line 75
    sget-object v0, Lcom/byd/launcher/CoreService;->Ύ:Ljava/lang/Object;

    .line 76
    .line 77
    new-array v4, v3, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p2, v4, v6

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    aput-object v3, v4, v2

    .line 86
    .line 87
    invoke-virtual {p4, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_2
    if-eq p1, v2, :cond_3

    .line 91
    .line 92
    if-ne p1, v1, :cond_4

    .line 93
    .line 94
    :cond_3
    invoke-static {}, Lcom/byd/launcher/CoreService;->Ή()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    sget-wide v3, Lcom/byd/launcher/CoreService;->ˋ:J

    .line 104
    .line 105
    sub-long/2addr v0, v3

    .line 106
    const-wide/16 v3, 0x3e8

    .line 107
    .line 108
    cmp-long p4, v0, v3

    .line 109
    .line 110
    if-lez p4, :cond_4

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    sput-wide v0, Lcom/byd/launcher/CoreService;->ˋ:J

    .line 117
    .line 118
    new-instance p4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v0, "Binder touch inject err: "

    .line 121
    .line 122
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "CoreService"

    .line 126
    .line 127
    invoke-static {p1, p4, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 131
    .line 132
    .line 133
    :cond_5
    if-eqz p3, :cond_6

    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    :cond_6
    return v2

    .line 139
    :cond_7
    if-ne p1, v1, :cond_9

    .line 140
    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/byd/launcher/CoreService;->Ή()V

    .line 145
    .line 146
    .line 147
    if-eqz p3, :cond_8

    .line 148
    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    .line 151
    .line 152
    :cond_8
    return v2

    .line 153
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    return p1
.end method
