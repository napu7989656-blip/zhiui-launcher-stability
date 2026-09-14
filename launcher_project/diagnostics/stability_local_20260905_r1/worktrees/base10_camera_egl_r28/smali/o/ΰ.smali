.class public final synthetic Lo/ΰ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ΰ;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/ΰ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    # BASE-09: stop only callbacks owned by a disposed controller/editor.
    move-object/from16 v0, p0
    iget-object v0, v0, Lo/ΰ;->ˏ:Ljava/lang/Object;
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :stability_owner_alive
    return-void
    :stability_owner_alive

    .line 1
    iget v0, p0, Lo/ΰ;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/ΰ;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :pswitch_0
    check-cast v1, Lo/km;

    .line 11
    .line 12
    iget-boolean p1, v1, Lo/km;->ˏ:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v1, p1}, Lo/km;->ͱ(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, v1, Lo/km;->Ͱ:Lo/fm;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    check-cast p1, Lo/fl;

    .line 26
    .line 27
    iget-object p1, p1, Lo/fl;->ˋ:Lo/vl;

    .line 28
    .line 29
    invoke-static {p1}, Lo/vl;->Ͱ(Lo/vl;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_1
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    sget-object p1, Lo/vl;->Χ:[Lo/ul;

    .line 36
    .line 37
    invoke-static {}, Lo/gh;->Ͱ()Lo/gh;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lo/gh;->Ͳ()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lo/gh;->ͷ(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void

    .line 54
    :pswitch_2
    check-cast v1, Lo/oj;

    .line 55
    .line 56
    sget p1, Lo/oj;->Α:I

    .line 57
    .line 58
    invoke-virtual {v1}, Lo/oj;->ͻ()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    check-cast v1, Lo/ff;

    .line 63
    .line 64
    sget-object p1, Lo/ff;->Ρ:Landroid/view/animation/PathInterpolator;

    .line 65
    .line 66
    invoke-virtual {v1}, Lo/ff;->Ͳ()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lo/ff;->ͷ()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v0, v1, Lo/ff;->Β:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lo/df;

    .line 95
    .line 96
    new-instance v3, Lo/z3;

    .line 97
    .line 98
    iget-object v5, v2, Lo/df;->ˋ:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    iget-object v7, v2, Lo/df;->ˏ:Ljava/lang/String;

    .line 105
    .line 106
    iget v2, v2, Lo/df;->Ͱ:I

    .line 107
    .line 108
    invoke-direct {v3, v5, v7, v2, v6}, Lo/z3;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object p1, v1, Lo/ff;->Γ:Lo/f4;

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    new-instance p1, Lo/f4;

    .line 120
    .line 121
    iget-object v0, v1, Lo/ff;->ˋ:Landroid/content/Context;

    .line 122
    .line 123
    iget-object v2, v1, Lo/ff;->ˏ:Landroid/view/WindowManager;

    .line 124
    .line 125
    invoke-direct {p1, v0, v2}, Lo/f4;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 126
    .line 127
    .line 128
    iput-object p1, v1, Lo/ff;->Γ:Lo/f4;

    .line 129
    .line 130
    :cond_4
    iget-object v2, v1, Lo/ff;->Γ:Lo/f4;

    .line 131
    .line 132
    const/4 p1, 0x0

    .line 133
    iput-object p1, v2, Lo/f4;->Ͱ:Landroid/view/ViewGroup;

    .line 134
    .line 135
    iget p1, v1, Lo/ff;->ͼ:I

    .line 136
    .line 137
    if-lez p1, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    const/4 p1, 0x0

    .line 141
    :goto_2
    move v6, p1

    .line 142
    const-string v3, "\u81ea\u5b9a\u4e49\u63a7\u5236\u9879"

    .line 143
    .line 144
    new-instance v5, Lo/ke;

    .line 145
    .line 146
    const/16 p1, 0xd

    .line 147
    .line 148
    invoke-direct {v5, v1, p1}, Lo/ke;-><init>(Lo/ff;I)V

    .line 149
    .line 150
    .line 151
    const/4 v7, 0x4

    .line 152
    invoke-virtual/range {v2 .. v7}, Lo/f4;->Ͱ(Ljava/lang/String;Ljava/util/ArrayList;Lo/e4;II)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_4
    check-cast v1, Lcom/byd/launcher/AppLauncherActivity;

    .line 157
    .line 158
    sget-object p1, Lcom/byd/launcher/AppLauncherActivity;->ʹ:Lcom/byd/launcher/AppLauncherActivity;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/byd/launcher/AppLauncherActivity;->finish()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :goto_3
    check-cast v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 165
    .line 166
    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->ˋ(Lcom/google/android/material/datepicker/MaterialDatePicker;Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
