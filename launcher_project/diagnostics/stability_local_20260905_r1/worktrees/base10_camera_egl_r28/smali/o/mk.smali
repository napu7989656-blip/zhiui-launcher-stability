.class public final synthetic Lo/mk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/vl;


# direct methods
.method public synthetic constructor <init>(Lo/vl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/mk;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/mk;->ͱ:Lo/vl;

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
    .locals 8

    .line 1
    iget v0, p0, Lo/mk;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :pswitch_0
    const-string v0, "lock"

    .line 10
    .line 11
    iget-object v1, p0, Lo/mk;->ͱ:Lo/vl;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lo/vl;->Κ(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 18
    .line 19
    iget-object v0, v0, Lo/vl;->ͳ:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_2
    iget-object v3, p0, Lo/mk;->ͱ:Lo/vl;

    .line 29
    .line 30
    iput-boolean v1, v3, Lo/vl;->Ί:Z

    .line 31
    .line 32
    iget-object v0, v3, Lo/vl;->ͳ:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v3, Lo/vl;->ͳ:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, v3, Lo/vl;->Ρ:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v1, v3, Lo/vl;->Τ:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, v3, Lo/vl;->Σ:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, v3, Lo/vl;->Τ:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    invoke-virtual {v3, v2, v0, v1}, Lo/vl;->Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-wide v4, v3, Lo/vl;->Γ:D

    .line 62
    .line 63
    const-wide/16 v0, 0x1

    .line 64
    .line 65
    cmpl-double v0, v4, v0

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iget v0, v3, Lo/vl;->Δ:I

    .line 70
    .line 71
    if-gez v0, :cond_3

    .line 72
    .line 73
    iget v0, v3, Lo/vl;->Ε:I

    .line 74
    .line 75
    if-gez v0, :cond_3

    .line 76
    .line 77
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    iput v1, v0, Lcom/byd/launcher/NavBarService;->Ϡ:I

    .line 83
    .line 84
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 85
    .line 86
    new-instance v2, Lo/ea;

    .line 87
    .line 88
    const/16 v3, 0x17

    .line 89
    .line 90
    invoke-direct {v2, v0, v3}, Lo/ea;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget v6, v3, Lo/vl;->Δ:I

    .line 98
    .line 99
    iget v7, v3, Lo/vl;->Ε:I

    .line 100
    .line 101
    iput-wide v4, v3, Lo/vl;->Γ:D

    .line 102
    .line 103
    iput v6, v3, Lo/vl;->Δ:I

    .line 104
    .line 105
    iput v7, v3, Lo/vl;->Ε:I

    .line 106
    .line 107
    iget-object v0, v3, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, v3, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 113
    .line 114
    new-instance v1, Lo/xk;

    .line 115
    .line 116
    move-object v2, v1

    .line 117
    invoke-direct/range {v2 .. v7}, Lo/xk;-><init>(Lo/vl;DII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_1
    return-void

    .line 124
    :pswitch_3
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 125
    .line 126
    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    check-cast v0, Lo/cb;

    .line 131
    .line 132
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 133
    .line 134
    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 135
    .line 136
    const-string v1, "next"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-void

    .line 142
    :pswitch_4
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 143
    .line 144
    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    .line 145
    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    check-cast v0, Lo/cb;

    .line 149
    .line 150
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 151
    .line 152
    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 153
    .line 154
    const-string v1, "play"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    return-void

    .line 160
    :pswitch_5
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 161
    .line 162
    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    check-cast v0, Lo/cb;

    .line 167
    .line 168
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 169
    .line 170
    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 171
    .line 172
    const-string v1, "prev"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϖ(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    return-void

    .line 178
    :pswitch_6
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 179
    .line 180
    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    .line 181
    .line 182
    if-eqz v0, :cond_9

    .line 183
    .line 184
    check-cast v0, Lo/cb;

    .line 185
    .line 186
    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ͳ(Lcom/byd/launcher/NavBarService;)V

    .line 189
    .line 190
    .line 191
    :cond_9
    return-void

    .line 192
    :pswitch_7
    const-string v0, "trunk"

    .line 193
    .line 194
    iget-object v1, p0, Lo/mk;->ͱ:Lo/vl;

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Lo/vl;->Κ(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_8
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 201
    .line 202
    iget-object v2, v0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    .line 204
    if-nez v2, :cond_a

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_a
    const/16 v2, 0x8

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Lo/vl;->Ά(I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    iget-object v3, v0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eq v3, v2, :cond_b

    .line 220
    .line 221
    iget-object v0, v0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 224
    .line 225
    .line 226
    :cond_b
    :goto_2
    return-void

    .line 227
    :pswitch_9
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 228
    .line 229
    iget-object v2, v0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 230
    .line 231
    if-nez v2, :cond_c

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_c
    :goto_3
    iget-object v2, v0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-ge v1, v2, :cond_d

    .line 241
    .line 242
    iget-object v2, v0, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v0, v2}, Lo/vl;->ʹ(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_d
    :goto_4
    return-void

    .line 259
    :pswitch_a
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 260
    .line 261
    invoke-virtual {v0}, Lo/vl;->Ψ()V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :goto_5
    iget-object v0, p0, Lo/mk;->ͱ:Lo/vl;

    .line 266
    .line 267
    iget-object v0, v0, Lo/vl;->Έ:Lo/tl;

    .line 268
    .line 269
    check-cast v0, Lo/cb;

    .line 270
    .line 271
    iget-object v0, v0, Lo/cb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 272
    .line 273
    iput-boolean v1, v0, Lcom/byd/launcher/NavBarService;->ϩ:Z

    .line 274
    .line 275
    :goto_6
    const/4 v2, 0x5

    .line 276
    if-ge v1, v2, :cond_e

    .line 277
    .line 278
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 279
    .line 280
    new-instance v3, Lo/y9;

    .line 281
    .line 282
    const/4 v4, 0x1

    .line 283
    invoke-direct {v3, v0, v4}, Lo/y9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 284
    .line 285
    .line 286
    int-to-long v4, v1

    .line 287
    const-wide/16 v6, 0x190

    .line 288
    .line 289
    mul-long/2addr v4, v6

    .line 290
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    .line 292
    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_e
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
