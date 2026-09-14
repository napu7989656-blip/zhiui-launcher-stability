.class public final Lo/c9;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/h9;

.field public final synthetic Ͳ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo/h9;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/c9;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/c9;->ͱ:Lo/h9;

    .line 4
    .line 5
    iput-object p2, p0, Lo/c9;->Ͳ:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lo/ui;->ˋ:Lo/ui;

    .line 2
    .line 3
    iget-object v1, p0, Lo/c9;->Ͳ:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lo/c9;->ͱ:Lo/h9;

    .line 6
    .line 7
    iget v3, p0, Lo/c9;->Ͱ:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 14
    .line 15
    packed-switch v3, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_1
    check-cast v1, Lo/d9;

    .line 20
    .line 21
    iget-object p1, v1, Lo/e9;->ͳ:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lo/h9;->ˏ(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :goto_0
    invoke-virtual {v2, v1}, Lo/h9;->ˏ(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-object v0

    .line 31
    :goto_2
    check-cast p1, Ljava/lang/Throwable;

    .line 32
    .line 33
    packed-switch v3, :pswitch_data_2

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :pswitch_2
    check-cast v1, Lo/d9;

    .line 38
    .line 39
    iget-object p1, v1, Lo/e9;->ͳ:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lo/h9;->ˏ(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :goto_3
    invoke-virtual {v2, v1}, Lo/h9;->ˏ(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_4
    return-object v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
