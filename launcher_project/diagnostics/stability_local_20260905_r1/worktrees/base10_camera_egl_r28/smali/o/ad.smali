.class public final synthetic Lo/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʹ:Landroid/widget/TextView;

.field public final synthetic ˋ:Lo/nd;

.field public final synthetic ˏ:[Ljava/lang/String;

.field public final synthetic Ͱ:[Z

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Landroid/widget/LinearLayout;

.field public final synthetic ͳ:Landroid/widget/ImageView;

.field public final synthetic Ͷ:Landroid/widget/TextView;

.field public final synthetic ͷ:I

.field public final synthetic ͺ:I

.field public final synthetic ͻ:Z


# direct methods
.method public synthetic constructor <init>(Lo/nd;[Ljava/lang/String;[ZILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ad;->ˋ:Lo/nd;

    iput-object p2, p0, Lo/ad;->ˏ:[Ljava/lang/String;

    iput-object p3, p0, Lo/ad;->Ͱ:[Z

    iput p4, p0, Lo/ad;->ͱ:I

    iput-object p5, p0, Lo/ad;->Ͳ:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lo/ad;->ͳ:Landroid/widget/ImageView;

    iput-object p7, p0, Lo/ad;->ʹ:Landroid/widget/TextView;

    iput-object p8, p0, Lo/ad;->Ͷ:Landroid/widget/TextView;

    iput p9, p0, Lo/ad;->ͷ:I

    iput p10, p0, Lo/ad;->ͺ:I

    iput-boolean p11, p0, Lo/ad;->ͻ:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget v3, p0, Lo/ad;->ͱ:I

    .line 2
    .line 3
    iget-object v4, p0, Lo/ad;->Ͳ:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    iget-object v6, p0, Lo/ad;->ͳ:Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v7, p0, Lo/ad;->ʹ:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v8, p0, Lo/ad;->Ͷ:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object p1, p0, Lo/ad;->ˋ:Lo/nd;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v5, p0, Lo/ad;->ˏ:[Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aget-object v1, v5, v0

    .line 20
    .line 21
    const-string v2, "trunk"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    iget-object v9, p0, Lo/ad;->Ͱ:[Z

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    aget-boolean v1, v9, v3

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    :try_start_0
    sget-object v1, Lcom/byd/launcher/CoreService;->Έ:Lcom/byd/launcher/manager/BYDGearboxDeviceManager;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/byd/launcher/manager/BYDGearboxDeviceManager;->getCurrentGear()I

    .line 42
    .line 43
    .line 44
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_0
    if-eq v2, v10, :cond_1

    .line 46
    .line 47
    if-lez v2, :cond_1

    .line 48
    .line 49
    iget-object p1, p1, Lo/nd;->ˋ:Landroid/content/Context;

    .line 50
    .line 51
    const-string v1, "\u8bf7\u5148\u6302\u5165P\u6863\u518d\u64cd\u4f5c\u540e\u5907\u7bb1"

    .line 52
    .line 53
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    new-instance v10, Lo/rc;

    .line 63
    .line 64
    move-object v0, v10

    .line 65
    move-object v1, p1

    .line 66
    move-object v2, v9

    .line 67
    invoke-direct/range {v0 .. v8}, Lo/rc;-><init>(Lo/nd;[ZILandroid/widget/LinearLayout;[Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 71
    .line 72
    new-instance v1, Lo/ag;

    .line 73
    .line 74
    const/16 v2, 0x1a

    .line 75
    .line 76
    invoke-direct {v1, v2, p1, v10}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_2
    aget-boolean v1, v9, v3

    .line 85
    .line 86
    xor-int/2addr v1, v10

    .line 87
    aput-boolean v1, v9, v3

    .line 88
    .line 89
    invoke-virtual {v4, v1}, Landroid/view/View;->setActivated(Z)V

    .line 90
    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    const/4 v3, 0x3

    .line 95
    aget-object v3, v5, v3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const/4 v3, 0x2

    .line 99
    aget-object v3, v5, v3

    .line 100
    .line 101
    :goto_0
    invoke-virtual {p1, v3}, Lo/nd;->Ͳ(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    if-eqz v1, :cond_5

    .line 111
    .line 112
    move v3, v2

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    iget v3, p0, Lo/ad;->ͷ:I

    .line 115
    .line 116
    :goto_1
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    iget v2, p0, Lo/ad;->ͺ:I

    .line 127
    .line 128
    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    const-string v2, "energy_feedback"

    .line 132
    .line 133
    aget-object v3, v5, v0

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    const-string v2, "\u8f83\u5927"

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    const-string v2, "\u6807\u51c6"

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    const-string v2, "screen_off"

    .line 150
    .line 151
    aget-object v3, v5, v0

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_9

    .line 158
    .line 159
    const-string v2, ""

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_9
    if-eqz v1, :cond_a

    .line 163
    .line 164
    const-string v2, "\u5df2\u5f00\u542f"

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_a
    const-string v2, "\u5df2\u5173\u95ed"

    .line 168
    .line 169
    :goto_3
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    if-eqz v1, :cond_b

    .line 173
    .line 174
    const v2, -0x33000001    # -1.3421772E8f

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_b
    iget-boolean v2, p0, Lo/ad;->ͻ:Z

    .line 179
    .line 180
    if-eqz v2, :cond_c

    .line 181
    .line 182
    const v2, 0x66ffffff

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_c
    const/high16 v2, 0x66000000

    .line 187
    .line 188
    :goto_4
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    aget-object v0, v5, v0

    .line 192
    .line 193
    const/4 v2, 0x4

    .line 194
    aget-object v2, v5, v2

    .line 195
    .line 196
    invoke-virtual {p1, v0, v2, v1}, Lo/nd;->Ά(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    :goto_5
    return-void
.end method
