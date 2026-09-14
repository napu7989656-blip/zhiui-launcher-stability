.class public final synthetic Lo/nm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:Lo/pm;

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:Lo/mm;


# direct methods
.method public synthetic constructor <init>(Lo/pm;ZLo/mm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nm;->ˋ:Lo/pm;

    iput-boolean p2, p0, Lo/nm;->ˏ:Z

    iput-object p3, p0, Lo/nm;->Ͱ:Lo/mm;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/nm;->ˋ:Lo/pm;

    .line 2
    .line 3
    iget-object v0, v0, Lo/pm;->Ͱ:Lo/f8;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v1, p0, Lo/nm;->ˏ:Z

    .line 8
    .line 9
    iget-object v2, p0, Lo/nm;->Ͱ:Lo/mm;

    .line 10
    .line 11
    iget-object v3, v0, Lo/f8;->ˏ:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v4, v0, Lo/f8;->ͱ:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    check-cast v4, Lo/vl;

    .line 18
    .line 19
    iget-object p1, v4, Lo/vl;->Ͷ:Lo/km;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p1, p1, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ge p1, v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lo/mm;

    .line 43
    .line 44
    iget v1, v1, Lo/mm;->Ͱ:I

    .line 45
    .line 46
    iget v5, v2, Lo/mm;->Ͱ:I

    .line 47
    .line 48
    if-ne v1, v5, :cond_2

    .line 49
    .line 50
    iget-object v0, v4, Lo/vl;->Ͷ:Lo/km;

    .line 51
    .line 52
    if-ltz p1, :cond_0

    .line 53
    .line 54
    iget-object v1, v0, Lo/km;->ˋ:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ge p1, v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lo/vl;->Ο()V

    .line 73
    .line 74
    .line 75
    check-cast v3, Lo/pm;

    .line 76
    .line 77
    invoke-virtual {v4}, Lo/vl;->Ύ()Ljava/util/HashSet;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, v3, Lo/pm;->ˏ:Ljava/util/Set;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    check-cast v4, Lo/vl;

    .line 97
    .line 98
    sget-object v1, Lo/vl;->Χ:[Lo/ul;

    .line 99
    .line 100
    invoke-virtual {v4}, Lo/vl;->Ύ()Ljava/util/HashSet;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget v5, v2, Lo/mm;->Ͱ:I

    .line 105
    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    check-cast v3, Lo/pm;

    .line 117
    .line 118
    new-instance v1, Lo/Ϋ;

    .line 119
    .line 120
    const/16 v5, 0xc

    .line 121
    .line 122
    invoke-direct {v1, v0, v2, v5, v3}, Lo/Ϋ;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v4, p1, v1}, Lo/vl;->ˋ(Lo/vl;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_2
    return-void
.end method
