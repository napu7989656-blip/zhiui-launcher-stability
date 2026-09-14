.class public final Lo/xb;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/List;

.field public final ˏ:Z

.field public final Ͱ:Ljava/util/function/Consumer;

.field public final ͱ:I

.field public final synthetic Ͳ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;Ljava/util/ArrayList;ZLo/u9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/xb;->Ͳ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lo/xb;->ˋ:Ljava/util/List;

    iput-boolean p3, p0, Lo/xb;->ˏ:Z

    iput-object p4, p0, Lo/xb;->Ͱ:Ljava/util/function/Consumer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget p1, p1, Lcom/byd/launcher/NavBarService;->ͺ:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    const/high16 p3, 0x40800000    # 4.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lo/xb;->ͱ:I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/xb;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lo/wb;

    .line 2
    .line 3
    iget-object v0, p0, Lo/xb;->ˋ:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lo/vb;

    .line 10
    .line 11
    iget-object v0, p1, Lo/wb;->ˋ:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget v1, p2, Lo/vb;->Ͱ:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lo/wb;->Ͱ:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p2, Lo/vb;->ˏ:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lo/xb;->ˏ:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const v2, -0xdededf

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const v2, -0x33000001    # -1.3421772E8f

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lo/wb;->ˋ:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget v3, p0, Lo/xb;->ͱ:I

    .line 46
    .line 47
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    .line 49
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 55
    .line 56
    iget-object v2, p0, Lo/xb;->Ͳ:Lcom/byd/launcher/NavBarService;

    .line 57
    .line 58
    const/16 v4, 0x28

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lcom/byd/launcher/NavBarService;->Ι(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v3

    .line 65
    iget-object v3, p1, Lo/wb;->ͱ:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    .line 73
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 81
    .line 82
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 100
    .line 101
    const/high16 v4, 0x41800000    # 16.0f

    .line 102
    .line 103
    mul-float/2addr v2, v4

    .line 104
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 105
    .line 106
    .line 107
    const v2, 0x55ffffff    # 3.518437E13f

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    const v1, -0x1f000001

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    sget v1, Lo/hf;->qs_tile_bg_on:I

    .line 121
    .line 122
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    .line 124
    .line 125
    const v1, -0xbdbdbe

    .line 126
    .line 127
    .line 128
    :goto_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p1, Lo/wb;->ˏ:Landroid/widget/ImageView;

    .line 134
    .line 135
    const/16 v1, 0x8

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 141
    .line 142
    new-instance v0, Lo/Ϙ;

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    invoke-direct {v0, v1, p0, p2}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget v0, Lo/jf;->item_editor_grid:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lo/wb;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lo/wb;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method
