.class public final Lo/ch;
.super Lo/d7;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final ͱ:Lo/ch;

.field public static final Ͳ:Lo/ch;


# instance fields
.field public final synthetic Ͱ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/ch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ch;-><init>(I)V

    sput-object v0, Lo/ch;->ͱ:Lo/ch;

    new-instance v0, Lo/ch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/ch;-><init>(I)V

    sput-object v0, Lo/ch;->Ͳ:Lo/ch;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/ch;->Ͱ:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lo/d7;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lo/ch;->Ͱ:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :pswitch_0
    check-cast p1, Lo/i1;

    .line 9
    .line 10
    instance-of v0, p1, Lo/l3;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lo/l3;

    .line 16
    .line 17
    :cond_0
    return-object v1

    .line 18
    :pswitch_1
    check-cast p1, Lo/i1;

    .line 19
    .line 20
    instance-of v0, p1, Lo/n1;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move-object v1, p1

    .line 25
    check-cast v1, Lo/n1;

    .line 26
    .line 27
    :cond_1
    return-object v1

    .line 28
    :pswitch_2
    if-nez p1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :goto_1
    check-cast p1, Ljava/lang/Throwable;

    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
