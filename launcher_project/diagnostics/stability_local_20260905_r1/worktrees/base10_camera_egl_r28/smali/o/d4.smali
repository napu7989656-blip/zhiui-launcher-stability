.class public final Lo/d4;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final ˋ:Ljava/util/List;

.field public final ˏ:Z

.field public final Ͱ:I

.field public ͱ:Lo/y3;


# direct methods
.method public constructor <init>(IZLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p3, p0, Lo/d4;->ˋ:Ljava/util/List;

    iput-boolean p2, p0, Lo/d4;->ˏ:Z

    iput p1, p0, Lo/d4;->Ͱ:I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/d4;->ˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lo/c4;

    .line 2
    .line 3
    iget-object v0, p0, Lo/d4;->ˋ:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lo/z3;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lo/c4;->ˏ:Landroid/widget/ImageView;

    .line 15
    .line 16
    iget v2, v0, Lo/z3;->Ͱ:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lo/z3;->ˏ:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p1, Lo/c4;->ͱ:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lo/d4;->ˏ:Z

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const v3, -0xdededf

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v3, -0x33000001    # -1.3421772E8f

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean v2, v0, Lo/z3;->ͱ:Z

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move v2, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v2, 0x8

    .line 50
    .line 51
    :goto_1
    iget-object v4, p1, Lo/c4;->Ͱ:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const v2, -0xe6892e

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const v2, -0xd6490a

    .line 63
    .line 64
    .line 65
    :goto_2
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 66
    .line 67
    invoke-virtual {v4, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v2, v0, Lo/z3;->ͱ:Z

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const v2, 0x3f0ccccd    # 0.55f

    .line 78
    .line 79
    .line 80
    :goto_3
    iget-object v4, p1, Lo/c4;->ˋ:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    iget-boolean v2, v0, Lo/z3;->ͱ:Z

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    sget v2, Lo/hf;->qs_tile_bg_on:I

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    if-nez v1, :cond_5

    .line 93
    .line 94
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 95
    .line 96
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 113
    .line 114
    const/high16 v5, 0x41800000    # 16.0f

    .line 115
    .line 116
    mul-float/2addr v3, v5

    .line 117
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 118
    .line 119
    .line 120
    const v3, 0x55ffffff    # 3.518437E13f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    sget v2, Lo/hf;->qs_tile_bg_off:I

    .line 131
    .line 132
    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    .line 134
    .line 135
    :goto_5
    iget v2, p0, Lo/d4;->Ͱ:I

    .line 136
    .line 137
    iget-object v3, p1, Lo/c4;->ˏ:Landroid/widget/ImageView;

    .line 138
    .line 139
    if-lez v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    .line 147
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    int-to-float v2, v2

    .line 153
    const v4, 0x3ea8f5c3    # 0.33f

    .line 154
    .line 155
    .line 156
    mul-float/2addr v2, v4

    .line 157
    float-to-int v2, v2

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 163
    .line 164
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    if-nez v1, :cond_7

    .line 170
    .line 171
    const v1, -0x1f000001

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_7
    const v1, -0xbdbdbe

    .line 176
    .line 177
    .line 178
    :goto_6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 179
    .line 180
    invoke-virtual {v3, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 184
    .line 185
    new-instance v2, Lo/a4;

    .line 186
    .line 187
    invoke-direct {v2, p0, v0, p2}, Lo/a4;-><init>(Lo/d4;Lo/z3;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 194
    .line 195
    new-instance v0, Lo/b4;

    .line 196
    .line 197
    invoke-direct {v0, p0, p1}, Lo/b4;-><init>(Lo/d4;Lo/c4;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    .line 202
    .line 203
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
    new-instance p2, Lo/c4;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lo/c4;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method
