.class public final synthetic Lo/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic ˋ:Lo/d4;

.field public final synthetic ˏ:Lo/c4;


# direct methods
.method public synthetic constructor <init>(Lo/d4;Lo/c4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/b4;->ˋ:Lo/d4;

    iput-object p2, p0, Lo/b4;->ˏ:Lo/c4;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lo/b4;->ˋ:Lo/d4;

    .line 2
    .line 3
    iget-object p1, p1, Lo/d4;->ͱ:Lo/y3;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p1, Lo/v5;

    .line 8
    .line 9
    iget-object p1, p1, Lo/v5;->ˏ:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 12
    .line 13
    iget-object v0, p0, Lo/b4;->ˏ:Lo/c4;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method
