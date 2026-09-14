.class public final Lo/l;
.super Lo/n6;
.source "SourceFile"


# instance fields
.field public final ʹ:Lo/O00;


# direct methods
.method public constructor <init>(Lo/O00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/n6;-><init>()V

    iput-object p1, p0, Lo/l;->ʹ:Lo/O00;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/l;->Ύ(Ljava/lang/Throwable;)V

    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

.method public final Ύ(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/o6;->Ό()Lo/s6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lo/l;->ʹ:Lo/O00;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lo/s6;->Ί()Ljava/util/concurrent/CancellationException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0}, Lo/O00;->Ί()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, v0, Lo/O00;->ͳ:Lo/z0;

    .line 23
    .line 24
    check-cast v1, Lo/j2;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lo/j2;->ͷ(Ljava/util/concurrent/CancellationException;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v0, p1}, Lo/O00;->ͺ(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lo/O00;->Ί()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lo/O00;->ͻ()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void
.end method
