.class public final Lo/vl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Χ:[Lo/ul;

.field public static final Ψ:Landroid/view/animation/PathInterpolator;

.field public static final Ω:Landroid/view/animation/PathInterpolator;

.field public static final Ϊ:[Ljava/lang/String;

.field public static final Ϋ:[[Ljava/lang/String;

.field public static final ά:[[Ljava/lang/String;

.field public static final έ:[I

.field public static final ή:[I

.field public static final ί:[Ljava/lang/String;

.field public static final ΰ:[Ljava/lang/String;

.field public static final α:[Ljava/lang/String;


# instance fields
.field public ʹ:Landroidx/recyclerview/widget/RecyclerView;

.field public final ˋ:Ljava/util/HashMap;

.field public final ˏ:Landroid/content/Context;

.field public final Ͱ:Landroid/view/WindowManager;

.field public final ͱ:Landroid/os/Handler;

.field public Ͳ:Landroid/view/ViewGroup;

.field public ͳ:Landroid/view/View;

.field public Ͷ:Lo/km;

.field public ͷ:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public ͺ:Lo/ql;

.field public ͻ:Lo/gl;

.field public ͼ:Lo/vk;

.field public ͽ:I

.field public Ά:Z

.field public Έ:Lo/tl;

.field public volatile Ή:Z

.field public volatile Ί:Z

.field public Ό:Landroid/view/View;

.field public Ύ:Lo/pm;

.field public volatile Ώ:Z

.field public ΐ:Landroid/view/View;

.field public Α:Z

.field public Β:Lo/rl;

.field public Γ:D

.field public Δ:I

.field public Ε:I

.field public Ζ:D

.field public Η:D

.field public Θ:D

.field public Ι:J

.field public Κ:Z

.field public Λ:D

.field public Μ:I

.field public Ν:D

.field public Ξ:Ljava/lang/Boolean;

.field public Ο:J

.field public Π:Ljava/lang/ref/WeakReference;

.field public Ρ:Ljava/lang/String;

.field public Σ:Ljava/lang/String;

.field public Τ:Landroid/graphics/Bitmap;

.field public Υ:Z

.field public Φ:J


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lo/ul;

    const-string v3, "lock"

    const-string v4, "\u8f66\u95e8"

    const-string v5, "\u5df2\u5f00\u95e8"

    const-string v6, "\u5df2\u5173\u95e8"

    sget v1, Lo/hf;->widget_car_lock2:I

    sget v2, Lo/hf;->widget_car_lock1:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/ul;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lo/ul;

    const-string v11, "trunk"

    const-string v12, "\u540e\u5907\u7bb1"

    const-string v13, "\u5df2\u5173\u95ed"

    const-string v14, "\u5df2\u6253\u5f00"

    sget v9, Lo/hf;->control_trunck0:I

    sget v10, Lo/hf;->control_trunck1:I

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lo/ul;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lo/ul;

    const-string v18, "energy_feedback"

    const-string v19, "\u52a8\u80fd\u56de\u6536"

    const-string v20, "\u6807\u51c6"

    const-string v21, "\u8f83\u5927"

    sget v16, Lo/hf;->control_energy_recycle1:I

    sget v17, Lo/hf;->control_energy_recycle2:I

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lo/ul;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lo/ul;

    const-string v11, "daylight"

    const-string v12, "\u65e5\u884c\u706f"

    const-string v13, "\u5df2\u5173\u95ed"

    const-string v14, "\u5df2\u5f00\u542f"

    sget v9, Lo/hf;->control_daylight2:I

    sget v10, Lo/hf;->control_daylight1:I

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lo/ul;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lo/ul;

    const-string v18, "inside_light"

    const-string v19, "\u5ba4\u5185\u706f"

    const-string v20, "\u5df2\u5173\u95ed"

    const-string v21, "\u5df2\u5f00\u542f"

    sget v16, Lo/hf;->control_inside_light1:I

    sget v17, Lo/hf;->control_inside_light2:I

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lo/ul;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lo/ul;

    const-string v11, "engine_voice"

    const-string v12, "\u6a21\u62df\u97f3"

    const-string v13, "\u5df2\u5173\u95ed"

    const-string v14, "\u5df2\u5f00\u542f"

    sget v10, Lo/hf;->ic_qs_volume:I

    move-object v8, v5

    move v9, v10

    invoke-direct/range {v8 .. v14}, Lo/ul;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v5}, [Lo/ul;

    move-result-object v0

    sput-object v0, Lo/vl;->Χ:[Lo/ul;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lo/vl;->Ψ:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lo/vl;->Ω:Landroid/view/animation/PathInterpolator;

    const-string v0, "com.byd.negativescreen"

    const-string v1, "com.android.browser"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/vl;->Ϊ:[Ljava/lang/String;

    const-string v0, "com.byd.automap"

    const-string v1, "\u9ad8\u5fb7\u5730\u56fe\u5b9a\u5236\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.autonavi.amapauto"

    const-string v1, "\u9ad8\u5fb7\u5730\u56fe\u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.baidu.naviauto"

    const-string v1, "\u767e\u5ea6\u5730\u56fe\u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.baidu.BaiduMap"

    const-string v1, "\u767e\u5ea6\u5730\u56fe"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.tencent.map.navicar"

    const-string v1, "\u817e\u8baf\u5730\u56fe\u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "com.tencent.map"

    const-string v1, "\u817e\u8baf\u5730\u56fe"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/vl;->Ϋ:[[Ljava/lang/String;

    const-string v0, "com.netease.cloudmusic.iot"

    const-string v1, "\u7f51\u6613\u4e91\u97f3\u4e50 IoT\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.netease.cloudmusic.auto"

    const-string v1, "\u7f51\u6613\u4e91\u97f3\u4e50 \u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.netease.cloudmusic"

    const-string v1, "\u7f51\u6613\u4e91\u97f3\u4e50"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.kugou.android.auto"

    const-string v1, "\u9177\u72d7\u97f3\u4e50 \u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.kugou.android"

    const-string v1, "\u9177\u72d7\u97f3\u4e50"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "com.tencent.qqmusiccar"

    const-string v1, "QQ\u97f3\u4e50 \u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "com.tencent.qqmusic"

    const-string v1, "QQ\u97f3\u4e50"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "cn.kuwo.player.auto"

    const-string v1, "\u9177\u6211\u97f3\u4e50 \u8f66\u673a\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "cn.kuwo.player"

    const-string v1, "\u9177\u6211\u97f3\u4e50"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "com.luna.music.car"

    const-string v1, "\u6c7d\u6c34\u97f3\u4e50"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "com.byd.mediacenter"

    const-string v1, "\u5a92\u4f53\u4e2d\u5fc3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/vl;->ά:[[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/vl;->έ:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/vl;->ή:[I

    const-string v1, "\u4e0b\u4e00\u66f2"

    const-string v2, "\u4e0a\u4e00\u66f2"

    const-string v3, "\u6a21\u5f0f"

    const-string v4, "\u97f3\u91cf\u6eda\u8f6e\u5411\u4e0a"

    const-string v5, "\u97f3\u91cf\u6eda\u8f6e\u5411\u4e0b"

    const-string v6, "\u97f3\u91cf\u6eda\u8f6e\u6309\u4e0b"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/vl;->ί:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "music_toggle"

    const-string v3, "music_next"

    const-string v4, "music_prev"

    const-string v5, "vol_up"

    const-string v6, "vol_down"

    const-string v7, "ac_wind_up"

    const-string v8, "ac_wind_down"

    const-string v9, "ac_temp_up"

    const-string v10, "ac_temp_down"

    const-string v11, "ac_toggle"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/vl;->ΰ:[Ljava/lang/String;

    const-string v1, "\u4fdd\u6301\u539f\u529f\u80fd"

    const-string v2, "\u64ad\u653e/\u6682\u505c"

    const-string v3, "\u4e0b\u4e00\u66f2"

    const-string v4, "\u4e0a\u4e00\u66f2"

    const-string v5, "\u97f3\u91cf+"

    const-string v6, "\u97f3\u91cf-"

    const-string v7, "\u7a7a\u8c03\u98ce\u91cf+"

    const-string v8, "\u7a7a\u8c03\u98ce\u91cf-"

    const-string v9, "\u7a7a\u8c03\u6e29\u5ea6+"

    const-string v10, "\u7a7a\u8c03\u6e29\u5ea6-"

    const-string v11, "\u7a7a\u8c03\u5f00\u5173"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/vl;->α:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x6
        0x8
        0xa
        0xf
        0x14
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x57
        0x58
        0x121
        0x123
        0x124
        0x125
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/vl;->ˋ:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/vl;->Ά:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/vl;->Ή:Z

    iput-boolean v0, p0, Lo/vl;->Ί:Z

    iput-boolean v0, p0, Lo/vl;->Ώ:Z

    iput-boolean v0, p0, Lo/vl;->Α:Z

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lo/vl;->Γ:D

    const/4 v1, -0x1

    iput v1, p0, Lo/vl;->Δ:I

    iput v1, p0, Lo/vl;->Ε:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lo/vl;->Ζ:D

    iput-wide v2, p0, Lo/vl;->Η:D

    iput-wide v2, p0, Lo/vl;->Θ:D

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lo/vl;->Ι:J

    iput-boolean v0, p0, Lo/vl;->Κ:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lo/vl;->Λ:D

    iput v1, p0, Lo/vl;->Μ:I

    iput-wide v2, p0, Lo/vl;->Ν:D

    const/4 v1, 0x0

    iput-object v1, p0, Lo/vl;->Ξ:Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/vl;->Ο:J

    iput-boolean v0, p0, Lo/vl;->Υ:Z

    iput-wide v1, p0, Lo/vl;->Φ:J

    iput-object p1, p0, Lo/vl;->ˏ:Landroid/content/Context;

    iput-object p2, p0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lo/ϑ;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lo/ϑ;-><init>(Landroid/content/Context;I)V

    const-string p1, "tts-settings"

    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isAnimDisabled(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "launcher_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "disable_animations"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static ˋ(Lo/vl;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const/4 v2, 0x2

    .line 14
    new-array v3, v2, [I

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    new-array v4, v2, [I

    .line 20
    .line 21
    iget-object v5, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aget v6, v4, v5

    .line 28
    .line 29
    int-to-float v6, v6

    .line 30
    iget-object v7, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    int-to-float v7, v7

    .line 37
    const/high16 v8, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr v7, v8

    .line 40
    add-float/2addr v7, v6

    .line 41
    const/4 v6, 0x1

    .line 42
    aget v4, v4, v6

    .line 43
    .line 44
    int-to-float v4, v4

    .line 45
    iget-object v9, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    int-to-float v9, v9

    .line 52
    div-float/2addr v9, v8

    .line 53
    add-float/2addr v9, v4

    .line 54
    new-instance v4, Landroid/view/View;

    .line 55
    .line 56
    iget-object v10, v0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v4, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    const/16 v10, 0x10

    .line 62
    .line 63
    invoke-virtual {v0, v10}, Lo/vl;->Ά(I)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    .line 68
    .line 69
    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 73
    .line 74
    .line 75
    const v12, -0x77e6892e

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    .line 85
    .line 86
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v12, 0x1a

    .line 89
    .line 90
    if-lt v11, v12, :cond_1

    .line 91
    .line 92
    const/16 v11, 0x7f6

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/16 v11, 0x7d3

    .line 96
    .line 97
    :goto_0
    move v14, v11

    .line 98
    const/16 v16, 0x118

    .line 99
    .line 100
    const/16 v17, -0x3

    .line 101
    .line 102
    move-object v11, v15

    .line 103
    move v12, v10

    .line 104
    move v13, v10

    .line 105
    move-object v8, v15

    .line 106
    move/from16 v15, v16

    .line 107
    .line 108
    move/from16 v16, v17

    .line 109
    .line 110
    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 111
    .line 112
    .line 113
    const v11, 0x800033

    .line 114
    .line 115
    .line 116
    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 117
    .line 118
    aget v5, v3, v5

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    div-int/2addr v11, v2

    .line 125
    add-int/2addr v11, v5

    .line 126
    div-int/lit8 v5, v10, 0x2

    .line 127
    .line 128
    sub-int/2addr v11, v5

    .line 129
    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 130
    .line 131
    aget v3, v3, v6

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    div-int/2addr v1, v2

    .line 138
    add-int/2addr v1, v3

    .line 139
    sub-int/2addr v1, v5

    .line 140
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 141
    .line 142
    :try_start_0
    iget-object v1, v0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 143
    .line 144
    invoke-interface {v1, v4, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 148
    .line 149
    int-to-float v1, v1

    .line 150
    int-to-float v2, v10

    .line 151
    const/high16 v3, 0x40000000    # 2.0f

    .line 152
    .line 153
    div-float/2addr v2, v3

    .line 154
    add-float/2addr v1, v2

    .line 155
    sub-float/2addr v7, v1

    .line 156
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    .line 158
    int-to-float v1, v1

    .line 159
    add-float/2addr v1, v2

    .line 160
    sub-float/2addr v9, v1

    .line 161
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const v2, 0x3e99999a    # 0.3f

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-wide/16 v2, 0x28a

    .line 189
    .line 190
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    sget-object v2, Lo/vl;->Ω:Landroid/view/animation/PathInterpolator;

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v2, Lo/Ϋ;

    .line 205
    .line 206
    const/16 v3, 0xb

    .line 207
    .line 208
    move-object/from16 v5, p2

    .line 209
    .line 210
    invoke-direct {v2, v0, v4, v3, v5}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :catch_0
    :cond_2
    :goto_1
    move-object/from16 v5, p2

    .line 222
    .line 223
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 224
    .line 225
    .line 226
    :goto_2
    return-void
.end method

.method public static ˏ(Lo/vl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Lo/vl;->ʹ(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void
.end method

.method public static Ͱ(Lo/vl;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lo/vl;->ͳ:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    iget-object v1, v0, Lo/vl;->Ͷ:Lo/km;

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Lo/km;->ͱ(Z)V

    :cond_1
    iget-object v1, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v1}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v8

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, v0, Lo/vl;->ˏ:Landroid/content/Context;

    sget v3, Lo/lf;->Theme_NavDemo:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lo/jf;->dialog_widget_picker:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    sget v2, Lo/if;->btn_picker_close:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lo/Ϙ;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0, v11}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lo/if;->tab_service:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lo/if;->tab_apps:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lo/if;->content_service:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lo/if;->content_apps:I

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v8, :cond_2

    const v12, -0xdededf

    move v15, v12

    goto :goto_0

    :cond_2
    const/4 v15, -0x1

    :goto_0
    if-eqz v8, :cond_3

    const v12, 0x66212121

    goto :goto_1

    :cond_3
    const v12, 0x66ffffff

    :goto_1
    move v14, v12

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v13, Lo/t9;

    const/16 v19, 0x2

    move-object v12, v13

    move-object v6, v13

    move-object v13, v2

    move/from16 v20, v14

    move v14, v15

    move/from16 v21, v15

    move-object v15, v3

    move/from16 v16, v20

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v19}, Lo/t9;-><init>(Landroid/widget/TextView;ILandroid/widget/TextView;ILandroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lo/t9;

    const/16 v19, 0x3

    move-object v12, v6

    move-object v13, v3

    move/from16 v14, v21

    move-object v15, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v19}, Lo/t9;-><init>(Landroid/widget/TextView;ILandroid/widget/TextView;ILandroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lo/if;->rv_picker:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4, v10, v10}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lo/mm;

    const-string v5, "\u5730\u56fe\u5bfc\u822a"

    invoke-direct {v3, v10, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const-string v5, "\u97f3\u4e50\u64ad\u653e"

    invoke-direct {v3, v7, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const-string v5, "\u8f66\u8f86\u63a7\u5236"

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const-string v5, "\u80ce\u538b\u76d1\u6d4b"

    invoke-direct {v3, v4, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const/4 v4, 0x6

    const-string v5, "\u672c\u6b21\u884c\u7a0b"

    invoke-direct {v3, v4, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const/16 v4, 0xb

    const-string v5, "\u73af\u5883\u4fe1\u606f"

    invoke-direct {v3, v4, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const/16 v4, 0xa

    const-string v5, "\u539f\u684c\u9762"

    invoke-direct {v3, v4, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mm;

    const/4 v4, 0x4

    const-string v5, "\u8bbe\u7f6e"

    invoke-direct {v3, v4, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v3, Lo/pm;

    invoke-virtual/range {p0 .. p0}, Lo/vl;->Ύ()Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v3, v1, v4, v8}, Lo/pm;-><init>(Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    new-instance v1, Lo/f8;

    invoke-direct {v1, v0, v11, v6, v3}, Lo/f8;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5
    iput-object v1, v3, Lo/pm;->Ͱ:Lo/f8;

    .line 6
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v3, v0, Lo/vl;->Ύ:Lo/pm;

    sget v1, Lo/if;->picker_apps_pager:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    sget v1, Lo/if;->picker_apps_indicator:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lo/Ϊ;

    move-object v1, v13

    move-object/from16 v2, p0

    move v5, v8

    const/4 v14, -0x1

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lo/Ϊ;-><init>(Lo/vl;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;ZLandroid/view/View;)V

    const-string v1, "LoadApps"

    invoke-direct {v12, v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    sget v1, Lo/if;->picker_panel:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v2}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7
    sget-object v2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v8, :cond_4

    const v3, -0x7f000001

    goto :goto_2

    :cond_4
    const/high16 v3, -0x80000000

    :goto_2
    invoke-static {v2, v3}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    :goto_3
    const v2, -0xa0a0b

    goto :goto_4

    :cond_7
    const v2, -0xededee

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    const v2, -0xf000001

    goto :goto_4

    :cond_9
    const/high16 v2, -0x10000000

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_b

    if-eqz v8, :cond_a

    const/high16 v2, 0x22000000

    goto :goto_6

    :cond_a
    const v2, 0x22ffffff

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    if-eqz v8, :cond_c

    sget v1, Lo/if;->btn_picker_close:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    const v2, -0xbdbdbe

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_d

    const/16 v1, 0x7f6

    goto :goto_7

    :cond_d
    const/16 v1, 0x7d3

    :goto_7
    move v5, v1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Lo/vl;->Ά(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lo/vl;->Ά(I)I

    move-result v3

    iget-object v4, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_e

    iget-object v6, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v8, v4

    goto :goto_8

    :cond_e
    move v8, v10

    :goto_8
    iget v4, v0, Lo/vl;->ͽ:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    sub-int/2addr v1, v8

    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/16 v6, 0x108

    const/4 v7, -0x3

    move-object v2, v12

    move v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v2, 0x800033

    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v8, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v1

    :try_start_0
    invoke-virtual {v11, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 9
    sget v4, Lo/if;->widget_picker_container:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    :cond_f
    if-eqz v9, :cond_10

    .line 10
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v9, v10, v8, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v14, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_10
    iget-object v1, v0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    invoke-interface {v1, v11, v12}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iput-object v11, v0, Lo/vl;->Ό:Landroid/view/View;

    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    if-eqz v0, :cond_11

    check-cast v0, Lo/cb;

    .line 11
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ρ()V

    .line 12
    :cond_11
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lo/vl;->Ψ:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    const-string v1, "WidgetBarMgr"

    const-string v2, "Failed to show picker"

    invoke-static {v1, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method public static Ͳ(Landroid/widget/ImageView;Landroid/widget/TextView;Lo/ul;Z)V
    .locals 7

    .line 1
    if-eqz p0, :cond_a

    if-eqz p3, :cond_0

    iget v0, p2, Lo/ul;->ͳ:I

    goto :goto_0

    :cond_0
    iget v0, p2, Lo/ul;->Ͳ:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lo/ul;->ˋ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "daylight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :sswitch_1
    const-string v1, "energy_feedback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v1, "engine_voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :sswitch_3
    const-string v1, "trunk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_2

    :sswitch_4
    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v6

    goto :goto_2

    :sswitch_5
    const-string v1, "inside_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const v0, 0x3fa66666    # 1.3f

    goto :goto_3

    :cond_8
    const v0, 0x3f666666    # 0.9f

    goto :goto_3

    :cond_9
    const v0, 0x3f99999a    # 1.2f

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    if-eqz p1, :cond_d

    if-eqz p3, :cond_b

    iget-object p0, p2, Lo/ul;->Ͱ:Ljava/lang/String;

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_b
    iget-object p0, p2, Lo/ul;->ͱ:Ljava/lang/String;

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    iget-object p0, p2, Lo/ul;->ˏ:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35c484ed -> :sswitch_5
        0x32c52b -> :sswitch_4
        0x6983db4 -> :sswitch_3
        0x475f04f5 -> :sswitch_2
        0x6060435c -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch
.end method

.method public static ͺ(I)Lo/mm;
    .locals 2

    .line 1
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lo/mm;

    const-string v1, "\u73af\u5883\u4fe1\u606f"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lo/mm;

    const-string v1, "\u539f\u684c\u9762"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lo/mm;

    const-string v1, "\u672c\u6b21\u884c\u7a0b"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lo/mm;

    const-string v1, "\u8bbe\u7f6e"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Lo/mm;

    const-string v1, "\u80ce\u538b\u76d1\u6d4b"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Lo/mm;

    const-string v1, "\u8f66\u8f86\u63a7\u5236"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_6
    new-instance p0, Lo/mm;

    const-string v1, "\u97f3\u4e50\u64ad\u653e"

    invoke-direct {p0, v0, v1}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_7
    new-instance p0, Lo/mm;

    const-string v0, "\u5730\u56fe\u5bfc\u822a"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/mm;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static Ή(Ljava/lang/String;)Lo/ul;
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    iget-object v4, v3, Lo/ul;->ˋ:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static Ό(D)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-string p0, "0\u5206\u949f"

    return-object p0

    :cond_0
    const-wide v0, 0x4096800000000000L    # 1440.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    div-double/2addr p0, v0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_2

    const-string p0, "<1\u5206\u949f"

    return-object p0

    :cond_2
    const/16 p1, 0x3c

    const-string v0, "\u5206\u949f"

    if-ge p0, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    div-int/lit8 v1, p0, 0x3c

    rem-int/2addr p0, p1

    const-string p1, "\u5c0f\u65f6"

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Ώ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "launcher_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "music_app_package"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Α(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "tts_broadcast_list"

    const-string v1, "[]"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static Β(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "widget_bar_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p1, :cond_0

    const-string v0, "vehicle_slot_0"

    goto :goto_0

    :cond_0
    const-string v0, "vehicle_slot_1"

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "lock"

    goto :goto_1

    :cond_1
    const-string p1, "trunk"

    :goto_1
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Ξ(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "tts_broadcast_list"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final ʹ(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    iget-object v0, p0, Lo/vl;->Ͷ:Lo/km;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, v0, Lo/km;->ˏ:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    instance-of v3, p1, Lo/cm;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_3

    check-cast p1, Lo/cm;

    iget-object v2, p1, Lo/cm;->ˏ:Landroid/view/View;

    .line 3
    new-instance v3, Lo/oe;

    invoke-direct {v3, v5}, Lo/oe;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object v2, p1, Lo/cm;->Ͱ:Landroid/view/View;

    .line 5
    new-instance v3, Lo/oe;

    invoke-direct {v3, v5}, Lo/oe;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v2, p1, Lo/cm;->ˏ:Landroid/view/View;

    if-eqz v0, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    new-instance v3, Lo/uk;

    invoke-direct {v3, p0, v1}, Lo/uk;-><init>(Lo/vl;I)V

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lo/cm;->Ͱ:Landroid/view/View;

    if-eqz v0, :cond_2

    goto/16 :goto_a

    :cond_2
    new-instance v4, Lo/uk;

    invoke-direct {v4, p0, v6}, Lo/uk;-><init>(Lo/vl;I)V

    goto/16 :goto_a

    :cond_3
    instance-of v3, p1, Lo/dm;

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x7

    if-eqz v3, :cond_d

    check-cast p1, Lo/dm;

    iget-object v3, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v3}, Lo/vl;->Ώ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v10, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    if-eqz v10, :cond_5

    const-string v11, "com.byd.mediacenter"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v3, p1, Lo/dm;->ʹ:Landroid/widget/ImageView;

    const/4 v7, 0x5

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v3, p1, Lo/dm;->ʹ:Landroid/widget/ImageView;

    .line 7
    new-instance v10, Lo/oe;

    invoke-direct {v10, v5}, Lo/oe;-><init>(I)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object v3, p1, Lo/dm;->ʹ:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    move-object v5, v4

    goto :goto_3

    :cond_6
    new-instance v5, Lo/uk;

    invoke-direct {v5, p0, v7}, Lo/uk;-><init>(Lo/vl;I)V

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v2, p1, Lo/dm;->ˏ:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_8

    iget-object v0, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lo/dm;->ͱ:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lo/dm;->Ͳ:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lo/dm;->ͳ:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    new-instance v2, Lo/mk;

    invoke-direct {v2, p0, v6}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {p0, v0, v2}, Lo/vl;->Τ(Landroid/widget/ImageView;Lo/mk;)V

    iget-object v0, p1, Lo/dm;->ͱ:Landroid/widget/ImageView;

    new-instance v2, Lo/mk;

    invoke-direct {v2, p0, v7}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {p0, v0, v2}, Lo/vl;->Τ(Landroid/widget/ImageView;Lo/mk;)V

    iget-object v0, p1, Lo/dm;->Ͳ:Landroid/widget/ImageView;

    new-instance v2, Lo/mk;

    invoke-direct {v2, p0, v8}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {p0, v0, v2}, Lo/vl;->Τ(Landroid/widget/ImageView;Lo/mk;)V

    iget-object v0, p1, Lo/dm;->ͳ:Landroid/widget/ImageView;

    new-instance v2, Lo/mk;

    invoke-direct {v2, p0, v9}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {p0, v0, v2}, Lo/vl;->Τ(Landroid/widget/ImageView;Lo/mk;)V

    :goto_4
    iget-object v0, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    iget-boolean v2, p0, Lo/vl;->Υ:Z

    if-eqz v2, :cond_9

    sget v2, Lo/hf;->ic_music_favorite_filled:I

    goto :goto_5

    :cond_9
    sget v2, Lo/hf;->ic_music_favorite:I

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lo/vl;->Υ:Z

    if-eqz v0, :cond_a

    goto :goto_7

    .line 9
    :cond_a
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v0, :cond_b

    .line 10
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->Ϗ:Z

    goto :goto_6

    .line 11
    :cond_b
    iget-object v0, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_c

    iget-object p1, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    invoke-static {v1}, Lo/ci;->ͱ(Z)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_b

    :cond_c
    :goto_7
    iget-object p1, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto/16 :goto_b

    :cond_d
    instance-of v3, p1, Lo/jm;

    if-eqz v3, :cond_10

    check-cast p1, Lo/jm;

    iget-object v3, p1, Lo/jm;->ͱ:Landroid/view/View;

    if-eqz v3, :cond_f

    .line 12
    new-instance v6, Lo/oe;

    invoke-direct {v6, v5}, Lo/oe;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    iget-object v3, p1, Lo/jm;->ͱ:Landroid/view/View;

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    new-instance v4, Lo/uk;

    invoke-direct {v4, p0, v8}, Lo/uk;-><init>(Lo/vl;I)V

    :goto_8
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    invoke-virtual {p0, p1, v2, v0}, Lo/vl;->Ͷ(Lo/jm;IZ)V

    invoke-virtual {p0, p1, v1, v0}, Lo/vl;->Ͷ(Lo/jm;IZ)V

    goto/16 :goto_b

    :cond_10
    instance-of v1, p1, Lo/im;

    if-eqz v1, :cond_12

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_11

    goto/16 :goto_a

    :cond_11
    new-instance v4, Lo/uk;

    invoke-direct {v4, p0, v9}, Lo/uk;-><init>(Lo/vl;I)V

    goto/16 :goto_a

    :cond_12
    instance-of v1, p1, Lo/hm;

    if-eqz v1, :cond_17

    move-object v1, p1

    check-cast v1, Lo/hm;

    iget-object v1, v1, Lo/hm;->ͳ:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_13
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    if-eqz v1, :cond_15

    .line 15
    invoke-static {}, Lcom/byd/launcher/ipc/CoreServiceClient;->getInstance()Lcom/byd/launcher/ipc/CoreServiceClient;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_9

    .line 16
    :cond_14
    new-instance v3, Lo/ia;

    invoke-direct {v3, v1, v7}, Lo/ia;-><init>(Lcom/byd/launcher/NavBarService;I)V

    const-string v1, "getTripInfo"

    invoke-virtual {v2, v1, v4, v3}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 17
    :cond_15
    :goto_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    new-instance v4, Lo/uk;

    invoke-direct {v4, p0, v7}, Lo/uk;-><init>(Lo/vl;I)V

    goto :goto_a

    :cond_17
    instance-of v1, p1, Lo/bm;

    if-eqz v1, :cond_19

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    new-instance v4, Lo/uk;

    invoke-direct {v4, p0, v5}, Lo/uk;-><init>(Lo/vl;I)V

    goto :goto_a

    :cond_19
    instance-of v1, p1, Lo/gm;

    if-eqz v1, :cond_1b

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance v4, Lo/uk;

    const/4 v0, 0x3

    invoke-direct {v4, p0, v0}, Lo/uk;-><init>(Lo/vl;I)V

    goto :goto_a

    :cond_1b
    instance-of v1, p1, Lo/yl;

    if-eqz v1, :cond_1d

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1d

    iget-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    invoke-virtual {v1}, Lo/km;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lo/km;->ˋ:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mm;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lo/Ϙ;

    invoke-direct {v1, v9, p0, v0}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_1c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_a
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    :goto_b
    return-void
.end method

.method public final ͱ(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lo/vl;->Ά(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lo/vl;->Ω:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lo/tk;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lo/tk;-><init>(ILandroid/view/View;Lo/vl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final ͳ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/vl;->Ͷ:Lo/km;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v1, Lo/mk;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lo/vl;->ͺ:Lo/ql;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    new-instance v0, Lo/ql;

    invoke-direct {v0, p0}, Lo/ql;-><init>(Lo/vl;)V

    iput-object v0, p0, Lo/vl;->ͺ:Lo/ql;

    iget-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Ͷ(Lo/jm;IZ)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lo/jm;->ˏ:Landroid/view/View;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lo/jm;->Ͱ:Landroid/view/View;

    .line 7
    .line 8
    :goto_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Lo/jm;->Ͳ:Landroid/widget/ImageView;

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p1, Lo/jm;->ͳ:Landroid/widget/ImageView;

    .line 14
    .line 15
    :goto_1
    if-nez p2, :cond_2

    .line 16
    .line 17
    iget-object p1, p1, Lo/jm;->Ͷ:Landroid/widget/TextView;

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p1, Lo/jm;->ʹ:Landroid/widget/TextView;

    .line 21
    .line 22
    :goto_2
    if-nez v0, :cond_3

    .line 23
    .line 24
    return-void

    .line 25
    :cond_3
    iget-object v2, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, p2}, Lo/vl;->Β(Landroid/content/Context;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lo/vl;->Ή(Ljava/lang/String;)Lo/ul;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_6

    .line 36
    .line 37
    if-nez p2, :cond_4

    .line 38
    .line 39
    const-string v3, "lock"

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_4
    const-string v3, "trunk"

    .line 43
    .line 44
    :goto_3
    invoke-static {v3}, Lo/vl;->Ή(Ljava/lang/String;)Lo/ul;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v3, v4, Lo/ul;->ˋ:Ljava/lang/String;

    .line 49
    .line 50
    const-string v5, "widget_bar_prefs"

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez p2, :cond_5

    .line 62
    .line 63
    const-string v5, "vehicle_slot_0"

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    const-string v5, "vehicle_slot_1"

    .line 67
    .line 68
    :goto_4
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-virtual {p0, v4}, Lo/vl;->Ν(Lo/ul;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {v1, p1, v4, v2}, Lo/vl;->Ͳ(Landroid/widget/ImageView;Landroid/widget/TextView;Lo/ul;Z)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lo/oe;

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    invoke-direct {p1, v1}, Lo/oe;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    if-eqz p3, :cond_7

    .line 93
    .line 94
    move-object v1, p1

    .line 95
    goto :goto_5

    .line 96
    :cond_7
    new-instance v1, Lo/Ϙ;

    .line 97
    .line 98
    const/16 v2, 0xa

    .line 99
    .line 100
    invoke-direct {v1, v2, p0, v3}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    if-eqz p3, :cond_8

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    new-instance p1, Lo/n9;

    .line 110
    .line 111
    const/16 p3, 0x9

    .line 112
    .line 113
    invoke-direct {p1, p0, p2, p3}, Lo/n9;-><init>(Ljava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    :goto_6
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final ͷ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lo/mk;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ͻ(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lo/vl;->Ό:Landroid/view/View;

    .line 5
    .line 6
    :goto_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lo/vl;->Ώ:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/vl;->Ώ:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lo/vl;->ͱ(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lo/vl;->Ͷ:Lo/km;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p1, Lo/km;->ˏ:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lo/km;->ͱ(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lo/vl;->Ο()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final ͼ()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lo/vl;->Α:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/vl;->ΐ:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lo/vl;->ΐ:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lo/tk;

    invoke-direct {v3, v2, v0, p0}, Lo/tk;-><init>(ILandroid/view/View;Lo/vl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final ͽ(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    iget-object v0, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final Ά(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final Έ()Lo/dm;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/vl;->Π:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dm;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    instance-of v3, v2, Lo/dm;

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast v2, Lo/dm;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/vl;->Π:Ljava/lang/ref/WeakReference;

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public final Ί()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lo/vl;->Ί:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/vl;->Ή:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lo/vl;->Ή:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/vl;->Ή:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/vl;->Ρ(Z)V

    return-void
.end method

.method public final Ύ()Ljava/util/HashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, v1, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lo/mm;

    .line 32
    .line 33
    iget v2, v2, Lo/mm;->Ͱ:I

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public final ΐ(Landroid/view/View;)Landroid/os/Bundle;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lo/gf;->zoom_enter:I

    sget v0, Lo/gf;->no_anim:I

    iget-object v1, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-static {p1}, Lo/Η;->Ί(Landroid/app/ActivityOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final Γ()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo/vl;->Ͷ:Lo/km;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v0, v0, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lo/mm;

    .line 29
    .line 30
    iget v2, v2, Lo/mm;->Ͱ:I

    .line 31
    .line 32
    const/16 v3, 0xb

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_2
    return v1
.end method

.method public final Δ()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo/vl;->ͼ()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lo/vl;->Ό:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lo/vl;->Ό:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lo/vl;->Λ(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    iput-object v1, p0, Lo/vl;->Ό:Landroid/view/View;

    .line 22
    .line 23
    iput-object v1, p0, Lo/vl;->Ύ:Lo/pm;

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lo/vl;->Ώ:Z

    .line 27
    .line 28
    iget-object v2, p0, Lo/vl;->Ͷ:Lo/km;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v2, Lo/km;->ˏ:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lo/km;->ͱ(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lo/vl;->Ο()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lo/vl;->Έ:Lo/tl;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    check-cast v0, Lo/cb;

    .line 47
    .line 48
    iget-object v2, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v4, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    new-instance v3, Lo/td;

    .line 60
    .line 61
    const/16 v4, 0x9

    .line 62
    .line 63
    invoke-direct {v3, v4, v0}, Lo/td;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v3, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 67
    .line 68
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 69
    .line 70
    const-wide/16 v4, 0x12c

    .line 71
    .line 72
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    iget-object v2, p0, Lo/vl;->ͼ:Lo/vk;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v2, p0, Lo/vl;->ͼ:Lo/vk;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lo/vl;->ͼ:Lo/vk;

    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    .line 102
    .line 103
    if-eqz v0, :cond_d

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lo/vl;->Ο()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lo/vl;->ͺ:Lo/ql;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    iget-object v2, p0, Lo/vl;->Ͷ:Lo/km;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    :try_start_2
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    :catch_1
    :try_start_3
    iput-object v1, p0, Lo/vl;->ͺ:Lo/ql;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_3

    .line 131
    :catch_2
    move-exception v0

    .line 132
    goto :goto_1

    .line 133
    :cond_6
    :goto_0
    iget-object v0, p0, Lo/vl;->ͻ:Lo/gl;

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    iget-object v2, p0, Lo/vl;->Ͷ:Lo/km;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    :try_start_4
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    .line 143
    .line 144
    :catch_3
    :try_start_5
    iput-object v1, p0, Lo/vl;->ͻ:Lo/gl;

    .line 145
    .line 146
    :cond_7
    iget-object v0, p0, Lo/vl;->Ͷ:Lo/km;

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    iput-object v1, v0, Lo/km;->Ͱ:Lo/fm;

    .line 151
    .line 152
    :cond_8
    iget-object v0, p0, Lo/vl;->ͷ:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    iget-object v2, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    if-eqz v2, :cond_9

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 161
    .line 162
    .line 163
    :cond_9
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    if-eqz v0, :cond_a

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    .line 169
    .line 170
    :cond_a
    iget-object v0, p0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 171
    .line 172
    if-eqz v0, :cond_b

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 178
    .line 179
    const/16 v2, 0x8

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_b
    iget-object v0, p0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 186
    .line 187
    iget-object v2, p0, Lo/vl;->ͳ:Landroid/view/View;

    .line 188
    .line 189
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :goto_1
    :try_start_6
    const-string v2, "WidgetBarMgr"

    .line 194
    .line 195
    const-string v3, "Failed to remove widget bar"

    .line 196
    .line 197
    invoke-static {v2, v3, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 201
    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    :try_start_7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_c
    iget-object v0, p0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 209
    .line 210
    iget-object v2, p0, Lo/vl;->ͳ:Landroid/view/View;

    .line 211
    .line 212
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 213
    .line 214
    .line 215
    :catch_4
    :goto_2
    iput-object v1, p0, Lo/vl;->ͷ:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 216
    .line 217
    iput-object v1, p0, Lo/vl;->ͳ:Landroid/view/View;

    .line 218
    .line 219
    iput-object v1, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    .line 221
    iput-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_3
    iput-object v1, p0, Lo/vl;->ͷ:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 225
    .line 226
    iput-object v1, p0, Lo/vl;->ͳ:Landroid/view/View;

    .line 227
    .line 228
    iput-object v1, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    .line 230
    iput-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    .line 231
    .line 232
    throw v0

    .line 233
    :cond_d
    :goto_4
    return-void
.end method

.method public final Ε()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ζ(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "android.intent.action.MAIN"

    .line 2
    .line 3
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v3, v1, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 9
    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    iget-boolean v4, v3, Lo/nd;->Η:Z

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    iget-object v3, v3, Lo/nd;->Σ:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    move v3, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v2

    .line 30
    :goto_0
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v2

    .line 34
    :goto_1
    if-eqz v5, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/16 v3, 0x7d0

    .line 38
    .line 39
    :try_start_0
    invoke-static {v3}, Lcom/byd/launcher/NavBarService;->ϥ(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lo/vl;->Σ()V

    .line 43
    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byd/launcher/NavBarService;->Ϊ()V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v1, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    new-instance v4, Landroid/content/Intent;

    .line 63
    .line 64
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 85
    .line 86
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 87
    .line 88
    new-instance v3, Landroid/content/Intent;

    .line 89
    .line 90
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Landroid/content/ComponentName;

    .line 94
    .line 95
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    :cond_4
    if-eqz v3, :cond_5

    .line 106
    .line 107
    const/high16 v0, 0x10000000

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lo/vl;->ΐ(Landroid/view/View;)Landroid/os/Bundle;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v0, v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v1, "Launch app failed: "

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const-string v0, "WidgetBarMgr"

    .line 138
    .line 139
    invoke-static {v0, p2, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_2
    return-void
.end method

.method public final Η()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final Θ(Lo/dm;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/byd/launcher/NavBarService;->Ϗ:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget-object v1, p1, Lo/dm;->ͱ:Landroid/widget/ImageView;

    .line 15
    .line 16
    iget-object v2, p1, Lo/dm;->Ͳ:Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-object v3, p1, Lo/dm;->ͳ:Landroid/widget/ImageView;

    .line 19
    .line 20
    filled-new-array {v1, v2, v3}, [Landroid/widget/ImageView;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_1
    const/4 v3, 0x3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ge v2, v3, :cond_3

    .line 28
    .line 29
    aget-object v3, v1, v2

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {v4}, Lo/ci;->ͱ(Z)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object p1, p1, Lo/dm;->Ͱ:Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    iget-boolean v1, p0, Lo/vl;->Υ:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-static {v4}, Lo/ci;->ͱ(Z)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_4
    return-void
.end method

.method public final Ι(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static/range {p1 .. p1}, Lo/vl;->Α(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v3}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/high16 v10, 0x41c00000    # 24.0f

    if-ge v7, v8, :cond_5

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v12, 0x41400000    # 12.0f

    mul-float v13, v5, v12

    float-to-int v13, v13

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v14, v5

    float-to-int v14, v14

    invoke-virtual {v11, v13, v14, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v7, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v4, :cond_0

    const v14, -0x99999a

    goto :goto_1

    :cond_0
    const v14, -0x555556

    :goto_1
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    mul-float/2addr v10, v5

    float-to-int v10, v10

    const/4 v12, -0x2

    invoke-direct {v14, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v4, :cond_1

    const v13, -0xe5e5e6

    goto :goto_2

    :cond_1
    const/4 v13, -0x1

    :goto_2
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u64ad\u653e"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v4, :cond_2

    const v10, -0xe1771b

    goto :goto_3

    :cond_2
    const v10, -0x9b4a0a

    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v10, v12, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v14, Lo/ΰ;

    const/4 v6, 0x3

    invoke-direct {v14, v6, v8}, Lo/ΰ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u5220\u9664"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const v8, -0x1ac6cb

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v10, v12, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v8, Lo/nk;

    move-object/from16 v9, p1

    invoke-direct {v8, v0, v9, v7, v1}, Lo/nk;-><init>(Lo/vl;Landroid/content/SharedPreferences;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-lez v7, :cond_4

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_3

    const/high16 v7, 0x22000000

    goto :goto_4

    :cond_3
    const v7, 0x22ffffff

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v7, v15

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u6682\u65e0\u64ad\u62a5\u6587\u5b57\uff0c\u8bf7\u5728\u4e0a\u65b9\u8f93\u5165\u5e76\u6dfb\u52a0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v4, :cond_6

    const v9, -0x666667

    goto :goto_5

    :cond_6
    const v9, -0x99999a

    :goto_5
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    mul-float/2addr v5, v10

    float-to-int v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public final Κ(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lo/vl;->Ή(Ljava/lang/String;)Lo/ul;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lo/vl;->Ν(Lo/ul;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v5, v4, Lo/jm;

    if-eqz v5, :cond_5

    check-cast v4, Lo/jm;

    move v5, v2

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v6, v5}, Lo/vl;->Β(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    iget-object v6, v4, Lo/jm;->Ͳ:Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    iget-object v6, v4, Lo/jm;->ͳ:Landroid/widget/ImageView;

    :goto_2
    if-nez v5, :cond_3

    iget-object v7, v4, Lo/jm;->Ͷ:Landroid/widget/TextView;

    goto :goto_3

    :cond_3
    iget-object v7, v4, Lo/jm;->ʹ:Landroid/widget/TextView;

    :goto_3
    invoke-static {v6, v7, v0, v1}, Lo/vl;->Ͳ(Landroid/widget/ImageView;Landroid/widget/TextView;Lo/ul;Z)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final Λ(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v1, Lo/if;->widget_picker_container:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne v1, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x8

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public final Μ(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/vl;->Ι:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/vl;->Κ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/vl;->Λ:D

    const/4 v2, -0x1

    iput v2, p0, Lo/vl;->Μ:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lo/vl;->Ν:D

    if-eqz p1, :cond_0

    const-string v2, "totalMileage"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lo/vl;->Ζ:D

    const-string v2, "totalElecCon"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lo/vl;->Η:D

    const-string v2, "totalFuelCon"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lo/vl;->Θ:D

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lo/vl;->Ζ:D

    iput-wide v2, p0, Lo/vl;->Η:D

    iput-wide v2, p0, Lo/vl;->Θ:D

    :goto_0
    return-void
.end method

.method public final Ν(Lo/ul;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    const-string v1, "lock"

    .line 4
    .line 5
    iget-object v2, p1, Lo/ul;->ˋ:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean p1, v0, Lcom/byd/launcher/NavBarService;->Ώ:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    :cond_0
    return v2

    .line 23
    :cond_1
    const-string v0, "inside_light"

    .line 24
    .line 25
    iget-object v1, p1, Lo/ul;->ˋ:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 34
    .line 35
    const-string v0, "vehicle_ctrl_prefs"

    .line 36
    .line 37
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "inside_light_active"

    .line 42
    .line 43
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_2
    iget-object v0, p0, Lo/vl;->ˋ:Ljava/util/HashMap;

    .line 49
    .line 50
    iget-object p1, p1, Lo/ul;->ˋ:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    move v2, v3

    .line 67
    :cond_3
    return v2
.end method

.method public final Ο()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/vl;->Ͷ:Lo/km;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lo/vl;->Ͷ:Lo/km;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lo/mm;

    .line 38
    .line 39
    iget v4, v3, Lo/mm;->Ͱ:I

    .line 40
    .line 41
    const/16 v5, 0x63

    .line 42
    .line 43
    if-eq v4, v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lo/mm;

    .line 64
    .line 65
    iget v3, v2, Lo/mm;->Ͱ:I

    .line 66
    .line 67
    const/4 v4, 0x5

    .line 68
    if-ne v3, v4, :cond_3

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "app:"

    .line 73
    .line 74
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v2, Lo/mm;->Ͳ:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, ":"

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, v2, Lo/mm;->ͱ:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 107
    .line 108
    const-string v3, "widget_bar_prefs"

    .line 109
    .line 110
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "widget_order"

    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final Π(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lo/vl;->Ά(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lo/vl;->Ή:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iput-object p1, p0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    return-void
.end method

.method public final Ρ(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lo/vl;->Ή:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lo/vl;->Ή:Z

    new-instance v0, Lo/bk;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lo/bk;-><init>(Lo/vl;ZI)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lo/bk;->run()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final Σ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/vl;->Ή:Z

    iput-boolean v0, p0, Lo/vl;->Ί:Z

    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :try_start_0
    iget-object v0, p0, Lo/vl;->ͳ:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final Τ(Landroid/widget/ImageView;Lo/mk;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v2, Lo/yk;

    invoke-direct {v2, v0, v1}, Lo/yk;-><init>(FF)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lo/Ϙ;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p2}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Υ(II)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    iget-object v0, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const-string v8, "WidgetBarMgr"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "Widget bar show skipped: no embedded container (no overlay mode)"

    .line 17
    .line 18
    invoke-static {v8, v0}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iput v2, v1, Lo/vl;->ͽ:I

    .line 23
    .line 24
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 25
    .line 26
    sget v3, Lo/lf;->Theme_NavDemo:I

    .line 27
    .line 28
    iget-object v4, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v0, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v3, Lo/jf;->widget_bar:I

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-virtual {v0, v3, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 46
    .line 47
    sget v3, Lo/if;->rv_widgets:I

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    iput-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    invoke-direct {v3, v4, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    const/16 v3, 0xa

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 78
    .line 79
    sget v3, Lo/if;->btn_edit_done:I

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v3, Lo/uk;

    .line 88
    .line 89
    invoke-direct {v3, v1, v6}, Lo/uk;-><init>(Lo/vl;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lo/km;

    .line 96
    .line 97
    invoke-direct {v0}, Lo/km;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, v1, Lo/vl;->Ͷ:Lo/km;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v7, "status_bar_height"

    .line 117
    .line 118
    const-string v10, "dimen"

    .line 119
    .line 120
    const-string v11, "android"

    .line 121
    .line 122
    invoke-virtual {v3, v7, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-lez v3, :cond_2

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    move v3, v6

    .line 138
    :goto_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-string v12, "navigation_bar_height"

    .line 143
    .line 144
    invoke-virtual {v7, v12, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-lez v7, :cond_3

    .line 149
    .line 150
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    move v7, v6

    .line 160
    :goto_1
    sub-int/2addr v0, v3

    .line 161
    sub-int/2addr v0, v7

    .line 162
    div-int/lit8 v0, v0, 0x6

    .line 163
    .line 164
    if-lez v0, :cond_4

    .line 165
    .line 166
    iget-object v3, v1, Lo/vl;->Ͷ:Lo/km;

    .line 167
    .line 168
    iput v0, v3, Lo/km;->ͱ:I

    .line 169
    .line 170
    :cond_4
    iget-object v0, v1, Lo/vl;->Ͷ:Lo/km;

    .line 171
    .line 172
    new-instance v3, Lo/v5;

    .line 173
    .line 174
    const/4 v7, 0x4

    .line 175
    invoke-direct {v3, v7, v1}, Lo/v5;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iput-object v3, v0, Lo/km;->ͳ:Lo/em;

    .line 179
    .line 180
    new-instance v3, Lo/fl;

    .line 181
    .line 182
    invoke-direct {v3, v1}, Lo/fl;-><init>(Lo/vl;)V

    .line 183
    .line 184
    .line 185
    iput-object v3, v0, Lo/km;->Ͱ:Lo/fm;

    .line 186
    .line 187
    iget-object v3, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lo/lm;

    .line 193
    .line 194
    iget-object v3, v1, Lo/vl;->Ͷ:Lo/km;

    .line 195
    .line 196
    invoke-direct {v0, v3}, Lo/lm;-><init>(Lo/km;)V

    .line 197
    .line 198
    .line 199
    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 200
    .line 201
    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 202
    .line 203
    .line 204
    iput-object v3, v1, Lo/vl;->ͷ:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 205
    .line 206
    iget-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 209
    .line 210
    .line 211
    iget-object v3, v1, Lo/vl;->Ͷ:Lo/km;

    .line 212
    .line 213
    const-string v0, "app:"

    .line 214
    .line 215
    const-string v10, "widget_bar_prefs"

    .line 216
    .line 217
    invoke-virtual {v4, v10, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    const-string v10, "widget_order"

    .line 222
    .line 223
    invoke-interface {v4, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    new-instance v10, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    const/4 v11, 0x1

    .line 233
    const/4 v12, 0x3

    .line 234
    const/4 v13, 0x2

    .line 235
    if-eqz v4, :cond_8

    .line 236
    .line 237
    :try_start_0
    new-instance v14, Lorg/json/JSONArray;

    .line 238
    .line 239
    invoke-direct {v14, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    move v4, v6

    .line 243
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    if-ge v4, v15, :cond_8

    .line 248
    .line 249
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v16

    .line 257
    if-eqz v16, :cond_6

    .line 258
    .line 259
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v16

    .line 263
    if-eqz v16, :cond_5

    .line 264
    .line 265
    const-string v9, ":"

    .line 266
    .line 267
    invoke-virtual {v15, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    array-length v5, v9

    .line 272
    if-lt v5, v12, :cond_5

    .line 273
    .line 274
    new-instance v5, Lo/mm;

    .line 275
    .line 276
    aget-object v15, v9, v11

    .line 277
    .line 278
    aget-object v9, v9, v13

    .line 279
    .line 280
    invoke-direct {v5, v15, v9}, Lo/mm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_5
    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    .line 286
    .line 287
    :catch_0
    const/4 v5, 0x0

    .line 288
    goto :goto_3

    .line 289
    :cond_6
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-static {v5}, Lo/vl;->ͺ(I)Lo/mm;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    :goto_3
    if-eqz v5, :cond_7

    .line 298
    .line 299
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 300
    .line 301
    .line 302
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 303
    .line 304
    const/4 v9, 0x0

    .line 305
    goto :goto_2

    .line 306
    :catch_1
    move-exception v0

    .line 307
    const-string v4, "Failed to load widget order"

    .line 308
    .line 309
    invoke-static {v8, v4, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_9

    .line 317
    .line 318
    new-instance v0, Lo/mm;

    .line 319
    .line 320
    const-string v4, "\u5730\u56fe\u5bfc\u822a"

    .line 321
    .line 322
    invoke-direct {v0, v6, v4}, Lo/mm;-><init>(ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    new-instance v0, Lo/mm;

    .line 329
    .line 330
    const-string v4, "\u97f3\u4e50\u64ad\u653e"

    .line 331
    .line 332
    invoke-direct {v0, v11, v4}, Lo/mm;-><init>(ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    new-instance v0, Lo/mm;

    .line 339
    .line 340
    const-string v4, "\u8f66\u8f86\u63a7\u5236"

    .line 341
    .line 342
    invoke-direct {v0, v13, v4}, Lo/mm;-><init>(ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    new-instance v0, Lo/mm;

    .line 349
    .line 350
    const-string v4, "\u80ce\u538b\u76d1\u6d4b"

    .line 351
    .line 352
    invoke-direct {v0, v12, v4}, Lo/mm;-><init>(ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    new-instance v0, Lo/mm;

    .line 359
    .line 360
    const-string v4, "\u8bbe\u7f6e"

    .line 361
    .line 362
    invoke-direct {v0, v7, v4}, Lo/mm;-><init>(ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    :cond_9
    new-instance v0, Lo/mm;

    .line 369
    .line 370
    const/16 v4, 0x63

    .line 371
    .line 372
    const-string v5, "\u6dfb\u52a0\u63a7\u4ef6"

    .line 373
    .line 374
    invoke-direct {v0, v4, v5}, Lo/mm;-><init>(ILjava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    iget-object v0, v3, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Lo/vl;->ͳ()V

    .line 392
    .line 393
    .line 394
    new-instance v0, Lo/gl;

    .line 395
    .line 396
    invoke-direct {v0, v1}, Lo/gl;-><init>(Lo/vl;)V

    .line 397
    .line 398
    .line 399
    iput-object v0, v1, Lo/vl;->ͻ:Lo/gl;

    .line 400
    .line 401
    iget-object v3, v1, Lo/vl;->Ͷ:Lo/km;

    .line 402
    .line 403
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Lo/vk;

    .line 407
    .line 408
    invoke-direct {v0, v1, v6}, Lo/vk;-><init>(Lo/vl;I)V

    .line 409
    .line 410
    .line 411
    iput-object v0, v1, Lo/vl;->ͼ:Lo/vk;

    .line 412
    .line 413
    iget-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 414
    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object v3, v1, Lo/vl;->ͼ:Lo/vk;

    .line 420
    .line 421
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 422
    .line 423
    .line 424
    iget-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 425
    .line 426
    new-instance v3, Lo/hl;

    .line 427
    .line 428
    invoke-direct {v3, v1}, Lo/hl;-><init>(Lo/vl;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    new-instance v3, Lo/vk;

    .line 441
    .line 442
    invoke-direct {v3, v1, v11}, Lo/vk;-><init>(Lo/vl;I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 446
    .line 447
    .line 448
    const/16 v0, 0x67

    .line 449
    .line 450
    invoke-virtual {v1, v0}, Lo/vl;->Ά(I)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    sub-int v0, p1, v2

    .line 455
    .line 456
    sub-int/2addr v0, v4

    .line 457
    iget-object v3, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 458
    .line 459
    if-eqz v3, :cond_b

    .line 460
    .line 461
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 462
    .line 463
    const/4 v3, -0x1

    .line 464
    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 465
    .line 466
    .line 467
    iget-object v3, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 468
    .line 469
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 470
    .line 471
    .line 472
    iget-object v3, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 473
    .line 474
    iget-object v5, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 475
    .line 476
    invoke-virtual {v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    .line 478
    .line 479
    iget-object v0, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 480
    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    .line 487
    if-eqz v0, :cond_a

    .line 488
    .line 489
    iget-object v0, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 490
    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 496
    .line 497
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 498
    .line 499
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 500
    .line 501
    const/16 v3, 0x51

    .line 502
    .line 503
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 504
    .line 505
    iget-object v3, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 506
    .line 507
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .line 509
    .line 510
    :cond_a
    iget-object v0, v1, Lo/vl;->Ͳ:Landroid/view/ViewGroup;

    .line 511
    .line 512
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    const-string v3, "Widget bar shown embedded, navBarH="

    .line 518
    .line 519
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v2, " widgetBarH="

    .line 526
    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v8, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    goto :goto_4

    .line 541
    :cond_b
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 542
    .line 543
    const/4 v3, -0x1

    .line 544
    const/16 v6, 0x308

    .line 545
    .line 546
    const/4 v7, -0x3

    .line 547
    move-object v2, v9

    .line 548
    const/16 v5, 0x7f0

    .line 549
    .line 550
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 551
    .line 552
    .line 553
    const/16 v2, 0x31

    .line 554
    .line 555
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 556
    .line 557
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 558
    .line 559
    :try_start_3
    iget-object v2, v1, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 560
    .line 561
    iget-object v3, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 562
    .line 563
    invoke-interface {v2, v3, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    .line 565
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string v3, "Widget bar shown at y="

    .line 572
    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-static {v8, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 584
    .line 585
    .line 586
    goto :goto_4

    .line 587
    :catch_2
    move-exception v0

    .line 588
    const-string v2, "Failed to show widget bar"

    .line 589
    .line 590
    invoke-static {v8, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    .line 592
    .line 593
    const/4 v2, 0x0

    .line 594
    iput-object v2, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 595
    .line 596
    :goto_4
    return-void
.end method

.method public final Φ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lo/ok;

    invoke-direct {v3, v2, v1}, Lo/ok;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v3, "launcher_prefs"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v5, Ljava/util/HashSet;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, p1, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Z

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x10302d2

    goto :goto_2

    :cond_3
    const v1, 0x10302d1

    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lo/pk;

    invoke-direct {p2, v7}, Lo/pk;-><init>([Z)V

    invoke-virtual {v2, v6, v7, p2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lo/qk;

    invoke-direct {p2, v4, v7, v3, p1}, Lo/qk;-><init>(Ljava/util/ArrayList;[ZLandroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v2, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u53d6\u6d88"

    const/4 p2, 0x0

    invoke-virtual {v2, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x7f0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final Χ()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lo/vl;->ͳ:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_d

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, v1, Lo/vl;->Α:Z

    .line 11
    .line 12
    const-string v2, "Settings dialog opened"

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "WidgetBarMgr"

    .line 21
    .line 22
    invoke-static {v3, v2}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v5, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iget-object v6, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iput-object v4, v2, Lcom/byd/launcher/NavBarService;->ω:Ljava/lang/Runnable;

    .line 40
    .line 41
    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 42
    .line 43
    iget-object v5, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 44
    .line 45
    sget v6, Lo/lf;->Theme_NavDemo:I

    .line 46
    .line 47
    invoke-direct {v2, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget v5, Lo/jf;->dialog_settings:I

    .line 55
    .line 56
    invoke-virtual {v2, v5, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 61
    .line 62
    iget-object v2, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v2}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object v4, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    const v11, -0x66000001

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    .line 77
    .line 78
    const v11, -0x50506

    .line 79
    .line 80
    .line 81
    const v12, -0xcccccd

    .line 82
    .line 83
    .line 84
    const v13, -0x777778

    .line 85
    .line 86
    .line 87
    const v14, -0x666667

    .line 88
    .line 89
    .line 90
    move v15, v13

    .line 91
    move v5, v14

    .line 92
    const v6, -0xe5e5e6

    .line 93
    .line 94
    .line 95
    const v7, -0x99999a

    .line 96
    .line 97
    .line 98
    move v13, v11

    .line 99
    move v14, v12

    .line 100
    const/4 v11, -0x1

    .line 101
    const v12, -0xa0a0b

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/high16 v11, -0x67000000

    .line 106
    .line 107
    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    const v11, -0xd2cebe

    .line 111
    .line 112
    .line 113
    const v12, -0xe5e2d7

    .line 114
    .line 115
    .line 116
    const v13, -0xdad7ca

    .line 117
    .line 118
    .line 119
    const v14, -0x4f4f50

    .line 120
    .line 121
    .line 122
    const v15, -0x555556

    .line 123
    .line 124
    .line 125
    move v5, v15

    .line 126
    const/4 v6, -0x1

    .line 127
    const v7, -0x333334

    .line 128
    .line 129
    .line 130
    move v15, v14

    .line 131
    const v14, -0x1f1f20

    .line 132
    .line 133
    .line 134
    :goto_0
    sget v8, Lo/if;->settings_main_container:I

    .line 135
    .line 136
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    if-eqz v8, :cond_3

    .line 141
    .line 142
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 143
    .line 144
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 148
    .line 149
    .line 150
    const/high16 v11, 0x41800000    # 16.0f

    .line 151
    .line 152
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    sget v8, Lo/if;->nav_menu_container:I

    .line 159
    .line 160
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    if-eqz v8, :cond_4

    .line 165
    .line 166
    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 167
    .line 168
    .line 169
    :cond_4
    sget v8, Lo/if;->settings_content_container:I

    .line 170
    .line 171
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    if-eqz v8, :cond_5

    .line 176
    .line 177
    invoke-virtual {v8, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    .line 179
    .line 180
    :cond_5
    sget v8, Lo/if;->tv_settings_title:I

    .line 181
    .line 182
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Landroid/widget/TextView;

    .line 187
    .line 188
    if-eqz v8, :cond_6

    .line 189
    .line 190
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    :cond_6
    const/16 v8, 0xb

    .line 194
    .line 195
    new-array v9, v8, [I

    .line 196
    .line 197
    sget v11, Lo/if;->tv_page_basic_title:I

    .line 198
    .line 199
    aput v11, v9, v0

    .line 200
    .line 201
    sget v11, Lo/if;->tv_page_theme_title:I

    .line 202
    .line 203
    const/4 v12, 0x1

    .line 204
    aput v11, v9, v12

    .line 205
    .line 206
    sget v11, Lo/if;->tv_page_system_title:I

    .line 207
    .line 208
    const/4 v13, 0x2

    .line 209
    aput v11, v9, v13

    .line 210
    .line 211
    sget v11, Lo/if;->tv_page_about_title:I

    .line 212
    .line 213
    const/4 v10, 0x3

    .line 214
    aput v11, v9, v10

    .line 215
    .line 216
    sget v11, Lo/if;->tv_wallpaper_title:I

    .line 217
    .line 218
    const/4 v10, 0x4

    .line 219
    aput v11, v9, v10

    .line 220
    .line 221
    sget v11, Lo/if;->tv_car_model_title:I

    .line 222
    .line 223
    const/4 v10, 0x5

    .line 224
    aput v11, v9, v10

    .line 225
    .line 226
    sget v11, Lo/if;->tv_page_widget_title:I

    .line 227
    .line 228
    const/4 v10, 0x6

    .line 229
    aput v11, v9, v10

    .line 230
    .line 231
    sget v11, Lo/if;->tv_pip_title:I

    .line 232
    .line 233
    const/4 v10, 0x7

    .line 234
    aput v11, v9, v10

    .line 235
    .line 236
    sget v11, Lo/if;->tv_page_swc_title:I

    .line 237
    .line 238
    const/16 v10, 0x8

    .line 239
    .line 240
    aput v11, v9, v10

    .line 241
    .line 242
    sget v11, Lo/if;->tv_page_tts_title:I

    .line 243
    .line 244
    const/16 v10, 0x9

    .line 245
    .line 246
    aput v11, v9, v10

    .line 247
    .line 248
    sget v11, Lo/if;->tv_page_turn_signal_title:I

    .line 249
    .line 250
    const/16 v10, 0xa

    .line 251
    .line 252
    aput v11, v9, v10

    .line 253
    .line 254
    move v11, v0

    .line 255
    :goto_1
    if-ge v11, v8, :cond_8

    .line 256
    .line 257
    aget v8, v9, v11

    .line 258
    .line 259
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    check-cast v8, Landroid/widget/TextView;

    .line 264
    .line 265
    if-eqz v8, :cond_7

    .line 266
    .line 267
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    .line 269
    .line 270
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 271
    .line 272
    const/16 v8, 0xb

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_8
    const/16 v6, 0x1d

    .line 276
    .line 277
    new-array v8, v6, [I

    .line 278
    .line 279
    sget v9, Lo/if;->tv_clock_label:I

    .line 280
    .line 281
    aput v9, v8, v0

    .line 282
    .line 283
    sget v9, Lo/if;->tv_landscape_label:I

    .line 284
    .line 285
    aput v9, v8, v12

    .line 286
    .line 287
    sget v9, Lo/if;->tv_instrument_label:I

    .line 288
    .line 289
    aput v9, v8, v13

    .line 290
    .line 291
    sget v9, Lo/if;->tv_anim_label:I

    .line 292
    .line 293
    const/4 v11, 0x3

    .line 294
    aput v9, v8, v11

    .line 295
    .line 296
    sget v9, Lo/if;->tv_instrument_music_label:I

    .line 297
    .line 298
    const/4 v11, 0x4

    .line 299
    aput v9, v8, v11

    .line 300
    .line 301
    sget v9, Lo/if;->tv_wallpaper_label:I

    .line 302
    .line 303
    const/4 v11, 0x5

    .line 304
    aput v9, v8, v11

    .line 305
    .line 306
    sget v9, Lo/if;->tv_oem_statusbar_label:I

    .line 307
    .line 308
    const/4 v11, 0x6

    .line 309
    aput v9, v8, v11

    .line 310
    .line 311
    sget v9, Lo/if;->tv_oem_navbar_label:I

    .line 312
    .line 313
    const/4 v11, 0x7

    .line 314
    aput v9, v8, v11

    .line 315
    .line 316
    sget v9, Lo/if;->tv_oem_control_label:I

    .line 317
    .line 318
    const/16 v11, 0x8

    .line 319
    .line 320
    aput v9, v8, v11

    .line 321
    .line 322
    sget v9, Lo/if;->tv_launcher_label:I

    .line 323
    .line 324
    const/16 v11, 0x9

    .line 325
    .line 326
    aput v9, v8, v11

    .line 327
    .line 328
    sget v9, Lo/if;->tv_car_model_label:I

    .line 329
    .line 330
    aput v9, v8, v10

    .line 331
    .line 332
    sget v9, Lo/if;->tv_map_select_label:I

    .line 333
    .line 334
    const/16 v11, 0xb

    .line 335
    .line 336
    aput v9, v8, v11

    .line 337
    .line 338
    sget v9, Lo/if;->tv_music_select_label:I

    .line 339
    .line 340
    const/16 v11, 0xc

    .line 341
    .line 342
    aput v9, v8, v11

    .line 343
    .line 344
    sget v9, Lo/if;->tv_pip_label:I

    .line 345
    .line 346
    const/16 v10, 0xd

    .line 347
    .line 348
    aput v9, v8, v10

    .line 349
    .line 350
    sget v9, Lo/if;->tv_fullscreen_apps_label:I

    .line 351
    .line 352
    const/16 v10, 0xe

    .line 353
    .line 354
    aput v9, v8, v10

    .line 355
    .line 356
    const/16 v9, 0xf

    .line 357
    .line 358
    sget v19, Lo/if;->tv_statusbar_hidden_apps_label:I

    .line 359
    .line 360
    aput v19, v8, v9

    .line 361
    .line 362
    const/16 v9, 0x10

    .line 363
    .line 364
    sget v19, Lo/if;->tv_autostart_app_label:I

    .line 365
    .line 366
    aput v19, v8, v9

    .line 367
    .line 368
    sget v9, Lo/if;->tv_autostart_return_home_label:I

    .line 369
    .line 370
    const/16 v10, 0x11

    .line 371
    .line 372
    aput v9, v8, v10

    .line 373
    .line 374
    const/16 v9, 0x12

    .line 375
    .line 376
    sget v20, Lo/if;->tv_autostart_delay_label:I

    .line 377
    .line 378
    aput v20, v8, v9

    .line 379
    .line 380
    const/16 v9, 0x13

    .line 381
    .line 382
    sget v20, Lo/if;->tv_swc_enable_label:I

    .line 383
    .line 384
    aput v20, v8, v9

    .line 385
    .line 386
    const/16 v9, 0x14

    .line 387
    .line 388
    sget v20, Lo/if;->tv_swc_desc:I

    .line 389
    .line 390
    aput v20, v8, v9

    .line 391
    .line 392
    const/16 v9, 0x15

    .line 393
    .line 394
    sget v20, Lo/if;->tv_swc_360_label:I

    .line 395
    .line 396
    aput v20, v8, v9

    .line 397
    .line 398
    const/16 v9, 0x16

    .line 399
    .line 400
    sget v20, Lo/if;->tv_tts_volume_label2:I

    .line 401
    .line 402
    aput v20, v8, v9

    .line 403
    .line 404
    const/16 v9, 0x17

    .line 405
    .line 406
    sget v20, Lo/if;->tv_tts_gain_label2:I

    .line 407
    .line 408
    aput v20, v8, v9

    .line 409
    .line 410
    const/16 v9, 0x18

    .line 411
    .line 412
    sget v20, Lo/if;->tv_tts_channel_label2:I

    .line 413
    .line 414
    aput v20, v8, v9

    .line 415
    .line 416
    const/16 v9, 0x19

    .line 417
    .line 418
    sget v20, Lo/if;->tv_click_sound_label:I

    .line 419
    .line 420
    aput v20, v8, v9

    .line 421
    .line 422
    const/16 v9, 0x1a

    .line 423
    .line 424
    sget v20, Lo/if;->tv_click_sound_volume_label:I

    .line 425
    .line 426
    aput v20, v8, v9

    .line 427
    .line 428
    const/16 v9, 0x1b

    .line 429
    .line 430
    sget v20, Lo/if;->tv_turn_signal_camera_label:I

    .line 431
    .line 432
    aput v20, v8, v9

    .line 433
    .line 434
    const/16 v9, 0x1c

    .line 435
    .line 436
    sget v20, Lo/if;->tv_turn_signal_window_adjust_label:I

    .line 437
    .line 438
    aput v20, v8, v9

    .line 439
    .line 440
    move v9, v0

    .line 441
    :goto_2
    if-ge v9, v6, :cond_a

    .line 442
    .line 443
    aget v6, v8, v9

    .line 444
    .line 445
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    check-cast v6, Landroid/widget/TextView;

    .line 450
    .line 451
    if-eqz v6, :cond_9

    .line 452
    .line 453
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    .line 455
    .line 456
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 457
    .line 458
    const/16 v6, 0x1d

    .line 459
    .line 460
    goto :goto_2

    .line 461
    :cond_a
    const/16 v6, 0x8

    .line 462
    .line 463
    new-array v8, v6, [I

    .line 464
    .line 465
    sget v6, Lo/if;->tv_nav_basic:I

    .line 466
    .line 467
    aput v6, v8, v0

    .line 468
    .line 469
    sget v6, Lo/if;->tv_nav_theme:I

    .line 470
    .line 471
    aput v6, v8, v12

    .line 472
    .line 473
    sget v6, Lo/if;->tv_nav_system:I

    .line 474
    .line 475
    aput v6, v8, v13

    .line 476
    .line 477
    sget v6, Lo/if;->tv_nav_about:I

    .line 478
    .line 479
    const/4 v9, 0x3

    .line 480
    aput v6, v8, v9

    .line 481
    .line 482
    sget v6, Lo/if;->tv_nav_widget:I

    .line 483
    .line 484
    const/4 v9, 0x4

    .line 485
    aput v6, v8, v9

    .line 486
    .line 487
    sget v6, Lo/if;->tv_nav_swc:I

    .line 488
    .line 489
    const/4 v9, 0x5

    .line 490
    aput v6, v8, v9

    .line 491
    .line 492
    sget v6, Lo/if;->tv_nav_tts:I

    .line 493
    .line 494
    const/4 v9, 0x6

    .line 495
    aput v6, v8, v9

    .line 496
    .line 497
    sget v6, Lo/if;->tv_nav_turn_signal:I

    .line 498
    .line 499
    const/4 v9, 0x7

    .line 500
    aput v6, v8, v9

    .line 501
    .line 502
    move v6, v0

    .line 503
    :goto_3
    const/16 v9, 0x8

    .line 504
    .line 505
    if-ge v6, v9, :cond_c

    .line 506
    .line 507
    aget v9, v8, v6

    .line 508
    .line 509
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    check-cast v9, Landroid/widget/TextView;

    .line 514
    .line 515
    if-eqz v9, :cond_b

    .line 516
    .line 517
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    .line 519
    .line 520
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 521
    .line 522
    goto :goto_3

    .line 523
    :cond_c
    sget v6, Lo/if;->tv_autostart_app_value:I

    .line 524
    .line 525
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    check-cast v6, Landroid/widget/TextView;

    .line 530
    .line 531
    if-eqz v6, :cond_d

    .line 532
    .line 533
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    .line 535
    .line 536
    :cond_d
    sget v6, Lo/if;->tv_autostart_delay_value:I

    .line 537
    .line 538
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    check-cast v6, Landroid/widget/TextView;

    .line 543
    .line 544
    if-eqz v6, :cond_e

    .line 545
    .line 546
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    .line 548
    .line 549
    :cond_e
    sget v6, Lo/if;->tv_tts_volume_value2:I

    .line 550
    .line 551
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    check-cast v6, Landroid/widget/TextView;

    .line 556
    .line 557
    if-eqz v6, :cond_f

    .line 558
    .line 559
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    .line 561
    .line 562
    :cond_f
    sget v6, Lo/if;->tv_tts_gain_value2:I

    .line 563
    .line 564
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    check-cast v6, Landroid/widget/TextView;

    .line 569
    .line 570
    if-eqz v6, :cond_10

    .line 571
    .line 572
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    .line 574
    .line 575
    :cond_10
    sget v6, Lo/if;->tv_click_sound_volume_value:I

    .line 576
    .line 577
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    check-cast v6, Landroid/widget/TextView;

    .line 582
    .line 583
    if-eqz v6, :cond_11

    .line 584
    .line 585
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    .line 587
    .line 588
    :cond_11
    sget v6, Lo/if;->tv_tts_desc:I

    .line 589
    .line 590
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    check-cast v6, Landroid/widget/TextView;

    .line 595
    .line 596
    if-eqz v6, :cond_12

    .line 597
    .line 598
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    .line 600
    .line 601
    :cond_12
    sget v6, Lo/if;->tv_turn_signal_desc:I

    .line 602
    .line 603
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    check-cast v6, Landroid/widget/TextView;

    .line 608
    .line 609
    if-eqz v6, :cond_13

    .line 610
    .line 611
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    .line 613
    .line 614
    :cond_13
    sget v6, Lo/if;->et_tts_input:I

    .line 615
    .line 616
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    check-cast v6, Landroid/widget/EditText;

    .line 621
    .line 622
    const v8, -0xaaaaab

    .line 623
    .line 624
    .line 625
    if-eqz v6, :cond_16

    .line 626
    .line 627
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 631
    .line 632
    .line 633
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    .line 634
    .line 635
    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 636
    .line 637
    .line 638
    if-eqz v2, :cond_14

    .line 639
    .line 640
    const v9, -0xa0a0b

    .line 641
    .line 642
    .line 643
    goto :goto_4

    .line 644
    :cond_14
    const v9, -0xd5d5d6

    .line 645
    .line 646
    .line 647
    :goto_4
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 648
    .line 649
    .line 650
    iget-object v9, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 651
    .line 652
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 657
    .line 658
    .line 659
    move-result-object v9

    .line 660
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 661
    .line 662
    const/high16 v16, 0x41000000    # 8.0f

    .line 663
    .line 664
    mul-float v9, v9, v16

    .line 665
    .line 666
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 667
    .line 668
    .line 669
    if-eqz v2, :cond_15

    .line 670
    .line 671
    const v9, -0x333334

    .line 672
    .line 673
    .line 674
    goto :goto_5

    .line 675
    :cond_15
    move v9, v8

    .line 676
    :goto_5
    invoke-virtual {v7, v12, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 680
    .line 681
    .line 682
    :cond_16
    sget v6, Lo/if;->tv_about_desc:I

    .line 683
    .line 684
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 685
    .line 686
    .line 687
    move-result-object v6

    .line 688
    check-cast v6, Landroid/widget/TextView;

    .line 689
    .line 690
    if-eqz v6, :cond_17

    .line 691
    .line 692
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 693
    .line 694
    .line 695
    :cond_17
    sget v6, Lo/if;->tv_reward_text:I

    .line 696
    .line 697
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    check-cast v6, Landroid/widget/TextView;

    .line 702
    .line 703
    if-eqz v6, :cond_18

    .line 704
    .line 705
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    .line 707
    .line 708
    :cond_18
    sget v5, Lo/if;->tv_about_version:I

    .line 709
    .line 710
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    check-cast v5, Landroid/widget/TextView;

    .line 715
    .line 716
    if-eqz v5, :cond_19

    .line 717
    .line 718
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    .line 720
    .line 721
    :cond_19
    if-eqz v2, :cond_1a

    .line 722
    .line 723
    const v5, -0xe5e5e6

    .line 724
    .line 725
    .line 726
    goto :goto_6

    .line 727
    :cond_1a
    const/4 v5, -0x1

    .line 728
    :goto_6
    const/4 v6, 0x7

    .line 729
    new-array v7, v6, [I

    .line 730
    .line 731
    sget v6, Lo/if;->nav_indicator_basic:I

    .line 732
    .line 733
    aput v6, v7, v0

    .line 734
    .line 735
    sget v6, Lo/if;->nav_indicator_theme:I

    .line 736
    .line 737
    aput v6, v7, v12

    .line 738
    .line 739
    sget v6, Lo/if;->nav_indicator_system:I

    .line 740
    .line 741
    aput v6, v7, v13

    .line 742
    .line 743
    sget v6, Lo/if;->nav_indicator_about:I

    .line 744
    .line 745
    const/4 v9, 0x3

    .line 746
    aput v6, v7, v9

    .line 747
    .line 748
    sget v6, Lo/if;->nav_indicator_widget:I

    .line 749
    .line 750
    const/4 v9, 0x4

    .line 751
    aput v6, v7, v9

    .line 752
    .line 753
    sget v6, Lo/if;->nav_indicator_swc:I

    .line 754
    .line 755
    const/4 v9, 0x5

    .line 756
    aput v6, v7, v9

    .line 757
    .line 758
    sget v6, Lo/if;->nav_indicator_turn_signal:I

    .line 759
    .line 760
    const/4 v9, 0x6

    .line 761
    aput v6, v7, v9

    .line 762
    .line 763
    move v6, v0

    .line 764
    :goto_7
    const/4 v9, 0x7

    .line 765
    if-ge v6, v9, :cond_1c

    .line 766
    .line 767
    aget v9, v7, v6

    .line 768
    .line 769
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 770
    .line 771
    .line 772
    move-result-object v9

    .line 773
    if-eqz v9, :cond_1b

    .line 774
    .line 775
    invoke-virtual {v9, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 776
    .line 777
    .line 778
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    .line 779
    .line 780
    goto :goto_7

    .line 781
    :cond_1c
    iget-object v4, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 782
    .line 783
    new-instance v5, Lo/uk;

    .line 784
    .line 785
    const/16 v6, 0x9

    .line 786
    .line 787
    invoke-direct {v5, v1, v6}, Lo/uk;-><init>(Lo/vl;I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    .line 792
    .line 793
    iget-object v4, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 794
    .line 795
    check-cast v4, Landroid/view/ViewGroup;

    .line 796
    .line 797
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    if-eqz v4, :cond_1d

    .line 802
    .line 803
    new-instance v5, Lo/al;

    .line 804
    .line 805
    invoke-direct {v5, v0}, Lo/al;-><init>(I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    .line 810
    .line 811
    :cond_1d
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 812
    .line 813
    const/16 v21, -0x1

    .line 814
    .line 815
    const/16 v22, -0x1

    .line 816
    .line 817
    const/16 v23, 0x7f0

    .line 818
    .line 819
    const/16 v24, 0x20

    .line 820
    .line 821
    const/16 v25, -0x3

    .line 822
    .line 823
    move-object/from16 v20, v5

    .line 824
    .line 825
    invoke-direct/range {v20 .. v25}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 826
    .line 827
    .line 828
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 829
    .line 830
    :try_start_0
    iget-object v6, v1, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    .line 831
    .line 832
    iget-object v7, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 833
    .line 834
    invoke-interface {v6, v7, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    .line 836
    .line 837
    if-eqz v4, :cond_1e

    .line 838
    .line 839
    const/4 v5, 0x0

    .line 840
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 844
    .line 845
    .line 846
    move-result-object v4

    .line 847
    const/high16 v5, 0x3f800000    # 1.0f

    .line 848
    .line 849
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 850
    .line 851
    .line 852
    move-result-object v4

    .line 853
    const-wide/16 v5, 0xc8

    .line 854
    .line 855
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 860
    .line 861
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .line 870
    .line 871
    :cond_1e
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 872
    .line 873
    const/16 v4, 0x8

    .line 874
    .line 875
    new-array v5, v4, [I

    .line 876
    .line 877
    sget v4, Lo/if;->nav_basic:I

    .line 878
    .line 879
    aput v4, v5, v0

    .line 880
    .line 881
    sget v4, Lo/if;->nav_widget:I

    .line 882
    .line 883
    aput v4, v5, v12

    .line 884
    .line 885
    sget v4, Lo/if;->nav_theme:I

    .line 886
    .line 887
    aput v4, v5, v13

    .line 888
    .line 889
    sget v4, Lo/if;->nav_system:I

    .line 890
    .line 891
    const/4 v6, 0x3

    .line 892
    aput v4, v5, v6

    .line 893
    .line 894
    sget v4, Lo/if;->nav_about:I

    .line 895
    .line 896
    const/4 v6, 0x4

    .line 897
    aput v4, v5, v6

    .line 898
    .line 899
    sget v4, Lo/if;->nav_swc:I

    .line 900
    .line 901
    const/4 v6, 0x5

    .line 902
    aput v4, v5, v6

    .line 903
    .line 904
    sget v4, Lo/if;->nav_tts:I

    .line 905
    .line 906
    const/4 v6, 0x6

    .line 907
    aput v4, v5, v6

    .line 908
    .line 909
    sget v4, Lo/if;->nav_turn_signal:I

    .line 910
    .line 911
    const/4 v6, 0x7

    .line 912
    aput v4, v5, v6

    .line 913
    .line 914
    const/16 v4, 0x8

    .line 915
    .line 916
    new-array v6, v4, [I

    .line 917
    .line 918
    sget v4, Lo/if;->page_basic:I

    .line 919
    .line 920
    aput v4, v6, v0

    .line 921
    .line 922
    sget v4, Lo/if;->page_widget:I

    .line 923
    .line 924
    aput v4, v6, v12

    .line 925
    .line 926
    sget v4, Lo/if;->page_theme:I

    .line 927
    .line 928
    aput v4, v6, v13

    .line 929
    .line 930
    sget v4, Lo/if;->page_system:I

    .line 931
    .line 932
    const/4 v7, 0x3

    .line 933
    aput v4, v6, v7

    .line 934
    .line 935
    sget v4, Lo/if;->page_about:I

    .line 936
    .line 937
    const/4 v7, 0x4

    .line 938
    aput v4, v6, v7

    .line 939
    .line 940
    sget v4, Lo/if;->page_swc:I

    .line 941
    .line 942
    const/4 v7, 0x5

    .line 943
    aput v4, v6, v7

    .line 944
    .line 945
    sget v4, Lo/if;->page_tts:I

    .line 946
    .line 947
    const/4 v7, 0x6

    .line 948
    aput v4, v6, v7

    .line 949
    .line 950
    sget v4, Lo/if;->page_turn_signal:I

    .line 951
    .line 952
    const/4 v7, 0x7

    .line 953
    aput v4, v6, v7

    .line 954
    .line 955
    const/16 v4, 0x8

    .line 956
    .line 957
    new-array v7, v4, [I

    .line 958
    .line 959
    sget v4, Lo/if;->tv_nav_basic:I

    .line 960
    .line 961
    aput v4, v7, v0

    .line 962
    .line 963
    sget v4, Lo/if;->tv_nav_widget:I

    .line 964
    .line 965
    aput v4, v7, v12

    .line 966
    .line 967
    sget v4, Lo/if;->tv_nav_theme:I

    .line 968
    .line 969
    aput v4, v7, v13

    .line 970
    .line 971
    sget v4, Lo/if;->tv_nav_system:I

    .line 972
    .line 973
    const/4 v9, 0x3

    .line 974
    aput v4, v7, v9

    .line 975
    .line 976
    sget v4, Lo/if;->tv_nav_about:I

    .line 977
    .line 978
    const/4 v9, 0x4

    .line 979
    aput v4, v7, v9

    .line 980
    .line 981
    sget v4, Lo/if;->tv_nav_swc:I

    .line 982
    .line 983
    const/4 v9, 0x5

    .line 984
    aput v4, v7, v9

    .line 985
    .line 986
    sget v4, Lo/if;->tv_nav_tts:I

    .line 987
    .line 988
    const/4 v9, 0x6

    .line 989
    aput v4, v7, v9

    .line 990
    .line 991
    sget v4, Lo/if;->tv_nav_turn_signal:I

    .line 992
    .line 993
    const/4 v9, 0x7

    .line 994
    aput v4, v7, v9

    .line 995
    .line 996
    const/16 v4, 0x8

    .line 997
    .line 998
    new-array v9, v4, [I

    .line 999
    .line 1000
    sget v4, Lo/if;->nav_indicator_basic:I

    .line 1001
    .line 1002
    aput v4, v9, v0

    .line 1003
    .line 1004
    sget v4, Lo/if;->nav_indicator_widget:I

    .line 1005
    .line 1006
    aput v4, v9, v12

    .line 1007
    .line 1008
    sget v4, Lo/if;->nav_indicator_theme:I

    .line 1009
    .line 1010
    aput v4, v9, v13

    .line 1011
    .line 1012
    sget v4, Lo/if;->nav_indicator_system:I

    .line 1013
    .line 1014
    const/4 v10, 0x3

    .line 1015
    aput v4, v9, v10

    .line 1016
    .line 1017
    sget v4, Lo/if;->nav_indicator_about:I

    .line 1018
    .line 1019
    const/4 v10, 0x4

    .line 1020
    aput v4, v9, v10

    .line 1021
    .line 1022
    sget v4, Lo/if;->nav_indicator_swc:I

    .line 1023
    .line 1024
    const/4 v10, 0x5

    .line 1025
    aput v4, v9, v10

    .line 1026
    .line 1027
    sget v4, Lo/if;->nav_indicator_tts:I

    .line 1028
    .line 1029
    const/4 v10, 0x6

    .line 1030
    aput v4, v9, v10

    .line 1031
    .line 1032
    sget v4, Lo/if;->nav_indicator_turn_signal:I

    .line 1033
    .line 1034
    const/4 v10, 0x7

    .line 1035
    aput v4, v9, v10

    .line 1036
    .line 1037
    iget-object v4, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1038
    .line 1039
    invoke-static {v4}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v4

    .line 1043
    if-eqz v4, :cond_1f

    .line 1044
    .line 1045
    const v18, -0xe5e5e6

    .line 1046
    .line 1047
    .line 1048
    goto :goto_8

    .line 1049
    :cond_1f
    const/16 v18, -0x1

    .line 1050
    .line 1051
    :goto_8
    if-eqz v4, :cond_20

    .line 1052
    .line 1053
    const v17, -0x99999a

    .line 1054
    .line 1055
    .line 1056
    goto :goto_9

    .line 1057
    :cond_20
    const v17, -0x333334

    .line 1058
    .line 1059
    .line 1060
    :goto_9
    move v4, v0

    .line 1061
    :goto_a
    const/16 v10, 0x8

    .line 1062
    .line 1063
    if-ge v4, v10, :cond_22

    .line 1064
    .line 1065
    aget v10, v5, v4

    .line 1066
    .line 1067
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v10

    .line 1071
    if-nez v10, :cond_21

    .line 1072
    .line 1073
    goto :goto_b

    .line 1074
    :cond_21
    new-instance v14, Lo/fk;

    .line 1075
    .line 1076
    move-object/from16 v20, v14

    .line 1077
    .line 1078
    move-object/from16 v21, v5

    .line 1079
    .line 1080
    move-object/from16 v22, v3

    .line 1081
    .line 1082
    move-object/from16 v23, v6

    .line 1083
    .line 1084
    move/from16 v24, v4

    .line 1085
    .line 1086
    move-object/from16 v25, v7

    .line 1087
    .line 1088
    move/from16 v26, v18

    .line 1089
    .line 1090
    move/from16 v27, v17

    .line 1091
    .line 1092
    move-object/from16 v28, v9

    .line 1093
    .line 1094
    invoke-direct/range {v20 .. v28}, Lo/fk;-><init>([ILandroid/view/View;[II[III[I)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    .line 1099
    .line 1100
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 1101
    .line 1102
    goto :goto_a

    .line 1103
    :cond_22
    sget v4, Lo/if;->tv_nav_basic:I

    .line 1104
    .line 1105
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v3

    .line 1109
    check-cast v3, Landroid/widget/TextView;

    .line 1110
    .line 1111
    if-eqz v3, :cond_23

    .line 1112
    .line 1113
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1118
    .line 1119
    .line 1120
    :cond_23
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1121
    .line 1122
    sget v4, Lo/if;->btn_request_launcher:I

    .line 1123
    .line 1124
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v3

    .line 1128
    if-eqz v3, :cond_24

    .line 1129
    .line 1130
    new-instance v4, Lo/uk;

    .line 1131
    .line 1132
    const/16 v5, 0xb

    .line 1133
    .line 1134
    invoke-direct {v4, v1, v5}, Lo/uk;-><init>(Lo/vl;I)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    .line 1139
    .line 1140
    :cond_24
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1141
    .line 1142
    sget v4, Lo/if;->btn_refresh_wallpaper:I

    .line 1143
    .line 1144
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3

    .line 1148
    new-instance v4, Lo/uk;

    .line 1149
    .line 1150
    invoke-direct {v4, v1, v11}, Lo/uk;-><init>(Lo/vl;I)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    .line 1155
    .line 1156
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1157
    .line 1158
    sget v4, Lo/if;->btn_wallpaper_info:I

    .line 1159
    .line 1160
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v3

    .line 1164
    if-eqz v3, :cond_25

    .line 1165
    .line 1166
    new-instance v4, Lo/uk;

    .line 1167
    .line 1168
    const/16 v5, 0xd

    .line 1169
    .line 1170
    invoke-direct {v4, v1, v5}, Lo/uk;-><init>(Lo/vl;I)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    .line 1175
    .line 1176
    :cond_25
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1177
    .line 1178
    sget v4, Lo/if;->switch_force_landscape:I

    .line 1179
    .line 1180
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v3

    .line 1184
    check-cast v3, Landroid/widget/Switch;

    .line 1185
    .line 1186
    iget-object v4, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1187
    .line 1188
    const-string v5, "launcher_prefs"

    .line 1189
    .line 1190
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v4

    .line 1194
    const-string v6, "force_landscape"

    .line 1195
    .line 1196
    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v4

    .line 1200
    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1201
    .line 1202
    .line 1203
    const v4, 0x10100a0

    .line 1204
    .line 1205
    .line 1206
    filled-new-array {v4}, [I

    .line 1207
    .line 1208
    .line 1209
    move-result-object v6

    .line 1210
    new-array v7, v0, [I

    .line 1211
    .line 1212
    filled-new-array {v6, v7}, [[I

    .line 1213
    .line 1214
    .line 1215
    move-result-object v6

    .line 1216
    const v7, -0xb03c09

    .line 1217
    .line 1218
    .line 1219
    const v9, -0x444445

    .line 1220
    .line 1221
    .line 1222
    filled-new-array {v7, v9}, [I

    .line 1223
    .line 1224
    .line 1225
    move-result-object v7

    .line 1226
    const v9, -0xe6892e

    .line 1227
    .line 1228
    .line 1229
    filled-new-array {v9, v8}, [I

    .line 1230
    .line 1231
    .line 1232
    move-result-object v9

    .line 1233
    new-instance v10, Landroid/content/res/ColorStateList;

    .line 1234
    .line 1235
    invoke-direct {v10, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v3, v10}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1239
    .line 1240
    .line 1241
    new-instance v7, Landroid/content/res/ColorStateList;

    .line 1242
    .line 1243
    invoke-direct {v7, v6, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1247
    .line 1248
    .line 1249
    new-instance v6, Lo/zk;

    .line 1250
    .line 1251
    const/4 v7, 0x6

    .line 1252
    invoke-direct {v6, v1, v7}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1259
    .line 1260
    sget v6, Lo/if;->switch_clock:I

    .line 1261
    .line 1262
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    check-cast v3, Landroid/widget/Switch;

    .line 1267
    .line 1268
    iget-object v6, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1269
    .line 1270
    invoke-virtual {v6, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v6

    .line 1274
    const-string v7, "clock_visible"

    .line 1275
    .line 1276
    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v6

    .line 1280
    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1281
    .line 1282
    .line 1283
    filled-new-array {v4}, [I

    .line 1284
    .line 1285
    .line 1286
    move-result-object v4

    .line 1287
    new-array v6, v0, [I

    .line 1288
    .line 1289
    filled-new-array {v4, v6}, [[I

    .line 1290
    .line 1291
    .line 1292
    move-result-object v4

    .line 1293
    const v6, -0xb03c09

    .line 1294
    .line 1295
    .line 1296
    const v7, -0x444445

    .line 1297
    .line 1298
    .line 1299
    filled-new-array {v6, v7}, [I

    .line 1300
    .line 1301
    .line 1302
    move-result-object v6

    .line 1303
    const v7, -0xe6892e

    .line 1304
    .line 1305
    .line 1306
    filled-new-array {v7, v8}, [I

    .line 1307
    .line 1308
    .line 1309
    move-result-object v7

    .line 1310
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1311
    .line 1312
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1316
    .line 1317
    .line 1318
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1319
    .line 1320
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1324
    .line 1325
    .line 1326
    new-instance v8, Lo/zk;

    .line 1327
    .line 1328
    const/4 v9, 0x7

    .line 1329
    invoke-direct {v8, v1, v9}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1333
    .line 1334
    .line 1335
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1336
    .line 1337
    sget v8, Lo/if;->switch_instrument_nav:I

    .line 1338
    .line 1339
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v3

    .line 1343
    check-cast v3, Landroid/widget/Switch;

    .line 1344
    .line 1345
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1346
    .line 1347
    invoke-virtual {v8, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v8

    .line 1351
    const-string v9, "instrument_nav_auto_start"

    .line 1352
    .line 1353
    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v8

    .line 1357
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1358
    .line 1359
    .line 1360
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1361
    .line 1362
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1366
    .line 1367
    .line 1368
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1369
    .line 1370
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1374
    .line 1375
    .line 1376
    new-instance v8, Lo/zk;

    .line 1377
    .line 1378
    const/16 v9, 0x8

    .line 1379
    .line 1380
    invoke-direct {v8, v1, v9}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1384
    .line 1385
    .line 1386
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1387
    .line 1388
    sget v8, Lo/if;->btn_instrument_nav_info:I

    .line 1389
    .line 1390
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    if-eqz v3, :cond_26

    .line 1395
    .line 1396
    new-instance v8, Lo/uk;

    .line 1397
    .line 1398
    const/16 v9, 0xe

    .line 1399
    .line 1400
    invoke-direct {v8, v1, v9}, Lo/uk;-><init>(Lo/vl;I)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1404
    .line 1405
    .line 1406
    :cond_26
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1407
    .line 1408
    sget v8, Lo/if;->switch_oem_statusbar:I

    .line 1409
    .line 1410
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v3

    .line 1414
    check-cast v3, Landroid/widget/Switch;

    .line 1415
    .line 1416
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1417
    .line 1418
    invoke-virtual {v8, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v8

    .line 1422
    const-string v9, "oem_statusbar_enabled"

    .line 1423
    .line 1424
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1425
    .line 1426
    .line 1427
    move-result v8

    .line 1428
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1429
    .line 1430
    .line 1431
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1432
    .line 1433
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1437
    .line 1438
    .line 1439
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1440
    .line 1441
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1445
    .line 1446
    .line 1447
    new-instance v8, Lo/zk;

    .line 1448
    .line 1449
    const/16 v9, 0x9

    .line 1450
    .line 1451
    invoke-direct {v8, v1, v9}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1455
    .line 1456
    .line 1457
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1458
    .line 1459
    sget v8, Lo/if;->switch_oem_navbar:I

    .line 1460
    .line 1461
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v3

    .line 1465
    check-cast v3, Landroid/widget/Switch;

    .line 1466
    .line 1467
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1468
    .line 1469
    invoke-virtual {v8, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v8

    .line 1473
    const-string v9, "oem_navbar_enabled"

    .line 1474
    .line 1475
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v8

    .line 1479
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1480
    .line 1481
    .line 1482
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1483
    .line 1484
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1488
    .line 1489
    .line 1490
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1491
    .line 1492
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v8, Lo/zk;

    .line 1499
    .line 1500
    invoke-direct {v8, v1, v0}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1504
    .line 1505
    .line 1506
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1507
    .line 1508
    sget v8, Lo/if;->switch_oem_real_statusbar:I

    .line 1509
    .line 1510
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v3

    .line 1514
    check-cast v3, Landroid/widget/Switch;

    .line 1515
    .line 1516
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1517
    .line 1518
    invoke-virtual {v8, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v8

    .line 1522
    const-string v9, "oem_real_statusbar_enabled"

    .line 1523
    .line 1524
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v8

    .line 1528
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1529
    .line 1530
    .line 1531
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1532
    .line 1533
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1537
    .line 1538
    .line 1539
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1540
    .line 1541
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1545
    .line 1546
    .line 1547
    new-instance v8, Lo/zk;

    .line 1548
    .line 1549
    invoke-direct {v8, v1, v12}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1553
    .line 1554
    .line 1555
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1556
    .line 1557
    sget v8, Lo/if;->switch_disable_anim:I

    .line 1558
    .line 1559
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v3

    .line 1563
    check-cast v3, Landroid/widget/Switch;

    .line 1564
    .line 1565
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1566
    .line 1567
    invoke-virtual {v8, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v8

    .line 1571
    const-string v9, "disable_animations"

    .line 1572
    .line 1573
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1574
    .line 1575
    .line 1576
    move-result v8

    .line 1577
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1578
    .line 1579
    .line 1580
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1581
    .line 1582
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1586
    .line 1587
    .line 1588
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1589
    .line 1590
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1594
    .line 1595
    .line 1596
    new-instance v8, Lo/zk;

    .line 1597
    .line 1598
    invoke-direct {v8, v1, v13}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1602
    .line 1603
    .line 1604
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1605
    .line 1606
    sget v8, Lo/if;->switch_instrument_music:I

    .line 1607
    .line 1608
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v3

    .line 1612
    check-cast v3, Landroid/widget/Switch;

    .line 1613
    .line 1614
    if-eqz v3, :cond_27

    .line 1615
    .line 1616
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1617
    .line 1618
    invoke-virtual {v8, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v8

    .line 1622
    const-string v9, "instrument_music_enabled"

    .line 1623
    .line 1624
    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v8

    .line 1628
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1629
    .line 1630
    .line 1631
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1632
    .line 1633
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1637
    .line 1638
    .line 1639
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1640
    .line 1641
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1645
    .line 1646
    .line 1647
    new-instance v8, Lo/zk;

    .line 1648
    .line 1649
    const/4 v9, 0x3

    .line 1650
    invoke-direct {v8, v1, v9}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1654
    .line 1655
    .line 1656
    :cond_27
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1657
    .line 1658
    sget v8, Lo/if;->btn_car_model_image:I

    .line 1659
    .line 1660
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v3

    .line 1664
    iget-object v8, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1665
    .line 1666
    sget v9, Lo/if;->iv_car_model_preview:I

    .line 1667
    .line 1668
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v8

    .line 1672
    check-cast v8, Landroid/widget/ImageView;

    .line 1673
    .line 1674
    if-eqz v8, :cond_28

    .line 1675
    .line 1676
    invoke-static {v8}, Lo/oj;->ͽ(Landroid/widget/ImageView;)V

    .line 1677
    .line 1678
    .line 1679
    :cond_28
    if-eqz v3, :cond_29

    .line 1680
    .line 1681
    new-instance v8, Lo/uk;

    .line 1682
    .line 1683
    const/16 v9, 0xa

    .line 1684
    .line 1685
    invoke-direct {v8, v1, v9}, Lo/uk;-><init>(Lo/vl;I)V

    .line 1686
    .line 1687
    .line 1688
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1689
    .line 1690
    .line 1691
    :cond_29
    iget-object v3, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1692
    .line 1693
    sget v8, Lo/if;->switch_glass_blur:I

    .line 1694
    .line 1695
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v3

    .line 1699
    check-cast v3, Landroid/widget/Switch;

    .line 1700
    .line 1701
    if-eqz v3, :cond_2c

    .line 1702
    .line 1703
    iget-object v8, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1704
    .line 1705
    invoke-static {v8}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v8

    .line 1709
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1710
    .line 1711
    .line 1712
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1713
    .line 1714
    invoke-direct {v8, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1718
    .line 1719
    .line 1720
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 1721
    .line 1722
    invoke-direct {v8, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1726
    .line 1727
    .line 1728
    iget-object v8, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1729
    .line 1730
    sget v9, Lo/if;->tv_glass_blur_label:I

    .line 1731
    .line 1732
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v8

    .line 1736
    check-cast v8, Landroid/widget/TextView;

    .line 1737
    .line 1738
    if-eqz v8, :cond_2b

    .line 1739
    .line 1740
    if-eqz v2, :cond_2a

    .line 1741
    .line 1742
    const v2, -0xdededf

    .line 1743
    .line 1744
    .line 1745
    goto :goto_c

    .line 1746
    :cond_2a
    const v2, -0x1f1f20

    .line 1747
    .line 1748
    .line 1749
    :goto_c
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1750
    .line 1751
    .line 1752
    :cond_2b
    new-instance v2, Lo/zk;

    .line 1753
    .line 1754
    const/4 v8, 0x4

    .line 1755
    invoke-direct {v2, v1, v8}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1756
    .line 1757
    .line 1758
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1759
    .line 1760
    .line 1761
    :cond_2c
    iget-object v2, v1, Lo/vl;->ΐ:Landroid/view/View;

    .line 1762
    .line 1763
    sget v3, Lo/if;->switch_pip_enabled:I

    .line 1764
    .line 1765
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v2

    .line 1769
    check-cast v2, Landroid/widget/Switch;

    .line 1770
    .line 1771
    if-eqz v2, :cond_2d

    .line 1772
    .line 1773
    iget-object v3, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 1774
    .line 1775
    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v3

    .line 1779
    const-string v5, "pip_enabled"

    .line 1780
    .line 1781
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v0

    .line 1785
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1786
    .line 1787
    .line 1788
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 1789
    .line 1790
    invoke-direct {v0, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1794
    .line 1795
    .line 1796
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 1797
    .line 1798
    invoke-direct {v0, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1802
    .line 1803
    .line 1804
    new-instance v0, Lo/zk;

    .line 1805
    .line 1806
    const/4 v3, 0x5

    .line 1807
    invoke-direct {v0, v1, v3}, Lo/zk;-><init>(Lo/vl;I)V

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1811
    .line 1812
    .line 1813
    :cond_2d
    iget-object v0, v1, Lo/vl;->ΐ:Landroid/view/View;
    invoke-static {v0}, Lcom/byd/launcher/stability/PolicyControlReadOnly;->configure(Landroid/view/View;)V

    .line 1814
    .line 1815
    iget-object v2, v1, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 1816
    .line 1817
    new-instance v3, Lo/tk;

    .line 1818
    .line 1819
    invoke-direct {v3, v13, v0, v1}, Lo/tk;-><init>(ILandroid/view/View;Lo/vl;)V

    .line 1820
    .line 1821
    .line 1822
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1823
    .line 1824
    .line 1825
    goto :goto_d

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    const-string v2, "Failed to show settings dialog"

    .line 1828
    .line 1829
    invoke-static {v3, v2, v0}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1830
    .line 1831
    .line 1832
    :goto_d
    return-void
.end method

.method public final Ψ()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lo/vl;->Ί:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lo/vl;->Φ:J

    .line 11
    .line 12
    sub-long v2, v0, v2

    .line 13
    .line 14
    const-wide/16 v4, 0x20

    .line 15
    .line 16
    cmp-long v2, v2, v4

    .line 17
    .line 18
    if-gez v2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-wide v0, p0, Lo/vl;->Φ:J

    .line 22
    .line 23
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    sget-object v0, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    .line 60
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    .line 62
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .line 68
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 69
    .line 70
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    int-to-float v4, v4

    .line 75
    int-to-float v1, v1

    .line 76
    div-float v5, v4, v1

    .line 77
    .line 78
    int-to-float v3, v3

    .line 79
    int-to-float v2, v2

    .line 80
    div-float v6, v3, v2

    .line 81
    .line 82
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    mul-float/2addr v1, v5

    .line 87
    sub-float/2addr v1, v4

    .line 88
    const/high16 v4, 0x40000000    # 2.0f

    .line 89
    .line 90
    div-float/2addr v1, v4

    .line 91
    mul-float/2addr v2, v5

    .line 92
    sub-float/2addr v2, v3

    .line 93
    div-float/2addr v2, v4

    .line 94
    const/4 v3, 0x2

    .line 95
    new-array v3, v3, [I

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    move v6, v4

    .line 99
    :goto_0
    iget-object v7, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-ge v6, v7, :cond_6

    .line 106
    .line 107
    iget-object v7, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-nez v7, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    sget v8, Lo/if;->tag_blur_crop_drawable:I

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    instance-of v9, v8, Lo/II;

    .line 123
    .line 124
    if-nez v9, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    check-cast v8, Lo/II;

    .line 128
    .line 129
    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 130
    .line 131
    .line 132
    aget v9, v3, v4

    .line 133
    .line 134
    int-to-float v9, v9

    .line 135
    add-float/2addr v9, v1

    .line 136
    div-float/2addr v9, v5

    .line 137
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    const/4 v10, 0x1

    .line 146
    aget v11, v3, v10

    .line 147
    .line 148
    int-to-float v11, v11

    .line 149
    add-float/2addr v11, v2

    .line 150
    div-float/2addr v11, v5

    .line 151
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    int-to-float v12, v12

    .line 164
    div-float/2addr v12, v5

    .line 165
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    int-to-float v7, v7

    .line 178
    div-float/2addr v7, v5

    .line 179
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-virtual {v8, v9, v11, v12, v7}, Lo/II;->ˋ(IIII)V

    .line 188
    .line 189
    .line 190
    iput-object v0, v8, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    .line 191
    .line 192
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 193
    .line 194
    .line 195
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_6
    :goto_2
    return-void
.end method

.method public final Ω(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lo/vl;->Υ:Z

    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lo/bk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo/bk;-><init>(Lo/vl;ZI)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lo/bk;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p2, p0, Lo/vl;->Ρ:Ljava/lang/String;

    iput-object p3, p0, Lo/vl;->Σ:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/vl;->Τ:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lo/sj;

    const/4 v6, 0x7

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lo/sj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    invoke-virtual {v0}, Lo/sj;->run()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final Ϋ(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lo/vl;->Ά:Z

    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lo/bk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lo/bk;-><init>(Lo/vl;ZI)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lo/bk;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final ά(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v1, Lo/ue;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p2, p1, v2}, Lo/ue;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final έ(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/vl;->ˋ:Ljava/util/HashMap;

    const-string v1, "trunk"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v0, Lo/mk;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ή(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/vl;->ˋ:Ljava/util/HashMap;

    const-string v1, "lock"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v0, Lo/mk;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lo/mk;-><init>(Lo/vl;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ί(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/vl;->ˋ:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v0, Lo/wk;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lo/wk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
