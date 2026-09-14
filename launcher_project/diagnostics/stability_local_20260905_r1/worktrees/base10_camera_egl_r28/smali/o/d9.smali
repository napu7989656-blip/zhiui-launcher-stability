.class public final Lo/d9;
.super Lo/e9;
.source "SourceFile"


# instance fields
.field public final Ͷ:Lo/OOO;

.field public final synthetic ͷ:Lo/h9;


# direct methods
.method public constructor <init>(Lo/h9;Lo/O00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/d9;->ͷ:Lo/h9;

    invoke-direct {p0}, Lo/e9;-><init>()V

    iput-object p2, p0, Lo/d9;->Ͷ:Lo/OOO;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockCont["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/e9;->ͳ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/d9;->Ͷ:Lo/OOO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/d9;->ͷ:Lo/h9;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Ό()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/d9;->Ͷ:Lo/OOO;

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

.method public final Ύ()Z
    .locals 5

    .line 1
    sget-object v0, Lo/e9;->ʹ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    sget-object v0, Lo/ui;->ˋ:Lo/ui;

    .line 13
    .line 14
    new-instance v3, Lo/c9;

    .line 15
    .line 16
    iget-object v4, p0, Lo/d9;->ͷ:Lo/h9;

    .line 17
    .line 18
    invoke-direct {v3, v4, p0, v1}, Lo/c9;-><init>(Lo/h9;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lo/d9;->Ͷ:Lo/OOO;

    .line 22
    .line 23
    check-cast v4, Lo/O00;

    .line 24
    .line 25
    invoke-virtual {v4, v0, v3}, Lo/O00;->Α(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lo/vh;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_1
    return v1
.end method
