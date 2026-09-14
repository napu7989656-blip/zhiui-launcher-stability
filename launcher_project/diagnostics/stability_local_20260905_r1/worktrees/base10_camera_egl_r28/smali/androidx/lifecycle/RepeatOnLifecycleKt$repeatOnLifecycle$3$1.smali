.class final Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;
.super Lo/th;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/th;",
        "Lo/u4;"
    }
.end annotation

.annotation runtime Lo/z1;
    c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1"
    f = "RepeatOnLifecycle.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lo/s1;

.field final synthetic $block:Lo/u4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/u4;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/lifecycle/Lifecycle$State;

.field final synthetic $this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lo/s1;Lo/u4;Lo/z0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lo/s1;",
            "Lo/u4;",
            "Lo/z0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$$this$coroutineScope:Lo/s1;

    iput-object p4, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$block:Lo/u4;

    invoke-direct {p0, p5}, Lo/th;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lo/z0;)Lo/z0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/z0;",
            ")",
            "Lo/z0;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;

    iget-object v1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    iget-object v3, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$$this$coroutineScope:Lo/s1;

    iget-object v4, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$block:Lo/u4;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lo/s1;Lo/u4;Lo/z0;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo/s1;

    check-cast p2, Lo/z0;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->invoke(Lo/s1;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lo/s1;Lo/z0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/s1;",
            "Lo/z0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->create(Ljava/lang/Object;Lo/z0;)Lo/z0;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;

    sget-object p2, Lo/ui;->ˋ:Lo/ui;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 4
    .line 5
    iget v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->label:I

    .line 6
    .line 7
    sget-object v3, Lo/ui;->ˋ:Lo/ui;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v5, :cond_0

    .line 13
    .line 14
    iget-object v0, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$5:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lo/u4;

    .line 17
    .line 18
    iget-object v0, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$4:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lo/s1;

    .line 21
    .line 22
    iget-object v0, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$3:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/lifecycle/Lifecycle;

    .line 25
    .line 26
    iget-object v0, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    .line 29
    .line 30
    iget-object v0, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    check-cast v2, Lo/uf;

    .line 34
    .line 35
    iget-object v0, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lo/uf;

    .line 39
    .line 40
    :try_start_0
    invoke-static/range {p1 .. p1}, Lo/a2;->Ι(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    invoke-static/range {p1 .. p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 66
    .line 67
    if-ne v2, v6, :cond_2

    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_2
    new-instance v2, Lo/uf;

    .line 71
    .line 72
    invoke-direct {v2}, Lo/uf;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v6, Lo/uf;

    .line 76
    .line 77
    invoke-direct {v6}, Lo/uf;-><init>()V

    .line 78
    .line 79
    .line 80
    :try_start_1
    iget-object v7, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 81
    .line 82
    iget-object v15, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 83
    .line 84
    iget-object v10, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$$this$coroutineScope:Lo/s1;

    .line 85
    .line 86
    iget-object v14, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$block:Lo/u4;

    .line 87
    .line 88
    iput-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v6, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v7, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$2:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object v15, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$3:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v10, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$4:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v14, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->L$5:Ljava/lang/Object;

    .line 99
    .line 100
    iput v5, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->label:I

    .line 101
    .line 102
    new-instance v13, Lo/O00;

    .line 103
    .line 104
    invoke-static/range {p0 .. p0}, Lo/a2;->Ά(Lo/z0;)Lo/z0;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-direct {v13, v5, v8}, Lo/O00;-><init>(ILo/z0;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v13}, Lo/O00;->Ά()V

    .line 112
    .line 113
    .line 114
    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 115
    .line 116
    invoke-virtual {v5, v7}, Landroidx/lifecycle/Lifecycle$Event$Companion;->upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v5, v7}, Landroidx/lifecycle/Lifecycle$Event$Companion;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    new-instance v5, Lo/h9;

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    invoke-direct {v5, v7}, Lo/h9;-><init>(Z)V

    .line 128
    .line 129
    .line 130
    new-instance v12, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;

    .line 131
    .line 132
    move-object v7, v12

    .line 133
    move-object v9, v2

    .line 134
    move-object v4, v12

    .line 135
    move-object v12, v13

    .line 136
    move-object/from16 v16, v13

    .line 137
    .line 138
    move-object v13, v5

    .line 139
    invoke-direct/range {v7 .. v14}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Lo/uf;Lo/s1;Landroidx/lifecycle/Lifecycle$Event;Lo/OOO;Lo/b9;Lo/u4;)V

    .line 140
    .line 141
    .line 142
    iput-object v4, v6, Lo/uf;->Ͱ:Ljava/lang/Object;

    .line 143
    .line 144
    invoke-virtual {v15, v4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v16 .. v16}, Lo/O00;->ͽ()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    if-ne v4, v0, :cond_3

    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_3
    move-object v5, v2

    .line 155
    move-object v2, v6

    .line 156
    :goto_0
    iget-object v0, v5, Lo/uf;->Ͱ:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lo/l6;

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    invoke-interface {v0, v4}, Lo/l6;->ˋ(Ljava/util/concurrent/CancellationException;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    iget-object v0, v2, Lo/uf;->Ͱ:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    .line 169
    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    iget-object v2, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 173
    .line 174
    invoke-virtual {v2, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    return-object v3

    .line 178
    :catchall_1
    move-exception v0

    .line 179
    move-object v5, v2

    .line 180
    move-object v2, v6

    .line 181
    :goto_1
    iget-object v3, v5, Lo/uf;->Ͱ:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v3, Lo/l6;

    .line 184
    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    invoke-interface {v3, v4}, Lo/l6;->ˋ(Ljava/util/concurrent/CancellationException;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v2, v2, Lo/uf;->Ͱ:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v2, Landroidx/lifecycle/LifecycleEventObserver;

    .line 194
    .line 195
    if-eqz v2, :cond_7

    .line 196
    .line 197
    iget-object v3, v1, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->$this_repeatOnLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 198
    .line 199
    invoke-virtual {v3, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    throw v0
.end method
