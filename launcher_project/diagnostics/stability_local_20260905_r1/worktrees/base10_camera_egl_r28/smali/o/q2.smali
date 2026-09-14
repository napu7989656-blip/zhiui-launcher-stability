.class public final synthetic Lo/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/pip/DualPipLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/pip/DualPipLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/q2;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/q2;->ͱ:Lcom/byd/launcher/pip/DualPipLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lo/q2;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lo/q2;->ͱ:Lcom/byd/launcher/pip/DualPipLayout;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :pswitch_0
    sget v0, Lcom/byd/launcher/pip/DualPipLayout;->ΐ:I

    .line 12
    .line 13
    sget v0, Lo/if;->pip_left_panel:I

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lo/if;->pip_right_panel:I

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 28
    .line 29
    sget v0, Lo/if;->pip_divider:I

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->ʹ:Landroid/view/View;

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "dual_pip_prefs"

    .line 42
    .line 43
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v3, "panels_swapped"

    .line 48
    .line 49
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput-boolean v3, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    .line 54
    .line 55
    const-string v3, "left_panel_weight"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const-string v5, "right_panel_weight"

    .line 63
    .line 64
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    cmpl-float v5, v3, v4

    .line 69
    .line 70
    if-lez v5, :cond_0

    .line 71
    .line 72
    cmpl-float v4, v0, v4

    .line 73
    .line 74
    if-lez v4, :cond_0

    .line 75
    .line 76
    iget-object v4, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    iget-object v5, v2, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 81
    .line 82
    if-eqz v5, :cond_0

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 89
    .line 90
    iget-object v5, v2, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 97
    .line 98
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 99
    .line 100
    iput v0, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 101
    .line 102
    iget-object v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->ͳ:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    iget-boolean v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ͷ:Z

    .line 113
    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 117
    .line 118
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 122
    .line 123
    .line 124
    sget v3, Lo/if;->pip_right_panel:I

    .line 125
    .line 126
    const/4 v4, 0x6

    .line 127
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 128
    .line 129
    .line 130
    sget v3, Lo/if;->pip_right_panel:I

    .line 131
    .line 132
    const/4 v5, 0x7

    .line 133
    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 134
    .line 135
    .line 136
    sget v3, Lo/if;->pip_right_panel:I

    .line 137
    .line 138
    invoke-virtual {v0, v3, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 139
    .line 140
    .line 141
    sget v3, Lo/if;->pip_right_panel:I

    .line 142
    .line 143
    sget v6, Lo/if;->pip_divider:I

    .line 144
    .line 145
    invoke-virtual {v0, v3, v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 146
    .line 147
    .line 148
    sget v3, Lo/if;->pip_divider:I

    .line 149
    .line 150
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 151
    .line 152
    .line 153
    sget v3, Lo/if;->pip_divider:I

    .line 154
    .line 155
    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 156
    .line 157
    .line 158
    sget v3, Lo/if;->pip_divider:I

    .line 159
    .line 160
    sget v6, Lo/if;->pip_right_panel:I

    .line 161
    .line 162
    invoke-virtual {v0, v3, v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 163
    .line 164
    .line 165
    sget v3, Lo/if;->pip_divider:I

    .line 166
    .line 167
    sget v6, Lo/if;->pip_left_panel:I

    .line 168
    .line 169
    invoke-virtual {v0, v3, v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 170
    .line 171
    .line 172
    sget v3, Lo/if;->pip_left_panel:I

    .line 173
    .line 174
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 175
    .line 176
    .line 177
    sget v3, Lo/if;->pip_left_panel:I

    .line 178
    .line 179
    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 180
    .line 181
    .line 182
    sget v3, Lo/if;->pip_left_panel:I

    .line 183
    .line 184
    sget v6, Lo/if;->pip_divider:I

    .line 185
    .line 186
    invoke-virtual {v0, v3, v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 187
    .line 188
    .line 189
    sget v3, Lo/if;->pip_left_panel:I

    .line 190
    .line 191
    invoke-virtual {v0, v3, v5, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    :cond_1
    :goto_0
    return-void

    .line 203
    :goto_1
    const/4 v0, 0x1

    .line 204
    iput-boolean v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ή:Z

    .line 205
    .line 206
    iput-boolean v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->ͷ:Z

    .line 207
    .line 208
    iget v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ύ:F

    .line 209
    .line 210
    iput v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->ͻ:F

    .line 211
    .line 212
    iget-object v0, v2, Lcom/byd/launcher/pip/DualPipLayout;->Ά:Lo/t2;

    .line 213
    .line 214
    if-eqz v0, :cond_2

    .line 215
    .line 216
    check-cast v0, Lo/hd;

    .line 217
    .line 218
    iget-object v0, v0, Lo/hd;->ˋ:Lo/nd;

    .line 219
    .line 220
    invoke-static {v0}, Lo/nd;->ˋ(Lo/nd;)V

    .line 221
    .line 222
    .line 223
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
