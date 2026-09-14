.class public final Lo/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public ˋ:Z

.field public final synthetic ˏ:Landroid/content/SharedPreferences;

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/vl;


# direct methods
.method public constructor <init>(ILandroid/content/SharedPreferences;Lo/vl;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lo/el;->ͱ:Lo/vl;

    iput-object p2, p0, Lo/el;->ˏ:Landroid/content/SharedPreferences;

    iput p1, p0, Lo/el;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/el;->ˋ:Z

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lo/el;->ˋ:Z

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-boolean p2, p0, Lo/el;->ˋ:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p1, "swc_mapping_"

    .line 10
    .line 11
    iget p4, p0, Lo/el;->Ͱ:I

    .line 12
    .line 13
    iget-object p5, p0, Lo/el;->ˏ:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lo/vl;->ή:[I

    .line 27
    .line 28
    aget p1, p1, p4

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    sget-object v0, Lo/vl;->ΰ:[Ljava/lang/String;

    .line 47
    .line 48
    aget-object v1, v0, p3

    .line 49
    .line 50
    const-string v2, "tts_custom"

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    sget-object p1, Lo/vl;->ή:[I

    .line 59
    .line 60
    aget p1, p1, p4

    .line 61
    .line 62
    iget-object p3, p0, Lo/el;->ͱ:Lo/vl;

    .line 63
    .line 64
    iget-object p3, p3, Lo/vl;->ˏ:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {p3}, Lo/ci;->ͳ(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-eqz p4, :cond_2

    .line 71
    .line 72
    const p4, 0x10302d2

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const p4, 0x10302d1

    .line 77
    .line 78
    .line 79
    :goto_1
    new-instance v0, Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-direct {v0, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "\u8f93\u5165\u8981\u64ad\u62a5\u7684\u6587\u5b57"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 90
    .line 91
    .line 92
    const/4 p2, 0x3

    .line 93
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "swc_tts_text_"

    .line 99
    .line 100
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const-string v1, ""

    .line 111
    .line 112
    invoke-interface {p5, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .line 135
    const/high16 v1, 0x41800000    # 16.0f

    .line 136
    .line 137
    mul-float/2addr p2, v1

    .line 138
    float-to-int p2, p2

    .line 139
    div-int/lit8 v1, p2, 0x2

    .line 140
    .line 141
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 145
    .line 146
    invoke-direct {p2, p3, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 147
    .line 148
    .line 149
    const-string p3, "\u81ea\u5b9a\u4e49\u64ad\u62a5\u6587\u5b57"

    .line 150
    .line 151
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    new-instance p3, Lo/ϒ;

    .line 160
    .line 161
    const/4 p4, 0x1

    .line 162
    invoke-direct {p3, v0, p5, p1, p4}, Lo/ϒ;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;II)V

    .line 163
    .line 164
    .line 165
    const-string p1, "\u786e\u5b9a"

    .line 166
    .line 167
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string p2, "\u53d6\u6d88"

    .line 172
    .line 173
    const/4 p3, 0x0

    .line 174
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    if-eqz p2, :cond_4

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const/16 p3, 0x7f0

    .line 193
    .line 194
    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    new-instance p5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object p1, Lo/vl;->ή:[I

    .line 211
    .line 212
    aget p1, p1, p4

    .line 213
    .line 214
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    aget-object p3, v0, p3

    .line 222
    .line 223
    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :goto_2
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
