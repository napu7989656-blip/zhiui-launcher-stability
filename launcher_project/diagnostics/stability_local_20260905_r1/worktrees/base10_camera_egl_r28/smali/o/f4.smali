.class public final Lo/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile stabilityDisposed:Z
.field public final ˋ:Landroid/content/Context;

.field public final ˏ:Landroid/view/WindowManager;

.field public Ͱ:Landroid/view/ViewGroup;

.field public ͱ:Landroid/view/View;

.field public Ͳ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/f4;->Ͳ:Z

    iput-object p1, p0, Lo/f4;->ˋ:Landroid/content/Context;

    iput-object p2, p0, Lo/f4;->ˏ:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final ˋ()V
    .locals 3

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget-boolean v0, p0, Lo/f4;->Ͳ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/f4;->ͱ:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lo/if;->editor_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lo/td;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lo/td;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/f4;->ˏ()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ˏ()V
    .locals 2

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/f4;->ͱ:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/f4;->ˏ:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/f4;->ͱ:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/f4;->Ͳ:Z

    return-void
.end method

.method public final Ͱ(Ljava/lang/String;Ljava/util/ArrayList;Lo/e4;II)V
    .locals 9

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    invoke-static/range {p0 .. p0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    iget-boolean v0, p0, Lo/f4;->Ͳ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/f4;->ˋ:Landroid/content/Context;

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lo/f4;->ˋ:Landroid/content/Context;

    sget v3, Lo/lf;->Theme_NavDemo:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lo/jf;->dialog_item_editor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lo/f4;->ͱ:Landroid/view/View;

    sget v3, Lo/if;->editor_panel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lo/f4;->ˋ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android"

    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    invoke-virtual {v3, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v4, p0, Lo/f4;->ˋ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v4, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1
    iget-object v3, p0, Lo/f4;->ˋ:Landroid/content/Context;

    invoke-static {v3}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    const v3, -0xf000001

    goto :goto_1

    :cond_2
    const/high16 v3, -0x10000000

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 2
    :cond_3
    sget-object v3, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    const v4, -0x7f000001

    goto :goto_2

    :cond_4
    const/high16 v4, -0x80000000

    :goto_2
    invoke-static {v3, v4}, Lo/a2;->ͷ(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/byd/launcher/MainActivity;->ͺ()Lcom/byd/launcher/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/byd/launcher/MainActivity;->ͷ()V

    :cond_6
    if-eqz v0, :cond_7

    const v3, -0x2f000001

    goto :goto_3

    :cond_7
    const/high16 v3, -0x30000000

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lo/w3;

    invoke-direct {v4, v0, v2}, Lo/w3;-><init>(ZLandroid/view/View;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_8
    :goto_4
    iget-object v3, p0, Lo/f4;->ͱ:Landroid/view/View;

    sget v4, Lo/if;->editor_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    if-eqz v0, :cond_9

    const v4, -0xdededf

    goto :goto_5

    :cond_9
    move v4, p1

    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lo/f4;->ͱ:Landroid/view/View;

    sget v4, Lo/if;->tv_editor_hint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_b

    if-eqz v0, :cond_a

    const v4, 0x66212121

    goto :goto_6

    :cond_a
    const v4, -0x66000001

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v3, p0, Lo/f4;->ͱ:Landroid/view/View;

    sget v4, Lo/if;->rv_editor_items:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, v1, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p5, Lo/d4;

    invoke-direct {p5, p4, v0, p2}, Lo/d4;-><init>(IZLjava/util/ArrayList;)V

    invoke-virtual {v3, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p4, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lo/x3;

    invoke-direct {v1, p2, p5}, Lo/x3;-><init>(Ljava/util/ArrayList;Lo/d4;)V

    invoke-direct {p4, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p4, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v1, Lo/v5;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p4}, Lo/v5;-><init>(ILjava/lang/Object;)V

    .line 5
    iput-object v1, p5, Lo/d4;->ͱ:Lo/y3;

    .line 6
    iget-object p4, p0, Lo/f4;->ͱ:Landroid/view/View;

    sget p5, Lo/if;->btn_editor_done:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const-string p5, "\u5b8c\u6210"

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_c

    const p5, -0xe6892e

    goto :goto_7

    :cond_c
    const p5, -0xd6490a

    :goto_7
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p5, Lo/pi;

    const/4 v0, 0x1

    invoke-direct {p5, p0, p2, v0, p3}, Lo/pi;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :try_start_0
    iget-object p2, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    iget-object p3, p0, Lo/f4;->ͱ:Landroid/view/View;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_d
    const/16 v6, 0x7f0

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v7, 0x20

    const/4 v8, -0x3

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const p2, 0x800033

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p2, p0, Lo/f4;->ˏ:Landroid/view/WindowManager;

    iget-object p3, p0, Lo/f4;->ͱ:Landroid/view/View;

    invoke-interface {p2, p3, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    iput-boolean v0, p0, Lo/f4;->Ͳ:Z

    if-eqz v2, :cond_e

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    const-string p2, "ItemEditor"

    const-string p3, "Failed to show editor"

    invoke-static {p2, p3, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_e
    :goto_9
    return-void
.end method

.method public final stabilityDispose()Z
    .locals 4
    const/4 v0, 0x1
    iput-boolean v0, p0, Lo/f4;->stabilityDisposed:Z
    const/4 v0, 0x0
    iput-boolean v0, p0, Lo/f4;->Ͳ:Z
    iget-object v1, p0, Lo/f4;->ˏ:Landroid/view/WindowManager;
    iget-object v2, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;
    iget-object v3, p0, Lo/f4;->ͱ:Landroid/view/View;
    invoke-static {v1, v2, v3}, Lcom/byd/launcher/stability/QuickSettingsResources;->disposePanel(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :editor_retained
    iput-object v0, p0, Lo/f4;->ͱ:Landroid/view/View;
    iput-object v0, p0, Lo/f4;->Ͱ:Landroid/view/ViewGroup;
    :editor_retained
    return v1
.end method
