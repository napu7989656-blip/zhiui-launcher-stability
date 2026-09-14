.class public final synthetic Lo/me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/me;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/me;->ˏ:Ljava/lang/Object;

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
    iget p1, p0, Lo/me;->ˋ:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lo/me;->ˏ:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    check-cast v1, Lo/df;

    .line 11
    .line 12
    iget-object p1, v1, Lo/df;->Ͳ:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :goto_0
    check-cast v1, Lo/nd;

    .line 19
    .line 20
    sget-object p1, Lo/nd;->χ:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1}, Lo/nd;->Ή()V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
