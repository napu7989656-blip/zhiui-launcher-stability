.class public final synthetic Lo/q9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/byd/launcher/NavBarService;

.field public final synthetic Ͱ:Landroid/widget/ImageButton;

.field public final synthetic ͱ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;Landroid/widget/ImageButton;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/q9;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/q9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput-object p2, p0, Lo/q9;->Ͱ:Landroid/widget/ImageButton;

    .line 6
    .line 7
    iput-object p3, p0, Lo/q9;->ͱ:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lo/q9;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/q9;->ͱ:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lo/q9;->Ͱ:Landroid/widget/ImageButton;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v3, p0, Lo/q9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_4

    .line 14
    :pswitch_0
    iget-boolean p1, v3, Lcom/byd/launcher/NavBarService;->lII:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 31
    .line 32
    iget-boolean v4, p1, Lo/Ζ;->ͺ:Z

    .line 33
    .line 34
    xor-int/2addr v2, v4

    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-virtual {p1, v4, v2}, Lo/Ζ;->ʹ(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1, v0}, Lcom/byd/launcher/NavBarService;->ϩ(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v2}, Lcom/byd/launcher/NavBarService;->ϗ(IZ)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void

    .line 50
    :pswitch_1
    iget-boolean p1, v3, Lcom/byd/launcher/NavBarService;->lII:Z

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 67
    .line 68
    iget-boolean v4, p1, Lo/Ζ;->ͷ:Z

    .line 69
    .line 70
    xor-int/2addr v4, v2

    .line 71
    invoke-virtual {p1, v2, v4}, Lo/Ζ;->ʹ(IZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1, v0}, Lcom/byd/launcher/NavBarService;->ϩ(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2, v4}, Lcom/byd/launcher/NavBarService;->ϗ(IZ)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    .line 82
    .line 83
    .line 84
    :goto_3
    return-void

    .line 85
    :goto_4
    iget-boolean p1, v3, Lcom/byd/launcher/NavBarService;->lII:Z

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 91
    .line 92
    if-eqz p1, :cond_b

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_7

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_7
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 102
    .line 103
    iget v4, p1, Lo/Ζ;->ͻ:I

    .line 104
    .line 105
    if-ne v4, v2, :cond_8

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    :cond_8
    const/4 v5, 0x3

    .line 109
    if-eq v4, v2, :cond_9

    .line 110
    .line 111
    iput v2, p1, Lo/Ζ;->ͻ:I

    .line 112
    .line 113
    invoke-virtual {p1, v5}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 114
    .line 115
    .line 116
    :cond_9
    invoke-virtual {v3, v1, v0}, Lcom/byd/launcher/NavBarService;->ϩ(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v3, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 120
    .line 121
    if-nez p1, :cond_a

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_a
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 125
    .line 126
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v0, "mode"

    .line 130
    .line 131
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    iget-object v0, v3, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 135
    .line 136
    const-string v1, "setAcCycleMode"

    .line 137
    .line 138
    new-instance v4, Lo/oa;

    .line 139
    .line 140
    invoke-direct {v4, v3, v2, v5}, Lo/oa;-><init>(Ljava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1, p1, v4}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :catch_0
    move-exception p1

    .line 148
    const-string v0, "NavBarSvc"

    .line 149
    .line 150
    const-string v1, "\u6784\u9020\u5faa\u73af\u6a21\u5f0f\u53c2\u6570\u5931\u8d25"

    .line 151
    .line 152
    invoke-static {v0, v1, p1}, Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_b
    :goto_5
    invoke-virtual {v3}, Lcom/byd/launcher/NavBarService;->Ϗ()V

    .line 157
    .line 158
    .line 159
    :goto_6
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
