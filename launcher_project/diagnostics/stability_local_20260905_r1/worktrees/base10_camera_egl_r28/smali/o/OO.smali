.class public final Lo/OO;
.super Lo/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo/u4;)V
    .locals 3

    .line 1
    sget-object v0, Lo/z2;->Ͱ:Lo/z2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {p0, p1, v0, v2, v1}, Lo/g;-><init>(Lo/u4;Lo/k1;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final ˏ(Lo/vd;Lo/z0;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lo/O0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lo/O0;

    .line 7
    .line 8
    iget v1, v0, Lo/O0;->ͳ:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lo/O0;->ͳ:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lo/O0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lo/O0;-><init>(Lo/OO;Lo/z0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lo/O0;->ͱ:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lo/t1;->Ͱ:Lo/t1;

    .line 28
    .line 29
    iget v2, v0, Lo/O0;->ͳ:I

    .line 30
    .line 31
    sget-object v3, Lo/ui;->ˋ:Lo/ui;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v4, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lo/O0;->Ͱ:Lo/vd;

    .line 39
    .line 40
    invoke-static {p2}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, Lo/a2;->Ι(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, v0, Lo/O0;->Ͱ:Lo/vd;

    .line 56
    .line 57
    iput v4, v0, Lo/O0;->ͳ:I

    .line 58
    .line 59
    iget-object p2, p0, Lo/g;->ͱ:Lo/u4;

    .line 60
    .line 61
    invoke-interface {p2, p1, v0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-ne p2, v1, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object p2, v3

    .line 69
    :goto_1
    if-ne p2, v1, :cond_4

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_4
    :goto_2
    check-cast p1, Lo/ud;

    .line 73
    .line 74
    invoke-virtual {p1}, Lo/ud;->ͳ()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    return-object v3

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method
