.class public Lcom/byd/launcher/AppLauncherActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static ʹ:Lcom/byd/launcher/AppLauncherActivity;

.field public static volatile Ͷ:Ljava/util/ArrayList;

.field public static volatile ͷ:J

.field public static final ͺ:[Ljava/lang/String;


# instance fields
.field public ˋ:Z

.field public ˏ:Landroidx/viewpager2/widget/ViewPager2;

.field public Ͱ:Landroid/widget/LinearLayout;

.field public ͱ:Landroid/view/View;

.field public final Ͳ:Landroid/os/Handler;

.field public ͳ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.byd.negativescreen"

    const-string v1, "com.android.browser"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byd/launcher/AppLauncherActivity;->ͺ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/launcher/AppLauncherActivity;->ˋ:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    return-void
.end method

.method public static Ͱ()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ͱ(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lo/Ϡ;

    invoke-direct {v7}, Lo/Ϡ;-><init>()V

    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lo/Ϡ;->ˋ:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lo/Ϡ;->ˏ:Landroid/graphics/drawable/Drawable;

    iput-object v6, v7, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v7, Lo/Ϡ;->ͱ:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/byd/launcher/AppLauncherActivity;->ͺ:[Ljava/lang/String;

    move v1, v2

    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_8

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_5

    :cond_2
    :try_start_0
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_6

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_6

    array-length v10, v9

    if-lez v10, :cond_6

    array-length v10, v9

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    iget-boolean v13, v12, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v13, :cond_4

    iget-object v7, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v7, :cond_6

    iget-object v7, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_6
    if-eqz v7, :cond_7

    new-instance v8, Lo/Ϡ;

    invoke-direct {v8}, Lo/Ϡ;-><init>()V

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lo/Ϡ;->ˋ:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lo/Ϡ;->ˏ:Landroid/graphics/drawable/Drawable;

    iput-object v5, v8, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    iput-object v7, v8, Lo/Ϡ;->ͱ:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance p0, Lo/ϐ;

    invoke-direct {p0, v2}, Lo/ϐ;-><init>(I)V

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method


# virtual methods
.method public final finish()V
    .locals 5

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/byd/launcher/NavBarService;->Σ:Ljava/lang/Runnable;

    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v4, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/byd/launcher/NavBarService;->Τ:Ljava/lang/Runnable;

    .line 28
    .line 29
    :cond_1
    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ξ:Z

    .line 30
    .line 31
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Lo/vl;->Σ()V

    .line 36
    .line 37
    .line 38
    :cond_2
    sget-object v3, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-boolean v3, v3, Lcom/byd/launcher/AppLauncherActivity;->ˋ:Z

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move v3, v2

    .line 49
    :goto_0
    if-eqz v3, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const/16 v3, 0x2bc

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/byd/launcher/NavBarService;->ϕ(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 58
    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    invoke-virtual {v3}, Lo/nd;->ͷ()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ί:Lo/nd;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lo/nd;->Έ(Z)V

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    sput-wide v3, Lcom/byd/launcher/NavBarService;->O00:J

    .line 77
    .line 78
    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 79
    .line 80
    if-ne v0, p0, :cond_6

    .line 81
    .line 82
    sput-object v1, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 83
    .line 84
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/byd/launcher/AppLauncherActivity;->ˋ:Z

    .line 88
    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    invoke-static {p0}, Lo/vl;->isAnimDisabled(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    sget v0, Lo/gf;->no_anim:I

    .line 102
    .line 103
    sget v1, Lo/gf;->slide_down_exit:I

    .line 104
    .line 105
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_2
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    sput-object p0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byd/launcher/AppLauncherActivity;->ˋ()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    const/high16 v3, -0x1000000

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    sget p1, Lo/jf;->activity_app_launcher:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v1, Lo/Ψ;

    .line 41
    .line 42
    invoke-direct {v1, p0, v0}, Lo/Ψ;-><init>(Lcom/byd/launcher/AppLauncherActivity;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const v1, 0x1020002

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    move-object v1, p1

    .line 74
    check-cast v1, Landroid/view/ViewGroup;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-lez v2, :cond_0

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    if-nez v1, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-object p1, v1

    .line 92
    :goto_1
    if-nez p1, :cond_2

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_2
    invoke-static {p0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {p0}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_4

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    const v1, -0xf000001

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const/high16 v1, -0x10000000

    .line 112
    .line 113
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_4
    sget-object v2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    .line 118
    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_6

    .line 126
    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    const v3, -0x7f000001

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    const/high16 v3, -0x80000000

    .line 134
    .line 135
    :goto_3
    invoke-static {v2, v3}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_6
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/byd/launcher/MainActivity;->ͷ()V

    .line 152
    .line 153
    .line 154
    :cond_7
    if-eqz v1, :cond_8

    .line 155
    .line 156
    const v1, -0x2f000001

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_8
    const/high16 v1, -0x30000000

    .line 161
    .line 162
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Landroid/os/Handler;

    .line 166
    .line 167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Lo/ag;

    .line 175
    .line 176
    const/4 v3, 0x3

    .line 177
    invoke-direct {v2, v3, p0, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    const-wide/16 v3, 0x1f4

    .line 181
    .line 182
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    .line 184
    .line 185
    :goto_5
    sget p1, Lo/if;->app_pager:I

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 192
    .line 193
    iput-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->ˏ:Landroidx/viewpager2/widget/ViewPager2;

    .line 194
    .line 195
    sget p1, Lo/if;->page_indicator_container:I

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Landroid/widget/LinearLayout;

    .line 202
    .line 203
    iput-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->Ͱ:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    sget p1, Lo/if;->app_loading:I

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 212
    .line 213
    sget p1, Lo/if;->btn_close_launcher:I

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Landroid/widget/ImageButton;

    .line 220
    .line 221
    new-instance v1, Lo/ΰ;

    .line 222
    .line 223
    invoke-direct {v1, v0, p0}, Lo/ΰ;-><init>(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    sget-object p1, Lcom/byd/launcher/AppLauncherActivity;->Ͷ:Ljava/util/ArrayList;

    .line 234
    .line 235
    if-eqz p1, :cond_9

    .line 236
    .line 237
    sget-wide v3, Lcom/byd/launcher/AppLauncherActivity;->ͷ:J

    .line 238
    .line 239
    sub-long/2addr v1, v3

    .line 240
    const-wide/16 v3, 0x7530

    .line 241
    .line 242
    cmp-long p1, v1, v3

    .line 243
    .line 244
    if-gez p1, :cond_9

    .line 245
    .line 246
    sget-object p1, Lcom/byd/launcher/AppLauncherActivity;->Ͷ:Ljava/util/ArrayList;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/byd/launcher/AppLauncherActivity;->ˏ:Landroidx/viewpager2/widget/ViewPager2;

    .line 249
    .line 250
    new-instance v2, Lo/ς;

    .line 251
    .line 252
    invoke-direct {v2, p0, p1, v0}, Lo/ς;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/util/ArrayList;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_9
    iget-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->ͱ:Landroid/view/View;

    .line 260
    .line 261
    if-eqz p1, :cond_a

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    new-instance v1, Ljava/lang/Thread;

    .line 271
    .line 272
    new-instance v2, Lo/Ϗ;

    .line 273
    .line 274
    invoke-direct {v2, p0, p1, v0}, Lo/Ϗ;-><init>(Lcom/byd/launcher/AppLauncherActivity;Landroid/content/Context;I)V

    .line 275
    .line 276
    .line 277
    const-string p1, "AppLoader"

    .line 278
    .line 279
    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 283
    .line 284
    .line 285
    :goto_6
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    sput-object v1, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    :cond_0
    iget-object v0, p0, Lcom/byd/launcher/AppLauncherActivity;->Ͳ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/byd/launcher/AppLauncherActivity;->ˋ()V

    return-void
.end method

.method public final ˋ()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final ˏ(Lo/Ϡ;ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lo/Ϡ;->ͱ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u6295\u5c4f \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lo/Ϡ;->ˋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" \u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/kc;->ˋ(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/ϓ;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lo/ϓ;-><init>(Lcom/byd/launcher/AppLauncherActivity;ILjava/lang/String;Lo/Ϡ;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ScreenCast-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lo/Ϡ;->Ͱ:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final Ͳ(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    div-int/lit8 v0, v0, 0x18

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byd/launcher/AppLauncherActivity;->ˏ:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    new-instance v3, Lo/Ϥ;

    .line 14
    .line 15
    invoke-direct {v3, p0, p1, v0}, Lo/Ϥ;-><init>(Lcom/byd/launcher/AppLauncherActivity;Ljava/util/List;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->ˏ:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->Ͱ:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->Ͱ:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-gt v0, v1, :cond_0

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .line 55
    const/high16 v3, 0x40c00000    # 6.0f

    .line 56
    .line 57
    mul-float/2addr v3, p1

    .line 58
    float-to-int v3, v3

    .line 59
    const/high16 v4, 0x40800000    # 4.0f

    .line 60
    .line 61
    mul-float/2addr p1, v4

    .line 62
    float-to-int p1, p1

    .line 63
    iget-boolean v4, p0, Lcom/byd/launcher/AppLauncherActivity;->ͳ:Z

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    const v5, -0xcccccd

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v5, -0x1

    .line 72
    :goto_0
    if-eqz v4, :cond_2

    .line 73
    .line 74
    const v4, 0x44333333    # 716.8f

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const v4, 0x66ffffff

    .line 79
    .line 80
    .line 81
    :goto_1
    new-array v6, v0, [Landroid/view/View;

    .line 82
    .line 83
    move v7, v2

    .line 84
    :goto_2
    if-ge v7, v0, :cond_4

    .line 85
    .line 86
    new-instance v8, Landroid/view/View;

    .line 87
    .line 88
    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .line 93
    invoke-direct {v9, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, p1, v2, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 103
    .line 104
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 108
    .line 109
    .line 110
    if-nez v7, :cond_3

    .line 111
    .line 112
    move v10, v5

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    move v10, v4

    .line 115
    :goto_3
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    iget-object v9, p0, Lcom/byd/launcher/AppLauncherActivity;->Ͱ:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    aput-object v8, v6, v7

    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/byd/launcher/AppLauncherActivity;->ˏ:Landroidx/viewpager2/widget/ViewPager2;

    .line 132
    .line 133
    new-instance v0, Lo/ϖ;

    .line 134
    .line 135
    invoke-direct {v0, v6, v5, v4}, Lo/ϖ;-><init>([Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 139
    .line 140
    .line 141
    :goto_4
    return-void
.end method
