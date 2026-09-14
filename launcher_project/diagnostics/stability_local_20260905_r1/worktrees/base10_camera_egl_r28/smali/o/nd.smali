.class public final Lo/nd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final χ:[Ljava/lang/String;

.field public static final ψ:Ljava/util/HashMap;


# instance fields
.field public ʹ:Landroid/widget/FrameLayout;

.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Landroid/view/WindowManager;

.field public final Ͱ:Landroid/hardware/display/DisplayManager;

.field public final ͱ:Landroid/os/Handler;

.field public Ͳ:Landroid/view/View;

.field public ͳ:Lcom/byd/launcher/pip/DualPipLayout;

.field public Ͷ:Landroid/widget/FrameLayout;

.field public ͷ:Landroid/widget/TextView;

.field public ͺ:Landroid/widget/TextView;

.field public ͻ:Landroid/widget/TextView;

.field public ͼ:Landroid/widget/TextView;

.field public ͽ:Landroid/widget/TextView;

.field public Ά:Landroid/widget/TextView;

.field public Έ:Landroid/widget/TextView;

.field public Ή:Landroid/widget/TextView;

.field public Ί:Landroid/widget/TextView;

.field public Ό:Landroid/widget/TextView;

.field public Ύ:Landroid/widget/ImageView;

.field public Ώ:Landroid/widget/ImageView;

.field public ΐ:Landroid/widget/ImageView;

.field public Α:Landroid/widget/ImageView;

.field public Β:Landroid/widget/ImageView;

.field public Γ:Landroid/view/SurfaceView;

.field public Δ:Landroid/hardware/display/VirtualDisplay;

.field public Ε:I

.field public final Ζ:Landroid/os/Handler;

.field public Η:Z

.field public Θ:I

.field public final Ι:Ljava/util/concurrent/ExecutorService;

.field public Κ:Lo/af;

.field public Λ:Ljava/io/OutputStream;

.field public Μ:Ljava/net/Socket;

.field public final Ν:[B

.field public final Ξ:Ljava/nio/ByteBuffer;

.field public Ο:Landroid/os/IBinder;

.field public final Π:[Landroid/view/MotionEvent$PointerProperties;

.field public final Ρ:[Landroid/view/MotionEvent$PointerCoords;

.field public Σ:Ljava/lang/String;

.field public Τ:Lo/ia;

.field public Υ:Lo/ia;

.field public Φ:Ljava/lang/Runnable;

.field public Χ:Landroid/view/ViewGroup;

.field public Ψ:Z

.field public volatile Ω:Z

.field public volatile Ϊ:Z

.field public Ϋ:Landroid/widget/FrameLayout;

.field public ά:Landroid/view/View;

.field public έ:I

.field public final ή:Lo/c8;

.field public ί:J

.field public ΰ:J

.field public α:F

.field public β:F

.field public γ:I

.field public δ:I

.field public ε:I

.field public ζ:I

.field public η:J

.field public θ:Landroid/hardware/input/InputManager;

.field public ι:Ljava/lang/reflect/Method;

.field public κ:Ljava/lang/reflect/Method;

.field public λ:Z

.field public μ:Ljava/lang/reflect/Method;

.field public ν:Ljava/lang/Object;

.field public ξ:Landroid/graphics/Matrix;

.field public ο:Landroid/graphics/Matrix;

.field public π:J

.field public ρ:Lo/qc;

.field public ς:Lo/yc;

.field public σ:Landroid/view/View;

.field public τ:J

.field public υ:I

.field public φ:Landroid/app/AlertDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com.autonavi.amapauto"

    const-string v1, "com.autonavi.minimap"

    const-string v2, "com.byd.automap"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/nd;->χ:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/nd;->ψ:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/nd;->ͱ:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lo/nd;->Ε:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/nd;->Ζ:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/nd;->Η:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lo/nd;->Ι:Ljava/util/concurrent/ExecutorService;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    iput-object v1, p0, Lo/nd;->Ν:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lo/nd;->Ξ:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    new-array v2, v1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, p0, Lo/nd;->Π:[Landroid/view/MotionEvent$PointerProperties;

    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, p0, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lo/nd;->Π:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lo/nd;->Ρ:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lo/nd;->Ψ:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/nd;->Ω:Z

    iput-boolean v0, p0, Lo/nd;->Ϊ:Z

    iput v0, p0, Lo/nd;->έ:I

    new-instance v1, Lo/c8;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lo/c8;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lo/nd;->ή:Lo/c8;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/nd;->ί:J

    iput-wide v1, p0, Lo/nd;->ΰ:J

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lo/nd;->α:F

    iput v3, p0, Lo/nd;->β:F

    iput v0, p0, Lo/nd;->γ:I

    iput v0, p0, Lo/nd;->δ:I

    iput v0, p0, Lo/nd;->ε:I

    iput v0, p0, Lo/nd;->ζ:I

    iput-wide v1, p0, Lo/nd;->η:J

    iput-boolean v0, p0, Lo/nd;->λ:Z

    iput-wide v1, p0, Lo/nd;->π:J

    iput-wide v1, p0, Lo/nd;->τ:J

    iput v0, p0, Lo/nd;->υ:I

    iput-object p1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    iput-object p2, p0, Lo/nd;->ˏ:Landroid/view/WindowManager;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lo/nd;->Ͱ:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static ˋ(Lo/nd;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    .line 25
    iget-object v1, p0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    iget-object v1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const v2, -0xa0a0b

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const v2, -0xe5e5e6

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lo/nd;->Σ:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lo/nd;->Σ:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    :cond_3
    sget v3, Lo/hf;->nav_apps:I

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .line 91
    const/high16 v3, 0x42800000    # 64.0f

    .line 92
    .line 93
    mul-float/2addr v1, v3

    .line 94
    float-to-int v1, v1

    .line 95
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/16 v1, 0x11

    .line 101
    .line 102
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    .line 108
    .line 109
    iget-object v1, p0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    .line 110
    .line 111
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    .line 113
    const/4 v3, -0x1

    .line 114
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/4 v1, 0x1

    .line 135
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    .line 137
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    .line 139
    iget-object v1, p0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    iget-object p0, p0, Lo/nd;->Ϋ:Landroid/widget/FrameLayout;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 147
    .line 148
    .line 149
    :goto_2
    return-void
.end method


# virtual methods
.method public final ʹ()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-class v0, Landroid/view/InputEvent;

    .line 4
    .line 5
    const-string v2, "PiPManager"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, v1, Lo/nd;->ˋ:Landroid/content/Context;

    .line 9
    .line 10
    const-string v5, "input"

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Landroid/hardware/input/InputManager;

    .line 17
    .line 18
    iput-object v4, v1, Lo/nd;->θ:Landroid/hardware/input/InputManager;

    .line 19
    .line 20
    const-class v4, Landroid/hardware/input/InputManager;

    .line 21
    .line 22
    const-string v5, "injectInputEvent"

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    new-array v7, v6, [Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v0, v7, v3

    .line 28
    .line 29
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    aput-object v8, v7, v9

    .line 33
    .line 34
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iput-object v4, v1, Lo/nd;->ι:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    const-string v4, "setDisplayId"

    .line 41
    .line 42
    filled-new-array {v8}, [Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, v1, Lo/nd;->κ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .line 52
    :try_start_1
    const-string v0, "android.view.WindowManagerGlobal"

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v4, "getWindowManagerService"

    .line 59
    .line 60
    new-array v5, v3, [Ljava/lang/Class;

    .line 61
    .line 62
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "getInstance"

    .line 67
    .line 68
    new-array v7, v3, [Ljava/lang/Class;

    .line 69
    .line 70
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-array v5, v3, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-virtual {v0, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-array v5, v3, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, v1, Lo/nd;->ν:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v4, "syncInputTransactions"

    .line 94
    .line 95
    new-array v5, v3, [Ljava/lang/Class;

    .line 96
    .line 97
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, v1, Lo/nd;->μ:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-wide/16 v10, 0x0

    .line 109
    .line 110
    const-wide/16 v12, 0x0

    .line 111
    .line 112
    const/4 v14, 0x3

    .line 113
    const/4 v15, 0x0

    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    const/16 v17, 0x0

    .line 117
    .line 118
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v4, v1, Lo/nd;->κ:Ljava/lang/reflect/Method;

    .line 123
    .line 124
    new-array v5, v9, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    aput-object v7, v5, v3

    .line 131
    .line 132
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v4, v1, Lo/nd;->ι:Ljava/lang/reflect/Method;

    .line 136
    .line 137
    iget-object v5, v1, Lo/nd;->θ:Landroid/hardware/input/InputManager;

    .line 138
    .line 139
    new-array v6, v6, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v0, v6, v3

    .line 142
    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    aput-object v7, v6, v9

    .line 148
    .line 149
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 153
    .line 154
    .line 155
    iput-boolean v9, v1, Lo/nd;->λ:Z

    .line 156
    .line 157
    const-string v0, "Direct InputManager injection available (mode=ASYNC, Binder fallback uses mode=2)"

    .line 158
    .line 159
    invoke-static {v2, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    iput-boolean v3, v1, Lo/nd;->λ:Z

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v4, "Direct InputManager not available, using Binder IPC: "

    .line 169
    .line 170
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v3, v2}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-void
.end method

.method public final ˏ(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-static {v2}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    sget v4, Lo/if;->pip_left_container:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    sget v5, Lo/if;->pip_tyre_area:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    sget v6, Lo/if;->pip_music_area:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v7, Lo/if;->pip_right_panel:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_3

    if-eqz v4, :cond_0

    sget v8, Lo/hf;->pip_left_bg_dark:I

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    if-eqz v5, :cond_1

    sget v8, Lo/hf;->pip_tyre_bg_dark:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    if-eqz v6, :cond_2

    sget v5, Lo/hf;->pip_music_bg_dark:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    if-eqz v7, :cond_7

    sget v5, Lo/hf;->pip_right_bg_dark:I

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    sget v8, Lo/hf;->pip_left_bg_light:I

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    if-eqz v5, :cond_5

    sget v8, Lo/hf;->pip_tyre_bg_light:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    if-eqz v6, :cond_6

    sget v5, Lo/hf;->pip_music_bg_light:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    if-eqz v7, :cond_7

    sget v5, Lo/hf;->pip_right_bg_light:I

    :goto_0
    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    sget v5, Lo/if;->pip_divider_handle:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v9, -0x55444445

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v9, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4, v3}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_9
    sget v4, Lo/if;->pip_left_panel:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v4, :cond_a

    iget-object v8, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v5

    new-instance v9, Lo/dd;

    invoke-direct {v9, v0, v8, v6}, Lo/dd;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7, v3}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v4, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    new-instance v8, Lo/dd;

    invoke-direct {v8, v0, v4, v3}, Lo/dd;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_b
    if-eqz v2, :cond_c

    const/4 v9, -0x1

    goto :goto_1

    :cond_c
    const/high16 v9, -0x1000000

    :goto_1
    if-eqz v2, :cond_d

    const/4 v10, -0x1

    goto :goto_2

    :cond_d
    const/high16 v10, -0x1000000

    :goto_2
    iget-object v11, v0, Lo/nd;->ͷ:Landroid/widget/TextView;

    if-eqz v11, :cond_e

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    iget-object v11, v0, Lo/nd;->ͺ:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v11, v0, Lo/nd;->ͻ:Landroid/widget/TextView;

    if-eqz v11, :cond_10

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget-object v11, v0, Lo/nd;->ͼ:Landroid/widget/TextView;

    if-eqz v11, :cond_11

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    iget-object v11, v0, Lo/nd;->Ά:Landroid/widget/TextView;

    if-eqz v11, :cond_12

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    iget-object v11, v0, Lo/nd;->Έ:Landroid/widget/TextView;

    if-eqz v11, :cond_13

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    iget-object v11, v0, Lo/nd;->Ή:Landroid/widget/TextView;

    const v12, -0x66000001

    const/high16 v13, -0x67000000

    if-eqz v11, :cond_15

    if-eqz v2, :cond_14

    move v14, v12

    goto :goto_3

    :cond_14
    move v14, v13

    :goto_3
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    iget-object v11, v0, Lo/nd;->Ί:Landroid/widget/TextView;

    if-eqz v11, :cond_17

    if-eqz v2, :cond_16

    move v14, v12

    goto :goto_4

    :cond_16
    move v14, v13

    :goto_4
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17
    iget-object v11, v0, Lo/nd;->Ό:Landroid/widget/TextView;

    if-eqz v11, :cond_19

    if-eqz v2, :cond_18

    move v14, v12

    goto :goto_5

    :cond_18
    move v14, v13

    :goto_5
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    sget v11, Lo/if;->pip_trip_label:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_1b

    if-eqz v2, :cond_1a

    const v15, -0x55000001

    goto :goto_6

    :cond_1a
    const/high16 v15, -0x56000000

    :goto_6
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    sget v11, Lo/if;->pip_trip_area:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1d

    if-eqz v2, :cond_1c

    sget v15, Lo/hf;->pip_trip_bg_dark:I

    goto :goto_7

    :cond_1c
    sget v15, Lo/hf;->pip_trip_bg_light:I

    :goto_7
    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1d
    sget v11, Lo/if;->pip_trip_divider:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1f

    if-eqz v2, :cond_1e

    const v15, 0x22ffffff

    goto :goto_8

    :cond_1e
    const/high16 v15, 0x22000000

    :goto_8
    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1f
    sget v11, Lo/if;->pip_trip_unit:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_21

    if-eqz v2, :cond_20

    goto :goto_9

    :cond_20
    move v12, v13

    :goto_9
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_21
    if-eqz v2, :cond_22

    const v11, 0x15ffffff

    goto :goto_a

    :cond_22
    const/high16 v11, 0x15000000

    :goto_a
    sget v12, Lo/if;->pip_sep_1:I

    sget v13, Lo/if;->pip_sep_2:I

    sget v15, Lo/if;->pip_sep_3:I

    filled-new-array {v12, v13, v15}, [I

    move-result-object v12

    move v13, v6

    :goto_b
    const/4 v15, 0x3

    if-ge v13, v15, :cond_24

    aget v15, v12, v13

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_23

    invoke-virtual {v15, v11}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_24
    sget v11, Lo/if;->pip_control_grid:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/GridLayout;

    if-eqz v11, :cond_31

    if-eqz v2, :cond_25

    sget v15, Lo/hf;->pip_control_btn_bg_dark:I

    goto :goto_c

    :cond_25
    sget v15, Lo/hf;->pip_control_btn_bg_light:I

    :goto_c
    if-eqz v2, :cond_26

    const/16 v16, -0x1

    goto :goto_d

    :cond_26
    const/high16 v16, -0x1000000

    :goto_d
    if-eqz v2, :cond_27

    const/16 v17, -0x1

    goto :goto_e

    :cond_27
    const/high16 v17, -0x1000000

    :goto_e
    iget-object v4, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-static {v4}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v4

    move v8, v6

    :goto_f
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v8, v12, :cond_31

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_30

    check-cast v12, Landroid/widget/LinearLayout;

    if-nez v4, :cond_28

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_28
    invoke-virtual {v12}, Landroid/view/View;->isActivated()Z

    move-result v13

    move v14, v6

    :goto_10
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v14, v5, :cond_30

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_2a

    if-nez v14, :cond_2a

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v13, :cond_29

    const/4 v6, -0x1

    goto :goto_11

    :cond_29
    move/from16 v6, v17

    :goto_11
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_13

    :cond_2a
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2f

    if-ne v14, v3, :cond_2c

    check-cast v5, Landroid/widget/TextView;

    if-eqz v13, :cond_2b

    const/4 v6, -0x1

    goto :goto_12

    :cond_2b
    move/from16 v6, v16

    goto :goto_12

    :cond_2c
    const/4 v6, 0x2

    if-ne v14, v6, :cond_2f

    check-cast v5, Landroid/widget/TextView;

    if-eqz v13, :cond_2d

    const v6, -0x33000001    # -1.3421772E8f

    goto :goto_12

    :cond_2d
    if-eqz v2, :cond_2e

    const v6, 0x66ffffff

    goto :goto_12

    :cond_2e
    const/high16 v6, 0x66000000

    :goto_12
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2f
    :goto_13
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_10

    :cond_30
    add-int/lit8 v8, v8, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    goto :goto_f

    :cond_31
    iget-object v4, v0, Lo/nd;->ͽ:Landroid/widget/TextView;

    if-eqz v4, :cond_32

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_32
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, v0, Lo/nd;->Ώ:Landroid/widget/ImageView;

    if-eqz v5, :cond_33

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_33
    iget-object v5, v0, Lo/nd;->ΐ:Landroid/widget/ImageView;

    if-eqz v5, :cond_34

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_34
    iget-object v5, v0, Lo/nd;->Α:Landroid/widget/ImageView;

    if-eqz v5, :cond_35

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_35
    iget-object v4, v0, Lo/nd;->Υ:Lo/ia;

    if-eqz v4, :cond_37

    .line 1
    iget-object v4, v4, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    iget-object v4, v4, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz v4, :cond_36

    .line 2
    iget-boolean v4, v4, Lo/vl;->Υ:Z

    if-eqz v4, :cond_36

    move v4, v3

    goto :goto_14

    :cond_36
    const/4 v4, 0x0

    .line 3
    :goto_14
    invoke-virtual {v0, v4}, Lo/nd;->Ό(Z)V

    :cond_37
    iget-object v4, v0, Lo/nd;->Ύ:Landroid/widget/ImageView;

    const/high16 v5, 0x41000000    # 8.0f

    if-eqz v4, :cond_39

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v6, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v2, :cond_38

    const v6, -0xcccccd

    goto :goto_15

    :cond_38
    const v6, -0x222223

    :goto_15
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v6, v0, Lo/nd;->Ύ:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lo/nd;->Ύ:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_39
    sget v4, Lo/if;->pip_divider:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v6, Lo/if;->pip_divider_handle:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    if-eqz v4, :cond_3a

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3a
    sget v4, Lo/if;->pip_right_cover:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3c

    if-eqz v2, :cond_3b

    const/high16 v6, -0x1000000

    goto :goto_16

    :cond_3b
    const/4 v6, -0x1

    :goto_16
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3c
    if-eqz v7, :cond_3e

    if-eqz v2, :cond_3d

    const/high16 v4, -0x1000000

    goto :goto_17

    :cond_3d
    const/4 v4, -0x1

    :goto_17
    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3e
    sget v4, Lo/if;->pip_btn_menu:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_40

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_40

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_3f

    const v14, -0x55000001

    goto :goto_18

    :cond_3f
    const v14, -0x5599999a

    :goto_18
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    :cond_40
    iget-object v4, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-static {v4}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_41

    goto/16 :goto_1d

    .line 5
    :cond_41
    sget-object v4, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_49

    .line 6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_42

    goto/16 :goto_1d

    :cond_42
    xor-int/2addr v2, v3

    if-eqz v2, :cond_43

    const v12, 0x66ffffff

    goto :goto_19

    :cond_43
    const/high16 v12, 0x66000000

    :goto_19
    iget-object v2, v0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v2

    sget v7, Lo/if;->pip_left_container:I

    sget v8, Lo/if;->pip_tyre_area:I

    sget v9, Lo/if;->pip_music_area:I

    sget v10, Lo/if;->pip_right_panel:I

    sget v11, Lo/if;->pip_trip_area:I

    filled-new-array {v7, v8, v9, v10, v11}, [I

    move-result-object v7

    const/4 v8, 0x0

    :goto_1a
    const/4 v9, 0x5

    if-ge v8, v9, :cond_45

    aget v9, v7, v8

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_44

    goto :goto_1b

    :cond_44
    new-instance v10, Lo/II;

    invoke-direct {v10, v4, v12, v6}, Lo/II;-><init>(Landroid/graphics/Bitmap;IF)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v11, Lo/if;->tag_blur_crop_drawable:I

    invoke-virtual {v9, v11, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_45
    sget v6, Lo/if;->pip_control_grid:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout;

    if-eqz v6, :cond_47

    mul-float/2addr v2, v5

    const/4 v5, 0x0

    :goto_1c
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_47

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_46

    new-instance v8, Lo/II;

    invoke-direct {v8, v4, v12, v2}, Lo/II;-><init>(Landroid/graphics/Bitmap;IF)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lo/if;->tag_blur_crop_drawable:I

    invoke-virtual {v7, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_47
    iget-object v2, v0, Lo/nd;->σ:Landroid/view/View;

    if-eqz v2, :cond_48

    iget-object v4, v0, Lo/nd;->ς:Lo/yc;

    if-eqz v4, :cond_48

    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v4, v0, Lo/nd;->ς:Lo/yc;

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_48
    iput-object v1, v0, Lo/nd;->σ:Landroid/view/View;

    new-instance v2, Lo/yc;

    invoke-direct {v2, v0, v1}, Lo/yc;-><init>(Lo/nd;Landroid/view/View;)V

    iput-object v2, v0, Lo/nd;->ς:Lo/yc;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v4, v0, Lo/nd;->ς:Lo/yc;

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v2, Lo/zc;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lo/zc;-><init>(Lo/nd;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lo/zc;

    invoke-direct {v2, v0, v1, v3}, Lo/zc;-><init>(Lo/nd;Landroid/view/View;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    :goto_1d
    return-void
.end method

.method public final Ͱ()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/SurfaceView;

    .line 2
    .line 3
    iget-object v1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lo/kd;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lo/kd;-><init>(Lo/nd;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 23
    .line 24
    new-instance v1, Lo/ld;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lo/ld;-><init>(Lo/nd;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iget-object v1, p0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 35
    .line 36
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lo/nd;->Υ:Lo/ia;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    new-instance v1, Lo/hd;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lo/hd;-><init>(Lo/nd;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 56
    .line 57
    iput-object v1, v2, Lcom/byd/launcher/NavBarService;->Ύ:Lo/hd;

    .line 58
    .line 59
    iget-object v1, p0, Lo/nd;->ΐ:Landroid/widget/ImageView;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lo/ia;->ˋ()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    sget v0, Lo/hf;->widget_music_btn_play:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    sget v0, Lo/hf;->widget_music_btn_pause:I

    .line 73
    .line 74
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lo/nd;->ͽ:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lo/nd;->Υ:Lo/ia;

    .line 82
    .line 83
    invoke-virtual {v1}, Lo/ia;->ˋ()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lo/nd;->Υ:Lo/ia;

    .line 91
    .line 92
    iget-object v0, v0, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-boolean v0, v0, Lo/vl;->Υ:Z

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    :cond_3
    invoke-virtual {p0, v3}, Lo/nd;->Ό(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lo/nd;->Υ:Lo/ia;

    .line 107
    .line 108
    const-string v1, "poll"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lo/ia;->Ͷ(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method public final ͱ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public final Ͳ(Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-object v0, Lo/nd;->ψ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public final ͳ()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lo/nd;->Η:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lo/nd;->Η:Z

    .line 8
    .line 9
    iget-object v1, p0, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lo/nd;->Ζ:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lo/nd;->Ο:Landroid/os/IBinder;

    .line 21
    .line 22
    iget-object v3, p0, Lo/nd;->ρ:Lo/qc;

    .line 23
    .line 24
    iput-object v2, p0, Lo/nd;->Ο:Landroid/os/IBinder;

    .line 25
    .line 26
    iput-object v2, p0, Lo/nd;->ρ:Lo/qc;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    :try_start_0
    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :cond_1
    iget-object v1, p0, Lo/nd;->Ν:[B

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_1
    iput-object v2, p0, Lo/nd;->Λ:Ljava/io/OutputStream;

    .line 39
    .line 40
    iget-object v3, p0, Lo/nd;->Μ:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    :catch_1
    :try_start_3
    iput-object v2, p0, Lo/nd;->Μ:Ljava/net/Socket;

    .line 48
    .line 49
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    iget-object v1, p0, Lo/nd;->Κ:Lo/af;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    :try_start_4
    iget-object v1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v3, p0, Lo/nd;->Κ:Lo/af;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 63
    .line 64
    .line 65
    :catch_2
    iput-object v2, p0, Lo/nd;->Κ:Lo/af;

    .line 66
    .line 67
    :cond_3
    iput-boolean v0, p0, Lo/nd;->Ω:Z

    .line 68
    .line 69
    :try_start_5
    iget-object v1, p0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_3
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_0
    iget v1, p0, Lo/nd;->Ε:I

    .line 84
    .line 85
    const/4 v3, -0x1

    .line 86
    iput v3, p0, Lo/nd;->Ε:I

    .line 87
    .line 88
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    .line 89
    .line 90
    iget-object v4, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 91
    .line 92
    const-class v5, Lcom/byd/launcher/MainActivity;

    .line 93
    .line 94
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    const/high16 v4, 0x14000000

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 105
    .line 106
    .line 107
    :catch_4
    iget-object v3, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 108
    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    iput-object v2, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 112
    .line 113
    iget-object v4, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 124
    .line 125
    const/high16 v5, 0x42a00000    # 80.0f

    .line 126
    .line 127
    mul-float/2addr v4, v5

    .line 128
    const/4 v5, 0x2

    .line 129
    invoke-virtual {v3, v5, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lo/nd;->Τ:Lo/ia;

    .line 133
    .line 134
    if-eqz v2, :cond_5

    .line 135
    .line 136
    sget-object v5, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 137
    .line 138
    iget-object v5, v2, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 139
    .line 140
    invoke-virtual {v5}, Lcom/byd/launcher/NavBarService;->ϔ()V

    .line 141
    .line 142
    .line 143
    iget-object v5, v5, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 144
    .line 145
    new-instance v6, Lo/hb;

    .line 146
    .line 147
    invoke-direct {v6, v2, v0}, Lo/hb;-><init>(Lo/ia;I)V

    .line 148
    .line 149
    .line 150
    const-wide/16 v7, 0x1f4

    .line 151
    .line 152
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    neg-float v2, v4

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-wide/16 v4, 0x12c

    .line 170
    .line 171
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 176
    .line 177
    const v4, 0x3f99999a    # 1.2f

    .line 178
    .line 179
    .line 180
    invoke-direct {v2, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-instance v2, Lo/h2;

    .line 188
    .line 189
    const/16 v4, 0x8

    .line 190
    .line 191
    invoke-direct {v2, p0, v3, v1, v4}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    iget-object v0, p0, Lo/nd;->Τ:Lo/ia;

    .line 203
    .line 204
    if-eqz v0, :cond_7

    .line 205
    .line 206
    invoke-virtual {v0}, Lo/ia;->Ͳ()V

    .line 207
    .line 208
    .line 209
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    .line 210
    .line 211
    new-instance v1, Lo/uc;

    .line 212
    .line 213
    const/4 v2, 0x1

    .line 214
    invoke-direct {v1, p0, v2}, Lo/uc;-><init>(Lo/nd;I)V

    .line 215
    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    .line 222
    .line 223
    :goto_1
    return-void

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    throw v0
.end method

.method public final Ͷ(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    array-length v3, v2

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    return v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    :cond_5
    return v0
.end method

.method public final ͷ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/nd;->Η:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/nd;->Ϊ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ͺ(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lo/nd;->η:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    iput-wide v0, p0, Lo/nd;->η:J

    .line 16
    .line 17
    const-string v0, ": "

    .line 18
    .line 19
    invoke-static {p1, v0}, Lo/v1;->ͷ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "PiPManager"

    .line 24
    .line 25
    invoke-static {p2, p1, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final ͻ(II)V
    .locals 8

    .line 1
    const-string v0, "PiPManager"

    .line 2
    .line 3
    const-string v1, "{\"command\":\"setDisplayImePolicy\",\"params\":{\"displayId\":"

    .line 4
    .line 5
    iget-object v2, p0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, p0, Lo/nd;->Ε:I

    .line 16
    .line 17
    iput p1, p0, Lo/nd;->ε:I

    .line 18
    .line 19
    iput p2, p0, Lo/nd;->ζ:I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lo/nd;->γ:I

    .line 23
    .line 24
    iput p1, p0, Lo/nd;->δ:I

    .line 25
    .line 26
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lo/nd;->Ε:I

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ",\"policy\":0}}"

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p2}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendRaw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p2

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Failed to request IME policy: "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p2, v1, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p2, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 65
    .line 66
    const-string v1, "pip_manager_prefs"

    .line 67
    .line 68
    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "pip_right_app"

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "/"

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_0

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    aget-object v6, v6, p1

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7, v6, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v7, "Saved app "

    .line 106
    .line 107
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v6, " not installed, finding alternative"

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v0, v4}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    .line 135
    .line 136
    move-object v4, v3

    .line 137
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    sget-object v0, Lo/nd;->χ:[Ljava/lang/String;

    .line 150
    .line 151
    move v1, p1

    .line 152
    :goto_2
    const/4 v2, 0x3

    .line 153
    if-ge v1, v2, :cond_3

    .line 154
    .line 155
    aget-object v2, v0, v1

    .line 156
    .line 157
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-eqz v2, :cond_2

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-eqz v4, :cond_2

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    :goto_3
    move-object v4, v3

    .line 182
    :cond_4
    if-eqz v4, :cond_5

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_6

    .line 189
    .line 190
    :cond_5
    const-string v4, "com.byd.automap/com.byd.automap.activity.StartupActivity"

    .line 191
    .line 192
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_7

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    aget-object p2, p2, p1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_7
    move-object p2, v4

    .line 206
    :goto_4
    iput-object p2, p0, Lo/nd;->Σ:Ljava/lang/String;

    .line 207
    .line 208
    iget-object p2, p0, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 209
    .line 210
    new-instance v0, Lo/ag;

    .line 211
    .line 212
    const/16 v1, 0x1b

    .line 213
    .line 214
    invoke-direct {v0, v1, p0, v4}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const-wide/16 v1, 0x32

    .line 218
    .line 219
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    .line 221
    .line 222
    iput p1, p0, Lo/nd;->έ:I

    .line 223
    .line 224
    iget-object p1, p0, Lo/nd;->Ζ:Landroid/os/Handler;

    .line 225
    .line 226
    iget-object p2, p0, Lo/nd;->ή:Lo/c8;

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    .line 230
    .line 231
    const-wide/16 v0, 0x1388

    .line 232
    .line 233
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public final ͼ(Landroid/view/View;)V
    .locals 29

    .line 1
    move-object/from16 v12, p0

    sget v0, Lo/if;->pip_control_grid:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/GridLayout;

    if-nez v13, :cond_0

    return-void

    :cond_0
    iget-object v14, v12, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v15, 0x0

    const/4 v11, 0x1

    if-ne v0, v1, :cond_1

    move/from16 v16, v11

    goto :goto_0

    :cond_1
    move/from16 v16, v15

    :goto_0
    const-string v0, "window_lf"

    const-string v1, "\u5de6\u524d\u7a97"

    const-string v2, "control_window_lf0"

    const-string v3, "control_window_lf1"

    const-string v4, "setBodyWindowCtrlState"

    const-string v5, "getWindowState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v0, "window_rf"

    const-string v1, "\u53f3\u524d\u7a97"

    const-string v2, "control_window_rf0"

    const-string v3, "control_window_rf1"

    const-string v4, "setBodyWindowCtrlState"

    const-string v5, "getWindowState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v0, "window_lr"

    const-string v1, "\u5de6\u540e\u7a97"

    const-string v2, "control_window_lr0"

    const-string v3, "control_window_lr1"

    const-string v4, "setBodyWindowCtrlState"

    const-string v5, "getWindowState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v0, "window_rr"

    const-string v1, "\u53f3\u540e\u7a97"

    const-string v2, "control_window_rr0"

    const-string v3, "control_window_rr1"

    const-string v4, "setBodyWindowCtrlState"

    const-string v5, "getWindowState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v20

    const-string v0, "moonroof_breath"

    const-string v1, "\u5929\u7a97\u900f\u6c14"

    const-string v2, "control_moonroof0"

    const-string v3, "control_moonroof1"

    const-string v4, "setMoonRoofBreath"

    const-string v5, "getSunroofState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v21

    const-string v0, "moonroof_vent"

    const-string v1, "\u5929\u7a97\u901a\u98ce"

    const-string v2, "control_moonroof0"

    const-string v3, "control_moonroof1"

    const-string v4, "setMoonRoofVentilate"

    const-string v5, "getSunroofState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v22

    const-string v0, "daylight"

    const-string v1, "\u65e5\u884c\u706f"

    const-string v2, "control_daylight2"

    const-string v3, "control_daylight1"

    const-string v4, "setDayTimeLightState"

    const-string v5, "getDayTimeLightState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v23

    const-string v0, "inside_light"

    const-string v1, "\u5ba4\u5185\u706f"

    const-string v2, "control_inside_light1"

    const-string v3, "control_inside_light2"

    const-string v4, "setInsideLightDoorState"

    const-string v5, "getInsideLightDoorState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v0, "trunk"

    const-string v1, "\u540e\u5907\u7bb1"

    const-string v2, "control_trunck0"

    const-string v3, "control_trunck1"

    const-string v4, "openTrunk"

    const-string v5, "getTrunkState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v25

    const-string v0, "energy_feedback"

    const-string v1, "\u52a8\u80fd\u56de\u6536"

    const-string v2, "control_energy_recycle1"

    const-string v3, "control_energy_recycle2"

    const-string v4, "setEnergyFeedback"

    const-string v5, "getEnergyFeedback"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v0, "screen_off"

    const-string v1, "\u606f\u5c4f"

    const-string v2, "control_ac_power0"

    const-string v3, "control_ac_power1"

    const-string v4, "setScreenOff"

    const-string v5, ""

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v27

    const-string v0, "engine_voice"

    const-string v1, "\u6a21\u62df\u97f3"

    const-string v2, "ic_qs_volume"

    const-string v3, "ic_qs_volume"

    const-string v4, "setEngineVoiceSimulatorState"

    const-string v5, "getEngineVoiceSimulatorState"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v28

    filled-new-array/range {v17 .. v28}, [[Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    if-eqz v16, :cond_2

    sget v0, Lo/hf;->pip_control_btn_bg_dark:I

    goto :goto_1

    :cond_2
    sget v0, Lo/hf;->pip_control_btn_bg_light:I

    :goto_1
    move v9, v0

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    if-eqz v16, :cond_3

    move v8, v0

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    if-eqz v16, :cond_4

    move/from16 v18, v0

    goto :goto_3

    :cond_4
    move/from16 v18, v1

    :goto_3
    const/16 v7, 0xc

    new-array v6, v7, [Z

    move v5, v15

    :goto_4
    if-ge v5, v7, :cond_8

    aget-object v2, v17, v5

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    iput v15, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v15, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    rem-int/lit8 v3, v5, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v11, v7}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    div-int/lit8 v3, v5, 0x4

    invoke-static {v3, v11, v7}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41e00000    # 28.0f

    mul-float/2addr v1, v10

    float-to-int v1, v1

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x2

    aget-object v15, v2, v1

    invoke-virtual {v12, v15}, Lo/nd;->Ͳ(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v7, v2, v11

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v15, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v7, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v11, v10, v20

    float-to-int v11, v11

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v15, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "screen_off"

    const/16 v19, 0x0

    aget-object v0, v2, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    goto :goto_5

    :cond_6
    const-string v0, "--"

    :goto_5
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v11, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v16, :cond_7

    const v0, 0x66ffffff

    goto :goto_6

    :cond_7
    const/high16 v0, 0x66000000

    :goto_6
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lo/ad;

    move-object v0, v1

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v3

    move-object v3, v6

    move-object/from16 v21, v4

    move v4, v5

    move/from16 v22, v5

    move-object/from16 v5, v21

    move-object/from16 v23, v6

    move-object/from16 v6, v20

    move/from16 v24, v7

    const/16 v20, 0xc

    move-object v7, v15

    move v15, v8

    move-object v8, v11

    move/from16 v25, v9

    move/from16 v9, v18

    move/from16 v26, v10

    move v10, v15

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lo/ad;-><init>(Lo/nd;[Ljava/lang/String;[ZILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;IIZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v22, 0x1

    move-object/from16 v12, p0

    move v8, v15

    move/from16 v15, v19

    move/from16 v7, v20

    move-object/from16 v6, v23

    move/from16 v11, v24

    move/from16 v9, v25

    move/from16 v10, v26

    goto/16 :goto_4

    :cond_8
    move-object/from16 v23, v6

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object v3, v13

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lo/nd;->ͽ([[Ljava/lang/String;[ZLandroid/widget/GridLayout;II)V

    return-void
.end method

.method public final ͽ([[Ljava/lang/String;[ZLandroid/widget/GridLayout;II)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    move-result-object v10

    const/4 v11, 0x5

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v13, 0x0

    iput v13, v8, Lo/nd;->υ:I

    move v14, v13

    :goto_0
    array-length v0, v9

    if-ge v14, v0, :cond_7

    aget-object v0, v9, v14

    aget-object v15, v0, v11

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "getWindowState"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "window_lf"

    aget-object v2, v9, v14

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "window_rf"

    aget-object v2, v9, v14

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "window_lr"

    aget-object v2, v9, v14

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    :goto_1
    const-string v2, "window"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :catch_0
    :goto_2
    move-object v7, v0

    new-instance v6, Lo/fd;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v13, v6

    move/from16 v6, p5

    move-object v12, v7

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lo/fd;-><init>(Lo/nd;[[Ljava/lang/String;I[ZLandroid/widget/GridLayout;II)V

    invoke-virtual {v10, v15, v12, v13}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    :cond_6
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_4
    iget-boolean v0, v8, Lo/nd;->Η:Z

    if-eqz v0, :cond_9

    iget v0, v8, Lo/nd;->υ:I

    if-ge v0, v11, :cond_9

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lo/nd;->υ:I

    iget-object v7, v8, Lo/nd;->ͱ:Landroid/os/Handler;

    new-instance v10, Lo/sc;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lo/sc;-><init>(Lo/nd;[[Ljava/lang/String;[ZLandroid/widget/GridLayout;II)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v7, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method public final Ά(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_f

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    const-string v7, "setDayTimeLightState"

    .line 26
    .line 27
    const-string v8, "setEnergyFeedback"

    .line 28
    .line 29
    const-string v9, "setInsideLightDoorState"

    .line 30
    .line 31
    const-string v10, "setBodyWindowCtrlState"

    .line 32
    .line 33
    const/4 v11, -0x1

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x2

    .line 36
    const/4 v14, 0x1

    .line 37
    sparse-switch v4, :sswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :sswitch_0
    :try_start_1
    const-string v4, "setScreenOff"

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x7

    .line 50
    goto :goto_1

    .line 51
    :sswitch_1
    const-string v4, "openTrunk"

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    goto :goto_1

    .line 61
    :sswitch_2
    const-string v4, "setMoonRoofVentilate"

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    const/4 v4, 0x5

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    move v4, v13

    .line 78
    goto :goto_1

    .line 79
    :sswitch_4
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    const/4 v4, 0x6

    .line 86
    goto :goto_1

    .line 87
    :sswitch_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    const/4 v4, 0x3

    .line 94
    goto :goto_1

    .line 95
    :sswitch_6
    const-string v4, "setMoonRoofBreath"

    .line 96
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    move v4, v14

    .line 104
    goto :goto_1

    .line 105
    :sswitch_7
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    if-eqz v4, :cond_1

    .line 110
    .line 111
    move v4, v12

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    move v4, v11

    .line 114
    :goto_1
    const-string v15, "setMoonRoofState"

    .line 115
    .line 116
    const-string v5, "value"

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    packed-switch v4, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    .line 123
    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :pswitch_0
    const-string v0, "bydScreenOff"

    .line 127
    .line 128
    :goto_2
    invoke-virtual {v3, v0, v6, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :pswitch_1
    new-instance v0, Lorg/json/JSONObject;

    .line 134
    .line 135
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .line 137
    .line 138
    if-eqz p3, :cond_2

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_2
    move v13, v14

    .line 142
    :goto_3
    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v3, v8, v0, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_9

    .line 150
    .line 151
    :pswitch_2
    new-instance v0, Lorg/json/JSONObject;

    .line 152
    .line 153
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .line 155
    .line 156
    if-eqz p3, :cond_3

    .line 157
    .line 158
    const/16 v12, 0xfc

    .line 159
    .line 160
    :cond_3
    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_4
    invoke-virtual {v3, v15, v0, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    .line 166
    .line 167
    goto/16 :goto_9

    .line 168
    .line 169
    :pswitch_3
    if-eqz p3, :cond_6

    .line 170
    .line 171
    :try_start_3
    sget-object v0, Lcom/byd/launcher/CoreService;->Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 172
    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->getCurrentGear()I

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 179
    move v11, v0

    .line 180
    :catch_0
    :cond_4
    if-eq v11, v14, :cond_5

    .line 181
    .line 182
    if-lez v11, :cond_5

    .line 183
    .line 184
    :try_start_4
    iget-object v0, v1, Lo/nd;->ˋ:Landroid/content/Context;

    .line 185
    .line 186
    const-string v2, "\u8bf7\u5148\u6302\u5165P\u6863\u518d\u64cd\u4f5c\u540e\u5907\u7bb1"

    .line 187
    .line 188
    invoke-static {v0, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_9

    .line 196
    .line 197
    :cond_5
    iget-object v0, v1, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 198
    .line 199
    new-instance v2, Lo/ag;

    .line 200
    .line 201
    const/16 v4, 0x19

    .line 202
    .line 203
    invoke-direct {v2, v4, v1, v3}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    goto/16 :goto_9

    .line 210
    .line 211
    :cond_6
    const-string v0, "closeTrunk"

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    .line 215
    .line 216
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .line 218
    .line 219
    if-eqz p3, :cond_7

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_7
    move v13, v14

    .line 223
    :goto_5
    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v3, v9, v0, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_9

    .line 231
    .line 232
    :pswitch_5
    new-instance v0, Lorg/json/JSONObject;

    .line 233
    .line 234
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .line 236
    .line 237
    if-eqz p3, :cond_8

    .line 238
    .line 239
    move v13, v14

    .line 240
    :cond_8
    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v3, v7, v0, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 245
    .line 246
    .line 247
    goto :goto_9

    .line 248
    :pswitch_6
    new-instance v0, Lorg/json/JSONObject;

    .line 249
    .line 250
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .line 252
    .line 253
    if-eqz p3, :cond_9

    .line 254
    .line 255
    const/16 v12, 0xfd

    .line 256
    .line 257
    :cond_9
    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    goto :goto_4

    .line 262
    :pswitch_7
    new-instance v2, Lorg/json/JSONObject;

    .line 263
    .line 264
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v4, "window_lf"

    .line 268
    .line 269
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_a

    .line 274
    .line 275
    move v5, v14

    .line 276
    goto :goto_6

    .line 277
    :cond_a
    const-string v4, "window_rf"

    .line 278
    .line 279
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_b

    .line 284
    .line 285
    move v5, v13

    .line 286
    goto :goto_6

    .line 287
    :cond_b
    const-string v4, "window_lr"

    .line 288
    .line 289
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_c

    .line 294
    .line 295
    const/4 v5, 0x3

    .line 296
    goto :goto_6

    .line 297
    :cond_c
    const/4 v5, 0x4

    .line 298
    :goto_6
    const-string v0, "window"

    .line 299
    .line 300
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    .line 302
    .line 303
    const-string v0, "state"

    .line 304
    .line 305
    if-eqz p3, :cond_d

    .line 306
    .line 307
    move v13, v14

    .line 308
    :cond_d
    invoke-virtual {v2, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v10, v2, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 312
    .line 313
    .line 314
    goto :goto_9

    .line 315
    :goto_7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .line 317
    .line 318
    if-eqz p3, :cond_e

    .line 319
    .line 320
    move v12, v14

    .line 321
    :cond_e
    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v3, v2, v0, v6}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 326
    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_f
    :goto_8
    return-void

    .line 330
    :catch_1
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    :goto_9
    return-void

    .line 335
    :sswitch_data_0
    .sparse-switch
        -0x4eb20eee -> :sswitch_7
        -0x44417ac9 -> :sswitch_6
        -0x37571055 -> :sswitch_5
        -0x36150d1 -> :sswitch_4
        0x13b9242 -> :sswitch_3
        0x4ae632c3 -> :sswitch_2
        0x5b8f858a -> :sswitch_1
        0x6335bf21 -> :sswitch_0
    .end sparse-switch

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Έ(Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setTemporarilyHidden("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ") rootView="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v3

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " isShowing="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lo/nd;->Η:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " temporarilyHidden="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lo/nd;->Ϊ:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " usingEmbedded="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lo/nd;->Ψ:Z

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "PiPManager"

    .line 63
    .line 64
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v0, :cond_a

    .line 70
    .line 71
    iget-boolean v0, p0, Lo/nd;->Η:Z

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_1
    const-string v0, "window"

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    iget-boolean v5, p0, Lo/nd;->Ϊ:Z

    .line 83
    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    iput-boolean v2, p0, Lo/nd;->Ϊ:Z

    .line 87
    .line 88
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    instance-of v2, p1, Landroid/view/WindowManager$LayoutParams;

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 108
    .line 109
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    .line 111
    or-int/lit8 v2, v2, 0x10

    .line 112
    .line 113
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    .line 115
    :try_start_0
    iget-object v2, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/WindowManager;

    .line 122
    .line 123
    iget-object v2, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 124
    .line 125
    invoke-interface {v0, v2, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    :catch_0
    :cond_2
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 129
    .line 130
    const/4 v0, 0x4

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 135
    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    :try_start_1
    invoke-virtual {p1, v4}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "setTemporarilyHidden(true) -> VD.setSurface(null) (map stays alive)"

    .line 142
    .line 143
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v2, "setTemporarilyHidden(true) VD.setSurface(null) failed: "

    .line 151
    .line 152
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_1
    const-string p1, "setTemporarilyHidden(true) -> rootView INVISIBLE (VD kept alive)"

    .line 159
    .line 160
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_5

    .line 164
    .line 165
    :cond_4
    if-nez p1, :cond_a

    .line 166
    .line 167
    iget-boolean p1, p0, Lo/nd;->Ϊ:Z

    .line 168
    .line 169
    if-eqz p1, :cond_a

    .line 170
    .line 171
    iput-boolean v3, p0, Lo/nd;->Ϊ:Z

    .line 172
    .line 173
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    instance-of v2, p1, Landroid/view/WindowManager$LayoutParams;

    .line 180
    .line 181
    if-eqz v2, :cond_5

    .line 182
    .line 183
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 184
    .line 185
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 186
    .line 187
    and-int/lit8 v2, v2, -0x11

    .line 188
    .line 189
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 190
    .line 191
    :try_start_2
    iget-object v2, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/view/WindowManager;

    .line 198
    .line 199
    iget-object v2, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 200
    .line 201
    invoke-interface {v0, v2, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    .line 203
    .line 204
    :catch_1
    :cond_5
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 210
    .line 211
    if-eqz p1, :cond_6

    .line 212
    .line 213
    iget-object p1, p0, Lo/nd;->Γ:Landroid/view/SurfaceView;

    .line 214
    .line 215
    if-eqz p1, :cond_6

    .line 216
    .line 217
    :try_start_3
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    iget-object v0, p0, Lo/nd;->Δ:Landroid/hardware/display/VirtualDisplay;

    .line 240
    .line 241
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 246
    .line 247
    .line 248
    const-string p1, "setTemporarilyHidden(false) -> VD.setSurface(reattach)"

    .line 249
    .line 250
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :catchall_1
    move-exception p1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, "setTemporarilyHidden(false) VD.setSurface(reattach) failed: "

    .line 258
    .line 259
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {p1, v0, v1}, Lo/v1;->Ά(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_6
    :goto_2
    iget-object p1, p0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    .line 266
    .line 267
    const/4 v0, 0x2

    .line 268
    if-nez p1, :cond_7

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_7
    iget-object p1, p0, Lo/nd;->ά:Landroid/view/View;

    .line 272
    .line 273
    if-eqz p1, :cond_8

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    if-eqz p1, :cond_8

    .line 280
    .line 281
    iget-object p1, p0, Lo/nd;->ά:Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    check-cast p1, Landroid/view/ViewGroup;

    .line 288
    .line 289
    iget-object v2, p0, Lo/nd;->ά:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 292
    .line 293
    .line 294
    iput-object v4, p0, Lo/nd;->ά:Landroid/view/View;

    .line 295
    .line 296
    :cond_8
    iget-object p1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 297
    .line 298
    invoke-static {p1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    new-instance v3, Landroid/view/View;

    .line 303
    .line 304
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    .line 306
    .line 307
    if-eqz v2, :cond_9

    .line 308
    .line 309
    const p1, -0xa0a0b

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_9
    const p1, -0xe5e5e6

    .line 314
    .line 315
    .line 316
    :goto_3
    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 317
    .line 318
    .line 319
    iget-object p1, p0, Lo/nd;->Ͷ:Landroid/widget/FrameLayout;

    .line 320
    .line 321
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .line 323
    const/4 v5, -0x1

    .line 324
    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .line 329
    .line 330
    iput-object v3, p0, Lo/nd;->ά:Landroid/view/View;

    .line 331
    .line 332
    iget-object p1, p0, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 333
    .line 334
    new-instance v2, Lo/zc;

    .line 335
    .line 336
    invoke-direct {v2, p0, v3, v0}, Lo/zc;-><init>(Lo/nd;Landroid/view/View;I)V

    .line 337
    .line 338
    .line 339
    const-wide/16 v5, 0x140

    .line 340
    .line 341
    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    .line 343
    .line 344
    :goto_4
    const-string p1, "setTemporarilyHidden(false) -> rootView VISIBLE"

    .line 345
    .line 346
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 360
    .line 361
    const/high16 v1, 0x41c80000    # 25.0f

    .line 362
    .line 363
    mul-float/2addr p1, v1

    .line 364
    iget-object v1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 365
    .line 366
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 370
    .line 371
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 373
    .line 374
    .line 375
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 376
    .line 377
    invoke-virtual {p1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lo/nd;->Ͳ:Landroid/view/View;

    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    const/high16 v1, 0x3f800000    # 1.0f

    .line 391
    .line 392
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    const-wide/16 v1, 0x12c

    .line 397
    .line 398
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 403
    .line 404
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 405
    .line 406
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    new-instance v1, Lo/uc;

    .line 414
    .line 415
    invoke-direct {v1, p0, v0}, Lo/uc;-><init>(Lo/nd;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lo/nd;->Φ:Ljava/lang/Runnable;

    .line 426
    .line 427
    if-eqz p1, :cond_a

    .line 428
    .line 429
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 430
    .line 431
    .line 432
    :cond_a
    :goto_5
    return-void
.end method

.method public final Ή()V
    .locals 11

    .line 1
    iget-object v0, p0, Lo/nd;->φ:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nd;->φ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lo/nd;->φ:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/bd;

    invoke-direct {v3, v2}, Lo/bd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v2, Lo/cd;

    invoke-direct {v2}, Lo/cd;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v2, Lo/ok;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v9}, Lo/ok;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v5

    :goto_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lo/jf;->pip_app_picker:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v10, :cond_3

    const v2, -0x19ddddde

    goto :goto_2

    :cond_3
    const v2, -0x19000001

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    sget v2, Lo/if;->pip_app_grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    sget v3, Lo/if;->pip_picker_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    const-string v5, "\u9009\u62e9\u53f3\u4fa7\u5e94\u7528"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_4

    const/4 v5, -0x1

    goto :goto_3

    :cond_4
    const v5, -0xddddde

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v5, 0x103012e

    invoke-direct {v3, v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v3, p0, Lo/nd;->Θ:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x106000d

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_6
    new-instance v1, Lo/gd;

    move-object v5, v1

    move-object v6, p0

    move-object v7, v4

    invoke-direct/range {v5 .. v10}, Lo/gd;-><init>(Lo/nd;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lo/oc;

    invoke-direct {v1, p0, v4, v0}, Lo/oc;-><init>(Lo/nd;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lo/nd;->φ:Landroid/app/AlertDialog;

    new-instance v1, Lo/pc;

    invoke-direct {v1, p0}, Lo/pc;-><init>(Lo/nd;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final Ί()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/nd;->μ:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/nd;->ν:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getWindowManagerService"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getInstance"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/nd;->ν:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "syncInputTransactions"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/nd;->μ:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lo/nd;->ν:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final Ό(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/nd;->Β:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget v1, Lo/hf;->ic_music_favorite_filled:I

    goto :goto_0

    :cond_1
    sget v1, Lo/hf;->ic_music_favorite:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lo/nd;->Β:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lo/nd;->ˋ:Landroid/content/Context;

    invoke-static {p1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/nd;->Β:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {v0}, Lo/ci;->ͱ(Z)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    return-void
.end method

.method public final Ύ(Landroid/view/View;)V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lo/nd;->τ:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x20

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-wide v0, p0, Lo/nd;->τ:J

    .line 17
    .line 18
    sget-object v0, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Lo/nd;->ˋ:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .line 50
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .line 58
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    .line 60
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v4, v4

    .line 65
    int-to-float v1, v1

    .line 66
    div-float v5, v4, v1

    .line 67
    .line 68
    int-to-float v3, v3

    .line 69
    int-to-float v2, v2

    .line 70
    div-float v6, v3, v2

    .line 71
    .line 72
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    mul-float/2addr v1, v5

    .line 77
    sub-float/2addr v1, v4

    .line 78
    const/high16 v4, 0x40000000    # 2.0f

    .line 79
    .line 80
    div-float/2addr v1, v4

    .line 81
    mul-float/2addr v2, v5

    .line 82
    sub-float/2addr v2, v3

    .line 83
    div-float/2addr v2, v4

    .line 84
    sget v3, Lo/if;->pip_left_container:I

    .line 85
    .line 86
    sget v4, Lo/if;->pip_tyre_area:I

    .line 87
    .line 88
    sget v6, Lo/if;->pip_music_area:I

    .line 89
    .line 90
    sget v7, Lo/if;->pip_right_panel:I

    .line 91
    .line 92
    sget v8, Lo/if;->pip_trip_area:I

    .line 93
    .line 94
    filled-new-array {v3, v4, v6, v7, v8}, [I

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x2

    .line 99
    new-array v4, v4, [I

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    move v7, v6

    .line 103
    :goto_0
    const/4 v8, 0x5

    .line 104
    const/4 v9, 0x1

    .line 105
    if-ge v7, v8, :cond_4

    .line 106
    .line 107
    aget v8, v3, v7

    .line 108
    .line 109
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-nez v8, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    sget v10, Lo/if;->tag_blur_crop_drawable:I

    .line 117
    .line 118
    invoke-virtual {v8, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    instance-of v11, v10, Lo/II;

    .line 123
    .line 124
    if-nez v11, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v8, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 128
    .line 129
    .line 130
    aget v11, v4, v6

    .line 131
    .line 132
    int-to-float v11, v11

    .line 133
    add-float/2addr v11, v1

    .line 134
    div-float/2addr v11, v5

    .line 135
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    aget v12, v4, v9

    .line 144
    .line 145
    int-to-float v12, v12

    .line 146
    add-float/2addr v12, v2

    .line 147
    div-float/2addr v12, v5

    .line 148
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    int-to-float v13, v13

    .line 161
    div-float/2addr v13, v5

    .line 162
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    int-to-float v8, v8

    .line 175
    div-float/2addr v8, v5

    .line 176
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    check-cast v10, Lo/II;

    .line 185
    .line 186
    invoke-virtual {v10, v11, v12, v13, v8}, Lo/II;->ˋ(IIII)V

    .line 187
    .line 188
    .line 189
    iput-object v0, v10, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    .line 190
    .line 191
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 192
    .line 193
    .line 194
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_4
    sget v3, Lo/if;->pip_control_grid:I

    .line 198
    .line 199
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/widget/GridLayout;

    .line 204
    .line 205
    if-eqz p1, :cond_7

    .line 206
    .line 207
    move v3, v6

    .line 208
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-ge v3, v7, :cond_7

    .line 213
    .line 214
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    if-nez v7, :cond_5

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_5
    sget v8, Lo/if;->tag_blur_crop_drawable:I

    .line 222
    .line 223
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    instance-of v10, v8, Lo/II;

    .line 228
    .line 229
    if-nez v10, :cond_6

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    .line 234
    .line 235
    aget v10, v4, v6

    .line 236
    .line 237
    int-to-float v10, v10

    .line 238
    add-float/2addr v10, v1

    .line 239
    div-float/2addr v10, v5

    .line 240
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    aget v11, v4, v9

    .line 249
    .line 250
    int-to-float v11, v11

    .line 251
    add-float/2addr v11, v2

    .line 252
    div-float/2addr v11, v5

    .line 253
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    int-to-float v12, v12

    .line 266
    div-float/2addr v12, v5

    .line 267
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    int-to-float v7, v7

    .line 280
    div-float/2addr v7, v5

    .line 281
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    check-cast v8, Lo/II;

    .line 290
    .line 291
    invoke-virtual {v8, v10, v11, v12, v7}, Lo/II;->ˋ(IIII)V

    .line 292
    .line 293
    .line 294
    iput-object v0, v8, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    .line 295
    .line 296
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 297
    .line 298
    .line 299
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_7
    :goto_4
    return-void
.end method

.method public final Ώ(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/nd;->Η:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/nd;->ͱ:Landroid/os/Handler;

    new-instance v1, Lo/ue;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, p1, v2}, Lo/ue;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
