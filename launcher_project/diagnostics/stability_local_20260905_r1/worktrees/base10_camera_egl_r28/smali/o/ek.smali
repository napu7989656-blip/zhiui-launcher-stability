.class public final synthetic Lo/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;

.field public final synthetic Ͱ:Ljava/lang/Object;

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lo/ek;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ek;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lo/ek;->Ͱ:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lo/ek;->ͱ:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget p1, p0, Lo/ek;->ˋ:I

    .line 2
    .line 3
    const-string v0, "WidgetBarMgr"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lo/ek;->ͱ:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lo/ek;->Ͱ:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v4, p0, Lo/ek;->ˏ:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :pswitch_0
    check-cast v4, Lo/vl;

    .line 18
    .line 19
    check-cast v3, [Ljava/lang/String;

    .line 20
    .line 21
    check-cast v2, [Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, v4, Lo/vl;->ˏ:Landroid/content/Context;

    .line 24
    .line 25
    const-string v5, "car_model_drawable"

    .line 26
    .line 27
    const-string v6, "car_model_image_path"

    .line 28
    .line 29
    const-string v7, "car_model_prefs"

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    aget-object p2, v3, v1

    .line 34
    .line 35
    sget v0, Lo/oj;->Α:I

    .line 36
    .line 37
    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "\u5df2\u8bbe\u7f6e\u4e3a "

    .line 59
    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aget-object v0, v2, v1

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x1

    .line 74
    if-ne p2, v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v4}, Lo/vl;->ͼ()V

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object p2, v4, Lo/vl;->Β:Lo/rl;

    .line 80
    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    new-instance p2, Lo/rl;

    .line 84
    .line 85
    invoke-direct {p2, v4}, Lo/rl;-><init>(Lo/vl;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, v4, Lo/vl;->Β:Lo/rl;

    .line 89
    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    .line 91
    .line 92
    const-string v2, "com.byd.launcher.CAR_MODEL_CHANGED"

    .line 93
    .line 94
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 101
    .line 102
    const-class v1, Lcom/byd/launcher/FilePickerProxyActivity;

    .line 103
    .line 104
    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "pick_type"

    .line 108
    .line 109
    const-string v2, "car_model"

    .line 110
    .line 111
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    const/high16 v1, 0x10000000

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "launchFilePickerForCarModel failed: "

    .line 127
    .line 128
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2, v0}, Lo/v1;->ͻ(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    const/4 v0, 0x2

    .line 136
    if-ne p2, v0, :cond_4

    .line 137
    .line 138
    sget p2, Lo/oj;->Α:I

    .line 139
    .line 140
    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-interface {p2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const-string v0, ""

    .line 153
    .line 154
    invoke-interface {p2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-interface {p2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-interface {p2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    .line 179
    .line 180
    const-string p2, "\u5df2\u6062\u590d\u9ed8\u8ba4\u8f66\u8f86\u56fe\u7247"

    .line 181
    .line 182
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 187
    .line 188
    .line 189
    iget-object p1, v4, Lo/vl;->ΐ:Landroid/view/View;

    .line 190
    .line 191
    if-eqz p1, :cond_3

    .line 192
    .line 193
    sget p2, Lo/if;->iv_car_model_preview:I

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Landroid/widget/ImageView;

    .line 200
    .line 201
    if-eqz p1, :cond_3

    .line 202
    .line 203
    invoke-static {p1}, Lo/oj;->ͽ(Landroid/widget/ImageView;)V

    .line 204
    .line 205
    .line 206
    :cond_3
    iget-object p1, v4, Lo/vl;->Ͷ:Lo/km;

    .line 207
    .line 208
    if-eqz p1, :cond_4

    .line 209
    .line 210
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 211
    .line 212
    .line 213
    :cond_4
    :goto_1
    return-void

    .line 214
    :goto_2
    check-cast v4, [I

    .line 215
    .line 216
    check-cast v3, Landroid/content/SharedPreferences;

    .line 217
    .line 218
    check-cast v2, Landroid/widget/TextView;

    .line 219
    .line 220
    aget p1, v4, v1

    .line 221
    .line 222
    sget-object p2, Lo/vl;->έ:[I

    .line 223
    .line 224
    aget p1, p2, p1

    .line 225
    .line 226
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    const-string v1, "autostart_delay"

    .line 231
    .line 232
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    .line 238
    .line 239
    if-eqz v2, :cond_5

    .line 240
    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v1, "\u79d2"

    .line 250
    .line 251
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v1, "Auto-start delay set to: "

    .line 264
    .line 265
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string p1, "s"

    .line 272
    .line 273
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
