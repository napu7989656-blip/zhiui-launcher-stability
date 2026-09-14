.class public final Lo/ub;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/List;

.field public final ˏ:Z

.field public final Ͱ:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLo/u9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lo/ub;->ˋ:Ljava/util/List;

    iput-boolean p2, p0, Lo/ub;->ˏ:Z

    iput-object p3, p0, Lo/ub;->Ͱ:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ub;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lo/tb;

    .line 2
    .line 3
    iget-object v0, p0, Lo/ub;->ˋ:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lo/sb;

    .line 10
    .line 11
    iget-object v0, p1, Lo/tb;->ˋ:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v1, p2, Lo/sb;->Ͱ:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lo/tb;->ˋ:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lo/tb;->Ͱ:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v2, p2, Lo/sb;->ˏ:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lo/ub;->ˏ:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const v2, -0xdededf

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, -0x1

    .line 39
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    const/high16 v3, 0x41400000    # 12.0f

    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 49
    .line 50
    .line 51
    const/16 v2, 0x11

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Lo/tb;->ͱ:Landroid/view/View;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .line 74
    const/high16 v3, 0x42600000    # 56.0f

    .line 75
    .line 76
    mul-float/2addr v3, v2

    .line 77
    float-to-int v3, v3

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    .line 84
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    const/high16 v0, 0x42000000    # 32.0f

    .line 90
    .line 91
    mul-float/2addr v0, v2

    .line 92
    float-to-int v0, v0

    .line 93
    add-int/2addr v0, v3

    .line 94
    const/high16 v4, 0x42280000    # 42.0f

    .line 95
    .line 96
    mul-float/2addr v2, v4

    .line 97
    float-to-int v2, v2

    .line 98
    add-int/2addr v3, v2

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p1, Lo/tb;->ˏ:Landroid/widget/ImageView;

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 118
    .line 119
    new-instance v0, Lo/Ϙ;

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-direct {v0, v1, p0, p2}, Lo/Ϙ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
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
    new-instance p2, Lo/tb;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lo/tb;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method
