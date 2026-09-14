.class public final Lo/ql;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lo/vl;


# direct methods
.method public constructor <init>(Lo/vl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ql;->ˋ:Lo/vl;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ql;->ˋ:Lo/vl;

    iget-object v0, v0, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance v1, Lo/pl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/pl;-><init>(Lo/ql;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/ql;->ˋ:Lo/vl;

    iget-object p1, p1, Lo/vl;->ͱ:Landroid/os/Handler;

    new-instance p2, Lo/pl;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lo/pl;-><init>(Lo/ql;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
