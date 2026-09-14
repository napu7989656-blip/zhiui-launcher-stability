.class public final Lo/Ͷ;
.super Lo/o7;
.source "SourceFile"


# instance fields
.field public final synthetic ͱ:I

.field public final synthetic Ͳ:Lo/Β;


# direct methods
.method public synthetic constructor <init>(Lo/q7;Lo/Β;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/Ͷ;->ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/Ͷ;->Ͳ:Lo/Β;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lo/o7;-><init>(Lo/q7;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic Ͱ(Ljava/lang/Object;)Lo/vh;
    .locals 1

    .line 1
    iget v0, p0, Lo/Ͷ;->ͱ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lo/q7;

    .line 8
    .line 9
    invoke-virtual {p0}, Lo/Ͷ;->ͱ()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lo/vh;

    .line 14
    .line 15
    return-object p1

    .line 16
    :goto_0
    check-cast p1, Lo/q7;

    .line 17
    .line 18
    invoke-virtual {p0}, Lo/Ͷ;->ͱ()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lo/vh;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ͱ()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lo/a2;->ͺ:Lo/vh;

    .line 2
    .line 3
    iget v1, p0, Lo/Ͷ;->ͱ:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lo/Ͷ;->Ͳ:Lo/Β;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v3, Lo/ͻ;

    .line 13
    .line 14
    invoke-virtual {v3}, Lo/ͻ;->Ό()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move-object v0, v2

    .line 21
    :cond_0
    return-object v0

    .line 22
    :goto_0
    invoke-virtual {v3}, Lo/Β;->ͼ()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    move-object v0, v2

    .line 29
    :cond_1
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
