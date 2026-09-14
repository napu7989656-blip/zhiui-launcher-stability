.class public final synthetic Lo/a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Landroid/graphics/Bitmap;

.field public final synthetic Ͱ:Lcom/byd/launcher/MainActivity;

.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Lcom/byd/launcher/NavBarService;

.field public final synthetic ͳ:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/MainActivity;ILcom/byd/launcher/NavBarService;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/a8;->Ͱ:Lcom/byd/launcher/MainActivity;

    iput p2, p0, Lo/a8;->ͱ:I

    iput-object p3, p0, Lo/a8;->Ͳ:Lcom/byd/launcher/NavBarService;

    iput-object p5, p0, Lo/a8;->ͳ:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lo/a8;->ʹ:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    invoke-static {}, Lcom/byd/launcher/stability/BlurPipeline;->deliveryCurrent()Z
    move-result v0
    if-nez v0, :blur_delivery_alive
    return-void
    :blur_delivery_alive


    .line 1
    iget-object v0, p0, Lo/a8;->Ͱ:Lcom/byd/launcher/MainActivity;

    .line 2
    .line 3
    iget v1, p0, Lo/a8;->ͱ:I

    .line 4
    .line 5
    iget-object v2, p0, Lo/a8;->Ͳ:Lcom/byd/launcher/NavBarService;

    .line 6
    .line 7
    iget-object v3, p0, Lo/a8;->ͳ:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v4, p0, Lo/a8;->ʹ:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget v0, v0, Lcom/byd/launcher/MainActivity;->Θ:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v1, v2, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v5, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    if-eqz v5, :cond_3

    .line 27
    .line 28
    iget-object v5, v1, Lo/vl;->Ͷ:Lo/km;

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v5, v1, Lo/vl;->ˏ:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v5}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v5, v1, Lo/vl;->Ͷ:Lo/km;

    .line 43
    .line 44
    invoke-virtual {v5}, Lo/km;->getItemCount()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const-string v7, "blur"

    .line 49
    .line 50
    invoke-virtual {v5, v0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v1, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    new-instance v6, Lo/mk;

    .line 56
    .line 57
    invoke-direct {v6, v1, v0}, Lo/mk;-><init>(Lo/vl;I)V

    .line 58
    .line 59
    .line 60
    const/4 v7, 0x0
    invoke-static {v5, v6, v7}, Lcom/byd/launcher/stability/BlurPipeline;->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    if-eqz v2, :cond_7

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v5, "updateNavBarBlur: blurred="

    .line 68
    .line 69
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, "x"

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const-string v5, "null"

    .line 104
    .line 105
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, " navBarView="

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v5, v2, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 114
    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, " glassEnabled="

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lo/ci;->Ͳ(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "NavBarSvc"

    .line 138
    .line 139
    invoke-static {v1, v0}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_6

    .line 149
    .line 150
    iput-object v3, v2, Lcom/byd/launcher/NavBarService;->ϕ:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    :cond_6
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance v1, Lo/ag;

    .line 155
    .line 156
    const/4 v5, 0x6

    .line 157
    invoke-direct {v1, v5, v2, v3}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    const/4 v5, 0x1
    invoke-static {v0, v1, v5}, Lcom/byd/launcher/stability/BlurPipeline;->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z

    .line 161
    .line 162
    .line 163
    :cond_7
    if-eqz v2, :cond_8

    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    iput-object v4, v2, Lcom/byd/launcher/NavBarService;->Ϛ:Landroid/graphics/Bitmap;

    .line 168
    .line 169
    const/4 v0, 0x0

    .line 170
    iput-object v0, v2, Lcom/byd/launcher/NavBarService;->ϛ:Landroid/graphics/Bitmap;

    .line 171
    .line 172
    iput-object v0, v2, Lcom/byd/launcher/NavBarService;->Ϝ:Landroid/graphics/drawable/BitmapDrawable;

    .line 173
    .line 174
    iget-object v0, v2, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 175
    .line 176
    new-instance v1, Lo/m9;

    .line 177
    .line 178
    const/4 v3, 0x7

    .line 179
    invoke-direct {v1, v2, v3}, Lo/m9;-><init>(Lcom/byd/launcher/NavBarService;I)V

    .line 180
    .line 181
    .line 182
    const/4 v3, 0x2
    invoke-static {v0, v1, v3}, Lcom/byd/launcher/stability/BlurPipeline;->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z

    .line 183
    .line 184
    .line 185
    :cond_8
    if-eqz v2, :cond_9

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/byd/launcher/NavBarService;->ί()V

    .line 188
    .line 189
    .line 190
    :cond_9
    :goto_2
    return-void
.end method
