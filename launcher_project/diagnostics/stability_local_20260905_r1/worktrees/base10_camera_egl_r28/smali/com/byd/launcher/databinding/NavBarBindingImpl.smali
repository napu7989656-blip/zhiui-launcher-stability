.class public Lcom/byd/launcher/databinding/NavBarBindingImpl;
.super Lcom/byd/launcher/databinding/NavBarBinding;
.source "SourceFile"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    sget v1, Lo/if;->iv_nav_blur_bg:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->v_nav_blur_tint:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_back:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_home:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_driver_temp_down:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_driver_temp_up:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_nav_settings:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_nav_camera:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_nav_media:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_nav_app4:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_wind_down:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->layout_wind:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_wind_up:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lo/if;->btn_all_apps:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/byd/launcher/databinding/NavBarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/byd/launcher/databinding/NavBarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 24

    .line 2
    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x5

    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/ImageButton;

    const/16 v5, 0x14

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ImageButton;

    const/16 v6, 0x9

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v7, 0x6

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageButton;

    const/4 v8, 0x1

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ImageButton;

    const/16 v9, 0xb

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageButton;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/ImageButton;

    const/16 v11, 0xa

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageButton;

    const/16 v12, 0x10

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageButton;

    const/16 v13, 0xe

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/ImageButton;

    const/16 v14, 0xf

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/ImageButton;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageButton;

    move-object/from16 v15, v16

    const/16 v16, 0x11

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageButton;

    const/16 v17, 0x3

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x13

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ImageButton;

    const/16 v19, 0x7

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/ImageView;

    const/16 v20, 0x4

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/ImageView;

    const/16 v21, 0x12

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v22, 0x2

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x8

    aget-object v23, p3, v23

    check-cast v23, Landroid/view/View;

    invoke-direct/range {v0 .. v23}, Lcom/byd/launcher/databinding/NavBarBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    iget-object v0, v2, Lcom/byd/launcher/databinding/NavBarBinding;->btnAcPower:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/byd/launcher/databinding/NavBarBinding;->btnCycleMode:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/byd/launcher/databinding/NavBarBinding;->btnDefrost:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/byd/launcher/databinding/NavBarBinding;->btnWindMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/byd/launcher/databinding/NavBarBinding;->ivWindLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/byd/launcher/databinding/NavBarBinding;->tvDriverTemp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/byd/launcher/databinding/NavBarBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeAcState(Lo/Ζ;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    monitor-enter p0

    :try_start_2
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0xc

    if-ne p2, v0, :cond_3

    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/16 v0, 0xb

    if-ne p2, v0, :cond_4

    monitor-enter p0

    :try_start_4
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    if-ne p2, p1, :cond_5

    monitor-enter p0

    :try_start_5
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    monitor-enter p0

    :try_start_6
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return p1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public executeBindings()V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/byd/launcher/databinding/NavBarBinding;->mAcState:Lo/Ζ;

    .line 12
    .line 13
    const-wide/16 v6, 0xff

    .line 14
    .line 15
    and-long/2addr v6, v2

    .line 16
    cmp-long v6, v6, v4

    .line 17
    .line 18
    const-wide/16 v7, 0x91

    .line 19
    .line 20
    const-wide/16 v11, 0x85

    .line 21
    .line 22
    const-wide/16 v13, 0x83

    .line 23
    .line 24
    const-wide/16 v15, 0xc1

    .line 25
    .line 26
    const-wide/16 v17, 0xa1

    .line 27
    .line 28
    if-eqz v6, :cond_8

    .line 29
    .line 30
    and-long v21, v2, v15

    .line 31
    .line 32
    cmp-long v6, v21, v4

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget v6, v0, Lo/Ζ;->ͻ:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v6, 0x0

    .line 42
    :goto_0
    and-long v21, v2, v13

    .line 43
    .line 44
    cmp-long v21, v21, v4

    .line 45
    .line 46
    if-eqz v21, :cond_1

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-boolean v10, v0, Lo/Ζ;->ͷ:Z

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v10, 0x0

    .line 54
    :goto_1
    and-long v22, v2, v11

    .line 55
    .line 56
    cmp-long v22, v22, v4

    .line 57
    .line 58
    if-eqz v22, :cond_4

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget v11, v0, Lo/Ζ;->ͱ:I

    .line 63
    .line 64
    const/16 v12, 0x12

    .line 65
    .line 66
    if-ge v11, v12, :cond_2

    .line 67
    .line 68
    const-string v11, "LO"

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/16 v12, 0x20

    .line 72
    .line 73
    if-le v11, v12, :cond_3

    .line 74
    .line 75
    const-string v11, "Hi"

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v11, "\u00b0C"

    .line 87
    .line 88
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    :goto_2
    move-object/from16 v21, v11

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    const/16 v21, 0x0

    .line 99
    .line 100
    :goto_3
    and-long v11, v2, v17

    .line 101
    .line 102
    cmp-long v11, v11, v4

    .line 103
    .line 104
    if-eqz v11, :cond_5

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget-boolean v11, v0, Lo/Ζ;->Ͱ:Z

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    const/4 v11, 0x0

    .line 112
    :goto_4
    and-long v24, v2, v7

    .line 113
    .line 114
    cmp-long v12, v24, v4

    .line 115
    .line 116
    if-eqz v12, :cond_6

    .line 117
    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    iget v12, v0, Lo/Ζ;->ʹ:I

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_6
    const/4 v12, 0x0

    .line 124
    :goto_5
    const-wide/16 v19, 0x89

    .line 125
    .line 126
    and-long v24, v2, v19

    .line 127
    .line 128
    cmp-long v24, v24, v4

    .line 129
    .line 130
    if-eqz v24, :cond_7

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget v0, v0, Lo/Ζ;->ͳ:I

    .line 135
    .line 136
    move/from16 v26, v12

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_7
    move/from16 v26, v12

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_6
    move v12, v11

    .line 143
    move-object/from16 v11, v21

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_8
    const/4 v0, 0x0

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v10, 0x0

    .line 149
    const/4 v11, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    const/16 v26, 0x0

    .line 152
    .line 153
    :goto_7
    and-long v17, v2, v17

    .line 154
    .line 155
    cmp-long v17, v17, v4

    .line 156
    .line 157
    if-eqz v17, :cond_b

    .line 158
    .line 159
    iget-object v7, v1, Lcom/byd/launcher/databinding/NavBarBinding;->btnAcPower:Landroid/widget/ImageButton;

    .line 160
    .line 161
    sget-object v8, Lo/Ε;->ˋ:[I

    .line 162
    .line 163
    sget v8, Lo/if;->tag_nav_func:I

    .line 164
    .line 165
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    if-eqz v8, :cond_9

    .line 170
    .line 171
    const-string v9, "ac_power"

    .line 172
    .line 173
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_9

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_9
    if-eqz v12, :cond_a

    .line 181
    .line 182
    sget v8, Lo/hf;->ac_bar_power1:I

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_a
    sget v8, Lo/hf;->ac_bar_power0:I

    .line 186
    .line 187
    :goto_8
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v7, v12}, Lo/Ε;->ˋ(Landroid/widget/ImageButton;Z)V

    .line 191
    .line 192
    .line 193
    :cond_b
    :goto_9
    and-long v7, v2, v15

    .line 194
    .line 195
    cmp-long v7, v7, v4

    .line 196
    .line 197
    if-eqz v7, :cond_f

    .line 198
    .line 199
    iget-object v7, v1, Lcom/byd/launcher/databinding/NavBarBinding;->btnCycleMode:Landroid/widget/ImageButton;

    .line 200
    .line 201
    sget-object v8, Lo/Ε;->ˋ:[I

    .line 202
    .line 203
    sget v8, Lo/if;->tag_nav_func:I

    .line 204
    .line 205
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    if-eqz v8, :cond_c

    .line 210
    .line 211
    const-string v9, "cycle_mode"

    .line 212
    .line 213
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-nez v8, :cond_c

    .line 218
    .line 219
    goto :goto_b

    .line 220
    :cond_c
    const/4 v8, 0x1

    .line 221
    if-ne v6, v8, :cond_d

    .line 222
    .line 223
    sget v6, Lo/hf;->control_ac_cycle1:I

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_d
    sget v6, Lo/hf;->control_ac_cycle0:I

    .line 227
    .line 228
    :goto_a
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-static {v6}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_e

    .line 240
    .line 241
    invoke-static {v8}, Lo/ci;->ͱ(Z)I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 246
    .line 247
    invoke-virtual {v7, v6, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 248
    .line 249
    .line 250
    goto :goto_b

    .line 251
    :cond_e
    invoke-virtual {v7}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 252
    .line 253
    .line 254
    :cond_f
    :goto_b
    and-long v6, v2, v13

    .line 255
    .line 256
    cmp-long v6, v6, v4

    .line 257
    .line 258
    if-eqz v6, :cond_12

    .line 259
    .line 260
    iget-object v6, v1, Lcom/byd/launcher/databinding/NavBarBinding;->btnDefrost:Landroid/widget/ImageButton;

    .line 261
    .line 262
    sget-object v7, Lo/Ε;->ˋ:[I

    .line 263
    .line 264
    sget v7, Lo/if;->tag_nav_func:I

    .line 265
    .line 266
    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    if-eqz v7, :cond_10

    .line 271
    .line 272
    const-string v8, "defrost_front"

    .line 273
    .line 274
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-nez v7, :cond_10

    .line 279
    .line 280
    goto :goto_d

    .line 281
    :cond_10
    if-eqz v10, :cond_11

    .line 282
    .line 283
    sget v7, Lo/hf;->ac_bar_front_defrost1:I

    .line 284
    .line 285
    goto :goto_c

    .line 286
    :cond_11
    sget v7, Lo/hf;->ac_bar_front_defrost0:I

    .line 287
    .line 288
    :goto_c
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v6, v10}, Lo/Ε;->ˋ(Landroid/widget/ImageButton;Z)V

    .line 292
    .line 293
    .line 294
    :cond_12
    :goto_d
    const-wide/16 v6, 0x89

    .line 295
    .line 296
    and-long/2addr v6, v2

    .line 297
    cmp-long v6, v6, v4

    .line 298
    .line 299
    const/4 v7, 0x7

    .line 300
    if-eqz v6, :cond_15

    .line 301
    .line 302
    iget-object v6, v1, Lcom/byd/launcher/databinding/NavBarBinding;->btnWindMode:Landroid/widget/ImageView;

    .line 303
    .line 304
    sget-object v8, Lo/Ε;->ˋ:[I

    .line 305
    .line 306
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    const/4 v8, 0x0

    .line 311
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_14

    .line 316
    .line 317
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_13

    .line 326
    .line 327
    sget v0, Lo/hf;->ac_bar_wind_mode_0:I

    .line 328
    .line 329
    goto :goto_e

    .line 330
    :cond_13
    sget v0, Lo/hf;->ac_bar_wind_mode_0_dark:I

    .line 331
    .line 332
    goto :goto_e

    .line 333
    :cond_14
    sget-object v8, Lo/Ε;->ˋ:[I

    .line 334
    .line 335
    aget v0, v8, v0

    .line 336
    .line 337
    :goto_e
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    .line 339
    .line 340
    :cond_15
    const-wide/16 v8, 0x91

    .line 341
    .line 342
    and-long/2addr v8, v2

    .line 343
    cmp-long v0, v8, v4

    .line 344
    .line 345
    if-eqz v0, :cond_18

    .line 346
    .line 347
    iget-object v0, v1, Lcom/byd/launcher/databinding/NavBarBinding;->ivWindLevel:Landroid/widget/ImageView;

    .line 348
    .line 349
    sget-object v6, Lo/Ε;->ˋ:[I

    .line 350
    .line 351
    move/from16 v12, v26

    .line 352
    .line 353
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    const/4 v7, 0x0

    .line 358
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-nez v6, :cond_17

    .line 363
    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-static {v6}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    if-eqz v6, :cond_16

    .line 373
    .line 374
    sget v6, Lo/hf;->ac_bar_wind_level_0_off:I

    .line 375
    .line 376
    goto :goto_f

    .line 377
    :cond_16
    sget v6, Lo/hf;->ac_bar_wind_level_0_off_dark:I

    .line 378
    .line 379
    goto :goto_f

    .line 380
    :cond_17
    sget-object v7, Lo/Ε;->ˏ:[I

    .line 381
    .line 382
    aget v6, v7, v6

    .line 383
    .line 384
    :goto_f
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    .line 386
    .line 387
    :cond_18
    const-wide/16 v6, 0x85

    .line 388
    .line 389
    and-long/2addr v2, v6

    .line 390
    cmp-long v0, v2, v4

    .line 391
    .line 392
    if-eqz v0, :cond_19

    .line 393
    .line 394
    iget-object v0, v1, Lcom/byd/launcher/databinding/NavBarBinding;->tvDriverTemp:Landroid/widget/TextView;

    .line 395
    .line 396
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    :cond_19
    return-void

    .line 400
    :catchall_0
    move-exception v0

    .line 401
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x80

    :try_start_0
    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p2, Lo/Ζ;

    invoke-direct {p0, p2, p3}, Lcom/byd/launcher/databinding/NavBarBindingImpl;->onChangeAcState(Lo/Ζ;I)Z

    move-result p1

    return p1
.end method

.method public setAcState(Lo/Ζ;)V
    .locals 4
    .param p1    # Lo/Ζ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/byd/launcher/databinding/NavBarBinding;->mAcState:Lo/Ζ;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byd/launcher/databinding/NavBarBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    check-cast p2, Lo/Ζ;

    invoke-virtual {p0, p2}, Lcom/byd/launcher/databinding/NavBarBindingImpl;->setAcState(Lo/Ζ;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
