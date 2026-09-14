.class public final Lo/ua;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ua;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ua;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget p1, p0, Lo/ua;->ˋ:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 10
    .line 11
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Lcom/byd/launcher/NavBarService;->ϊ:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    iput-object v0, p1, Lcom/byd/launcher/NavBarService;->ϗ:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    iput-object v0, p1, Lcom/byd/launcher/NavBarService;->ϙ:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ͱ:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Ί()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->δ()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->Ή(Z)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    :goto_0
    iget-object p1, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lo/ff;

    .line 61
    .line 62
    sget-object v0, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 63
    .line 64
    invoke-virtual {p1}, Lo/ff;->Ά()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lo/ua;->ˏ:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lo/ff;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p1, Lo/ff;->ͺ:Z

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
