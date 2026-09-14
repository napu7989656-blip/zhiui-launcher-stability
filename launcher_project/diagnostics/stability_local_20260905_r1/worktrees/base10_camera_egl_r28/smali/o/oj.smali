.class public final Lo/oj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic Α:I


# instance fields
.field public ʹ:I

.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Landroid/view/WindowManager;

.field public final Ͱ:Landroid/os/Handler;

.field public ͱ:Landroid/view/ViewGroup;

.field public Ͳ:Landroid/view/View;

.field public ͳ:Landroidx/recyclerview/widget/RecyclerView;

.field public Ͷ:Z

.field public ͷ:Lo/ia;

.field public final ͺ:Ljava/util/ArrayList;

.field public final ͻ:Ljava/util/concurrent/ExecutorService;

.field public ͼ:Landroid/view/View;

.field public ͽ:Z

.field public Ά:I

.field public Έ:I

.field public Ή:I

.field public Ί:Landroid/view/View;

.field public Ό:I

.field public final Ύ:Ljava/util/ArrayList;

.field public Ώ:Lo/f4;

.field public ΐ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lo/oj;->ʹ:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lo/oj;->Ͷ:Z

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lo/oj;->ͺ:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v1, Lo/d1;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-direct {v1, v2}, Lo/d1;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lo/oj;->ͻ:Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    iput-boolean v0, p0, Lo/oj;->ͽ:Z

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lo/oj;->Ά:I

    .line 43
    .line 44
    iput v1, p0, Lo/oj;->Έ:I

    .line 45
    .line 46
    iput v1, p0, Lo/oj;->Ή:I

    .line 47
    .line 48
    iput v0, p0, Lo/oj;->Ό:I

    .line 49
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lo/oj;->Ύ:Ljava/util/ArrayList;

    .line 56
    .line 57
    iput v0, p0, Lo/oj;->ΐ:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 64
    .line 65
    iput-object p2, p0, Lo/oj;->ˏ:Landroid/view/WindowManager;

    .line 66
    .line 67
    invoke-virtual {p0}, Lo/oj;->ͼ()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lo/oj;->ͼ:Landroid/view/View;

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 76
    .line 77
    new-instance p2, Lo/yi;

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    invoke-direct {p2, p0, v0}, Lo/yi;-><init>(Lo/oj;I)V

    .line 81
    .line 82
    .line 83
    const-string v0, "PreInflateVehicle"

    .line 84
    .line 85
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public static ʹ(IFLandroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, v1}, Lo/oj;->ʹ(IFLandroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ˋ(Lo/oj;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of p1, p1, Landroid/view/View;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/View;

    .line 25
    .line 26
    const/16 p1, 0x8

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public static ˏ(Lo/oj;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public static Ͱ(Lo/oj;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static ͱ(Lo/oj;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of p1, p1, Landroid/view/View;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/View;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static Ͳ(Lo/oj;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public static ͺ(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u5de6\u540e\u7a97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "\u5de6\u524d\u7a97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "\u53f3\u540e\u7a97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "\u53f3\u524d\u7a97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    return v2

    :sswitch_data_0
    .sparse-switch
        0x145951d -> :sswitch_3
        0x145cb7c -> :sswitch_2
        0x16aee50 -> :sswitch_1
        0x16b24af -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ͽ(Landroid/widget/ImageView;)V
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "car_model_prefs"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "car_model_image_path"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "Failed to load custom car model from file: "

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v4, "VehicleCtrlMgr"

    .line 66
    .line 67
    invoke-static {v2, v3, v4}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const-string v2, "car_model_drawable"

    .line 71
    .line 72
    const-string v3, "widget_byd_song"

    .line 73
    .line 74
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "drawable"

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    sget v0, Lo/hf;->widget_byd_song:I

    .line 96
    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final ͳ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lo/if;->vehicle_panel_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lo/oj;->ˋ:Landroid/content/Context;

    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    const v1, -0xf000001

    goto :goto_0

    :cond_2
    const/high16 v1, -0x10000000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_3
    if-eqz v2, :cond_4

    const v1, -0x2f000001

    goto :goto_1

    :cond_4
    const/high16 v1, -0x30000000

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/x7;

    const/4 v3, 0x7

    invoke-direct {v1, v3, p0, v2}, Lo/x7;-><init>(ILjava/lang/Object;Z)V

    const-string v2, "VehicleGlassBg"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final Ͷ()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo/oj;->Ύ:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    new-instance v9, Lo/nj;

    .line 9
    .line 10
    const-string v5, "window_lf"

    .line 11
    .line 12
    const-string v6, "\u5de6\u524d\u7a97"

    .line 13
    .line 14
    sget v3, Lo/hf;->control_window_lf0:I

    .line 15
    .line 16
    sget v4, Lo/hf;->control_window_lf1:I

    .line 17
    .line 18
    const-string v7, "setBodyWindowCtrlState"

    .line 19
    .line 20
    const-string v8, "getWindowState"

    .line 21
    .line 22
    move-object v2, v9

    .line 23
    invoke-direct/range {v2 .. v8}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v2, Lo/nj;

    .line 30
    .line 31
    const-string v13, "window_rf"

    .line 32
    .line 33
    const-string v14, "\u53f3\u524d\u7a97"

    .line 34
    .line 35
    sget v11, Lo/hf;->control_window_rf0:I

    .line 36
    .line 37
    sget v12, Lo/hf;->control_window_rf1:I

    .line 38
    .line 39
    const-string v15, "setBodyWindowCtrlState"

    .line 40
    .line 41
    const-string v16, "getWindowState"

    .line 42
    .line 43
    move-object v10, v2

    .line 44
    invoke-direct/range {v10 .. v16}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v2, Lo/nj;

    .line 51
    .line 52
    const-string v6, "window_lr"

    .line 53
    .line 54
    const-string v7, "\u5de6\u540e\u7a97"

    .line 55
    .line 56
    sget v4, Lo/hf;->control_window_lr0:I

    .line 57
    .line 58
    sget v5, Lo/hf;->control_window_lr1:I

    .line 59
    .line 60
    const-string v8, "setBodyWindowCtrlState"

    .line 61
    .line 62
    const-string v9, "getWindowState"

    .line 63
    .line 64
    move-object v3, v2

    .line 65
    invoke-direct/range {v3 .. v9}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v2, Lo/nj;

    .line 72
    .line 73
    const-string v13, "window_rr"

    .line 74
    .line 75
    const-string v14, "\u53f3\u540e\u7a97"

    .line 76
    .line 77
    sget v11, Lo/hf;->control_window_rr0:I

    .line 78
    .line 79
    sget v12, Lo/hf;->control_window_rr1:I

    .line 80
    .line 81
    const-string v15, "setBodyWindowCtrlState"

    .line 82
    .line 83
    const-string v16, "getWindowState"

    .line 84
    .line 85
    move-object v10, v2

    .line 86
    invoke-direct/range {v10 .. v16}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v2, Lo/nj;

    .line 93
    .line 94
    const-string v6, "window_all_open"

    .line 95
    .line 96
    const-string v7, "\u8f66\u7a97\u5168\u5f00"

    .line 97
    .line 98
    sget v5, Lo/hf;->control_window_all1:I

    .line 99
    .line 100
    const-string v8, "setAllWindowOpen"

    .line 101
    .line 102
    const/4 v15, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    move-object v3, v2

    .line 105
    move v4, v5

    .line 106
    invoke-direct/range {v3 .. v9}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v2, Lo/nj;

    .line 113
    .line 114
    const-string v19, "window_all_close"

    .line 115
    .line 116
    const-string v20, "\u8f66\u7a97\u5168\u5173"

    .line 117
    .line 118
    sget v18, Lo/hf;->control_window_all0:I

    .line 119
    .line 120
    const-string v21, "setAllWindowClose"

    .line 121
    .line 122
    const/16 v23, 0x0

    .line 123
    .line 124
    const/16 v22, 0x0

    .line 125
    .line 126
    move-object/from16 v16, v2

    .line 127
    .line 128
    move/from16 v17, v18

    .line 129
    .line 130
    invoke-direct/range {v16 .. v22}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v2, Lo/nj;

    .line 137
    .line 138
    const-string v12, "window_vent"

    .line 139
    .line 140
    const-string v13, "\u8f66\u7a97\u901a\u98ce"

    .line 141
    .line 142
    sget v11, Lo/hf;->control_window_vent:I

    .line 143
    .line 144
    const-string v14, "setWindowVent"

    .line 145
    .line 146
    move-object v9, v2

    .line 147
    move v10, v11

    .line 148
    invoke-direct/range {v9 .. v15}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance v2, Lo/nj;

    .line 155
    .line 156
    const-string v6, "window_air"

    .line 157
    .line 158
    const-string v7, "\u8f66\u7a97\u900f\u6c14"

    .line 159
    .line 160
    sget v5, Lo/hf;->control_window_air:I

    .line 161
    .line 162
    const-string v8, "setWindowAir"

    .line 163
    .line 164
    move-object v3, v2

    .line 165
    move v4, v5

    .line 166
    move-object/from16 v9, v23

    .line 167
    .line 168
    invoke-direct/range {v3 .. v9}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v2, Lo/nj;

    .line 175
    .line 176
    const-string v12, "moonroof_breath"

    .line 177
    .line 178
    const-string v13, "\u5929\u7a97\u900f\u6c14"

    .line 179
    .line 180
    sget v10, Lo/hf;->control_moonroof0:I

    .line 181
    .line 182
    sget v11, Lo/hf;->control_moonroof1:I

    .line 183
    .line 184
    const-string v14, "setMoonRoofBreath"

    .line 185
    .line 186
    const-string v15, "getSunroofPosition"

    .line 187
    .line 188
    move-object v9, v2

    .line 189
    invoke-direct/range {v9 .. v15}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v2, Lo/nj;

    .line 196
    .line 197
    const-string v6, "moonroof_vent"

    .line 198
    .line 199
    const-string v7, "\u5929\u7a97\u901a\u98ce"

    .line 200
    .line 201
    sget v4, Lo/hf;->control_moonroof0:I

    .line 202
    .line 203
    sget v5, Lo/hf;->control_moonroof1:I

    .line 204
    .line 205
    const-string v8, "setMoonRoofVentilate"

    .line 206
    .line 207
    const-string v9, "getSunroofPosition"

    .line 208
    .line 209
    move-object v3, v2

    .line 210
    invoke-direct/range {v3 .. v9}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance v2, Lo/nj;

    .line 217
    .line 218
    const-string v13, "daylight"

    .line 219
    .line 220
    const-string v14, "\u65e5\u884c\u706f"

    .line 221
    .line 222
    sget v11, Lo/hf;->control_daylight2:I

    .line 223
    .line 224
    sget v12, Lo/hf;->control_daylight1:I

    .line 225
    .line 226
    const-string v15, "setDayTimeLightState"

    .line 227
    .line 228
    const-string v16, "getDayTimeLightState"

    .line 229
    .line 230
    move-object v10, v2

    .line 231
    invoke-direct/range {v10 .. v16}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    new-instance v2, Lo/nj;

    .line 238
    .line 239
    const-string v6, "inside_light"

    .line 240
    .line 241
    const-string v7, "\u5ba4\u5185\u706f"

    .line 242
    .line 243
    sget v4, Lo/hf;->control_inside_light1:I

    .line 244
    .line 245
    sget v5, Lo/hf;->control_inside_light2:I

    .line 246
    .line 247
    const-string v8, "setInsideLightDoorState"

    .line 248
    .line 249
    const-string v9, "getInsideLightDoorState"

    .line 250
    .line 251
    move-object v3, v2

    .line 252
    invoke-direct/range {v3 .. v9}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    new-instance v2, Lo/nj;

    .line 259
    .line 260
    const-string v13, "trunk"

    .line 261
    .line 262
    const-string v14, "\u540e\u5907\u7bb1"

    .line 263
    .line 264
    sget v11, Lo/hf;->control_trunck0:I

    .line 265
    .line 266
    sget v12, Lo/hf;->control_trunck1:I

    .line 267
    .line 268
    const-string v15, "openTrunk"

    .line 269
    .line 270
    const-string v16, "getTrunkState"

    .line 271
    .line 272
    move-object v10, v2

    .line 273
    invoke-direct/range {v10 .. v16}, Lo/nj;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    const-string v4, "moonroof_slider"

    .line 280
    .line 281
    const-string v5, "\u5929\u7a97"

    .line 282
    .line 283
    sget v6, Lo/hf;->control_moonroof0:I

    .line 284
    .line 285
    sget v7, Lo/hf;->control_moonroof1:I

    .line 286
    .line 287
    const-string v8, "setMoonRoofState"

    .line 288
    .line 289
    const/4 v9, 0x5

    .line 290
    new-instance v2, Lo/nj;

    .line 291
    .line 292
    move-object v3, v2

    .line 293
    invoke-direct/range {v3 .. v9}, Lo/nj;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    const-string v11, "sunshade_slider"

    .line 300
    .line 301
    const-string v12, "\u906e\u9633\u5e18"

    .line 302
    .line 303
    sget v13, Lo/hf;->control_sunshade0:I

    .line 304
    .line 305
    sget v14, Lo/hf;->control_sunshade1:I

    .line 306
    .line 307
    const-string v15, "setSunshadeState"

    .line 308
    .line 309
    const/16 v16, 0x6

    .line 310
    .line 311
    new-instance v2, Lo/nj;

    .line 312
    .line 313
    move-object v10, v2

    .line 314
    invoke-direct/range {v10 .. v16}, Lo/nj;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public final ͷ()Ljava/util/ArrayList;
    .locals 8

    .line 1
    const-string v0, "window_all_split_migrated"

    iget-object v1, p0, Lo/oj;->ˋ:Landroid/content/Context;

    const-string v2, "vehicle_ctrl_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "visible_item_ids"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "window_all"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "window_all_close"

    const-string v6, "window_all_open"

    if-ltz v3, :cond_1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "window_rr"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x2

    :goto_1
    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lo/oj;->Ό(Ljava/util/ArrayList;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object v2

    :catch_0
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo/oj;->Ύ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nj;

    iget-object v2, v2, Lo/nj;->ˋ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lo/oj;->Ό(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final ͻ()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lo/oj;->Ͷ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/oj;->Ͷ:Z

    .line 13
    .line 14
    iget-object v1, p0, Lo/oj;->ͷ:Lo/ia;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, v1, Lo/ia;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 19
    .line 20
    iget-boolean v2, v1, Lcom/byd/launcher/NavBarService;->ϲ:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-boolean v0, v1, Lcom/byd/launcher/NavBarService;->ϲ:Z

    .line 26
    .line 27
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v1, Lo/lII;

    .line 30
    .line 31
    const/16 v2, 0xe

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lo/lII;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v2, 0x1f4

    .line 44
    .line 45
    add-long/2addr v0, v2

    .line 46
    sput-wide v0, Lcom/byd/launcher/NavBarService;->OOO:J

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 49
    .line 50
    sget v1, Lo/if;->vehicle_content:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Lo/oj;->Ί()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lo/oj;->ͷ:Lo/ia;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Lo/ia;->Ͱ()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :cond_4
    iget-object v1, p0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 80
    .line 81
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 82
    .line 83
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget-object v2, p0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v2}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    int-to-float v1, v1

    .line 118
    const v4, 0x3d23d70a    # 0.04f

    .line 119
    .line 120
    .line 121
    mul-float/2addr v4, v1

    .line 122
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    const-wide/16 v2, 0x50

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    const-wide/16 v2, 0x15e

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 138
    .line 139
    const/high16 v3, 0x40000000    # 2.0f

    .line 140
    .line 141
    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Lo/ej;

    .line 149
    .line 150
    invoke-direct {v2, p0, v0}, Lo/ej;-><init>(Lo/oj;Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_3
    return-void
.end method

.method public final ͼ()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lo/oj;->Ͷ()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lo/oj;->ͺ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lo/oj;->ͷ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo/oj;->Ύ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/nj;

    iget-object v5, v4, Lo/nj;->ˋ:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final Ά()V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 2
    .line 3
    const-string v1, "VehicleCtrlMgr"

    .line 4
    .line 5
    const-string v2, "/5"

    .line 6
    .line 7
    const-string v3, "CoreService not connected, retry "

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_4

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lo/oj;->Ό:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    :goto_0
    iget-object v3, p0, Lo/oj;->ͺ:Ljava/util/ArrayList;

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-ge v2, v6, :cond_6

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lo/nj;

    .line 39
    .line 40
    iget-object v6, v3, Lo/nj;->ͳ:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget v6, v3, Lo/nj;->ʹ:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    if-ne v6, v5, :cond_3

    .line 48
    .line 49
    iget v6, v3, Lo/nj;->Ά:I

    .line 50
    .line 51
    if-ltz v6, :cond_2

    .line 52
    .line 53
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v8, "window"

    .line 59
    .line 60
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :cond_2
    const/4 v6, 0x0

    .line 66
    :goto_1
    :try_start_3
    new-instance v7, Lo/gj;

    .line 67
    .line 68
    invoke-direct {v7, p0, v3, v2, v5}, Lo/gj;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v3, Lo/nj;->ͳ:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v3, v6, v7}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {p0, v4, v3, v2}, Lo/oj;->Έ(Lcom/byd/launcher/ipc/CoreServiceClient;Lo/nj;I)V

    .line 78
    .line 79
    .line 80
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_3
    iget v4, p0, Lo/oj;->Ό:I

    .line 84
    .line 85
    const/4 v6, 0x5

    .line 86
    if-ge v4, v6, :cond_5

    .line 87
    .line 88
    iget-boolean v7, p0, Lo/oj;->Ͷ:Z

    .line 89
    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    add-int/2addr v4, v5

    .line 93
    iput v4, p0, Lo/oj;->Ό:I

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v3, p0, Lo/oj;->Ό:I

    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lo/yi;

    .line 116
    .line 117
    invoke-direct {v2, p0, v6}, Lo/yi;-><init>(Lo/oj;I)V

    .line 118
    .line 119
    .line 120
    const-wide/16 v3, 0x5dc

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    .line 124
    .line 125
    :cond_5
    return-void

    .line 126
    :catch_1
    move-exception v2

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v4, "queryInitialStates error: "

    .line 130
    .line 131
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v3, v1}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    new-instance v1, Lo/yi;

    .line 138
    .line 139
    const/4 v2, 0x6

    .line 140
    invoke-direct {v1, p0, v2}, Lo/yi;-><init>(Lo/oj;I)V

    .line 141
    .line 142
    .line 143
    const-wide/16 v2, 0x7d0

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final Έ(Lcom/byd/launcher/ipc/CoreServiceClient;Lo/nj;I)V
    .locals 6

    .line 1
    iget-object v0, p2, Lo/nj;->ͳ:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getWindowState"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "window"

    iget-object v4, p2, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-static {v4}, Lo/oj;->ͺ(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v2, "getDoorLockStatus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v3, "area"

    const-string v4, "\u5de6\u513f\u7ae5\u9501"

    iget-object v5, p2, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_2
    :try_start_4
    const-string v2, "getLightStatus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v3, "type"

    const-string v4, "\u65e5\u884c\u706f"

    iget-object v5, p2, Lo/nj;->ˏ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_3
    :try_start_6
    const-string v2, "getDayTimeLightState"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const/4 v2, 0x0

    :catch_1
    :goto_1
    new-instance v3, Lo/gj;

    invoke-direct {v3, p0, p2, p3, v1}, Lo/gj;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p1, v0, v2, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    return-void
.end method

.method public final Ή()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lo/oj;->ΐ:I

    .line 16
    .line 17
    new-instance v1, Lo/we;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v2, p0}, Lo/we;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "getTripInfo"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :goto_0
    iget v1, p0, Lo/oj;->ΐ:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    iput v1, p0, Lo/oj;->ΐ:I

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    iget-object v3, p0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 38
    .line 39
    const-string v4, "VehicleCtrlMgr"

    .line 40
    .line 41
    if-gt v1, v2, :cond_3

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "CoreService not connected, retrying in 2s... (attempt "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lo/oj;->ΐ:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ")"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v4, v1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/byd/launcher/ipc/CoreServiceClient;->connect()V

    .line 70
    .line 71
    .line 72
    :cond_2
    new-instance v0, Lo/yi;

    .line 73
    .line 74
    const/4 v1, 0x4

    .line 75
    invoke-direct {v0, p0, v1}, Lo/yi;-><init>(Lo/oj;I)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v1, 0x7d0

    .line 79
    .line 80
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const-string v0, "CoreService not connected after 5 retries, showing fallback data"

    .line 85
    .line 86
    invoke-static {v4, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "Showing simulated vehicle info (CoreService unavailable)"

    .line 90
    .line 91
    invoke-static {v4, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lo/yi;

    .line 95
    .line 96
    const/16 v1, 0x8

    .line 97
    .line 98
    invoke-direct {v0, p0, v1}, Lo/yi;-><init>(Lo/oj;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :goto_1
    return-void
.end method

.method public final Ί()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lo/oj;->ͽ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lo/oj;->ͽ:Z

    .line 8
    .line 9
    iget-object v1, p0, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lo/oj;->Ͷ:Z

    .line 17
    .line 18
    iget-object v3, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    :try_start_0
    sget v4, Lo/if;->vehicle_content:I

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    :try_start_1
    iget-object v3, p0, Lo/oj;->ͱ:Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lo/oj;->ͱ:Landroid/view/ViewGroup;

    .line 52
    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v3, p0, Lo/oj;->ˏ:Landroid/view/WindowManager;

    .line 60
    .line 61
    iget-object v4, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 62
    .line 63
    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    :catch_1
    :goto_0
    iput-object v2, p0, Lo/oj;->Ͳ:Landroid/view/View;

    .line 67
    .line 68
    iput-object v2, p0, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    :cond_3
    iput-boolean v1, p0, Lo/oj;->ͽ:Z

    .line 71
    .line 72
    iget-object v1, p0, Lo/oj;->ͼ:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    .line 78
    .line 79
    new-instance v2, Lo/yi;

    .line 80
    .line 81
    invoke-direct {v2, p0, v0}, Lo/yi;-><init>(Lo/oj;I)V

    .line 82
    .line 83
    .line 84
    const-string v0, "PreInflateVehicle"

    .line 85
    .line 86
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

.method public final Ό(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    iget-object v1, p0, Lo/oj;->ˋ:Landroid/content/Context;

    const-string v2, "vehicle_ctrl_prefs"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "visible_item_ids"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final Ύ(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "value"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p2, v0, p1}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "sendSimpleCommand error: "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "VehicleCtrlMgr"

    .line 25
    .line 26
    invoke-static {p1, p2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    .locals 4

    .line 1
    const-string v0, "VehicleCtrlMgr"

    .line 2
    .line 3
    const-string v1, "CoreService not connected, command ignored: "

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance p3, Lo/g8;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-direct {p3, v1, p0, p1}, Lo/g8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p3, "sendVehicleCommand error: "

    .line 51
    .line 52
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method

.method public final ΐ(ZZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "lf"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "rf"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "lr"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "rr"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "setAllWindowState"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo/oj;->Ώ(Ljava/lang/String;Lorg/json/JSONObject;Lo/ka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final Α(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/oj;->Ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final Β()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "VehicleCtrlMgr"

    .line 4
    .line 5
    iget-boolean v0, v1, Lo/oj;->Ͷ:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    sget v4, Lo/if;->vehicle_content:I

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/oj;->Ί()V

    .line 38
    .line 39
    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    iput v0, v1, Lo/oj;->Ό:I

    .line 42
    .line 43
    iput v0, v1, Lo/oj;->ΐ:I

    .line 44
    .line 45
    :try_start_0
    iget-object v4, v1, Lo/oj;->ͼ:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .line 47
    iget-object v5, v1, Lo/oj;->ˋ:Landroid/content/Context;

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    :try_start_1
    iput-object v4, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 52
    .line 53
    iput-object v3, v1, Lo/oj;->ͼ:Landroid/view/View;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 57
    .line 58
    sget v6, Lo/lf;->Theme_NavDemo:I

    .line 59
    .line 60
    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget v6, Lo/jf;->vehicle_control_panel:I

    .line 68
    .line 69
    invoke-virtual {v4, v6, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iput-object v4, v1, Lo/oj;->Ͳ:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .line 75
    :goto_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    .line 85
    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .line 87
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    .line 93
    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    .line 95
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iget v8, v1, Lo/oj;->ʹ:I

    .line 100
    .line 101
    const/4 v9, 0x5

    .line 102
    const/4 v10, 0x2

    .line 103
    if-gtz v8, :cond_4

    .line 104
    .line 105
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .line 107
    const/high16 v8, 0x42800000    # 64.0f

    .line 108
    .line 109
    mul-float/2addr v8, v4

    .line 110
    float-to-int v8, v8

    .line 111
    const/high16 v11, 0x42040000    # 33.0f

    .line 112
    .line 113
    mul-float/2addr v11, v4

    .line 114
    float-to-int v11, v11

    .line 115
    sub-int/2addr v7, v8

    .line 116
    sub-int/2addr v7, v11

    .line 117
    div-int/2addr v7, v10

    .line 118
    const/high16 v8, 0x42200000    # 40.0f

    .line 119
    .line 120
    mul-float/2addr v8, v4

    .line 121
    float-to-int v8, v8

    .line 122
    sub-int/2addr v7, v8

    .line 123
    const/high16 v8, 0x41200000    # 10.0f

    .line 124
    .line 125
    mul-float/2addr v4, v8

    .line 126
    float-to-int v4, v4

    .line 127
    div-int/2addr v7, v9

    .line 128
    sub-int/2addr v7, v4

    .line 129
    iput v7, v1, Lo/oj;->ʹ:I

    .line 130
    .line 131
    :cond_4
    iget-object v4, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 132
    .line 133
    sget v7, Lo/if;->rv_vehicle_controls:I

    .line 134
    .line 135
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    .line 141
    iput-object v4, v1, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v1, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 147
    .line 148
    const/4 v7, 0x1

    .line 149
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v4, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 153
    .line 154
    sget v8, Lo/if;->btn_close_panel:I

    .line 155
    .line 156
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    if-eqz v4, :cond_5

    .line 161
    .line 162
    new-instance v8, Lo/ΰ;

    .line 163
    .line 164
    invoke-direct {v8, v10, v1}, Lo/ΰ;-><init>(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    iget-object v4, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 171
    .line 172
    sget v8, Lo/if;->btn_edit_controls:I

    .line 173
    .line 174
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/16 v8, 0x8

    .line 179
    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    const-string v11, "android"

    .line 190
    .line 191
    const-string v12, "status_bar_height"

    .line 192
    .line 193
    const-string v13, "dimen"

    .line 194
    .line 195
    invoke-virtual {v4, v12, v13, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-lez v4, :cond_7

    .line 200
    .line 201
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    goto :goto_1

    .line 210
    :cond_7
    move v4, v0

    .line 211
    :goto_1
    iget-object v11, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 212
    .line 213
    sget v12, Lo/if;->vehicle_content:I

    .line 214
    .line 215
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    add-int/2addr v13, v4

    .line 228
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    invoke-virtual {v11, v12, v13, v4, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 237
    .line 238
    .line 239
    invoke-static {v5}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    invoke-virtual {v11, v10, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    const/high16 v12, 0x3f800000    # 1.0f

    .line 247
    .line 248
    if-eqz v4, :cond_8

    .line 249
    .line 250
    move v13, v12

    .line 251
    goto :goto_2

    .line 252
    :cond_8
    const v13, 0x3f333333    # 0.7f

    .line 253
    .line 254
    .line 255
    :goto_2
    invoke-virtual {v11, v13}, Landroid/view/View;->setAlpha(F)V

    .line 256
    .line 257
    .line 258
    if-eqz v4, :cond_9

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    goto :goto_3

    .line 262
    :cond_9
    int-to-float v6, v6

    .line 263
    const v13, 0x3d23d70a    # 0.04f

    .line 264
    .line 265
    .line 266
    mul-float/2addr v6, v13

    .line 267
    :goto_3
    invoke-virtual {v11, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v11, v12}, Landroid/view/View;->setScaleX(F)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v11, v12}, Landroid/view/View;->setScaleY(F)V

    .line 274
    .line 275
    .line 276
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 277
    .line 278
    const/16 v12, 0x1a

    .line 279
    .line 280
    if-lt v6, v12, :cond_a

    .line 281
    .line 282
    const/16 v6, 0x7f6

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_a
    const/16 v6, 0x7d3

    .line 286
    .line 287
    :goto_4
    move v15, v6

    .line 288
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 289
    .line 290
    const/4 v13, -0x1

    .line 291
    const/4 v14, -0x1

    .line 292
    const/16 v16, 0x108

    .line 293
    .line 294
    const/16 v17, -0x3

    .line 295
    .line 296
    move-object v12, v6

    .line 297
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 298
    .line 299
    .line 300
    const v12, 0x800033

    .line 301
    .line 302
    .line 303
    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 304
    .line 305
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 306
    .line 307
    iget-object v12, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 308
    .line 309
    const/4 v13, 0x3

    .line 310
    if-nez v12, :cond_b

    .line 311
    .line 312
    goto/16 :goto_e

    .line 313
    .line 314
    :cond_b
    invoke-static {v5}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 315
    .line 316
    .line 317
    move-result v12

    .line 318
    iget-object v15, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 319
    .line 320
    sget v3, Lo/if;->vehicle_panel_root:I

    .line 321
    .line 322
    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    if-eqz v3, :cond_d

    .line 327
    .line 328
    if-eqz v12, :cond_c

    .line 329
    .line 330
    const v15, -0x7f000001

    .line 331
    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_c
    const/high16 v15, -0x80000000

    .line 335
    .line 336
    :goto_5
    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 337
    .line 338
    .line 339
    :cond_d
    iget-object v3, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 340
    .line 341
    sget v15, Lo/if;->vehicle_panel_root:I

    .line 342
    .line 343
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    if-eqz v3, :cond_10

    .line 348
    .line 349
    iget-object v3, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 350
    .line 351
    sget v15, Lo/if;->vehicle_content:I

    .line 352
    .line 353
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Landroid/view/ViewGroup;

    .line 358
    .line 359
    if-eqz v3, :cond_10

    .line 360
    .line 361
    move v15, v0

    .line 362
    :goto_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    if-ge v15, v8, :cond_10

    .line 367
    .line 368
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    if-ne v9, v14, :cond_f

    .line 377
    .line 378
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    .line 384
    if-ne v9, v7, :cond_f

    .line 385
    .line 386
    if-eqz v12, :cond_e

    .line 387
    .line 388
    const/high16 v9, 0x33000000

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_e
    const v9, 0x33ffffff

    .line 392
    .line 393
    .line 394
    :goto_7
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 395
    .line 396
    .line 397
    :cond_f
    add-int/lit8 v15, v15, 0x1

    .line 398
    .line 399
    const/4 v9, 0x5

    .line 400
    goto :goto_6

    .line 401
    :cond_10
    iget-object v3, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 402
    .line 403
    invoke-static {v3, v12}, Lo/ci;->ˋ(Landroid/view/View;Z)V

    .line 404
    .line 405
    .line 406
    const v3, -0xcccccd

    .line 407
    .line 408
    .line 409
    if-eqz v12, :cond_11

    .line 410
    .line 411
    move v8, v3

    .line 412
    goto :goto_8

    .line 413
    :cond_11
    move v8, v14

    .line 414
    :goto_8
    iget-object v9, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 415
    .line 416
    sget v15, Lo/if;->btn_close_panel:I

    .line 417
    .line 418
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    instance-of v15, v9, Landroid/widget/TextView;

    .line 423
    .line 424
    if-eqz v15, :cond_13

    .line 425
    .line 426
    check-cast v9, Landroid/widget/TextView;

    .line 427
    .line 428
    const-string v15, "\u5b8c\u6210"

    .line 429
    .line 430
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    if-eqz v12, :cond_12

    .line 434
    .line 435
    const v15, -0xe6892e

    .line 436
    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_12
    const v15, -0xd6490a

    .line 440
    .line 441
    .line 442
    :goto_9
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_13
    instance-of v15, v9, Landroid/widget/ImageView;

    .line 447
    .line 448
    if-eqz v15, :cond_14

    .line 449
    .line 450
    check-cast v9, Landroid/widget/ImageView;

    .line 451
    .line 452
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 453
    .line 454
    invoke-virtual {v9, v8, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 455
    .line 456
    .line 457
    :cond_14
    :goto_a
    iget-object v9, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 458
    .line 459
    sget v15, Lo/if;->btn_edit_controls:I

    .line 460
    .line 461
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    instance-of v15, v9, Landroid/widget/ImageView;

    .line 466
    .line 467
    if-eqz v15, :cond_15

    .line 468
    .line 469
    check-cast v9, Landroid/widget/ImageView;

    .line 470
    .line 471
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 472
    .line 473
    invoke-virtual {v9, v8, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 474
    .line 475
    .line 476
    :cond_15
    iget-object v8, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 477
    .line 478
    if-nez v8, :cond_16

    .line 479
    .line 480
    goto/16 :goto_e

    .line 481
    .line 482
    :cond_16
    if-eqz v12, :cond_17

    .line 483
    .line 484
    goto :goto_b

    .line 485
    :cond_17
    move v3, v14

    .line 486
    :goto_b
    const/16 v8, 0xc

    .line 487
    .line 488
    new-array v9, v8, [I

    .line 489
    .line 490
    sget v15, Lo/if;->tv_range:I

    .line 491
    .line 492
    aput v15, v9, v0

    .line 493
    .line 494
    sget v15, Lo/if;->tv_elec_range:I

    .line 495
    .line 496
    aput v15, v9, v7

    .line 497
    .line 498
    sget v15, Lo/if;->tv_fuel_range:I

    .line 499
    .line 500
    aput v15, v9, v10

    .line 501
    .line 502
    sget v10, Lo/if;->tv_battery:I

    .line 503
    .line 504
    aput v10, v9, v13

    .line 505
    .line 506
    const/4 v10, 0x4

    .line 507
    sget v15, Lo/if;->tv_mileage:I

    .line 508
    .line 509
    aput v15, v9, v10

    .line 510
    .line 511
    sget v10, Lo/if;->tv_ev_mileage:I

    .line 512
    .line 513
    const/4 v15, 0x5

    .line 514
    aput v10, v9, v15

    .line 515
    .line 516
    const/4 v10, 0x6

    .line 517
    sget v15, Lo/if;->tv_hev_mileage:I

    .line 518
    .line 519
    aput v15, v9, v10

    .line 520
    .line 521
    const/4 v10, 0x7

    .line 522
    sget v15, Lo/if;->tv_fuel_level:I

    .line 523
    .line 524
    aput v15, v9, v10

    .line 525
    .line 526
    sget v10, Lo/if;->tv_ext_charging:I

    .line 527
    .line 528
    const/16 v15, 0x8

    .line 529
    .line 530
    aput v10, v9, v15

    .line 531
    .line 532
    const/16 v10, 0x9

    .line 533
    .line 534
    sget v15, Lo/if;->tv_total_fuel:I

    .line 535
    .line 536
    aput v15, v9, v10

    .line 537
    .line 538
    const/16 v10, 0xa

    .line 539
    .line 540
    sget v15, Lo/if;->tv_total_elec:I

    .line 541
    .line 542
    aput v15, v9, v10

    .line 543
    .line 544
    const/16 v10, 0xb

    .line 545
    .line 546
    sget v15, Lo/if;->tv_consumption:I

    .line 547
    .line 548
    aput v15, v9, v10

    .line 549
    .line 550
    move v10, v0

    .line 551
    :goto_c
    if-ge v10, v8, :cond_19

    .line 552
    .line 553
    aget v15, v9, v10

    .line 554
    .line 555
    iget-object v8, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 556
    .line 557
    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    check-cast v8, Landroid/widget/TextView;

    .line 562
    .line 563
    if-eqz v8, :cond_18

    .line 564
    .line 565
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    .line 567
    .line 568
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 569
    .line 570
    const/16 v8, 0xc

    .line 571
    .line 572
    goto :goto_c

    .line 573
    :cond_19
    if-eqz v12, :cond_1a

    .line 574
    .line 575
    const/high16 v15, 0x20000000

    .line 576
    .line 577
    goto :goto_d

    .line 578
    :cond_1a
    const v15, 0x33ffffff

    .line 579
    .line 580
    .line 581
    :goto_d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 590
    .line 591
    iget-object v8, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 592
    .line 593
    invoke-static {v15, v3, v8}, Lo/oj;->ʹ(IFLandroid/view/View;)V

    .line 594
    .line 595
    .line 596
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lo/oj;->ͳ()V

    .line 597
    .line 598
    .line 599
    iget-object v3, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 600
    .line 601
    if-nez v3, :cond_1b

    .line 602
    .line 603
    goto :goto_f

    .line 604
    :cond_1b
    sget v8, Lo/if;->iv_vehicle_model:I

    .line 605
    .line 606
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    check-cast v3, Landroid/widget/ImageView;

    .line 611
    .line 612
    if-nez v3, :cond_1c

    .line 613
    .line 614
    goto :goto_f

    .line 615
    :cond_1c
    new-instance v8, Ljava/lang/Thread;

    .line 616
    .line 617
    new-instance v9, Lo/ag;

    .line 618
    .line 619
    const/16 v10, 0x14

    .line 620
    .line 621
    invoke-direct {v9, v10, v1, v3}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    const-string v3, "LoadCarModel"

    .line 625
    .line 626
    invoke-direct {v8, v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 630
    .line 631
    .line 632
    :goto_f
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 633
    .line 634
    const/4 v8, 0x5

    .line 635
    invoke-direct {v3, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 636
    .line 637
    .line 638
    new-instance v5, Lo/bj;

    .line 639
    .line 640
    invoke-direct {v5, v1}, Lo/bj;-><init>(Lo/oj;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    .line 651
    .line 652
    .line 653
    iget-object v5, v1, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 654
    .line 655
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 656
    .line 657
    .line 658
    iget-object v3, v1, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 659
    .line 660
    iget-object v5, v1, Lo/oj;->ͺ:Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 663
    .line 664
    .line 665
    move-result v8

    .line 666
    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    if-eqz v8, :cond_1d

    .line 678
    .line 679
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    check-cast v8, Lo/nj;

    .line 684
    .line 685
    iput-boolean v0, v8, Lo/nj;->Ͷ:Z

    .line 686
    .line 687
    const/4 v9, 0x0

    .line 688
    iput-object v9, v8, Lo/nj;->ͷ:Ljava/lang/String;

    .line 689
    .line 690
    goto :goto_10

    .line 691
    :cond_1d
    iget-object v3, v1, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 692
    .line 693
    new-instance v8, Lo/mj;

    .line 694
    .line 695
    invoke-direct {v8, v1, v5}, Lo/mj;-><init>(Lo/oj;Ljava/util/ArrayList;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 699
    .line 700
    .line 701
    :try_start_2
    iget-object v3, v1, Lo/oj;->ͱ:Landroid/view/ViewGroup;

    .line 702
    .line 703
    if-eqz v3, :cond_1e

    .line 704
    .line 705
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 706
    .line 707
    .line 708
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 709
    .line 710
    invoke-direct {v3, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 711
    .line 712
    .line 713
    iget-object v5, v1, Lo/oj;->ͱ:Landroid/view/ViewGroup;

    .line 714
    .line 715
    iget-object v6, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 716
    .line 717
    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    .line 719
    .line 720
    iget-object v3, v1, Lo/oj;->ͱ:Landroid/view/ViewGroup;

    .line 721
    .line 722
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 723
    .line 724
    .line 725
    goto :goto_11

    .line 726
    :cond_1e
    iget-object v0, v1, Lo/oj;->ˏ:Landroid/view/WindowManager;

    .line 727
    .line 728
    iget-object v3, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 729
    .line 730
    invoke-interface {v0, v3, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    .line 732
    .line 733
    :goto_11
    iput-boolean v7, v1, Lo/oj;->Ͷ:Z

    .line 734
    .line 735
    iget-object v0, v1, Lo/oj;->ͷ:Lo/ia;

    .line 736
    .line 737
    if-eqz v0, :cond_1f

    .line 738
    .line 739
    invoke-virtual {v0}, Lo/ia;->ͱ()V

    .line 740
    .line 741
    .line 742
    :cond_1f
    iget-object v0, v1, Lo/oj;->Ͱ:Landroid/os/Handler;

    .line 743
    .line 744
    new-instance v3, Lo/yi;

    .line 745
    .line 746
    invoke-direct {v3, v1, v13}, Lo/yi;-><init>(Lo/oj;I)V

    .line 747
    .line 748
    .line 749
    const-wide/16 v5, 0x190

    .line 750
    .line 751
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 752
    .line 753
    .line 754
    invoke-virtual {v11}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    new-instance v3, Lo/dj;

    .line 759
    .line 760
    invoke-direct {v3, v1, v11, v4}, Lo/dj;-><init>(Lo/oj;Landroid/view/View;Z)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 764
    .line 765
    .line 766
    goto :goto_12

    .line 767
    :catch_0
    move-exception v0

    .line 768
    const-string v3, "show failed"

    .line 769
    .line 770
    invoke-static {v2, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 771
    .line 772
    .line 773
    const/4 v2, 0x0

    .line 774
    iput-object v2, v1, Lo/oj;->Ͳ:Landroid/view/View;

    .line 775
    .line 776
    iput-object v2, v1, Lo/oj;->ͳ:Landroidx/recyclerview/widget/RecyclerView;

    .line 777
    .line 778
    :goto_12
    return-void

    .line 779
    :catch_1
    move-exception v0

    .line 780
    const-string v3, "inflate failed"

    .line 781
    .line 782
    invoke-static {v2, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 783
    .line 784
    .line 785
    return-void
.end method

.method public final Γ()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lo/oj;->Ͷ()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lo/oj;->ͷ()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lo/oj;->Ύ:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lo/nj;

    .line 30
    .line 31
    new-instance v4, Lo/z3;

    .line 32
    .line 33
    iget-object v5, v2, Lo/nj;->ˋ:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v6, v2, Lo/nj;->ˏ:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iget v2, v2, Lo/nj;->Ͱ:I

    .line 42
    .line 43
    invoke-direct {v4, v5, v6, v2, v7}, Lo/z3;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lo/oj;->Ώ:Lo/f4;

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    new-instance v0, Lo/f4;

    .line 55
    .line 56
    iget-object v1, p0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v2, p0, Lo/oj;->ˏ:Landroid/view/WindowManager;

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lo/f4;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lo/oj;->Ώ:Lo/f4;

    .line 64
    .line 65
    :cond_1
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    sget v1, Lo/if;->nav_editor_container:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lo/oj;->Ώ:Lo/f4;

    .line 82
    .line 83
    iput-object v0, v1, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    .line 84
    .line 85
    :cond_2
    iget v0, p0, Lo/oj;->ʹ:I

    .line 86
    .line 87
    if-lez v0, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    :goto_1
    move v5, v0

    .line 92
    iget-object v1, p0, Lo/oj;->Ώ:Lo/f4;

    .line 93
    .line 94
    const-string v2, "\u81ea\u5b9a\u4e49\u8f66\u63a7\u9879"

    .line 95
    .line 96
    new-instance v4, Lo/v5;

    .line 97
    .line 98
    const/4 v0, 0x3

    .line 99
    invoke-direct {v4, v0, p0}, Lo/v5;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x5

    .line 103
    invoke-virtual/range {v1 .. v6}, Lo/f4;->Ͱ(Ljava/lang/String;Ljava/util/ArrayList;Lo/e4;II)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v1
.end method

.method public final Δ(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/oj;->Ͱ:Landroid/os/Handler;

    new-instance v1, Lo/ag;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final Ε()V
    .locals 9

    .line 1
    const-string v0, "VehicleCtrlMgr"

    .line 2
    .line 3
    const-string v1, "Screen off: overlay shown, saved brightness="

    .line 4
    .line 5
    iget-object v2, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v2, 0x80

    .line 11
    .line 12
    :try_start_0
    iget-object v3, p0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "screen_brightness"

    .line 19
    .line 20
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput v3, p0, Lo/oj;->Ά:I

    .line 25
    .line 26
    if-gtz v3, :cond_1

    .line 27
    .line 28
    iput v2, p0, Lo/oj;->Ά:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    iput v2, p0, Lo/oj;->Ά:I

    .line 32
    .line 33
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Landroid/view/View;

    .line 34
    .line 35
    iget-object v3, p0, Lo/oj;->ˋ:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 41
    .line 42
    const/high16 v3, -0x1000000

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x1a

    .line 50
    .line 51
    if-lt v2, v3, :cond_2

    .line 52
    .line 53
    const/16 v2, 0x7f6

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/16 v2, 0x7d3

    .line 57
    .line 58
    :goto_1
    move v6, v2

    .line 59
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 60
    .line 61
    const/4 v4, -0x1

    .line 62
    const/4 v5, -0x1

    .line 63
    const/16 v7, 0x300

    .line 64
    .line 65
    const/4 v8, -0x1

    .line 66
    move-object v3, v2

    .line 67
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x11

    .line 71
    .line 72
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    .line 74
    iget-object v3, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 75
    .line 76
    new-instance v4, Lo/p9;

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-direct {v4, v5, p0}, Lo/p9;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lo/oj;->ˏ:Landroid/view/WindowManager;

    .line 86
    .line 87
    iget-object v4, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 88
    .line 89
    invoke-interface {v3, v4, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    iput-boolean v5, v2, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 97
    .line 98
    iget-object v3, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance v4, Lo/m9;

    .line 101
    .line 102
    const/16 v5, 0x1d

    .line 103
    .line 104
    invoke-direct {v4, v2, v5}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    new-instance v3, Lo/y9;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-direct {v3, v2, v4}, Lo/y9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v1, p0, Lo/oj;->Ά:I

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_1
    move-exception v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "turnOffScreen overlay failed: "

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v2, v0}, Lo/v1;->Ώ(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 150
    .line 151
    :goto_2
    iget-object v0, p0, Lo/oj;->ͻ:Ljava/util/concurrent/ExecutorService;

    .line 152
    .line 153
    new-instance v1, Lo/yi;

    .line 154
    .line 155
    const/4 v2, 0x7

    .line 156
    invoke-direct {v1, p0, v2}, Lo/yi;-><init>(Lo/oj;I)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final Ζ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lo/oj;->ˏ:Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lo/oj;->Ί:Landroid/view/View;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Α:Z

    .line 19
    .line 20
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v2, Lo/ea;

    .line 23
    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    invoke-direct {v2, v0, v3}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Lo/ea;

    .line 33
    .line 34
    const/16 v2, 0x11

    .line 35
    .line 36
    invoke-direct {v1, v0, v2}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϐ(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lo/oj;->Ά:I

    .line 43
    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/16 v0, 0x80

    .line 48
    .line 49
    :goto_0
    iget v1, p0, Lo/oj;->Έ:I

    .line 50
    .line 51
    iget v2, p0, Lo/oj;->Ή:I

    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    iput v3, p0, Lo/oj;->Ά:I

    .line 55
    .line 56
    iput v3, p0, Lo/oj;->Έ:I

    .line 57
    .line 58
    iput v3, p0, Lo/oj;->Ή:I

    .line 59
    .line 60
    iget-object v3, p0, Lo/oj;->ͻ:Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    new-instance v4, Lo/zi;

    .line 63
    .line 64
    invoke-direct {v4, p0, v1, v2, v0}, Lo/zi;-><init>(Lo/oj;III)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Screen on: overlay removed, brightness restored to "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "VehicleCtrlMgr"

    .line 85
    .line 86
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
