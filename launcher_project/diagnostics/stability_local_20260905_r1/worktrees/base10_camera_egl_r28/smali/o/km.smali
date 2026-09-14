.class public final Lo/km;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# static fields
.field public static final ʹ:[Ljava/lang/String;

.field public static Ͷ:Landroid/graphics/drawable/Drawable;

.field public static ͷ:Z


# instance fields
.field public final ˋ:Ljava/util/ArrayList;

.field public ˏ:Z

.field public Ͱ:Lo/fm;

.field public ͱ:I

.field public Ͳ:Z

.field public ͳ:Lo/em;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "com.netease.cloudmusic.iot"

    const-string v1, "com.netease.cloudmusic.auto"

    const-string v2, "com.netease.cloudmusic"

    const-string v3, "com.kugou.android.auto"

    const-string v4, "com.kugou.android"

    const-string v5, "com.luna.music.car"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/km;->ʹ:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lo/km;->ͷ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/km;->ˋ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/km;->ˏ:Z

    iput v0, p0, Lo/km;->ͱ:I

    iput-boolean v0, p0, Lo/km;->Ͳ:Z

    return-void
.end method

.method public static ˏ(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    sget-boolean v0, Lo/km;->ͷ:Z

    if-eqz v0, :cond_0

    sget-object p0, Lo/km;->Ͷ:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lo/km;->ͷ:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/hf;->widget_music_cover_default:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lo/km;->Ͷ:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lo/km;->ʹ:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Lo/km;->Ͱ(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    sput-object v3, Lo/km;->Ͷ:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lo/km;->Ͷ:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static Ͱ(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x80

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v1, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v0, v0

    const v4, 0x3e23d70a    # 0.16f

    mul-float/2addr v4, v0

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v5, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/km;->ˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lo/mm;

    .line 8
    .line 9
    iget p1, p1, Lo/mm;->Ͱ:I

    .line 10
    .line 11
    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1
    iget v0, p0, Lo/km;->ͱ:I

    if-lez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lo/km;->ͱ:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lo/km;->ˋ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/mm;

    iget-boolean v0, p0, Lo/km;->Ͳ:Z

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const v0, 0x66ffffff

    goto :goto_0

    :cond_1
    const/high16 v0, 0x66000000

    .line 4
    :goto_0
    new-instance v3, Lo/II;

    invoke-direct {v3, v1, v0, v2}, Lo/II;-><init>(Landroid/graphics/Bitmap;IF)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lo/if;->tag_blur_crop_drawable:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    const/high16 v0, -0x1000000

    :goto_1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lo/if;->tag_blur_crop_drawable:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_2
    iget-boolean v0, p0, Lo/km;->Ͳ:Z

    instance-of v1, p1, Lo/xl;

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lo/ci;->ˋ(Landroid/view/View;Z)V

    :cond_4
    instance-of v1, p1, Lo/zl;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lo/zl;

    iget-object v5, v1, Lo/zl;->ˋ:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-boolean v6, p0, Lo/km;->ˏ:Z

    if-eqz v6, :cond_6

    .line 5
    iget v6, p2, Lo/mm;->Ͱ:I

    const/16 v7, 0x63

    if-eq v6, v7, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    if-eqz v6, :cond_6

    move v6, v2

    goto :goto_4

    :cond_6
    const/16 v6, 0x8

    .line 6
    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lo/zl;->ˋ:Landroid/widget/ImageView;

    new-instance v6, Lo/Ϙ;

    const/16 v7, 0xd

    invoke-direct {v6, v7, p0, p1}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    new-instance v6, Lo/oe;

    invoke-direct {v6, v3}, Lo/oe;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lo/Ϙ;

    const/16 v7, 0xe

    invoke-direct {v6, v7, p0, p2}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lo/wl;

    invoke-direct {v5, p0, p2, p1}, Lo/wl;-><init>(Lo/km;Lo/mm;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_8
    instance-of v1, p1, Lo/cm;

    const/4 v5, 0x2

    if-eqz v1, :cond_c

    move-object v1, p1

    check-cast v1, Lo/cm;

    iget-object v6, v1, Lo/cm;->ˏ:Landroid/view/View;

    iget-object v1, v1, Lo/cm;->Ͱ:Landroid/view/View;

    filled-new-array {v6, v1}, [Landroid/view/View;

    move-result-object v1

    move v6, v2

    :goto_5
    if-ge v6, v5, :cond_c

    aget-object v7, v1, v6

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_b

    check-cast v7, Landroid/view/ViewGroup;

    move v8, v2

    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-static {v4}, Lo/ci;->ͱ(Z)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    instance-of v1, p1, Lo/dm;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Lo/dm;

    iget-object v6, v1, Lo/dm;->ʹ:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    :try_start_0
    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 9
    invoke-static {v6}, Lo/km;->ˏ(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 10
    iget-object v7, v1, Lo/dm;->ʹ:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v1, Lo/dm;->ʹ:Landroid/widget/ImageView;

    const-string v7, "default_set"

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_d
    iget-object v6, v1, Lo/dm;->ͱ:Landroid/widget/ImageView;

    iget-object v7, v1, Lo/dm;->Ͳ:Landroid/widget/ImageView;

    iget-object v1, v1, Lo/dm;->ͳ:Landroid/widget/ImageView;

    filled-new-array {v6, v7, v1}, [Landroid/widget/ImageView;

    move-result-object v1

    move v6, v2

    :goto_8
    if-ge v6, v3, :cond_10

    aget-object v7, v1, v6

    if-eqz v7, :cond_f

    if-eqz v0, :cond_e

    invoke-static {v4}, Lo/ci;->ͱ(Z)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_f
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_10
    instance-of v1, p1, Lo/yl;

    if-eqz v1, :cond_11

    move-object v1, p1

    check-cast v1, Lo/yl;

    iget-object v6, v1, Lo/yl;->Ͱ:Landroid/widget/TextView;

    .line 11
    iget-object v7, p2, Lo/mm;->ͱ:Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_1
    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v1, Lo/yl;->ˏ:Landroid/widget/ImageView;

    .line 13
    iget-object p2, p2, Lo/mm;->Ͳ:Ljava/lang/String;

    .line 14
    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    iget-object p2, v1, Lo/yl;->ˏ:Landroid/widget/ImageView;

    sget v1, Lo/hf;->ic_widget_add:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    :goto_a
    instance-of p2, p1, Lo/xl;

    if-eqz p2, :cond_12

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    new-instance v1, Lo/oe;

    invoke-direct {v1, v3}, Lo/oe;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lo/ΰ;

    const/4 v3, 0x4

    invoke-direct {v1, v3, p0}, Lo/ΰ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    instance-of p2, p1, Lo/jm;

    if-eqz p2, :cond_16

    check-cast p1, Lo/jm;

    iget-object p2, p1, Lo/jm;->ͱ:Landroid/view/View;

    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lo/oj;->ͽ(Landroid/widget/ImageView;)V

    :cond_13
    iget-object p2, p1, Lo/jm;->Ͳ:Landroid/widget/ImageView;

    iget-object p1, p1, Lo/jm;->ͳ:Landroid/widget/ImageView;

    filled-new-array {p2, p1}, [Landroid/widget/ImageView;

    move-result-object p1

    :goto_b
    if-ge v2, v5, :cond_16

    aget-object p2, p1, v2

    if-eqz p2, :cond_15

    if-eqz v0, :cond_14

    invoke-static {v4}, Lo/ci;->ͱ(Z)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_c

    :cond_14
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_15
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "blur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lo/if;->tag_blur_crop_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lo/II;

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    check-cast v0, Lo/II;

    .line 19
    iput-object v1, v0, Lo/II;->ˋ:Landroid/graphics/Bitmap;

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_1
    const-string v1, "theme"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lo/if;->tag_blur_crop_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    instance-of v1, v3, Lo/II;

    const v4, 0x66ffffff

    const/high16 v5, 0x66000000

    if-eqz v1, :cond_3

    check-cast v3, Lo/II;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 22
    :goto_1
    iput v4, v3, Lo/II;->Ͷ:I

    .line 23
    iget-object v0, v3, Lo/II;->Ͱ:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_4

    .line 24
    :cond_3
    sget-object v1, Lo/ak;->ͺ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    .line 25
    :goto_2
    new-instance v0, Lo/II;

    invoke-direct {v0, v1, v4, v2}, Lo/II;-><init>(Landroid/graphics/Bitmap;IF)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lo/if;->tag_blur_crop_drawable:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_3

    :cond_6
    const/high16 v0, -0x1000000

    :goto_3
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lo/if;->tag_blur_crop_drawable:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_4
    instance-of v0, p1, Lo/xl;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lo/km;->Ͳ:Z

    invoke-static {v0, v1}, Lo/ci;->ˋ(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "editMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lo/zl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/zl;

    iget-object v1, p0, Lo/km;->ˋ:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/mm;

    iget-object v0, v0, Lo/zl;->ˋ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lo/km;->ˏ:Z

    if-eqz v2, :cond_9

    .line 26
    iget v1, v1, Lo/mm;->Ͱ:I

    const/16 v2, 0x63

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    move v1, v3

    :goto_5
    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/16 v3, 0x8

    .line 27
    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p0, p1, p2}, Lo/km;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0xb

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lo/xl;

    sget v1, Lo/jf;->widget_card_add:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/xl;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_0
    new-instance p2, Lo/hm;

    sget v1, Lo/jf;->widget_card_trip:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/hm;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lo/yl;

    sget v1, Lo/jf;->widget_card_app:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/yl;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_2
    new-instance p2, Lo/gm;

    sget v1, Lo/jf;->widget_card_settings:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/gm;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_3
    new-instance p2, Lo/im;

    sget v1, Lo/jf;->widget_card_tyre:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/im;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_4
    new-instance p2, Lo/jm;

    sget v1, Lo/jf;->widget_card_vehicle:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/jm;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_5
    new-instance p2, Lo/dm;

    sget v1, Lo/jf;->widget_card_music:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/dm;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_6
    new-instance p2, Lo/cm;

    sget v1, Lo/jf;->widget_card_map:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/cm;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lo/am;

    sget v1, Lo/jf;->widget_card_environment:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/am;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lo/bm;

    sget v1, Lo/jf;->widget_card_launcher:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/bm;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lo/km;->ͳ:Lo/em;

    if-eqz v0, :cond_0

    check-cast v0, Lo/v5;

    iget-object v0, v0, Lo/v5;->ˏ:Ljava/lang/Object;

    check-cast v0, Lo/vl;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    invoke-virtual {v0, p1}, Lo/vl;->ʹ(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final ˋ(Lo/mm;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lo/mm;

    .line 19
    .line 20
    iget v3, v3, Lo/mm;->Ͱ:I

    .line 21
    .line 22
    const/16 v4, 0x63

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final ͱ(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lo/km;->ˏ:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    iput-boolean p1, p0, Lo/km;->ˏ:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lo/km;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "editMode"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lo/km;->Ͱ:Lo/fm;

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    check-cast v0, Lo/fl;

    .line 22
    .line 23
    iget-object v1, v0, Lo/fl;->ˋ:Lo/vl;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lo/fl;->ˋ:Lo/vl;

    .line 29
    .line 30
    invoke-virtual {v1}, Lo/vl;->ͳ()V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v3, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v4, Lo/m9;

    .line 40
    .line 41
    const/16 v5, 0x18

    .line 42
    .line 43
    invoke-direct {v4, v1, v5}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 v1, 0x1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object v3, v0, Lo/fl;->ˋ:Lo/vl;

    .line 53
    .line 54
    iget-object v4, v3, Lo/vl;->Ό:Landroid/view/View;

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    move v4, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v4, v2

    .line 61
    :goto_0
    if-nez v4, :cond_2

    .line 62
    .line 63
    invoke-static {v3}, Lo/vl;->Ͱ(Lo/vl;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-nez p1, :cond_4

    .line 68
    .line 69
    iget-object p1, v0, Lo/fl;->ˋ:Lo/vl;

    .line 70
    .line 71
    iget-object v0, p1, Lo/vl;->Ό:Landroid/view/View;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    move v2, v1

    .line 76
    :cond_3
    if-eqz v2, :cond_4

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-boolean v0, p1, Lo/vl;->Ώ:Z

    .line 81
    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    iput-boolean v1, p1, Lo/vl;->Ώ:Z

    .line 85
    .line 86
    iget-object v0, p1, Lo/vl;->Ό:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lo/vl;->ͱ(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
.end method
