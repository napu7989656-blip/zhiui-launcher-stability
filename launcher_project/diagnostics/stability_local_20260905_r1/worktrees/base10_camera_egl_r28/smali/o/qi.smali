.class public final Lo/qi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ι:Z


# instance fields
.field public ʹ:Z

.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Landroid/view/WindowManager;

.field public final Ͱ:Landroid/os/Handler;

.field public final ͱ:Landroid/content/SharedPreferences;

.field public Ͳ:Lo/ˏ;

.field public ͳ:Z

.field public volatile Ͷ:Z

.field public ͷ:I

.field public ͺ:Landroid/widget/ImageView;

.field public ͻ:I

.field public ͼ:I

.field public ͽ:I

.field public Ά:I

.field public final Έ:Ljava/lang/Object;

.field public Ή:Landroid/graphics/SurfaceTexture;

.field public Ί:Landroid/view/Surface;

.field public Ό:Lo/ki;

.field public Ύ:Z

.field public Ώ:Landroid/opengl/EGLDisplay;

.field public ΐ:Landroid/opengl/EGLContext;

.field public Α:Landroid/opengl/EGLSurface;

.field public Β:J

.field public Γ:J

.field public Δ:[I

.field public Ε:[S

.field public Ζ:Landroid/graphics/Bitmap;

.field public volatile Η:Landroid/graphics/Bitmap;

.field public volatile Θ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "TurnSignalCamera"

    const/16 v1, 0x10

    :try_start_0
    new-array v2, v1, [B

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x1

    new-array v7, v1, [S

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/byd/launcher/camera/NativeYuvConverter;->nv21ToRgb565Rotated([BIIII[SII)V

    sput-boolean v1, Lo/qi;->Ι:Z

    const-string v1, "Native YUV converter available"

    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    sput-boolean v1, Lo/qi;->Ι:Z

    const-string v1, "Native YUV converter not available, using Java fallback"

    invoke-static {v0, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/qi;->Ͱ:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/qi;->ͳ:Z

    iput-boolean v0, p0, Lo/qi;->ʹ:Z

    iput-boolean v0, p0, Lo/qi;->Ͷ:Z

    const/4 v1, -0x1

    iput v1, p0, Lo/qi;->ͷ:I

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lo/qi;->Έ:Ljava/lang/Object;

    iput-boolean v0, p0, Lo/qi;->Ύ:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/qi;->Β:J

    const-wide/16 v1, 0x10

    iput-wide v1, p0, Lo/qi;->Γ:J

    iput-boolean v0, p0, Lo/qi;->Θ:Z

    iput-object p1, p0, Lo/qi;->ˋ:Landroid/content/Context;

    iput-object p2, p0, Lo/qi;->ˏ:Landroid/view/WindowManager;

    const-string p2, "launcher_prefs"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/qi;->ͱ:Landroid/content/SharedPreferences;

    const-string p2, "turn_signal_camera_enabled"

    invoke-static {p1, p2, v0}, Lcom/byd/launcher/stability/CameraPreferences;->flag(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lo/qi;->ʹ:Z

    const-string p2, "turn_signal_overlay_w"

    const/16 v0, 0x1a4

    invoke-static {p1, p2, v0}, Lcom/byd/launcher/stability/CameraPreferences;->integer(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lo/qi;->ͻ:I

    const-string p2, "turn_signal_overlay_h"

    const/16 v0, 0x230

    invoke-static {p1, p2, v0}, Lcom/byd/launcher/stability/CameraPreferences;->integer(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lo/qi;->ͼ:I

    const-string p2, "turn_signal_overlay_x"

    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lcom/byd/launcher/stability/CameraPreferences;->integer(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lo/qi;->ͽ:I

    const-string p2, "turn_signal_overlay_y"

    const/16 v0, 0x28

    invoke-static {p1, p2, v0}, Lcom/byd/launcher/stability/CameraPreferences;->integer(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/qi;->Ά:I

    return-void
.end method

.method public static ͻ(Landroid/widget/TextView;II)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u00d7 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final ʹ(IZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/qi;->ʹ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/qi;->Ͱ:Landroid/os/Handler;

    new-instance v1, Lo/lb;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Lo/lb;-><init>(Ljava/lang/Object;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ˋ()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/qi;->ͳ:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/ki;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo/ki;-><init>(Lo/qi;I)V

    const-string v2, "turn-signal-camera-close"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final ˏ(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lo/qi;->ˋ:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lo/qi;->ͱ(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lo/qi;->ͱ(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lo/qi;->ͱ(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lo/qi;->ͱ(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, -0xcccccd

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lo/qi;->ͱ(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lo/qi;->ͱ(I)I

    move-result v2

    invoke-virtual {p1, v3, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final Ͱ()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo/qi;->Ͷ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/qi;->ͺ:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/qi;->Ͷ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/qi;->Ύ:Z

    iget-object v0, p0, Lo/qi;->ͺ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/qi;->ͺ:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lo/ag;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0, v0}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string v0, "TurnSignalCamera"

    const-string v1, "Overlay dismissed"

    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ͱ(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    iget-object v0, p0, Lo/qi;->ˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final Ͳ()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    const/16 v1, 0x3040

    const/4 v3, 0x4

    const/16 v5, 0x3038

    filled-new-array {v1, v3, v5}, [I

    move-result-object v7

    new-array v1, v4, [Landroid/opengl/EGLConfig;

    new-array v12, v4, [I

    iget-object v6, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v9, v1

    invoke-static/range {v6 .. v13}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    const/16 v3, 0x3098

    filled-new-array {v3, v2, v5}, [I

    move-result-object v2

    iget-object v3, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    aget-object v6, v1, v0

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v6, v7, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lo/qi;->ΐ:Landroid/opengl/EGLContext;

    const/16 v2, 0x3057

    const/16 v3, 0x3056

    filled-new-array {v2, v4, v3, v4, v5}, [I

    move-result-object v2

    iget-object v3, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    aget-object v1, v1, v0

    invoke-static {v3, v1, v2, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lo/qi;->Α:Landroid/opengl/EGLSurface;

    iget-object v1, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lo/qi;->ΐ:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public final ͳ()V
    .locals 13

    .line 1
    const-string v0, "TurnSignalCamera"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Landroid/hardware/bydauto/panorama/BYDAutoPanoramaDevice;

    .line 4
    .line 5
    const-string v2, "getInstance"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    .line 10
    const-class v5, Landroid/content/Context;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-object v5, v4, v6

    .line 14
    .line 15
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v5, p0, Lo/qi;->ˋ:Landroid/content/Context;

    .line 22
    .line 23
    aput-object v5, v4, v6

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string v4, "postEvent"

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    new-array v8, v7, [Ljava/lang/Class;

    .line 36
    .line 37
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v9, v8, v6

    .line 40
    .line 41
    aput-object v9, v8, v3

    .line 42
    .line 43
    const/4 v10, 0x2

    .line 44
    aput-object v9, v8, v10

    .line 45
    .line 46
    const-class v11, [B

    .line 47
    .line 48
    const/4 v12, 0x3

    .line 49
    aput-object v11, v8, v12

    .line 50
    .line 51
    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-array v7, v7, [Ljava/lang/Object;

    .line 56
    .line 57
    const/16 v8, 0x407

    .line 58
    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    aput-object v8, v7, v6

    .line 64
    .line 65
    const v8, 0x4f401018

    .line 66
    .line 67
    .line 68
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    aput-object v8, v7, v3

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    aput-object v8, v7, v10

    .line 79
    .line 80
    aput-object v5, v7, v12

    .line 81
    .line 82
    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v4, "setPanoOutputState"

    .line 86
    .line 87
    new-array v5, v3, [Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v9, v5, v6

    .line 90
    .line 91
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    const/4 v4, 0x6

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    aput-object v4, v3, v6

    .line 103
    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v1, "Panorama device initialized"

    .line 108
    .line 109
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "initPanoramaDevice failed: "

    .line 117
    .line 118
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_0
    :goto_0
    return-void
.end method

.method public final Ͷ([BIIII)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    const/16 v3, 0x500

    move/from16 v4, p5

    mul-int/2addr v4, v3

    iget-object v5, v1, Lo/qi;->Δ:[I

    const v6, 0x4b000

    if-eqz v5, :cond_0

    array-length v5, v5

    if-eq v5, v6, :cond_1

    :cond_0
    new-array v5, v6, [I

    iput-object v5, v1, Lo/qi;->Δ:[I

    :cond_1
    iget-object v5, v1, Lo/qi;->Δ:[I

    array-length v6, v0

    mul-int v7, p2, v2

    if-eqz p4, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x1e0

    const/16 v12, 0x280

    const/16 v14, 0xff

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v9, v12, :cond_20

    mul-int/lit16 v8, v9, 0x800

    shr-int/lit8 v8, v8, 0xa

    if-lt v8, v3, :cond_3

    const/16 v8, 0x4ff

    :cond_3
    add-int v16, v4, v8

    and-int/lit8 v8, v8, -0x2

    add-int/2addr v8, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_10

    rsub-int v11, v10, 0x1df

    mul-int/lit16 v11, v11, 0x800

    shr-int/lit8 v11, v11, 0xa

    if-lt v11, v2, :cond_4

    add-int/lit8 v11, v2, -0x1

    :cond_4
    mul-int v17, v11, p2

    add-int v3, v17, v16

    if-ltz v3, :cond_f

    if-lt v3, v6, :cond_5

    goto/16 :goto_7

    :cond_5
    aget-byte v3, v0, v3

    and-int/2addr v3, v14

    add-int/lit8 v3, v3, -0x10

    if-gez v3, :cond_6

    const/4 v3, 0x0

    :cond_6
    shr-int/lit8 v11, v11, 0x1

    mul-int v11, v11, p2

    add-int/2addr v11, v7

    add-int/2addr v11, v8

    add-int/lit8 v12, v11, 0x1

    if-ge v12, v6, :cond_e

    if-gez v11, :cond_7

    goto :goto_6

    :cond_7
    aget-byte v11, v0, v11

    and-int/2addr v11, v14

    add-int/lit8 v11, v11, -0x80

    aget-byte v12, v0, v12

    and-int/2addr v12, v14

    add-int/lit8 v12, v12, -0x80

    mul-int/lit16 v3, v3, 0x4a8

    mul-int/lit16 v13, v11, 0x662

    add-int/2addr v13, v3

    shr-int/lit8 v13, v13, 0xa

    mul-int/lit16 v11, v11, 0x341

    sub-int v11, v3, v11

    mul-int/lit16 v14, v12, 0x190

    sub-int/2addr v11, v14

    shr-int/lit8 v11, v11, 0xa

    mul-int/lit16 v12, v12, 0x812

    add-int/2addr v12, v3

    shr-int/lit8 v3, v12, 0xa

    const/16 v12, 0xff

    if-gez v13, :cond_8

    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    if-le v13, v12, :cond_9

    move v13, v12

    :cond_9
    :goto_3
    if-gez v11, :cond_a

    const/4 v11, 0x0

    goto :goto_4

    :cond_a
    if-le v11, v12, :cond_b

    move v11, v12

    :cond_b
    :goto_4
    if-gez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    if-le v3, v12, :cond_d

    const/16 v3, 0xff

    :cond_d
    :goto_5
    add-int/lit8 v12, v15, 0x1

    shl-int/lit8 v13, v13, 0x10

    const/high16 v14, -0x1000000

    or-int/2addr v13, v14

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v13

    or-int/2addr v3, v11

    aput v3, v5, v15

    move v15, v12

    goto :goto_9

    :cond_e
    :goto_6
    const/high16 v14, -0x1000000

    add-int/lit8 v3, v15, 0x1

    aput v14, v5, v15

    goto :goto_8

    :cond_f
    :goto_7
    const/high16 v14, -0x1000000

    add-int/lit8 v3, v15, 0x1

    aput v14, v5, v15

    :goto_8
    move v15, v3

    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x500

    const/16 v11, 0x1e0

    const/16 v12, 0x280

    const/16 v14, 0xff

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/16 v3, 0x500

    const/16 v11, 0x1e0

    const/16 v12, 0x280

    const/16 v14, 0xff

    goto/16 :goto_1

    :cond_11
    move v9, v12

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_a
    if-ge v3, v9, :cond_20

    rsub-int v9, v3, 0x27f

    mul-int/lit16 v9, v9, 0x800

    shr-int/lit8 v9, v9, 0xa

    const/16 v10, 0x500

    if-lt v9, v10, :cond_12

    const/16 v9, 0x4ff

    :cond_12
    add-int v11, v4, v9

    and-int/lit8 v9, v9, -0x2

    add-int/2addr v9, v4

    const/4 v12, 0x0

    :goto_b
    const/16 v13, 0x1e0

    if-ge v12, v13, :cond_1f

    mul-int/lit16 v13, v12, 0x800

    shr-int/lit8 v13, v13, 0xa

    if-lt v13, v2, :cond_13

    add-int/lit8 v13, v2, -0x1

    :cond_13
    mul-int v14, v13, p2

    add-int/2addr v14, v11

    if-ltz v14, :cond_1e

    if-lt v14, v6, :cond_14

    goto/16 :goto_10

    :cond_14
    aget-byte v14, v0, v14

    const/16 v15, 0xff

    and-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x10

    if-gez v14, :cond_15

    const/4 v14, 0x0

    :cond_15
    shr-int/lit8 v13, v13, 0x1

    mul-int v13, v13, p2

    add-int/2addr v13, v7

    add-int/2addr v13, v9

    add-int/lit8 v15, v13, 0x1

    if-ge v15, v6, :cond_1d

    if-gez v13, :cond_16

    goto :goto_f

    :cond_16
    aget-byte v13, v0, v13

    const/16 v10, 0xff

    and-int/2addr v13, v10

    add-int/lit8 v13, v13, -0x80

    aget-byte v15, v0, v15

    and-int/2addr v15, v10

    add-int/lit8 v15, v15, -0x80

    mul-int/lit16 v14, v14, 0x4a8

    mul-int/lit16 v10, v13, 0x662

    add-int/2addr v10, v14

    shr-int/lit8 v10, v10, 0xa

    mul-int/lit16 v13, v13, 0x341

    sub-int v13, v14, v13

    mul-int/lit16 v0, v15, 0x190

    sub-int/2addr v13, v0

    shr-int/lit8 v0, v13, 0xa

    mul-int/lit16 v15, v15, 0x812

    add-int/2addr v15, v14

    shr-int/lit8 v13, v15, 0xa

    if-gez v10, :cond_17

    const/4 v10, 0x0

    const/16 v14, 0xff

    goto :goto_c

    :cond_17
    const/16 v14, 0xff

    if-le v10, v14, :cond_18

    move v10, v14

    :cond_18
    :goto_c
    if-gez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_d

    :cond_19
    if-le v0, v14, :cond_1a

    move v0, v14

    :cond_1a
    :goto_d
    if-gez v13, :cond_1b

    const/4 v13, 0x0

    goto :goto_e

    :cond_1b
    if-le v13, v14, :cond_1c

    move v13, v14

    :cond_1c
    :goto_e
    add-int/lit8 v15, v8, 0x1

    shl-int/lit8 v10, v10, 0x10

    const/high16 v16, -0x1000000

    or-int v10, v10, v16

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v10

    or-int/2addr v0, v13

    aput v0, v5, v8

    move v8, v15

    goto :goto_12

    :cond_1d
    :goto_f
    const/16 v14, 0xff

    const/high16 v16, -0x1000000

    add-int/lit8 v0, v8, 0x1

    aput v16, v5, v8

    goto :goto_11

    :cond_1e
    :goto_10
    const/16 v14, 0xff

    const/high16 v16, -0x1000000

    add-int/lit8 v0, v8, 0x1

    aput v16, v5, v8

    :goto_11
    move v8, v0

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    const/16 v10, 0x500

    goto/16 :goto_b

    :cond_1f
    const/16 v14, 0xff

    const/high16 v16, -0x1000000

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    const/16 v9, 0x280

    goto/16 :goto_a

    :cond_20
    iget-object v2, v1, Lo/qi;->Έ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lo/qi;->Ͷ:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v1, Lo/qi;->Ύ:Z

    if-eqz v0, :cond_21

    goto :goto_13

    :cond_21
    iget-object v0, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v3, 0x1e0

    if-ne v0, v3, :cond_22

    iget-object v0, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v3, 0x280

    if-eq v0, v3, :cond_24

    :cond_22
    :cond_23
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x1e0

    const/16 v4, 0x280

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    :cond_24
    iget-object v3, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    iget-object v4, v1, Lo/qi;->Δ:[I

    const/4 v5, 0x0

    const/16 v6, 0x1e0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e0

    const/16 v10, 0x280

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, v1, Lo/qi;->Ζ:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lo/qi;->Η:Landroid/graphics/Bitmap;

    monitor-exit v2

    return-void

    :cond_25
    :goto_13
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ͷ(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    iget-object v0, p0, Lo/qi;->ˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final ͺ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_2

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :try_start_egl_0
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
    :try_end_egl_0
    .catch Ljava/lang/Exception; {:try_start_egl_0 .. :try_end_egl_0} :catch_egl_0
    goto :egl_next_0
    :catch_egl_0
    move-exception v0
    invoke-static {v0}, Lo/qi;->stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    :egl_next_0

    iget-object v0, p0, Lo/qi;->Α:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    :try_start_egl_1
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_egl_1
    .catch Ljava/lang/Exception; {:try_start_egl_1 .. :try_end_egl_1} :catch_egl_1
    goto :egl_next_1
    :catch_egl_1
    move-exception v0
    invoke-static {v0}, Lo/qi;->stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    :egl_next_1

    :cond_0
    iget-object v0, p0, Lo/qi;->ΐ:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    :try_start_egl_2
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
    :try_end_egl_2
    .catch Ljava/lang/Exception; {:try_start_egl_2 .. :try_end_egl_2} :catch_egl_2
    goto :egl_next_2
    :catch_egl_2
    move-exception v0
    invoke-static {v0}, Lo/qi;->stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    :egl_next_2

    :cond_1
    iget-object v0, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    :try_start_egl_3
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z
    :try_end_egl_3
    .catch Ljava/lang/Exception; {:try_start_egl_3 .. :try_end_egl_3} :catch_egl_3
    goto :egl_next_3
    :catch_egl_3
    move-exception v0
    invoke-static {v0}, Lo/qi;->stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    :egl_next_3

    const/4 v0, 0x0

    iput-object v0, p0, Lo/qi;->Ώ:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lo/qi;->ΐ:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lo/qi;->Α:Landroid/opengl/EGLSurface;

    :cond_2
    return-void
.end method


.method public static stabilityLogEglCleanupFailure(Ljava/lang/Exception;)V
    .locals 2
    :try_start_log
    const-string v0, "TurnSignalCamera"
    const-string v1, "EGL cleanup failed; continuing remaining cleanup"
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_log
    .catch Ljava/lang/Exception; {:try_start_log .. :try_end_log} :catch_log
    return-void
    :catch_log
    move-exception v0
    return-void
.end method
