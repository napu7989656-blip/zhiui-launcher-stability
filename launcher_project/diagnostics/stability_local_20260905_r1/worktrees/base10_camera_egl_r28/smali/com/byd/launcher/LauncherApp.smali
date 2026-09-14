.class public Lcom/byd/launcher/LauncherApp;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final synthetic ˏ:I


# instance fields
.field public final ˋ:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byd/launcher/LauncherApp;->ˋ:Landroid/os/Handler;

    return-void
.end method

.method public static ˋ(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lo/a2;->Ί:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    sput-object v0, Lo/a2;->Ί:Ljava/lang/Boolean;

    .line 14
    .line 15
    move v0, v1

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/byd/launcher/NavBarService;->ΰ()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v2, "LauncherApp"

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string p0, "SCREEN_ON: NavBarService is alive, all good"

    .line 28
    .line 29
    invoke-static {v2, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const-string v0, "SCREEN_ON: NavBarService not alive, triggering accessibility restart"

    .line 34
    .line 35
    invoke-static {v2, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/byd/launcher/BootReceiver;->ˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    const-string p0, "Another thread is already toggling accessibility"

    .line 48
    .line 49
    invoke-static {v2, p0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    .line 54
    .line 55
    new-instance v1, Lo/ϑ;

    .line 56
    .line 57
    invoke-direct {v1, p0, v3}, Lo/ϑ;-><init>(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    const-string p0, "ScreenOnInit"

    .line 61
    .line 62
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "LauncherApp"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Debugger detected"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 22
    .line 23
    and-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "Debuggable flag detected in release build"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/16 v4, 0x40

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    array-length v3, v3

    .line 52
    if-lez v3, :cond_3

    .line 53
    .line 54
    const-string v3, "SHA-256"

    .line 55
    .line 56
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 61
    .line 62
    aget-object v2, v2, v0

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    array-length v4, v2

    .line 78
    move v5, v0

    .line 79
    :goto_0
    if-ge v5, v4, :cond_2

    .line 80
    .line 81
    aget-byte v6, v2, v5

    .line 82
    .line 83
    const-string v7, "%02x"

    .line 84
    .line 85
    const/4 v8, 0x1

    .line 86
    new-array v8, v8, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    aput-object v6, v8, v0

    .line 93
    .line 94
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/16 v3, 0x8

    .line 109
    .line 110
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v4, "Signature check failed: "

    .line 118
    .line 119
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v3, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    new-instance v2, Lo/f7;

    .line 126
    .line 127
    invoke-direct {v2, p0}, Lo/f7;-><init>(Lcom/byd/launcher/LauncherApp;)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Landroid/content/IntentFilter;

    .line 131
    .line 132
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v4, "android.intent.action.SCREEN_ON"

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const-string v2, "Runtime SCREEN_ON receiver registered"

    .line 144
    .line 145
    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lo/e7;

    .line 149
    .line 150
    invoke-direct {v1, p0, v0}, Lo/e7;-><init>(Lcom/byd/launcher/LauncherApp;I)V

    .line 151
    .line 152
    .line 153
    sput-object v1, Lo/c0;->ͼ:Ljava/lang/Runnable;

    .line 154
    .line 155
    return-void
.end method
