.class public final Lo/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ρ:Landroid/view/animation/PathInterpolator;

.field public static final Σ:Landroid/view/animation/PathInterpolator;

.field public static final Τ:[I


# instance fields
.field public final stabilityGlassSlot:Lcom/byd/launcher/stability/TileSlot;
.field public final stabilityGlassPrepareSlot:Lcom/byd/launcher/stability/TileSlot;
.field public final stabilityNavSlot:Lcom/byd/launcher/stability/TileSlot;
.field public final stabilityNavActionGate:Lcom/byd/launcher/stability/ReadAfterAction;
.field public volatile stabilityNavTracking:Z
.field public final stabilityThemeSlot:Lcom/byd/launcher/stability/TileSlot;
.field public final stabilitySocActionGate:Lcom/byd/launcher/stability/ReadAfterAction;
.field public final stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;
.field public volatile stabilitySocTracking:Z
.field public volatile stabilityTileEpoch:Ljava/lang/Object;
.field public final stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
.field public final stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;
.field public stabilityLayoutListener:Lo/ze;
.field public volatile stabilityDisposed:Z
.field public ʹ:Landroid/view/View;

.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Landroid/view/WindowManager;

.field public final Ͱ:Landroid/os/Handler;

.field public final ͱ:Landroid/os/Handler;

.field public Ͳ:Landroid/view/ViewGroup;

.field public ͳ:Landroid/view/View;

.field public Ͷ:Landroid/view/View;

.field public volatile ͷ:Z

.field public volatile ͺ:Z

.field public volatile ͻ:Z

.field public ͼ:I

.field public ͽ:J

.field public Ά:Z

.field public final Έ:Lo/ie;

.field public Ή:Lo/af;

.field public Ί:Lo/qe;

.field public final Ό:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public Ύ:Lo/cf;

.field public Ώ:Landroid/view/View;

.field public ΐ:Z

.field public Α:I

.field public final Β:Ljava/util/ArrayList;

.field public Γ:Lo/f4;

.field public Δ:Lo/xe;

.field public Ε:I

.field public volatile Ζ:Z

.field public volatile Η:J

.field public volatile Θ:Z

.field public volatile Ι:I

.field public volatile Κ:I

.field public volatile Λ:I

.field public volatile Μ:Z

.field public volatile Ν:Z

.field public volatile Ξ:Z

.field public volatile Ο:Z

.field public volatile Π:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lo/ff;->Σ:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0x15e

    const/16 v1, 0x2bc

    const/16 v2, 0x96

    const/16 v3, 0x4b0

    const/16 v4, 0x7d0

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lo/ff;->Τ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Lcom/byd/launcher/stability/TileSlot;
    invoke-direct {v0}, Lcom/byd/launcher/stability/TileSlot;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityGlassSlot:Lcom/byd/launcher/stability/TileSlot;
    new-instance v0, Lcom/byd/launcher/stability/TileSlot;
    invoke-direct {v0}, Lcom/byd/launcher/stability/TileSlot;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityGlassPrepareSlot:Lcom/byd/launcher/stability/TileSlot;

    new-instance v0, Lcom/byd/launcher/stability/TileSlot;
    invoke-direct {v0}, Lcom/byd/launcher/stability/TileSlot;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityNavSlot:Lcom/byd/launcher/stability/TileSlot;
    new-instance v0, Lcom/byd/launcher/stability/ReadAfterAction;
    invoke-direct {v0}, Lcom/byd/launcher/stability/ReadAfterAction;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityNavActionGate:Lcom/byd/launcher/stability/ReadAfterAction;

    new-instance v0, Lcom/byd/launcher/stability/TileSlot;
    invoke-direct {v0}, Lcom/byd/launcher/stability/TileSlot;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityThemeSlot:Lcom/byd/launcher/stability/TileSlot;

    new-instance v0, Lcom/byd/launcher/stability/ReadAfterAction;
    invoke-direct {v0}, Lcom/byd/launcher/stability/ReadAfterAction;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilitySocActionGate:Lcom/byd/launcher/stability/ReadAfterAction;

    new-instance v0, Lcom/byd/launcher/stability/TileSlot;
    invoke-direct {v0}, Lcom/byd/launcher/stability/TileSlot;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilitySocSlot:Lcom/byd/launcher/stability/TileSlot;

    new-instance v0, Ljava/lang/Object;
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityTileEpoch:Ljava/lang/Object;


    new-instance v0, Lcom/byd/launcher/stability/LatestRead;
    invoke-direct {v0}, Lcom/byd/launcher/stability/LatestRead;-><init>()V
    iput-object v0, p0, Lo/ff;->stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;

    new-instance v0, Lcom/byd/launcher/stability/QuickSettingsHandler;

    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/QuickSettingsHandler;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    new-instance v0, Lcom/byd/launcher/stability/QuickSettingsHandler;

    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/QuickSettingsHandler;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ff;->ͱ:Landroid/os/Handler;

    new-instance v0, Lcom/byd/launcher/stability/InstrumentReadHost;
    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/InstrumentReadHost;-><init>(Lo/ff;)V
    new-instance v1, Lcom/byd/launcher/stability/InstrumentReads;
    invoke-direct {v1, v0}, Lcom/byd/launcher/stability/InstrumentReads;-><init>(Lcom/byd/launcher/stability/InstrumentReads$Host;)V
    iput-object v1, p0, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ff;->ͷ:Z

    iput-boolean v0, p0, Lo/ff;->ͺ:Z

    iput-boolean v0, p0, Lo/ff;->ͻ:Z

    iput v0, p0, Lo/ff;->ͼ:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/ff;->ͽ:J

    iput-boolean v0, p0, Lo/ff;->Ά:Z

    new-instance v3, Lo/ie;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    iput-object v3, p0, Lo/ff;->Έ:Lo/ie;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, Lo/ff;->ΐ:Z

    iput v0, p0, Lo/ff;->Α:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lo/ff;->Β:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lo/ff;->Ζ:Z

    iput-wide v1, p0, Lo/ff;->Η:J

    iput-boolean v0, p0, Lo/ff;->Θ:Z

    const/4 v1, -0x1

    iput v1, p0, Lo/ff;->Ι:I

    iput v0, p0, Lo/ff;->Κ:I

    iput v1, p0, Lo/ff;->Λ:I

    iput-boolean v0, p0, Lo/ff;->Μ:Z

    iput-boolean v0, p0, Lo/ff;->Ν:Z

    iput-boolean v0, p0, Lo/ff;->Ξ:Z

    iput-boolean v0, p0, Lo/ff;->Ο:Z

    iput-boolean v0, p0, Lo/ff;->Π:Z

    iput-object p1, p0, Lo/ff;->ˋ:Landroid/content/Context;

    iput-object p2, p0, Lo/ff;->ˏ:Landroid/view/WindowManager;

    return-void
.end method

.method public static ͱ(I)I
    .locals 2

    .line 1
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0xff

    if-lt p0, v1, :cond_1

    const/16 p0, 0x64

    return p0

    :cond_1
    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x43750000    # 245.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static ͺ(I)I
    .locals 1

    .line 1
    add-int/lit8 p0, p0, -0xc

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static ͼ(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, -0x1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z
    move-result v1
    if-eqz v1, :wait_enter
    return v0
    :wait_enter


    .line 2
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 18
    .line 19
    .line 20
    filled-new-array {v0}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lo/ve;

    .line 25
    .line 26
    invoke-direct {v4, v3, p1, v2}, Lo/ve;-><init>([ILjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v1, p0, p1, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    const-wide/16 v4, 0x2

    .line 36
    .line 37
    invoke-virtual {v2, v4, v5, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    move-result p1
    if-nez p1, :wait_completed
    return v0
    :wait_completed

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    aget p0, v3, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :wait_interrupted
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return p0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "queryCoreInt "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, ": "

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, "QuickSettingsMgr"

    .line 61
    .line 62
    invoke-static {p1, v1, p0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return v0
    :wait_interrupted
    move-exception v1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    const/4 v0, -0x1
    return v0
.end method


# virtual methods
.method public final ʹ()V
    .locals 9

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-boolean v0, p0, Lo/ff;->ͷ:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lo/ff;->stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestRead;->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/InstrumentReads;->invalidate()V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/TileSnapshots;->invalidate(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/SocRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/NavRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/GlassRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/ThemeRead;->close(Lo/ff;)V
    iget-boolean v0, p0, Lo/ff;->ͺ:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iput-boolean v2, p0, Lo/ff;->ͺ:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Lo/ff;->Ά()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 49
    .line 50
    instance-of v3, v0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    check-cast v0, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->setSwipeEnabled(Z)V

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {p0}, Lo/ff;->ͳ()V

    .line 60
    .line 61
    .line 62
    iput-boolean v2, p0, Lo/ff;->ͷ:Z

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lo/ff;->ͺ:Z

    .line 66
    .line 67
    iget-object v3, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object v4, p0, Lo/ff;->Έ:Lo/ie;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lo/ff;->Ή:Lo/af;

    .line 75
    .line 76
    iget-object v4, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 77
    .line 78
    if-eqz v3, :cond_5

    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v5, p0, Lo/ff;->Ή:Lo/af;

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :catch_0
    :cond_5
    iget-object v3, p0, Lo/ff;->Ί:Lo/qe;

    .line 90
    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    :catch_1
    :cond_6
    iget-object v3, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 97
    .line 98
    if-nez v3, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0}, Lo/ff;->Ά()V

    .line 101
    .line 102
    .line 103
    iput-boolean v2, p0, Lo/ff;->ͺ:Z

    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_7
    iget-object v2, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v2}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const/4 v3, 0x0

    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    move v4, v3

    .line 117
    goto :goto_0

    .line 118
    :cond_8
    iget-object v4, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    .line 130
    neg-int v4, v4

    .line 131
    int-to-float v4, v4

    .line 132
    :goto_0
    iget-object v5, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 133
    .line 134
    const/4 v6, 0x2

    .line 135
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    iget-object v5, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    const-wide/16 v7, 0x64

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_9
    const-wide/16 v7, 0x118

    .line 154
    .line 155
    :goto_1
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    sget-object v5, Lo/ff;->Σ:Landroid/view/animation/PathInterpolator;

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    new-instance v7, Lo/ua;

    .line 166
    .line 167
    invoke-direct {v7, v0, p0}, Lo/ua;-><init>(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 175
    .line 176
    .line 177
    iget-object v4, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 178
    .line 179
    if-eqz v4, :cond_b

    .line 180
    .line 181
    invoke-virtual {v4, v6, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-eqz v2, :cond_a

    .line 195
    .line 196
    const-wide/16 v2, 0x50

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_a
    const-wide/16 v2, 0xdc

    .line 200
    .line 201
    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    new-instance v2, Lo/ie;

    .line 210
    .line 211
    invoke-direct {v2, p0, v0}, Lo/ie;-><init>(Lo/ff;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 219
    .line 220
    .line 221
    :cond_b
    :goto_3
    return-void
.end method

.method public final ˋ(Landroid/view/View;)V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive
    invoke-static {p0}, Lcom/byd/launcher/stability/GlassRead;->close(Lo/ff;)V

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/ff;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    const v0, -0xf000001

    goto :goto_0

    :cond_1
    const/high16 v0, -0x10000000

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    const v0, -0x2f000001

    goto :goto_1

    :cond_3
    const/high16 v0, -0x30000000

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x9

    new-instance v2, Lo/x9;

    invoke-direct {v2, p0, v1, p1}, Lo/x9;-><init>(Lo/ff;ZLandroid/view/View;)V

    invoke-static {p0, v0, v2}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    return-void
.end method

.method public final ˏ()V
    .locals 11

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-boolean v2, p0, Lo/ff;->Ά:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    move v2, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/high16 v2, -0x1000000

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    iget-boolean v2, p0, Lo/ff;->Ά:Z

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    const v2, -0x66000001

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/high16 v2, -0x67000000

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    :cond_4
    iget-boolean v0, p0, Lo/ff;->Ά:Z

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    const v2, -0x22cccccd

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_5
    const v2, -0x22000001

    .line 48
    .line 49
    .line 50
    :goto_2
    const v3, -0x44000001

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    const v4, -0x44cccccd

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_6
    move v4, v3

    .line 60
    :goto_3
    if-eqz v0, :cond_7

    .line 61
    .line 62
    const v3, -0x44bdbdbe

    .line 63
    .line 64
    .line 65
    :cond_7
    if-eqz v0, :cond_8

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_8
    const v1, -0xcccccd

    .line 69
    .line 70
    .line 71
    :goto_4
    sget v0, Lo/if;->qs_volume_value:I

    .line 72
    .line 73
    sget v5, Lo/if;->qs_brightness_value:I

    .line 74
    .line 75
    sget v6, Lo/if;->qs_instrument_brightness_value:I

    .line 76
    .line 77
    sget v7, Lo/if;->qs_nav_volume_value:I

    .line 78
    .line 79
    filled-new-array {v0, v5, v6, v7}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v5, 0x0

    .line 84
    move v6, v5

    .line 85
    :goto_5
    const/4 v7, 0x4

    .line 86
    if-ge v6, v7, :cond_a

    .line 87
    .line 88
    aget v7, v0, v6

    .line 89
    .line 90
    iget-object v8, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Landroid/widget/TextView;

    .line 97
    .line 98
    if-eqz v7, :cond_9

    .line 99
    .line 100
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_a
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 107
    .line 108
    sget v1, Lo/if;->qs_slider_section:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 115
    .line 116
    if-eqz v1, :cond_e

    .line 117
    .line 118
    check-cast v0, Landroid/view/ViewGroup;

    .line 119
    .line 120
    move v1, v5

    .line 121
    :goto_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-ge v1, v6, :cond_e

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    instance-of v7, v6, Landroid/view/ViewGroup;

    .line 132
    .line 133
    if-eqz v7, :cond_d

    .line 134
    .line 135
    check-cast v6, Landroid/view/ViewGroup;

    .line 136
    .line 137
    move v7, v5

    .line 138
    :goto_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-ge v7, v8, :cond_d

    .line 143
    .line 144
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    instance-of v9, v8, Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v9, :cond_b

    .line 151
    .line 152
    check-cast v8, Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_b
    instance-of v9, v8, Landroid/widget/ImageView;

    .line 159
    .line 160
    if-eqz v9, :cond_c

    .line 161
    .line 162
    instance-of v9, v8, Landroid/widget/SeekBar;

    .line 163
    .line 164
    if-nez v9, :cond_c

    .line 165
    .line 166
    check-cast v8, Landroid/widget/ImageView;

    .line 167
    .line 168
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 169
    .line 170
    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 171
    .line 172
    .line 173
    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_e
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 180
    .line 181
    sget v1, Lo/if;->qs_soc_section:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const/high16 v1, 0x1a000000

    .line 188
    .line 189
    const v3, 0x33ffffff

    .line 190
    .line 191
    .line 192
    const/high16 v4, 0x41800000    # 16.0f

    .line 193
    .line 194
    iget-object v6, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 195
    .line 196
    if-eqz v0, :cond_10

    .line 197
    .line 198
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    .line 199
    .line 200
    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 212
    .line 213
    mul-float/2addr v8, v4

    .line 214
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 215
    .line 216
    .line 217
    iget-boolean v8, p0, Lo/ff;->Ά:Z

    .line 218
    .line 219
    if-eqz v8, :cond_f

    .line 220
    .line 221
    move v8, v1

    .line 222
    goto :goto_9

    .line 223
    :cond_f
    move v8, v3

    .line 224
    :goto_9
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 231
    .line 232
    sget v7, Lo/if;->qs_soc_slider:I

    .line 233
    .line 234
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Landroid/widget/SeekBar;

    .line 239
    .line 240
    iget-object v7, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 241
    .line 242
    sget v8, Lo/if;->qs_soc_icon:I

    .line 243
    .line 244
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Landroid/widget/ImageView;

    .line 249
    .line 250
    iget-object v8, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 251
    .line 252
    sget v9, Lo/if;->qs_soc_value:I

    .line 253
    .line 254
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    check-cast v8, Landroid/widget/TextView;

    .line 259
    .line 260
    if-eqz v0, :cond_10

    .line 261
    .line 262
    invoke-virtual {p0, v0, v8, v7}, Lo/ff;->Ώ(Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 263
    .line 264
    .line 265
    :cond_10
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 266
    .line 267
    if-nez v0, :cond_11

    .line 268
    .line 269
    goto :goto_d

    .line 270
    :cond_11
    sget v0, Lo/if;->qs_volume_slider:I

    .line 271
    .line 272
    sget v7, Lo/if;->qs_brightness_slider:I

    .line 273
    .line 274
    sget v8, Lo/if;->qs_instrument_brightness_slider:I

    .line 275
    .line 276
    sget v9, Lo/if;->qs_nav_volume_slider:I

    .line 277
    .line 278
    sget v10, Lo/if;->qs_soc_slider:I

    .line 279
    .line 280
    filled-new-array {v0, v7, v8, v9, v10}, [I

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :goto_a
    const/4 v7, 0x5

    .line 285
    if-ge v5, v7, :cond_16

    .line 286
    .line 287
    aget v7, v0, v5

    .line 288
    .line 289
    iget-object v8, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    check-cast v8, Landroid/widget/SeekBar;

    .line 296
    .line 297
    if-nez v8, :cond_12

    .line 298
    .line 299
    goto :goto_c

    .line 300
    :cond_12
    sget v9, Lo/if;->qs_soc_slider:I

    .line 301
    .line 302
    if-eq v7, v9, :cond_14

    .line 303
    .line 304
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    check-cast v7, Landroid/view/View;

    .line 309
    .line 310
    if-eqz v7, :cond_14

    .line 311
    .line 312
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 313
    .line 314
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 326
    .line 327
    mul-float/2addr v10, v4

    .line 328
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 329
    .line 330
    .line 331
    iget-boolean v10, p0, Lo/ff;->Ά:Z

    .line 332
    .line 333
    if-eqz v10, :cond_13

    .line 334
    .line 335
    move v10, v1

    .line 336
    goto :goto_b

    .line 337
    :cond_13
    move v10, v3

    .line 338
    :goto_b
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 342
    .line 343
    .line 344
    :cond_14
    iget-boolean v7, p0, Lo/ff;->Ά:Z

    .line 345
    .line 346
    if-eqz v7, :cond_15

    .line 347
    .line 348
    const v7, -0xe6892e

    .line 349
    .line 350
    .line 351
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 356
    .line 357
    .line 358
    const/high16 v7, 0x33000000

    .line 359
    .line 360
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 365
    .line 366
    .line 367
    :cond_15
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_16
    :goto_d
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 371
    .line 372
    sget v5, Lo/if;->btn_qs_customize:I

    .line 373
    .line 374
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    check-cast v0, Landroid/widget/TextView;

    .line 379
    .line 380
    if-eqz v0, :cond_18

    .line 381
    .line 382
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    .line 384
    .line 385
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 386
    .line 387
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 399
    .line 400
    mul-float/2addr v5, v4

    .line 401
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 402
    .line 403
    .line 404
    iget-boolean v4, p0, Lo/ff;->Ά:Z

    .line 405
    .line 406
    if-eqz v4, :cond_17

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_17
    move v1, v3

    .line 410
    :goto_e
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 414
    .line 415
    .line 416
    :cond_18
    return-void
.end method

.method public final Ͱ(Lo/df;ZLjava/lang/String;)V
    .locals 5

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p1, Lo/df;->ͻ:Z

    iget-boolean v0, p0, Lo/ff;->Ά:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v1, p0, Lo/ff;->ˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p2, :cond_1

    const v1, -0xe6892e

    goto :goto_0

    :cond_1
    const/high16 v1, 0x1a000000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lo/df;->Ͷ:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    sget v1, Lo/hf;->qs_tile_bg_on:I

    goto :goto_1

    :cond_3
    sget v1, Lo/hf;->qs_tile_bg_off:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v0, p1, Lo/df;->ͺ:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const v2, -0xcccccd

    const v3, -0xbdbdbe

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lo/ff;->Ά:Z

    if-eqz p2, :cond_5

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_7
    :goto_4
    iget-object v0, p1, Lo/df;->ͷ:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-boolean v4, p0, Lo/ff;->Ά:Z

    if-eqz v4, :cond_9

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_9
    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    const v2, -0x33000001    # -1.3421772E8f

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    if-eqz p3, :cond_b

    iget-object p1, p1, Lo/df;->ͷ:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public final Ͳ()V
    .locals 37

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lo/ff;->Β:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v10, Lo/df;

    const-string v3, "bluetooth"

    const-string v4, "\u84dd\u7259"

    sget v5, Lo/hf;->ic_qs_bluetooth:I

    new-instance v6, Lo/ie;

    const/16 v11, 0x8

    invoke-direct {v6, v0, v11}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v7, Lo/ke;

    const/4 v2, 0x5

    invoke-direct {v7, v0, v2}, Lo/ke;-><init>(Lo/ff;I)V

    new-instance v8, Lo/ke;

    const/16 v12, 0x9

    invoke-direct {v8, v0, v12}, Lo/ke;-><init>(Lo/ff;I)V

    new-instance v9, Lo/ie;

    const/16 v2, 0x12

    invoke-direct {v9, v0, v2}, Lo/ie;-><init>(Lo/ff;I)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v14, "wifi"

    const-string v15, "WiFi"

    sget v16, Lo/hf;->ic_qs_wifi:I

    new-instance v3, Lo/ie;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    const/16 v5, 0xa

    invoke-direct {v4, v0, v5}, Lo/ke;-><init>(Lo/ff;I)V

    new-instance v6, Lo/ke;

    const/16 v7, 0xb

    invoke-direct {v6, v0, v7}, Lo/ke;-><init>(Lo/ff;I)V

    new-instance v8, Lo/ie;

    const/16 v9, 0x14

    invoke-direct {v8, v0, v9}, Lo/ie;-><init>(Lo/ff;I)V

    move-object v13, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v18, "mobile_data"

    const-string v19, "\u79fb\u52a8\u6570\u636e"

    sget v20, Lo/hf;->ic_qs_mobile_data:I

    new-instance v3, Lo/ie;

    const/16 v4, 0x15

    invoke-direct {v3, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    const/16 v6, 0xc

    invoke-direct {v4, v0, v6}, Lo/ke;-><init>(Lo/ff;I)V

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-direct/range {v17 .. v24}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v30, "mute"

    const-string v31, "\u9759\u97f3"

    sget v32, Lo/hf;->ic_qs_mute:I

    new-instance v3, Lo/ie;

    invoke-direct {v3, v0, v12}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    const/4 v8, 0x0

    invoke-direct {v4, v0, v8}, Lo/ke;-><init>(Lo/ff;I)V

    const/16 v35, 0x0

    move-object/from16 v29, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-direct/range {v29 .. v36}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v13, "dark_mode"

    const-string v14, "\u6df1\u8272\u6a21\u5f0f"

    sget v15, Lo/hf;->ic_qs_screen_off:I

    new-instance v3, Lo/ie;

    invoke-direct {v3, v0, v5}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/le;

    invoke-direct {v4, v8}, Lo/le;-><init>(I)V

    new-instance v5, Lo/ke;

    const/4 v8, 0x1

    invoke-direct {v5, v0, v8}, Lo/ke;-><init>(Lo/ff;I)V

    const/16 v19, 0x0

    move-object v12, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v19}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v21, "engine_voice"

    const-string v22, "\u6a21\u62df\u97f3"

    sget v23, Lo/hf;->ic_qs_volume:I

    new-instance v3, Lo/ie;

    invoke-direct {v3, v0, v7}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lo/ke;-><init>(Lo/ff;I)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-direct/range {v20 .. v27}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v13, "energy_feedback"

    const-string v14, "\u52a8\u80fd\u56de\u6536"

    sget v15, Lo/hf;->control_energy_recycle1:I

    new-instance v3, Lo/ie;

    invoke-direct {v3, v0, v6}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v6}, Lo/ke;-><init>(Lo/ff;I)V

    new-instance v7, Lo/ke;

    const/4 v9, 0x4

    invoke-direct {v7, v0, v9}, Lo/ke;-><init>(Lo/ff;I)V

    move-object v12, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    invoke-direct/range {v12 .. v19}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v21, "soc_save"

    const-string v22, "\u667a\u80fd\u4fdd\u7535"

    sget v23, Lo/hf;->control_soc_set1:I

    new-instance v3, Lo/ie;

    const/16 v4, 0xd

    invoke-direct {v3, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    const/4 v7, 0x6

    invoke-direct {v4, v0, v7}, Lo/ke;-><init>(Lo/ff;I)V

    new-instance v7, Lo/ke;

    const/4 v9, 0x7

    invoke-direct {v7, v0, v9}, Lo/ke;-><init>(Lo/ff;I)V

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v7

    invoke-direct/range {v20 .. v27}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v22, "hdc"

    const-string v23, "\u9661\u5761\u7f13\u964d"

    sget v24, Lo/hf;->control_slope_descent0:I

    new-instance v3, Lo/ie;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/ke;

    invoke-direct {v4, v0, v11}, Lo/ke;-><init>(Lo/ff;I)V

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-direct/range {v21 .. v28}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v10, "screen_off"

    const-string v11, "\u606f\u5c4f"

    sget v12, Lo/hf;->control_ac_power0:I

    new-instance v13, Lo/ie;

    const/16 v3, 0xf

    invoke-direct {v13, v0, v3}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v14, Lo/le;

    invoke-direct {v14, v8}, Lo/le;-><init>(I)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v18, "clean_mode"

    const-string v19, "\u6e05\u6d01\u6a21\u5f0f"

    sget v20, Lo/hf;->ic_qs_clean_mode:I

    new-instance v3, Lo/ie;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v4, Lo/le;

    invoke-direct {v4, v5}, Lo/le;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-direct/range {v17 .. v24}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/df;

    const-string v8, "screenshot"

    const-string v9, "\u622a\u56fe"

    sget v10, Lo/hf;->ic_qs_screenshot:I

    new-instance v11, Lo/ie;

    const/16 v3, 0x11

    invoke-direct {v11, v0, v3}, Lo/ie;-><init>(Lo/ff;I)V

    new-instance v12, Lo/le;

    invoke-direct {v12, v6}, Lo/le;-><init>(I)V

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lo/df;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/ie;Lo/ef;Lo/ke;Lo/ie;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ͳ()V
    .locals 5

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/ff;->ˋ:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "collapsePanels"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "collapse"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final Ͷ()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lo/c0;->initialize(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lo/c0;->ensureConnection()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "media volume --get --stream 14"

    .line 13
    .line 14
    const/16 v1, 0x7d0

    .line 15
    .line 16
    invoke-static {v0, v1}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "volume is (\\d+)"

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "getNavVolumeViaAdb: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v2, "QuickSettingsMgr"

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    const/4 v0, -0x1

    .line 62
    return v0
.end method

.method public final ͷ()Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, Lo/ff;->ˋ:Landroid/content/Context;

    const-string v1, "qs_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "visible_tile_ids"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "vehicle_prefs"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "is_pure_ev"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lo/ff;->Β:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/df;

    if-eqz v0, :cond_2

    const-string v4, "soc_save"

    iget-object v5, v3, Lo/df;->ˋ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lo/df;->ˋ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lo/ff;->Έ(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final ͻ()V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-boolean v0, p0, Lo/ff;->ΐ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ff;->Ώ:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    new-instance v1, Lo/ie;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/ie;-><init>(Lo/ff;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ͽ()V
    .locals 4

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/ff;->Η:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lo/ff;->Ι:I

    if-ltz v0, :cond_2

    iget v0, p0, Lo/ff;->Ι:I

    iget-object v1, p0, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;

    new-instance v2, Lo/de;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lo/de;-><init>(Lo/ff;II)V

    invoke-virtual {v1, v2}, Lcom/byd/launcher/stability/InstrumentReads;->applyCached(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    new-instance v1, Lo/ie;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lo/ie;-><init>(Lo/ff;I)V

    invoke-static {p0, v0, v1}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z



    return-void
.end method

.method public final Ά()V
    .locals 6

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive
    iget-object v0, p0, Lo/ff;->stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/LatestRead;->invalidate()V
    iget-object v0, p0, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    invoke-virtual {v0}, Lcom/byd/launcher/stability/InstrumentReads;->invalidate()V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/TileSnapshots;->invalidate(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/SocRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/NavRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/GlassRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/ThemeRead;->close(Lo/ff;)V

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/ff;->ͷ:Z

    .line 3
    .line 4
    iget-object v0, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lo/ff;->Έ:Lo/ie;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lo/ff;->Ή:Lo/af;

    .line 12
    .line 13
    iget-object v1, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lo/ff;->Ή:Lo/af;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_0
    iget-object v0, p0, Lo/ff;->Ί:Lo/qe;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    :catch_1
    :cond_1
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    iget-object v0, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 58
    .line 59
    .line 60
    :cond_3
    :try_start_2
    iget-object v0, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 76
    .line 77
    iget-object v2, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 78
    .line 79
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_2
    move-exception v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "removeView failed: "

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v3, "QuickSettingsMgr"

    .line 92
    .line 93
    invoke-static {v0, v2, v3}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iput-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 97
    .line 98
    iput-object v1, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 99
    .line 100
    iput-object v1, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lo/ff;->ͱ:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lo/ff;->ͳ()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 111
    .line 112
    new-instance v1, Lo/ie;

    .line 113
    .line 114
    const/4 v2, 0x2

    .line 115
    invoke-direct {v1, p0, v2}, Lo/ie;-><init>(Lo/ff;I)V

    .line 116
    .line 117
    .line 118
    const-wide/16 v2, 0x12c

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 124
    .line 125
    new-instance v1, Lo/ie;

    .line 126
    .line 127
    const/4 v2, 0x3

    .line 128
    invoke-direct {v1, p0, v2}, Lo/ie;-><init>(Lo/ff;I)V

    .line 129
    .line 130
    .line 131
    const-wide/16 v2, 0x258

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 137
    .line 138
    const-wide/16 v1, 0x1f4

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    iput-wide v3, v0, Lcom/byd/launcher/NavBarService;->ξ:J

    .line 147
    .line 148
    iget-boolean v3, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ά()V

    .line 153
    .line 154
    .line 155
    :cond_6
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ή:Lo/ff;

    .line 156
    .line 157
    if-eqz v3, :cond_7

    .line 158
    .line 159
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 160
    .line 161
    new-instance v4, Lo/m9;

    .line 162
    .line 163
    const/16 v5, 0xf

    .line 164
    .line 165
    invoke-direct {v4, v0, v5}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    .line 170
    .line 171
    :cond_7
    iget-object v0, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 172
    .line 173
    new-instance v3, Lo/ie;

    .line 174
    .line 175
    const/4 v4, 0x4

    .line 176
    invoke-direct {v3, p0, v4}, Lo/ie;-><init>(Lo/ff;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public final Έ(Ljava/util/ArrayList;)V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    iget-object v1, p0, Lo/ff;->ˋ:Landroid/content/Context;

    const-string v2, "qs_prefs"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "visible_tile_ids"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final Ή(ILjava/lang/String;)V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/h2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Lo/h2;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final Ί()V
    .locals 13

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lo/if;->qs_volume_slider:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/SeekBar;

    .line 10
    .line 11
    iget-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 12
    .line 13
    sget v2, Lo/if;->qs_volume_value:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v2, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 22
    .line 23
    const-string v3, "audio"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/media/AudioManager;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    new-instance v3, Lo/re;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v3, p0, v1, v4, v2}, Lo/re;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 67
    .line 68
    sget v1, Lo/if;->qs_brightness_slider:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/SeekBar;

    .line 75
    .line 76
    iget-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 77
    .line 78
    sget v2, Lo/if;->qs_brightness_value:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/widget/TextView;

    .line 85
    .line 86
    const/16 v2, 0x64

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    iget-object v2, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "screen_brightness"

    .line 98
    .line 99
    const/16 v5, 0x80

    .line 100
    .line 101
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v2}, Lo/ff;->ͱ(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    .line 111
    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_1
    new-instance v2, Lo/se;

    .line 122
    .line 123
    invoke-direct {v2, p0, v1, v4}, Lo/se;-><init>(Lo/ff;Landroid/widget/TextView;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 130
    .line 131
    sget v1, Lo/if;->qs_instrument_brightness_slider:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/SeekBar;

    .line 138
    .line 139
    iget-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 140
    .line 141
    sget v2, Lo/if;->qs_instrument_brightness_value:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/widget/TextView;

    .line 148
    .line 149
    const/16 v2, 0xa

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    .line 153
    .line 154
    const/4 v3, 0x1

    .line 155
    .line 156
    new-instance v5, Lo/je;

    .line 157
    .line 158
    const/4 v6, 0x1

    .line 159
    invoke-direct {v5, p0, v0, v1, v6}, Lo/je;-><init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v3, v5}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 163
    .line 164
    .line 165


    .line 166
    .line 167
    .line 168
    new-instance v3, Lo/se;

    .line 169
    .line 170
    invoke-direct {v3, p0, v1, v6}, Lo/se;-><init>(Lo/ff;Landroid/widget/TextView;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 177
    .line 178
    sget v1, Lo/if;->qs_nav_volume_slider:I

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/SeekBar;

    .line 185
    .line 186
    iget-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 187
    .line 188
    sget v3, Lo/if;->qs_nav_volume_value:I

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/widget/TextView;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 197
    .line 198
    .line 199
    iget v2, p0, Lo/ff;->Λ:I

    .line 200
    .line 201
    if-ltz v2, :cond_2

    .line 202
    .line 203
    iget v2, p0, Lo/ff;->Λ:I

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 206
    .line 207
    .line 208
    if-eqz v1, :cond_2

    .line 209
    .line 210
    iget v2, p0, Lo/ff;->Λ:I

    .line 211
    .line 212
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    :cond_2
    const/4 v2, 0x2

    .line 220
    .line 221
    new-instance v3, Lo/je;

    .line 222
    .line 223
    invoke-direct {v3, p0, v0, v1, v4}, Lo/je;-><init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 224
    .line 225
    .line 226
    invoke-static {p0, v2, v3}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 227
    .line 228
    .line 229


    .line 230
    .line 231
    .line 232
    new-instance v2, Lo/se;

    .line 233
    .line 234
    const/4 v3, 0x2

    .line 235
    invoke-direct {v2, p0, v1, v3}, Lo/se;-><init>(Lo/ff;Landroid/widget/TextView;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 242
    .line 243
    sget v1, Lo/if;->qs_soc_section:I

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_3

    .line 250
    .line 251
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    :cond_3
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 255
    .line 256
    sget v1, Lo/if;->qs_soc_slider:I

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Landroid/widget/SeekBar;

    .line 263
    .line 264
    iget-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 265
    .line 266
    sget v2, Lo/if;->qs_soc_value:I

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Landroid/widget/TextView;

    .line 273
    .line 274
    iget-object v2, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 275
    .line 276
    sget v3, Lo/if;->qs_soc_icon:I

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Landroid/widget/ImageView;

    .line 283
    .line 284
    if-nez v0, :cond_4

    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_4
    const/16 v3, 0x46

    .line 288
    .line 289
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 290
    .line 291
    .line 292
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 293
    .line 294
    const/16 v5, 0x1a

    .line 295
    .line 296
    if-lt v3, v5, :cond_5

    .line 297
    .line 298
    invoke-static {v0}, Lo/zd;->Ͳ(Landroid/widget/SeekBar;)V

    .line 299
    .line 300
    .line 301
    :cond_5
    const/16 v3, 0x19

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 304
    .line 305
    .line 306
    if-eqz v1, :cond_6

    .line 307
    .line 308
    const-string v3, "25%"

    .line 309
    .line 310
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    :cond_6
    new-instance v3, Lo/ne;

    .line 314
    .line 315
    invoke-direct {v3, p0, v0, v1, v2}, Lo/ne;-><init>(Lo/ff;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 319
    .line 320
    .line 321
    const/4 v3, 0x3

    .line 322
    .line 323
    new-instance v5, Lo/sj;

    .line 324
    .line 325
    const/4 v12, 0x3

    .line 326
    move-object v7, v5

    .line 327
    move-object v8, p0

    .line 328
    move-object v9, v0

    .line 329
    move-object v10, v1

    .line 330
    move-object v11, v2

    .line 331
    invoke-direct/range {v7 .. v12}, Lo/sj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 332
    .line 333
    .line 334
    invoke-static {p0, v3, v5}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 335
    .line 336
    .line 337


    .line 338
    .line 339
    .line 340
    new-instance v3, Lo/oe;

    .line 341
    .line 342
    invoke-direct {v3, v4}, Lo/oe;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    .line 347
    .line 348
    new-instance v3, Lo/re;

    .line 349
    .line 350
    invoke-direct {v3, p0, v1, v6, v2}, Lo/re;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 354
    .line 355
    .line 356
    :goto_0
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 357
    .line 358
    sget v1, Lo/if;->qs_volume_slider:I

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Landroid/widget/SeekBar;

    .line 365
    .line 366
    if-nez v0, :cond_7

    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_7
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 373
    .line 374
    .line 375
    :goto_1
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 376
    .line 377
    sget v1, Lo/if;->qs_brightness_slider:I

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, Landroid/widget/SeekBar;

    .line 384
    .line 385
    if-nez v0, :cond_8

    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_8
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 392
    .line 393
    .line 394
    :goto_2
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 395
    .line 396
    sget v1, Lo/if;->qs_instrument_brightness_slider:I

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Landroid/widget/SeekBar;

    .line 403
    .line 404
    if-nez v0, :cond_9

    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_9
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 411
    .line 412
    .line 413
    :goto_3
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 414
    .line 415
    sget v1, Lo/if;->qs_nav_volume_slider:I

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Landroid/widget/SeekBar;

    .line 422
    .line 423
    if-nez v0, :cond_a

    .line 424
    .line 425
    goto :goto_4

    .line 426
    :cond_a
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 430
    .line 431
    .line 432
    :goto_4
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 433
    .line 434
    sget v1, Lo/if;->qs_grid_top:I

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, Landroid/widget/GridLayout;

    .line 441
    .line 442
    if-nez v0, :cond_b

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_b
    iget-object v3, p0, Lo/ff;->stabilityLayoutListener:Lo/ze;
    if-eqz v3, :stability_register_layout
    invoke-virtual {v3}, Lo/ze;->stabilityRelease()Z
    move-result v3
    if-nez v3, :stability_register_layout
    return-void
    :stability_register_layout
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    new-instance v2, Lo/ze;

    .line 450
    .line 451
    invoke-direct {v2, p0, v0}, Lo/ze;-><init>(Lo/ff;Landroid/widget/GridLayout;)V

    .line 452
    .line 453
    .line 454
    iput-object v1, v2, Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;
    iput-object v2, p0, Lo/ff;->stabilityLayoutListener:Lo/ze;
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 455
    .line 456
    .line 457
    :goto_5
    return-void
.end method

.method public final Ό()V
    .locals 13

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    invoke-static {p0}, Lcom/byd/launcher/stability/TileSnapshots;->invalidate(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/SocRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/NavRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/GlassRead;->close(Lo/ff;)V
    invoke-virtual {p0}, Lo/ff;->Ͳ()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lo/ff;->ͷ()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lo/ff;->Β:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lo/df;

    .line 46
    .line 47
    iget-object v5, v4, Lo/df;->ˋ:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 60
    .line 61
    sget v2, Lo/if;->qs_grid_top:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/widget/GridLayout;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x4

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    add-int/2addr v3, v2

    .line 81
    add-int/lit8 v3, v3, -0x1

    .line 82
    .line 83
    div-int/2addr v3, v2

    .line 84
    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const/4 v5, 0x0

    .line 94
    move v6, v5

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ge v6, v7, :cond_6

    .line 100
    .line 101
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Lo/df;

    .line 106
    .line 107
    sget v8, Lo/jf;->qs_tile_item:I

    .line 108
    .line 109
    invoke-virtual {v4, v8, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    sget v9, Lo/if;->qs_tile_icon:I

    .line 114
    .line 115
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Landroid/widget/ImageView;

    .line 120
    .line 121
    sget v10, Lo/if;->qs_tile_label:I

    .line 122
    .line 123
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Landroid/widget/TextView;

    .line 128
    .line 129
    sget v11, Lo/if;->qs_tile_icon_bg:I

    .line 130
    .line 131
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Landroid/widget/FrameLayout;

    .line 136
    .line 137
    iget v12, v7, Lo/df;->Ͱ:I

    .line 138
    .line 139
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v12, v7, Lo/df;->ˏ:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v12, v7, Lo/df;->ʹ:Lo/bf;

    .line 148
    .line 149
    if-eqz v12, :cond_3

    .line 150
    .line 151
    :try_start_0
    check-cast v12, Lo/ke;

    .line 152
    .line 153
    invoke-virtual {v12}, Lo/ke;->ˏ()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    if-eqz v12, :cond_3

    .line 158
    .line 159
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    :catch_0
    :cond_3
    sget v12, Lo/hf;->qs_tile_bg_off:I

    .line 163
    .line 164
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    iput-object v11, v7, Lo/df;->Ͷ:Landroid/widget/FrameLayout;

    .line 168
    .line 169
    iput-object v10, v7, Lo/df;->ͷ:Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object v9, v7, Lo/df;->ͺ:Landroid/widget/ImageView;

    .line 172
    .line 173
    new-instance v9, Lo/Ϙ;

    .line 174
    .line 175
    invoke-direct {v9, v2, p0, v7}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    iget-object v9, v7, Lo/df;->Ͳ:Ljava/lang/Runnable;

    .line 182
    .line 183
    if-eqz v9, :cond_4

    .line 184
    .line 185
    new-instance v9, Lo/me;

    .line 186
    .line 187
    invoke-direct {v9, v5, v7}, Lo/me;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    new-instance v7, Landroid/widget/GridLayout$LayoutParams;

    .line 194
    .line 195
    invoke-direct {v7}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 196
    .line 197
    .line 198
    rem-int/lit8 v9, v6, 0x4

    .line 199
    .line 200
    invoke-static {v9}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    iput-object v9, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 205
    .line 206
    div-int/lit8 v9, v6, 0x4

    .line 207
    .line 208
    invoke-static {v9}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    iput-object v9, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 213
    .line 214
    iget v9, p0, Lo/ff;->ͼ:I

    .line 215
    .line 216
    iput v9, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 217
    .line 218
    iput v9, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 219
    .line 220
    iget v9, p0, Lo/ff;->Ε:I

    .line 221
    .line 222
    if-nez v9, :cond_5

    .line 223
    .line 224
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .line 234
    const/high16 v10, 0x41000000    # 8.0f

    .line 235
    .line 236
    mul-float/2addr v9, v10

    .line 237
    float-to-int v9, v9

    .line 238
    iput v9, p0, Lo/ff;->Ε:I

    .line 239
    .line 240
    :cond_5
    iget v9, p0, Lo/ff;->Ε:I

    .line 241
    .line 242
    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    add-int/lit8 v6, v6, 0x1

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .line 259
    .line 260
    const/4 v0, 0x6

    .line 261
    .line 262
    new-instance v2, Lo/ag;

    .line 263
    .line 264
    const/16 v3, 0x10

    .line 265
    .line 266
    invoke-direct {v2, v3, p0, v1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-static {p0, v0, v2}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 270
    .line 271
    .line 272


    .line 273
    .line 274
    .line 275
    return-void
.end method

.method public final Ύ(I)V
    .locals 12

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-boolean v0, p0, Lo/ff;->ͷ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lo/ff;->ͷ:Z

    .line 11
    .line 12
    const-string v1, "QuickSettingsMgr"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "show: stale isShowing flag detected, resetting"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, p0, Lo/ff;->ͷ:Z

    .line 27
    .line 28
    iput-boolean v2, p0, Lo/ff;->ͺ:Z

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lo/ff;->ͺ:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v0, "show: stale isAnimating flag detected, resetting"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p0, Lo/ff;->ͺ:Z

    .line 44
    .line 45
    :cond_2
    iget-boolean v0, p0, Lo/ff;->ͺ:Z

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lo/ff;->ͺ:Z

    .line 52
    .line 53
    iget-boolean v3, p0, Lo/ff;->ΐ:Z

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget-object v3, p0, Lo/ff;->Ώ:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    iput-object v3, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 63
    .line 64
    iput-object v4, p0, Lo/ff;->Ώ:Landroid/view/View;

    .line 65
    .line 66
    iput-boolean v2, p0, Lo/ff;->ΐ:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    :try_start_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 70
    .line 71
    iget-object v5, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 72
    .line 73
    sget v6, Lo/lf;->Theme_NavDemo:I

    .line 74
    .line 75
    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget v5, Lo/jf;->quick_settings_panel:I

    .line 83
    .line 84
    invoke-virtual {v3, v5, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iput-object v3, p0, Lo/ff;->ͳ:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .line 90
    :goto_0
    iget-object v3, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 91
    .line 92
    sget v5, Lo/if;->qs_panel:I

    .line 93
    .line 94
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iput-object v3, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 99
    .line 100
    iget-object v3, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 101
    .line 102
    sget v5, Lo/if;->qs_dim_bg:I

    .line 103
    .line 104
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iput-object v3, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 109
    .line 110
    new-instance v3, Landroid/graphics/Point;

    .line 111
    .line 112
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v5, p0, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 116
    .line 117
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 122
    .line 123
    .line 124
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 125
    .line 126
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 127
    .line 128
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    iget v5, p0, Lo/ff;->Α:I

    .line 133
    .line 134
    if-lez v5, :cond_5

    .line 135
    .line 136
    sub-int/2addr v3, v5

    .line 137
    :cond_5
    div-int/lit8 v5, v3, 0x6

    .line 138
    .line 139
    iput v5, p0, Lo/ff;->ͼ:I

    .line 140
    .line 141
    iget-object v5, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-eqz v5, :cond_6

    .line 148
    .line 149
    iget-object v5, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const-string v6, "prepared"

    .line 156
    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    move v5, v0

    .line 164
    goto :goto_1

    .line 165
    :cond_6
    move v5, v2

    .line 166
    :goto_1
    if-nez v5, :cond_7

    .line 167
    .line 168
    invoke-virtual {p0}, Lo/ff;->Ό()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lo/ff;->Ί()V

    .line 172
    .line 173
    .line 174
    :cond_7
    iget-object v5, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const/4 v5, 0x4

    .line 180
    .line 181
    new-instance v6, Lo/ie;

    .line 182
    .line 183
    const/4 v7, 0x6

    .line 184
    invoke-direct {v6, p0, v7}, Lo/ie;-><init>(Lo/ff;I)V

    .line 185
    .line 186
    .line 187
    const-string v7, "QSSyncTheme"

    .line 188
    .line 189
    invoke-static {p0, v5, v6}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->execute(Ljava/lang/Object;ILjava/lang/Runnable;)Z

    .line 190
    .line 191
    .line 192


    .line 193
    .line 194
    .line 195
    iget-object v5, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 196
    .line 197
    invoke-static {v5}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    iput-boolean v5, p0, Lo/ff;->Ά:Z

    .line 202
    .line 203
    invoke-virtual {p0}, Lo/ff;->ˏ()V

    .line 204
    .line 205
    .line 206
    iget-object v5, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 207
    .line 208
    invoke-virtual {p0, v5}, Lo/ff;->ˋ(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    iget-object v5, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 212
    .line 213
    sget v6, Lo/if;->btn_qs_customize:I

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    if-eqz v5, :cond_8

    .line 220
    .line 221
    new-instance v6, Lo/ΰ;

    .line 222
    .line 223
    invoke-direct {v6, v0, p0}, Lo/ΰ;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    iget-object v5, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 230
    .line 231
    instance-of v6, v5, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;

    .line 232
    .line 233
    if-eqz v6, :cond_9

    .line 234
    .line 235
    check-cast v5, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;

    .line 236
    .line 237
    new-instance v6, Lo/we;

    .line 238
    .line 239
    invoke-direct {v6, v2, p0}, Lo/we;-><init>(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v6}, Lcom/byd/launcher/widget/SwipeDismissFrameLayout;->setSwipeCallback(Lo/uh;)V

    .line 243
    .line 244
    .line 245
    :cond_9
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    .line 246
    .line 247
    const/4 v6, -0x1

    .line 248
    const/16 v9, 0x108

    .line 249
    .line 250
    const/4 v10, -0x3

    .line 251
    move-object v5, v11

    .line 252
    move v7, v3

    .line 253
    move v8, p1

    .line 254
    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 255
    .line 256
    .line 257
    const p1, 0x800033

    .line 258
    .line 259
    .line 260
    iput p1, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 261
    .line 262
    iput v2, v11, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 263
    .line 264
    :try_start_1
    iget-object p1, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 265
    .line 266
    if-eqz p1, :cond_a

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 269
    .line 270
    .line 271
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .line 273
    const/4 v5, -0x1

    .line 274
    invoke-direct {p1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    .line 276
    .line 277
    iget-object v3, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 278
    .line 279
    iget-object v5, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {v3, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;

    .line 285
    .line 286
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_a
    iget-object p1, p0, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 291
    .line 292
    iget-object v3, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 293
    .line 294
    invoke-interface {p1, v3, v11}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .line 296
    .line 297
    :goto_2
    iput-boolean v0, p0, Lo/ff;->ͷ:Z

    .line 298
    .line 299
    iget-object p1, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 300
    .line 301
    invoke-static {p1}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    const/4 v0, 0x0

    .line 306
    if-eqz p1, :cond_b

    .line 307
    .line 308
    move v1, v0

    .line 309
    goto :goto_3

    .line 310
    :cond_b
    iget-object v1, p0, Lo/ff;->ˋ:Landroid/content/Context;

    .line 311
    .line 312
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 321
    .line 322
    neg-int v1, v1

    .line 323
    int-to-float v1, v1

    .line 324
    :goto_3
    iget-object v2, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 325
    .line 326
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 327
    .line 328
    .line 329
    iget-object v1, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 330
    .line 331
    const/high16 v2, 0x3f800000    # 1.0f

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 334
    .line 335
    .line 336
    iget-object v1, p0, Lo/ff;->Ͷ:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lo/ff;->ʹ:Landroid/view/View;

    .line 342
    .line 343
    new-instance v1, Lo/ae;

    .line 344
    .line 345
    const/4 v2, 0x3

    .line 346
    invoke-direct {v1, p0, p1, v2}, Lo/ae;-><init>(Lo/ff;ZI)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 353
    .line 354
    new-instance v0, Lo/ie;

    .line 355
    .line 356
    const/4 v1, 0x7

    .line 357
    invoke-direct {v0, p0, v1}, Lo/ie;-><init>(Lo/ff;I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :catch_0
    move-exception p1

    .line 365
    const-string v0, "addView failed"

    .line 366
    .line 367
    invoke-static {v1, v0, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 368
    .line 369
    .line 370
    iput-object v4, p0, Lo/ff;->ͳ:Landroid/view/View;

    .line 371
    .line 372
    iput-boolean v2, p0, Lo/ff;->ͺ:Z

    .line 373
    .line 374
    return-void

    .line 375
    :catch_1
    move-exception p1

    .line 376
    const-string v0, "inflate failed"

    .line 377
    .line 378
    invoke-static {v1, v0, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 379
    .line 380
    .line 381
    iput-boolean v2, p0, Lo/ff;->ͺ:Z

    .line 382
    .line 383
    return-void
.end method

.method public final Ώ(Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 8

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    invoke-static {p1}, Lo/zd;->ˋ(Landroid/widget/SeekBar;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    if-lt v1, v3, :cond_3

    invoke-static {p1}, Lo/zd;->ˋ(Landroid/widget/SeekBar;)I

    move-result v2

    :cond_3
    sub-int/2addr v4, v2

    int-to-float v1, v4

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    iget-boolean v0, p0, Lo/ff;->Ά:Z

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    goto :goto_1

    :cond_4
    const/high16 v2, -0x1000000

    :goto_1
    if-eqz v0, :cond_5

    const v0, -0x44bdbdbe

    goto :goto_2

    :cond_5
    const v0, -0x44000001

    :goto_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v7, v6

    cmpl-float v6, v1, v7

    if-lez v6, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, v4

    :goto_3
    if-eqz v6, :cond_7

    move v6, v2

    goto :goto_4

    :cond_7
    move v6, v0

    :goto_4
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_8
    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p3, p0, Lo/ff;->ˋ:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr p3, v6

    float-to-int p3, p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v5

    add-float/2addr p3, p1

    cmpl-float p1, v1, p3

    if-lez p1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    :goto_5
    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v2, v0

    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    return-void
.end method

.method public final stabilityDispose()Z
    .locals 6
    const/4 v0, 0x1
    iput-boolean v0, p0, Lo/ff;->stabilityDisposed:Z
    iget-object v2, p0, Lo/ff;->stabilityNavReads:Lcom/byd/launcher/stability/LatestRead;
    invoke-virtual {v2}, Lcom/byd/launcher/stability/LatestRead;->invalidate()V
    iget-object v2, p0, Lo/ff;->stabilityInstrumentReads:Lcom/byd/launcher/stability/InstrumentReads;
    invoke-virtual {v2}, Lcom/byd/launcher/stability/InstrumentReads;->invalidate()V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/TileSnapshots;->invalidate(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/SocRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/NavRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/GlassRead;->close(Lo/ff;)V
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/ThemeRead;->close(Lo/ff;)V
    invoke-static {p0}, Lcom/byd/launcher/stability/QuickSettingsReadExecutor;->cancelQueued(Ljava/lang/Object;)V
    const/4 v1, 0x0
    iput-object v1, p0, Lo/ff;->Ύ:Lo/cf;
    iput-boolean v1, p0, Lo/ff;->ͷ:Z
    iput-boolean v1, p0, Lo/ff;->ͺ:Z
    iput-boolean v1, p0, Lo/ff;->ͻ:Z
    iput-boolean v1, p0, Lo/ff;->ΐ:Z
    iget-object v2, p0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-static {v2}, Lcom/byd/launcher/stability/QuickSettingsResources;->clearQueue(Landroid/os/Handler;)Z
    move-result v5
    and-int/2addr v0, v5
    iget-object v2, p0, Lo/ff;->ͱ:Landroid/os/Handler;
    invoke-static {v2}, Lcom/byd/launcher/stability/QuickSettingsResources;->clearQueue(Landroid/os/Handler;)Z
    move-result v5
    and-int/2addr v0, v5
    iget-object v2, p0, Lo/ff;->stabilityLayoutListener:Lo/ze;
    if-eqz v2, :global_layout_done
    invoke-virtual {v2}, Lo/ze;->stabilityRelease()Z
    move-result v5
    and-int/2addr v0, v5
    :global_layout_done
    iget-object v2, p0, Lo/ff;->Ή:Lo/af;
    iget-object v3, p0, Lo/ff;->ˋ:Landroid/content/Context;
    invoke-static {v3, v2}, Lcom/byd/launcher/stability/QuickSettingsResources;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :listener_0_retained
    iput-object v1, p0, Lo/ff;->Ή:Lo/af;
    :listener_0_retained
    iget-object v2, p0, Lo/ff;->Ί:Lo/qe;
    iget-object v3, p0, Lo/ff;->ˋ:Landroid/content/Context;
    invoke-static {v3, v2}, Lcom/byd/launcher/stability/StatusBarResources;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :listener_1_retained
    iput-object v1, p0, Lo/ff;->Ί:Lo/qe;
    :listener_1_retained
    iget-object v2, p0, Lo/ff;->Γ:Lo/f4;
    if-eqz v2, :editor_done
    invoke-virtual {v2}, Lo/f4;->stabilityDispose()Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :editor_done
    iput-object v1, p0, Lo/ff;->Γ:Lo/f4;
    :editor_done
    iget-object v3, p0, Lo/ff;->ˏ:Landroid/view/WindowManager;
    iget-object v4, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;
    iget-object v2, p0, Lo/ff;->ͳ:Landroid/view/View;
    invoke-static {v3, v4, v2}, Lcom/byd/launcher/stability/QuickSettingsResources;->disposePanel(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/view/View;)Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :panel_0_retained
    iput-object v1, p0, Lo/ff;->ͳ:Landroid/view/View;
    :panel_0_retained
    iget-object v2, p0, Lo/ff;->Ώ:Landroid/view/View;
    invoke-static {v3, v4, v2}, Lcom/byd/launcher/stability/QuickSettingsResources;->disposePanel(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/view/View;)Z
    move-result v5
    and-int/2addr v0, v5
    if-eqz v5, :panel_1_retained
    iput-object v1, p0, Lo/ff;->Ώ:Landroid/view/View;
    :panel_1_retained
    iget-object v2, p0, Lo/ff;->ͳ:Landroid/view/View;
    if-nez v2, :views_retained
    iget-object v2, p0, Lo/ff;->Ώ:Landroid/view/View;
    if-nez v2, :views_retained
    iput-object v1, p0, Lo/ff;->ʹ:Landroid/view/View;
    iput-object v1, p0, Lo/ff;->Ͷ:Landroid/view/View;
    iput-object v1, p0, Lo/ff;->Ͳ:Landroid/view/ViewGroup;
    iput-object v1, p0, Lo/ff;->Δ:Lo/xe;
    :views_retained
    iget-object v2, p0, Lo/ff;->Ό:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    iget-object v2, p0, Lo/ff;->Β:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    if-nez v0, :dispose_done
    const-string v2, "QuickSettingsMgr"
    const-string v3, "Permanent disposal incomplete; stopped owner retains failed resources"
    invoke-static {v2, v3}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :dispose_done
    return v0
.end method
