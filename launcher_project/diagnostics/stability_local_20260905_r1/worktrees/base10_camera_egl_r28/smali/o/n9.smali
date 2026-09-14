.class public final synthetic Lo/n9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lo/n9;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/n9;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo/n9;->Ͱ:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 25

    move-object/from16 v1, p0

    iget v0, v1, Lo/n9;->Ͱ:I

    iget v2, v1, Lo/n9;->ˋ:I

    const/4 v3, 0x3

    const-string v4, "home"

    const-string v5, ""

    const-string v6, "func:"

    iget-object v7, v1, Lo/n9;->ˏ:Ljava/lang/Object;

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 1
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    return v8

    .line 2
    :pswitch_1
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 3
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    return v8

    .line 4
    :pswitch_2
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 5
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->Χ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7}, Lcom/byd/launcher/NavBarService;->έ()V

    invoke-virtual {v7, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    :goto_0
    return v8

    .line 6
    :pswitch_3
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 7
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->Χ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Lcom/byd/launcher/NavBarService;->έ()V

    invoke-virtual {v7, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    :goto_1
    return v8

    .line 8
    :pswitch_4
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 9
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->Χ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Lcom/byd/launcher/NavBarService;->έ()V

    invoke-virtual {v7, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    :goto_2
    return v8

    .line 10
    :pswitch_5
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 11
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->Χ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Lcom/byd/launcher/NavBarService;->έ()V

    invoke-virtual {v7, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    :goto_3
    return v8

    .line 12
    :pswitch_6
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 13
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->Χ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lcom/byd/launcher/NavBarService;->έ()V

    invoke-virtual {v7, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    :goto_4
    return v8

    .line 14
    :pswitch_7
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 15
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    return v8

    .line 16
    :pswitch_8
    check-cast v7, Lcom/byd/launcher/NavBarService;

    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 17
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->Χ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Lcom/byd/launcher/NavBarService;->έ()V

    invoke-virtual {v7, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v7, v0}, Lcom/byd/launcher/NavBarService;->ϟ(I)V

    :goto_5
    return v8

    .line 18
    :goto_6
    move-object v9, v7

    check-cast v9, Lo/vl;

    .line 19
    iget-object v10, v9, Lo/vl;->ˏ:Landroid/content/Context;

    invoke-static {v10, v0}, Lo/vl;->Β(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    if-nez v0, :cond_6

    move v2, v8

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v10, v2}, Lo/vl;->Β(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v2, -0x1

    goto :goto_8

    :cond_7
    const v2, -0xe1e1e2

    :goto_8
    if-eqz v14, :cond_8

    const/high16 v3, -0x1000000

    move v7, v3

    goto :goto_9

    :cond_8
    const/4 v7, -0x1

    :goto_9
    if-eqz v14, :cond_9

    const/high16 v3, 0x1f000000

    goto :goto_a

    :cond_9
    const v3, 0x1fffffff

    :goto_a
    move v6, v3

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41900000    # 18.0f

    mul-float/2addr v3, v5

    .line 20
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 21
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v5

    float-to-int v15, v3

    invoke-virtual {v4, v2, v2, v2, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "\u9009\u62e9\u8f66\u63a7\u63a7\u4ef6\uff08\u69fd\u4f4d "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\uff09"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v16, 0x43b40000    # 360.0f

    mul-float v8, v5, v16

    float-to-int v8, v8

    const/4 v1, -0x1

    invoke-direct {v3, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/view/View;

    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    move-object/from16 v16, v3

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x6

    move-object/from16 v17, v4

    if-ge v2, v3, :cond_10

    aget-object v3, v1, v2

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v20, 0x41e00000    # 28.0f

    move/from16 v21, v2

    mul-float v2, v5, v20

    float-to-int v2, v2

    move/from16 v20, v5

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v3, Lo/ul;->Ͳ:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v14, :cond_a

    const v2, -0xcccccd

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_a
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, v3, Lo/ul;->ˏ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v23, v6

    move/from16 v18, v7

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0xe6892e

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v3, Lo/ul;->ˋ:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "\u2713 \u5f53\u524d"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_b
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "\u5df2\u7528\u4e8e\u53e6\u4e00\u69fd\u4f4d"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v14, :cond_c

    const v6, -0x666667

    goto :goto_c

    :cond_c
    const v6, -0x99999a

    :goto_c
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    :goto_d
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_f

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_f
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v7, Lo/jk;

    move-object v2, v7

    move-object/from16 v6, v16

    move-object/from16 v16, v3

    move-object v3, v9

    move-object/from16 v5, v17

    move-object/from16 v17, v11

    move-object v11, v4

    move v4, v1

    move-object v1, v5

    move v5, v0

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v16

    move-object/from16 v24, v13

    move/from16 v16, v18

    move-object v13, v7

    move-object/from16 v7, v23

    invoke-direct/range {v2 .. v7}, Lo/jk;-><init>(Lo/vl;ZILo/ul;[Landroid/view/View;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v21, 0x1

    move v6, v0

    move-object v4, v1

    move/from16 v7, v16

    move-object/from16 v11, v17

    move-object/from16 v1, v19

    move/from16 v5, v20

    move/from16 v0, v22

    move-object/from16 v16, v23

    move-object/from16 v13, v24

    goto/16 :goto_b

    :cond_10
    move-object/from16 v23, v16

    move-object/from16 v1, v17

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x66000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v8, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lo/Ϙ;

    const/16 v4, 0xc

    move-object/from16 v5, v23

    invoke-direct {v2, v4, v9, v5}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lo/al;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lo/al;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    aput-object v0, v5, v1

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x7f0

    const/16 v14, 0x20

    const/4 v15, -0x3

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :try_start_0
    iget-object v2, v9, Lo/vl;->Ͱ:Landroid/view/WindowManager;

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    const-string v1, "WidgetBarMgr"

    const-string v2, "show vehicle slot chooser failed"

    invoke-static {v1, v2, v0}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_f
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
