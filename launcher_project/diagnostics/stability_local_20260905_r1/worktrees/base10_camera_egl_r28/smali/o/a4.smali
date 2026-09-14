.class public final synthetic Lo/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:Lo/d4;

.field public final synthetic ˏ:Lo/z3;

.field public final synthetic Ͱ:I


# direct methods
.method public synthetic constructor <init>(Lo/d4;Lo/z3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/a4;->ˋ:Lo/d4;

    iput-object p2, p0, Lo/a4;->ˏ:Lo/z3;

    iput p3, p0, Lo/a4;->Ͱ:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/a4;->ˋ:Lo/d4;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/a4;->ˏ:Lo/z3;

    .line 7
    .line 8
    iget-boolean v1, v0, Lo/z3;->ͱ:Z

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput-boolean v1, v0, Lo/z3;->ͱ:Z

    .line 13
    .line 14
    iget v0, p0, Lo/a4;->Ͱ:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
