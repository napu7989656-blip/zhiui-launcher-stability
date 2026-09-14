.class public final Lo/zg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/vg;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/zg;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/zg;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Lo/zg;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/zg;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Lo/u4;

    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lo/wg;

    .line 17
    .line 18
    invoke-direct {v0}, Lo/wg;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v0, v1}, Lo/a2;->ʹ(Ljava/lang/Object;Lo/z0;Lo/u4;)Lo/z0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lo/wg;->ͳ:Lo/z0;

    .line 26
    .line 27
    return-object v0

    .line 28
    :goto_0
    check-cast v1, Ljava/util/Iterator;

    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
