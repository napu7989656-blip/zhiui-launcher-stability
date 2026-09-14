.class public final synthetic Lo/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/NavBarService;

.field public final synthetic Ͳ:I


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lo/fa;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput p2, p0, Lo/fa;->Ͳ:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lo/fa;->Ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 9
    .line 10
    iget v1, p0, Lo/fa;->Ͳ:I

    .line 11
    .line 12
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ε()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ό(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_1
    iget-object v0, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 36
    .line 37
    iget v1, p0, Lo/fa;->Ͳ:I

    .line 38
    .line 39
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 44
    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_2
    iget-object v0, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 52
    .line 53
    iget v1, p0, Lo/fa;->Ͳ:I

    .line 54
    .line 55
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 56
    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Δ()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget v3, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ϋ:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iput-wide v2, v0, Lcom/byd/launcher/NavBarService;->ϐ:J

    .line 80
    .line 81
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 82
    .line 83
    new-instance v3, Lo/fa;

    .line 84
    .line 85
    const/4 v4, 0x5

    .line 86
    invoke-direct {v3, v0, v1, v4}, Lo/fa;-><init>(Lcom/byd/launcher/NavBarService;II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :pswitch_3
    iget-object v0, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 94
    .line 95
    iget v1, p0, Lo/fa;->Ͳ:I

    .line 96
    .line 97
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 98
    .line 99
    if-eq v1, v2, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Δ()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget v3, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 107
    .line 108
    if-eq v1, v3, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ϋ:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    iput-wide v2, v0, Lcom/byd/launcher/NavBarService;->ϐ:J

    .line 122
    .line 123
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 124
    .line 125
    new-instance v3, Lo/fa;

    .line 126
    .line 127
    const/4 v4, 0x4

    .line 128
    invoke-direct {v3, v0, v1, v4}, Lo/fa;-><init>(Lcom/byd/launcher/NavBarService;II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :pswitch_4
    iget-object v0, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 136
    .line 137
    iget v1, p0, Lo/fa;->Ͳ:I

    .line 138
    .line 139
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    if-eq v1, v2, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Δ()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    iget v4, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 150
    .line 151
    if-eq v1, v4, :cond_7

    .line 152
    .line 153
    :goto_2
    iput-boolean v3, v0, Lcom/byd/launcher/NavBarService;->ϓ:Z

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iput-object v2, v0, Lcom/byd/launcher/NavBarService;->ϋ:Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    iput-wide v4, v0, Lcom/byd/launcher/NavBarService;->ϐ:J

    .line 167
    .line 168
    iput-boolean v3, v0, Lcom/byd/launcher/NavBarService;->ϓ:Z

    .line 169
    .line 170
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 171
    .line 172
    new-instance v3, Lo/fa;

    .line 173
    .line 174
    const/4 v4, 0x3

    .line 175
    invoke-direct {v3, v0, v1, v4}, Lo/fa;-><init>(Lcom/byd/launcher/NavBarService;II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    .line 180
    .line 181
    :goto_3
    return-void

    .line 182
    :goto_4
    iget-object v0, p0, Lo/fa;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 183
    .line 184
    iget v1, p0, Lo/fa;->Ͳ:I

    .line 185
    .line 186
    iget-boolean v2, v0, Lcom/byd/launcher/NavBarService;->ˋ:Z

    .line 187
    .line 188
    if-nez v2, :cond_8

    .line 189
    .line 190
    iget v2, v0, Lcom/byd/launcher/NavBarService;->ϔ:I

    .line 191
    .line 192
    if-ne v1, v2, :cond_8

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->Ϫ()V

    .line 195
    .line 196
    .line 197
    iget-boolean v1, v0, Lcom/byd/launcher/NavBarService;->Ο:Z

    .line 198
    .line 199
    if-eqz v1, :cond_8

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ε()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->Ό(Z)V

    .line 206
    .line 207
    .line 208
    :cond_8
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
