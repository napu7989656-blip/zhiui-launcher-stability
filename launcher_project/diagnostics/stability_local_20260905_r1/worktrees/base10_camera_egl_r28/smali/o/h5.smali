.class public final Lo/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/vg;


# instance fields
.field public final synthetic ˋ:I

.field public final ˏ:Lkotlin/jvm/functions/Function1;

.field public final Ͱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/ah;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/h5;->ˋ:I

    const-string v0, "getNextValue"

    .line 2
    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/h5;->Ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/h5;->ˏ:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lo/vg;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/h5;->ˋ:I

    const-string v0, "transformer"

    .line 1
    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/h5;->Ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/h5;->ˏ:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lo/h5;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lo/g5;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lo/g5;-><init>(Lo/h5;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :goto_0
    new-instance v0, Lo/ji;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lo/ji;-><init>(Lo/h5;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
