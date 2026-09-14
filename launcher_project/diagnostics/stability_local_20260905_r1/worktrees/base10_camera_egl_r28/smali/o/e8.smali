.class public final Lo/e8;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lo/ak;

.field public final synthetic ˏ:Lcom/byd/launcher/MainActivity;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/MainActivity;Lo/ak;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/e8;->ˏ:Lcom/byd/launcher/MainActivity;

    iput-object p2, p0, Lo/e8;->ˋ:Lo/ak;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_3

    iget-object p1, p0, Lo/e8;->ˏ:Lcom/byd/launcher/MainActivity;

    iget-object v0, p1, Lcom/byd/launcher/MainActivity;->Ͳ:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/byd/launcher/MainActivity;->ʹ:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v1, Lo/h2;

    const/4 v2, 0x4

    iget-object v3, p0, Lo/e8;->ˋ:Lo/ak;

    invoke-direct {v1, p0, v3, v0, v2}, Lo/h2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v1, p1, Lcom/byd/launcher/MainActivity;->ʹ:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/e8;->ˋ:Lo/ak;

    .line 2
    .line 3
    iget-object v1, v0, Lo/ak;->ˋ:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    rem-int v1, p1, v1

    .line 19
    .line 20
    :goto_0
    const-string v2, "launcher_prefs"

    .line 21
    .line 22
    iget-object v4, p0, Lo/e8;->ˏ:Lcom/byd/launcher/MainActivity;

    .line 23
    .line 24
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "wallpaper_pos"

    .line 33
    .line 34
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lo/ak;->Ͳ(I)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/byd/launcher/MainActivity;->Λ:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {v4, v0, p1}, Lcom/byd/launcher/MainActivity;->ͽ(Lo/ak;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lo/ak;->ˋ(I)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, v4, Lcom/byd/launcher/MainActivity;->ˋ:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance v0, Lo/lII;

    .line 58
    .line 59
    const/16 v1, 0x9

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lo/lII;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const-wide/16 v1, 0x12c

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
