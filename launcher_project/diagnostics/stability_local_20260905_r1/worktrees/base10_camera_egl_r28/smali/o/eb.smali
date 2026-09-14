.class public final synthetic Lo/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʹ:Landroid/graphics/Bitmap;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/fb;

.field public final synthetic Ͳ:Ljava/lang/String;

.field public final synthetic ͳ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lo/fb;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lo/eb;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/eb;->ͱ:Lo/fb;

    iput-object p2, p0, Lo/eb;->ʹ:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lo/eb;->Ͳ:Ljava/lang/String;

    iput-object p4, p0, Lo/eb;->ͳ:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lo/fb;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lo/eb;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/eb;->ͱ:Lo/fb;

    iput-object p2, p0, Lo/eb;->Ͳ:Ljava/lang/String;

    iput-object p3, p0, Lo/eb;->ͳ:Ljava/lang/String;

    iput-object p4, p0, Lo/eb;->ʹ:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lo/eb;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lo/eb;->ͳ:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lo/eb;->Ͳ:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, p0, Lo/eb;->ʹ:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iget-object v5, p0, Lo/eb;->ͱ:Lo/fb;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :pswitch_0
    iget-object v0, v5, Lo/fb;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 17
    .line 18
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 19
    .line 20
    if-eqz v6, :cond_4

    .line 21
    .line 22
    invoke-virtual {v6}, Lo/a9;->ͺ()V

    .line 23
    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    iget-object v7, v6, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v6}, Lo/vl;->Έ()Lo/dm;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    iget-object v6, v6, Lo/dm;->ʹ:Landroid/widget/ImageView;

    .line 43
    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v7, "album_art"

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 61
    :goto_1
    if-nez v7, :cond_3

    .line 62
    .line 63
    iget-object v6, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 64
    .line 65
    iget-object v7, v6, Lo/vl;->ʹ:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    iget-object v7, v6, Lo/vl;->ͱ:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v8, Lo/wk;

    .line 72
    .line 73
    invoke-direct {v8, v1, v6, v4}, Lo/wk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance v1, Lo/eb;

    .line 82
    .line 83
    invoke-direct {v1, v5, v3, v2, v4}, Lo/eb;-><init>(Lo/fb;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v2, 0x1f4

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void

    .line 92
    :goto_2
    iget-object v0, v5, Lo/fb;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 93
    .line 94
    iget-object v5, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 95
    .line 96
    if-eqz v5, :cond_9

    .line 97
    .line 98
    iget-object v6, v5, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 99
    .line 100
    const/4 v7, 0x1

    .line 101
    if-eqz v6, :cond_5

    .line 102
    .line 103
    move v6, v7

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    move v6, v1

    .line 106
    :goto_3
    if-eqz v6, :cond_9

    .line 107
    .line 108
    iget-object v5, v5, Lo/a9;->Ά:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v5, :cond_6

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_6

    .line 117
    .line 118
    move v1, v7

    .line 119
    :cond_6
    if-nez v1, :cond_9

    .line 120
    .line 121
    if-eqz v3, :cond_9

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_9

    .line 128
    .line 129
    iget-object v1, v0, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_7
    const-string v2, ""

    .line 137
    .line 138
    :goto_4
    invoke-virtual {v1, v4, v3, v2}, Lo/vl;->Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-static {v0}, Lcom/byd/launcher/NavBarService;->ʹ(Lcom/byd/launcher/NavBarService;)V

    .line 142
    .line 143
    .line 144
    :cond_9
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
