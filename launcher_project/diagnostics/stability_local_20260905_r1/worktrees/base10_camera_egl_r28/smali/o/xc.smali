.class public final synthetic Lo/xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;

.field public final synthetic ͱ:Ljava/lang/Object;

.field public final synthetic Ͳ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p5, p0, Lo/xc;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/xc;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lo/xc;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lo/xc;->ͱ:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lo/xc;->Ͳ:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lo/xc;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/xc;->Ͳ:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lo/xc;->ͱ:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lo/xc;->Ͱ:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v4, p0, Lo/xc;->ˏ:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    check-cast v4, Lo/nd;

    .line 17
    .line 18
    check-cast v3, [Ljava/lang/Runnable;

    .line 19
    .line 20
    check-cast v2, Landroid/view/View;

    .line 21
    .line 22
    iget-object p1, v4, Lo/nd;->ͱ:Landroid/os/Handler;

    .line 23
    .line 24
    aget-object v3, v3, v1

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v4, Lo/nd;->ͳ:Lcom/byd/launcher/pip/DualPipLayout;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/byd/launcher/pip/DualPipLayout;->Ͳ()V

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x8

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    check-cast v4, Lo/vl;

    .line 44
    .line 45
    check-cast v3, Landroid/widget/EditText;

    .line 46
    .line 47
    check-cast v2, Landroid/content/SharedPreferences;

    .line 48
    .line 49
    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    sget-object p1, Lo/vl;->Χ:[Lo/ul;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-static {v2}, Lo/vl;->Α(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/16 v7, 0xa

    .line 84
    .line 85
    if-lt v6, v7, :cond_1

    .line 86
    .line 87
    iget-object p1, v4, Lo/vl;->ˏ:Landroid/content/Context;

    .line 88
    .line 89
    const-string v0, "\u6700\u591a\u6dfb\u52a010\u6761"

    .line 90
    .line 91
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v5}, Lo/vl;->Ξ(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    const-string v1, ""

    .line 106
    .line 107
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v2, v0}, Lo/vl;->Ι(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lo/gh;->Ͱ()Lo/gh;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lo/gh;->Ͳ()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    filled-new-array {p1}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, Lo/ag;

    .line 131
    .line 132
    const/16 v2, 0x1d

    .line 133
    .line 134
    invoke-direct {v1, v2, v0, p1}, Lo/ag;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, v0, Lo/gh;->ʹ:Ljava/util/concurrent/ExecutorService;

    .line 138
    .line 139
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_1
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
