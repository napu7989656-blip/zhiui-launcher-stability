.class public final synthetic Lo/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:Lcom/byd/launcher/NavBarService;

.field public final synthetic ͱ:Z

.field public final synthetic Ͳ:Z


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/l9;->Ͱ:Lcom/byd/launcher/NavBarService;

    iput-boolean p2, p0, Lo/l9;->ͱ:Z

    iput-boolean p3, p0, Lo/l9;->Ͳ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    iget-object v0, p0, Lo/l9;->Ͱ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lo/l9;->ͱ:Z

    .line 9
    .line 10
    invoke-static {v1}, Lo/ci;->ͱ(Z)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sget v3, Lo/if;->btn_driver_temp_down:I

    .line 15
    .line 16
    sget v4, Lo/if;->btn_driver_temp_up:I

    .line 17
    .line 18
    sget v5, Lo/if;->btn_wind_down:I

    .line 19
    .line 20
    sget v6, Lo/if;->btn_wind_up:I

    .line 21
    .line 22
    filled-new-array {v3, v4, v5, v6}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    move v5, v4

    .line 28
    :goto_0
    const/4 v6, 0x4

    .line 29
    if-ge v5, v6, :cond_2

    .line 30
    .line 31
    aget v6, v3, v5

    .line 32
    .line 33
    iget-object v7, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    instance-of v7, v6, Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    check-cast v6, Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 48
    .line 49
    invoke-virtual {v6, v2, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v6}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget v2, Lo/if;->btn_nav_settings:I

    .line 60
    .line 61
    sget v3, Lo/if;->btn_nav_camera:I

    .line 62
    .line 63
    sget v5, Lo/if;->btn_nav_media:I

    .line 64
    .line 65
    sget v7, Lo/if;->btn_nav_app4:I

    .line 66
    .line 67
    filled-new-array {v2, v3, v5, v7}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move v3, v4

    .line 72
    :goto_2
    if-ge v3, v6, :cond_6

    .line 73
    .line 74
    aget v5, v2, v3

    .line 75
    .line 76
    iget-object v7, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    instance-of v7, v5, Landroid/widget/ImageView;

    .line 83
    .line 84
    if-eqz v7, :cond_5

    .line 85
    .line 86
    sget v7, Lo/if;->tag_nav_func:I

    .line 87
    .line 88
    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-string v8, "app:"

    .line 99
    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_3

    .line 105
    .line 106
    const/4 v7, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move v7, v4

    .line 109
    :goto_3
    iget-boolean v8, p0, Lo/l9;->Ͳ:Z

    .line 110
    .line 111
    if-eqz v8, :cond_4

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    check-cast v5, Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-static {v8}, Lo/ci;->ͱ(Z)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 122
    .line 123
    invoke-virtual {v5, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    check-cast v5, Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    iget-object v0, v0, Lcom/byd/launcher/NavBarService;->Ͱ:Landroid/view/View;

    .line 136
    .line 137
    sget v2, Lo/if;->tv_driver_temp:I

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    instance-of v2, v0, Landroid/widget/TextView;

    .line 144
    .line 145
    if-eqz v2, :cond_7

    .line 146
    .line 147
    check-cast v0, Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-static {v1}, Lo/ci;->ͷ(Z)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    :cond_7
    return-void
.end method
