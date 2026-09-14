.class public final synthetic Lo/pi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lo/pi;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/pi;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lo/pi;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lo/pi;->ͱ:Ljava/lang/Object;

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
    iget p1, p0, Lo/pi;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/pi;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lo/pi;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lo/pi;->ˏ:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :pswitch_0
    check-cast v2, Lo/f4;

    .line 15
    .line 16
    check-cast v1, Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Lo/e4;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lo/z3;

    .line 43
    .line 44
    iget-boolean v5, v4, Lo/z3;->ͱ:Z

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    iget-object v4, v4, Lo/z3;->ˋ:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lo/z3;

    .line 72
    .line 73
    iget-object v1, v1, Lo/z3;->ˋ:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lo/e4;->ˋ(Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v2}, Lo/f4;->ˋ()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_1
    check-cast v2, Lo/qi;

    .line 88
    .line 89
    check-cast v1, Landroid/view/View;

    .line 90
    .line 91
    check-cast v0, Landroid/widget/FrameLayout;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lo/qi;->ͷ(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iput v1, v2, Lo/qi;->ͻ:I

    .line 109
    .line 110
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Lo/qi;->ͷ(I)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iput v1, v2, Lo/qi;->ͼ:I

    .line 117
    .line 118
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Lo/qi;->ͷ(I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iput v1, v2, Lo/qi;->ͽ:I

    .line 125
    .line 126
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 127
    .line 128
    invoke-virtual {v2, p1}, Lo/qi;->ͷ(I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput p1, v2, Lo/qi;->Ά:I

    .line 133
    .line 134
    iget-object p1, v2, Lo/qi;->ͱ:Landroid/content/SharedPreferences;

    .line 135
    .line 136
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v1, "turn_signal_overlay_w"

    .line 141
    .line 142
    iget v3, v2, Lo/qi;->ͻ:I

    .line 143
    .line 144
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v1, "turn_signal_overlay_h"

    .line 149
    .line 150
    iget v3, v2, Lo/qi;->ͼ:I

    .line 151
    .line 152
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v1, "turn_signal_overlay_x"

    .line 157
    .line 158
    iget v3, v2, Lo/qi;->ͽ:I

    .line 159
    .line 160
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v1, "turn_signal_overlay_y"

    .line 165
    .line 166
    iget v3, v2, Lo/qi;->Ά:I

    .line 167
    .line 168
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    .line 174
    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "Window adjust saved: "

    .line 178
    .line 179
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget v1, v2, Lo/qi;->ͻ:I

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, "x"

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v1, v2, Lo/qi;->ͼ:I

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, " at "

    .line 198
    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget v1, v2, Lo/qi;->ͽ:I

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, ","

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget v1, v2, Lo/qi;->Ά:I

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-string v1, "TurnSignalCamera"

    .line 222
    .line 223
    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :try_start_0
    iget-object p1, v2, Lo/qi;->ˏ:Landroid/view/WindowManager;

    .line 227
    .line 228
    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .line 230
    .line 231
    :catch_0
    return-void

    .line 232
    :goto_1
    check-cast v2, Landroid/view/WindowManager;

    .line 233
    .line 234
    check-cast v1, Landroid/widget/LinearLayout;

    .line 235
    .line 236
    check-cast v0, Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 237
    .line 238
    sget-object p1, Lo/nd;->χ:[Ljava/lang/String;

    .line 239
    .line 240
    :try_start_1
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .line 242
    .line 243
    :catch_1
    const-string p1, "openTrunk"

    .line 244
    .line 245
    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, p1, v1, v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byd/launcher/ipc/ICoreServiceCallback;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
