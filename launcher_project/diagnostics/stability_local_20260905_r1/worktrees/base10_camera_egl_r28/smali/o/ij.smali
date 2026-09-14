.class public final synthetic Lo/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lo/mj;


# direct methods
.method public synthetic constructor <init>(Lo/mj;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ij;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ij;->ˏ:Lo/mj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget p1, p0, Lo/ij;->ˋ:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lo/ij;->ˏ:Lo/mj;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p1, v1, Lo/mj;->ˏ:Lo/oj;

    .line 11
    .line 12
    invoke-virtual {p1}, Lo/oj;->Γ()V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :goto_0
    iget-object p1, v1, Lo/mj;->ˏ:Lo/oj;

    .line 17
    .line 18
    invoke-virtual {p1}, Lo/oj;->Γ()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
