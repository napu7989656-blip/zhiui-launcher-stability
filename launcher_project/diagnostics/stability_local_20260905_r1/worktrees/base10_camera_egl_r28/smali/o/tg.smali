.class public Lo/tg;
.super Lo/rg;
.source "SourceFile"


# instance fields
.field public final ʹ:Lo/OOO;

.field public final ͳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo/O00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/rg;-><init>()V

    iput-object p1, p0, Lo/tg;->ͳ:Ljava/lang/Object;

    iput-object p2, p0, Lo/tg;->ʹ:Lo/OOO;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x28

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lo/tg;->ͳ:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x29

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public final Ό()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/tg;->ʹ:Lo/OOO;

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

.method public final Ύ()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/tg;->ͳ:Ljava/lang/Object;

    return-object v0
.end method

.method public final Ώ(Lo/v;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lo/v;->ͳ:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lo/y;

    .line 6
    .line 7
    invoke-direct {p1}, Lo/y;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Lo/a2;->Ͷ(Ljava/lang/Throwable;)Lo/eg;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lo/tg;->ʹ:Lo/OOO;

    .line 15
    .line 16
    check-cast v0, Lo/O00;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lo/O00;->resumeWith(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final ΐ()Lo/vh;
    .locals 3

    .line 1
    sget-object v0, Lo/ui;->ˋ:Lo/ui;

    .line 2
    .line 3
    iget-object v1, p0, Lo/tg;->ʹ:Lo/OOO;

    .line 4
    .line 5
    check-cast v1, Lo/O00;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Lo/O00;->Α(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lo/vh;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    sget-object v0, Lo/a2;->ʹ:Lo/vh;

    .line 16
    .line 17
    return-object v0
.end method
