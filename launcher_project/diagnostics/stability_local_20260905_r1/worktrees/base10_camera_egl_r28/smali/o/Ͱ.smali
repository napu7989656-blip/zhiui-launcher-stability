.class public Lo/Ͱ;
.super Lo/q7;
.source "SourceFile"

# interfaces
.implements Lo/rf;


# instance fields
.field public final ʹ:I

.field public final ͳ:Lo/OOO;


# direct methods
.method public constructor <init>(Lo/O00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/q7;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/Ͱ;->ͳ:Lo/OOO;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lo/Ͱ;->ʹ:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveElement@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Ͱ;->ʹ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˋ(Ljava/lang/Object;)Lo/vh;
    .locals 2

    .line 1
    iget v0, p0, Lo/Ͱ;->ʹ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lo/j;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lo/j;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lo/Ͱ;->Ό(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lo/Ͱ;->ͳ:Lo/OOO;

    .line 18
    .line 19
    check-cast v1, Lo/O00;

    .line 20
    .line 21
    invoke-virtual {v1, v0, p1}, Lo/O00;->Α(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lo/vh;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :cond_1
    sget-object p1, Lo/a2;->ʹ:Lo/vh;

    .line 30
    .line 31
    return-object p1
.end method

.method public final bridge synthetic Ͱ()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo/a2;->ˏ:Lo/vh;

    .line 2
    .line 3
    return-object v0
.end method

.method public final ͱ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Ͱ;->ͳ:Lo/OOO;

    .line 2
    .line 3
    check-cast v0, Lo/O00;

    .line 4
    .line 5
    iget v1, v0, Lo/l2;->Ͳ:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lo/O00;->ͼ(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public bridge synthetic Ό(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final Ύ(Lo/v;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/Ͱ;->ʹ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lo/v;->ͳ:Ljava/lang/Throwable;

    .line 7
    .line 8
    new-instance v0, Lo/h;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lo/h;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lo/j;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lo/j;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p1, Lo/v;->ͳ:Ljava/lang/Throwable;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lo/x;

    .line 24
    .line 25
    invoke-direct {p1}, Lo/x;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    iget-object v0, p0, Lo/Ͱ;->ͳ:Lo/OOO;

    .line 33
    .line 34
    check-cast v0, Lo/O00;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lo/O00;->resumeWith(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
