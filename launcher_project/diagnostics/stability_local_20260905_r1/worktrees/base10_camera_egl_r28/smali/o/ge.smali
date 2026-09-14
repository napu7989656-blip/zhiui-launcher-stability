.class public final synthetic Lo/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic ʹ:Landroid/widget/TextView;

.field public final synthetic ˋ:Lo/ff;

.field public final synthetic ˏ:[J

.field public final synthetic Ͱ:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic ͱ:[Landroid/animation/ValueAnimator;

.field public final synthetic Ͳ:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic ͳ:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lo/ff;[JLandroid/graphics/drawable/GradientDrawable;[Landroid/animation/ValueAnimator;Landroid/graphics/drawable/ClipDrawable;[Ljava/lang/Runnable;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ge;->ˋ:Lo/ff;

    iput-object p2, p0, Lo/ge;->ˏ:[J

    iput-object p3, p0, Lo/ge;->Ͱ:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lo/ge;->ͱ:[Landroid/animation/ValueAnimator;

    iput-object p5, p0, Lo/ge;->Ͳ:Landroid/graphics/drawable/ClipDrawable;

    iput-object p6, p0, Lo/ge;->ͳ:[Ljava/lang/Runnable;

    iput-object p7, p0, Lo/ge;->ʹ:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ge;->ˋ:Lo/ff;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    const/4 v0, 0x0
    return v0
    :stability_owner_alive

    .line 1
    iget-object v0, p0, Lo/ge;->ˋ:Lo/ff;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object v1, v0, Lo/ff;->Ͱ:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iget-object v3, p0, Lo/ge;->Ͱ:Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    iget-object v4, p0, Lo/ge;->ͱ:[Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    iget-object v5, p0, Lo/ge;->Ͳ:Landroid/graphics/drawable/ClipDrawable;

    .line 18
    .line 19
    iget-object v6, p0, Lo/ge;->ͳ:[Ljava/lang/Runnable;

    .line 20
    .line 21
    iget-object v7, p0, Lo/ge;->ʹ:Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    if-eq p2, v2, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p2, v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    aget-object p2, v6, v8

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/high16 p2, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-wide/16 v0, 0x78

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 68
    .line 69
    .line 70
    const p1, 0x33ffffff

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74
    .line 75
    .line 76
    const-string p1, "\u957f\u6309 3s \u540e\u9000\u51fa"

    .line 77
    .line 78
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    aget-object p1, v4, v8

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    filled-new-array {p1, v8}, [I

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    aput-object p1, v4, v8

    .line 101
    .line 102
    const-wide/16 v0, 0xc8

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    .line 107
    aget-object p1, v4, v8

    .line 108
    .line 109
    new-instance p2, Lo/he;

    .line 110
    .line 111
    invoke-direct {p2, v5, v2}, Lo/he;-><init>(Landroid/graphics/drawable/ClipDrawable;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 115
    .line 116
    .line 117
    aget-object p1, v4, v8

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v9

    .line 127
    iget-object p2, p0, Lo/ge;->ˏ:[J

    .line 128
    .line 129
    aput-wide v9, p2, v8

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const v9, 0x3f70a3d7    # 0.94f

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-wide/16 v9, 0x50

    .line 154
    .line 155
    invoke-virtual {p1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 160
    .line 161
    .line 162
    const p1, 0x66ffffff

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 166
    .line 167
    .line 168
    aget-object p1, v4, v8

    .line 169
    .line 170
    if-eqz p1, :cond_4

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 173
    .line 174
    .line 175
    :cond_4
    const/16 p1, 0x2710

    .line 176
    .line 177
    filled-new-array {v8, p1}, [I

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    aput-object p1, v4, v8

    .line 186
    .line 187
    const-wide/16 v9, 0xbb8

    .line 188
    .line 189
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    .line 192
    aget-object p1, v4, v8

    .line 193
    .line 194
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 195
    .line 196
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    .line 201
    .line 202
    aget-object p1, v4, v8

    .line 203
    .line 204
    new-instance v3, Lo/he;

    .line 205
    .line 206
    invoke-direct {v3, v5, v8}, Lo/he;-><init>(Landroid/graphics/drawable/ClipDrawable;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    .line 211
    .line 212
    aget-object p1, v4, v8

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 215
    .line 216
    .line 217
    new-instance p1, Lo/ye;

    .line 218
    .line 219
    invoke-direct {p1, v0, p2, v7}, Lo/ye;-><init>(Lo/ff;[JLandroid/widget/TextView;)V

    .line 220
    .line 221
    .line 222
    aput-object p1, v6, v8

    .line 223
    .line 224
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    .line 226
    .line 227
    :goto_0
    return v2
.end method
