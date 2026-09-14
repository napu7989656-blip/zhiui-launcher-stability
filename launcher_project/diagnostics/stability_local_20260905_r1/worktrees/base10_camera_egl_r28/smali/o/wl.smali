.class public final synthetic Lo/wl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic ˋ:Lo/km;

.field public final synthetic ˏ:Lo/mm;

.field public final synthetic Ͱ:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lo/km;Lo/mm;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wl;->ˋ:Lo/km;

    iput-object p2, p0, Lo/wl;->ˏ:Lo/mm;

    iput-object p3, p0, Lo/wl;->Ͱ:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lo/wl;->ˋ:Lo/km;

    .line 2
    .line 3
    iget-boolean v0, p1, Lo/km;->ˏ:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lo/wl;->ˏ:Lo/mm;

    .line 9
    .line 10
    iget v0, v0, Lo/mm;->Ͱ:I

    .line 11
    .line 12
    const/16 v2, 0x63

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lo/km;->Ͱ:Lo/fm;

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
    iget-object p1, p1, Lo/vl;->ͷ:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lo/wl;->Ͱ:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return v1
.end method
