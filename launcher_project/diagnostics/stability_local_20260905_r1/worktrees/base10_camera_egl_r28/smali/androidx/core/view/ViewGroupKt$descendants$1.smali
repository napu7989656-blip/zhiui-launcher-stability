.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lo/dg;
.source "SourceFile"

# interfaces
.implements Lo/u4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lo/vg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/dg;",
        "Lo/u4;"
    }
.end annotation

.annotation runtime Lo/z1;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/z0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/z0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lo/dg;-><init>(Lo/z0;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lo/z0;)Lo/z0;
    .locals 2
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
    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lo/z0;)V

    iput-object p1, v0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo/xg;

    check-cast p2, Lo/z0;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invoke(Lo/xg;Lo/z0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lo/xg;Lo/z0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/xg;",
            "Lo/z0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lo/z0;)Lo/z0;

    move-result-object p1

    check-cast p1, Landroidx/core/view/ViewGroupKt$descendants$1;

    sget-object p2, Lo/ui;->ˋ:Lo/ui;

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lo/t1;->Ͱ:Lo/t1;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 14
    .line 15
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Lo/xg;

    .line 24
    .line 25
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object p1, p0

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 40
    .line 41
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Landroid/view/View;

    .line 46
    .line 47
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v7, Lo/xg;

    .line 54
    .line 55
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object p1, p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {p1}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lo/xg;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v6, p0

    .line 75
    :goto_0
    if-ge v5, v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iput-object p1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object v7, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 86
    .line 87
    iput v5, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 88
    .line 89
    iput v4, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 90
    .line 91
    iput v3, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 92
    .line 93
    move-object v8, p1

    .line 94
    check-cast v8, Lo/wg;

    .line 95
    .line 96
    iput-object v7, v8, Lo/wg;->ͱ:Ljava/lang/Object;

    .line 97
    .line 98
    const/4 v9, 0x3

    .line 99
    iput v9, v8, Lo/wg;->Ͱ:I

    .line 100
    .line 101
    iput-object v6, v8, Lo/wg;->ͳ:Lo/z0;

    .line 102
    .line 103
    sget-object v8, Lo/t1;->Ͱ:Lo/t1;

    .line 104
    .line 105
    sget-object v8, Lo/t1;->Ͱ:Lo/t1;

    .line 106
    .line 107
    if-ne v8, v0, :cond_3

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_3
    move-object v10, v7

    .line 111
    move-object v7, p1

    .line 112
    move-object p1, v6

    .line 113
    move-object v6, v1

    .line 114
    move v1, v4

    .line 115
    move v4, v5

    .line 116
    move-object v5, v10

    .line 117
    :goto_1
    instance-of v8, v5, Landroid/view/ViewGroup;

    .line 118
    .line 119
    if-eqz v8, :cond_5

    .line 120
    .line 121
    check-cast v5, Landroid/view/ViewGroup;

    .line 122
    .line 123
    invoke-static {v5}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lo/vg;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iput-object v7, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v6, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    iput-object v8, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 133
    .line 134
    iput v4, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 135
    .line 136
    iput v1, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 137
    .line 138
    iput v2, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 139
    .line 140
    invoke-virtual {v7, v5, p1}, Lo/xg;->ˋ(Lo/vg;Lo/z0;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-ne v5, v0, :cond_4

    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_4
    move-object v5, v6

    .line 148
    move-object v6, v7

    .line 149
    :goto_2
    move-object v10, v6

    .line 150
    move-object v6, p1

    .line 151
    move-object p1, v10

    .line 152
    move-object v11, v5

    .line 153
    move v5, v1

    .line 154
    move-object v1, v11

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move v5, v1

    .line 157
    move-object v1, v6

    .line 158
    move-object v6, p1

    .line 159
    move-object p1, v7

    .line 160
    :goto_3
    add-int/2addr v4, v3

    .line 161
    move v10, v5

    .line 162
    move v5, v4

    .line 163
    move v4, v10

    .line 164
    goto :goto_0

    .line 165
    :cond_6
    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    .line 166
    .line 167
    return-object p1
.end method
