.class public final Lo/ze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public stabilityObserver:Landroid/view/ViewTreeObserver;
.field public final synthetic ˋ:Landroid/widget/GridLayout;

.field public final synthetic ˏ:Lo/ff;


# direct methods
.method public constructor <init>(Lo/ff;Landroid/widget/GridLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ze;->ˏ:Lo/ff;

    iput-object p2, p0, Lo/ze;->ˋ:Landroid/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 10

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ze;->ˏ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    invoke-virtual/range {p0 .. p0}, Lo/ze;->stabilityRelease()Z
    return-void
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ze;->ˋ:Landroid/widget/GridLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x5

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lo/ze;->ˏ:Lo/ff;

    .line 31
    .line 32
    iget v4, v3, Lo/ff;->Ε:I

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget-object v4, v3, Lo/ff;->ˋ:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .line 48
    const/high16 v5, 0x41000000    # 8.0f

    .line 49
    .line 50
    mul-float/2addr v4, v5

    .line 51
    float-to-int v4, v4

    .line 52
    iput v4, v3, Lo/ff;->Ε:I

    .line 53
    .line 54
    :cond_2
    iget v4, v3, Lo/ff;->Ε:I

    .line 55
    .line 56
    mul-int/lit8 v4, v4, 0x2

    .line 57
    .line 58
    mul-int/lit8 v5, v2, 0x2

    .line 59
    .line 60
    add-int/2addr v5, v4

    .line 61
    sget v6, Lo/if;->qs_volume_slider:I

    .line 62
    .line 63
    sget v7, Lo/if;->qs_brightness_slider:I

    .line 64
    .line 65
    sget v8, Lo/if;->qs_instrument_brightness_slider:I

    .line 66
    .line 67
    sget v9, Lo/if;->qs_nav_volume_slider:I

    .line 68
    .line 69
    filled-new-array {v6, v7, v8, v9}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    :goto_0
    const/4 v7, 0x4

    .line 74
    if-ge v1, v7, :cond_4

    .line 75
    .line 76
    aget v7, v6, v1

    .line 77
    .line 78
    iget-object v8, v3, Lo/ff;->ͳ:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Landroid/widget/SeekBar;

    .line 85
    .line 86
    if-eqz v7, :cond_3

    .line 87
    .line 88
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget-object v1, v3, Lo/ff;->ͳ:Landroid/view/View;

    .line 113
    .line 114
    sget v5, Lo/if;->qs_soc_section:I

    .line 115
    .line 116
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    div-int/lit8 v2, v2, 0x2

    .line 127
    .line 128
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    .line 130
    instance-of v2, v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    move-object v2, v5

    .line 135
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    .line 139
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-object v1, v3, Lo/ff;->ͳ:Landroid/view/View;

    .line 143
    .line 144
    new-instance v2, Lo/Ϋ;

    .line 145
    .line 146
    const/16 v3, 0x9

    .line 147
    .line 148
    invoke-direct {v2, p0, v6, v3, v0}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final stabilityRelease()Z
    .locals 3
    iget-object v0, p0, Lo/ze;->ˋ:Landroid/widget/GridLayout;
    iget-object v1, p0, Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v0, v1, p0}, Lcom/byd/launcher/stability/QuickSettingsResources;->removeLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z
    move-result v0
    if-eqz v0, :global_retained
    const/4 v1, 0x0
    iput-object v1, p0, Lo/ze;->stabilityObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lo/ze;->ˏ:Lo/ff;
    iget-object v2, v1, Lo/ff;->stabilityLayoutListener:Lo/ze;
    if-ne v2, p0, :global_retained
    const/4 v2, 0x0
    iput-object v2, v1, Lo/ff;->stabilityLayoutListener:Lo/ze;
    :global_retained
    return v0
.end method
