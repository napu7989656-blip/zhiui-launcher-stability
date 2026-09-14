.class public final synthetic Lo/lk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Z

.field public final synthetic Ͱ:Lo/vl;

.field public final synthetic ͱ:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic Ͳ:Landroid/widget/LinearLayout;

.field public final synthetic ͳ:Ljava/util/List;

.field public final synthetic Ͷ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lo/vl;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lk;->Ͱ:Lo/vl;

    iput-object p2, p0, Lo/lk;->ͱ:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lo/lk;->Ͳ:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lo/lk;->ͳ:Ljava/util/List;

    iput-boolean p5, p0, Lo/lk;->ʹ:Z

    iput-object p6, p0, Lo/lk;->Ͷ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lo/lk;->Ͱ:Lo/vl;

    .line 2
    .line 3
    iget-object v1, v0, Lo/vl;->Ό:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lo/lk;->ͳ:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, 0x18

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    sub-int/2addr v2, v3

    .line 19
    div-int/lit8 v2, v2, 0x18

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    move v2, v3

    .line 24
    :cond_1
    new-instance v4, Lo/nl;

    .line 25
    .line 26
    iget-object v5, p0, Lo/lk;->Ͷ:Landroid/view/View;

    .line 27
    .line 28
    invoke-direct {v4, v0, v1, v5, v2}, Lo/nl;-><init>(Lo/vl;Ljava/util/List;Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lo/lk;->ͱ:Landroidx/viewpager2/widget/ViewPager2;

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lo/lk;->Ͳ:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    .line 43
    .line 44
    if-gt v2, v3, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_2
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lo/vl;->ˏ:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 67
    .line 68
    const/high16 v7, 0x40c00000    # 6.0f

    .line 69
    .line 70
    mul-float/2addr v7, v6

    .line 71
    float-to-int v7, v7

    .line 72
    const/high16 v8, 0x40800000    # 4.0f

    .line 73
    .line 74
    mul-float/2addr v6, v8

    .line 75
    float-to-int v6, v6

    .line 76
    iget-boolean v8, p0, Lo/lk;->ʹ:Z

    .line 77
    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    const v9, -0xcccccd

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/4 v9, -0x1

    .line 85
    :goto_0
    if-eqz v8, :cond_4

    .line 86
    .line 87
    const v8, 0x44333333    # 716.8f

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const v8, 0x66ffffff

    .line 92
    .line 93
    .line 94
    :goto_1
    new-array v10, v2, [Landroid/view/View;

    .line 95
    .line 96
    move v11, v5

    .line 97
    :goto_2
    if-ge v11, v2, :cond_6

    .line 98
    .line 99
    new-instance v12, Landroid/view/View;

    .line 100
    .line 101
    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .line 106
    invoke-direct {v13, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13, v6, v5, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 116
    .line 117
    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 121
    .line 122
    .line 123
    if-nez v11, :cond_5

    .line 124
    .line 125
    move v14, v9

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    move v14, v8

    .line 128
    :goto_3
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    aput-object v12, v10, v11

    .line 138
    .line 139
    add-int/lit8 v11, v11, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    new-instance v0, Lo/ol;

    .line 143
    .line 144
    invoke-direct {v0, v10, v9, v8}, Lo/ol;-><init>([Landroid/view/View;II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 148
    .line 149
    .line 150
    :goto_4
    return-void
.end method
