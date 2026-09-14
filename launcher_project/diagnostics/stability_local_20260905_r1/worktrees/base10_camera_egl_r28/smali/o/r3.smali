.class public final Lo/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final Ͱ:Ljava/util/Iterator;

.field public ͱ:I

.field public Ͳ:Ljava/lang/Object;

.field public final synthetic ͳ:Lo/s3;


# direct methods
.method public constructor <init>(Lo/s3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/r3;->ͳ:Lo/s3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lo/s3;->ˋ:Lo/vg;

    .line 7
    .line 8
    invoke-interface {p1}, Lo/vg;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lo/r3;->Ͱ:Ljava/util/Iterator;

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lo/r3;->ͱ:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/r3;->ͱ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lo/r3;->ˋ()V

    :cond_0
    iget v0, p0, Lo/r3;->ͱ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo/r3;->ͱ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lo/r3;->ˋ()V

    :cond_0
    iget v0, p0, Lo/r3;->ͱ:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/r3;->Ͳ:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lo/r3;->Ͳ:Ljava/lang/Object;

    iput v1, p0, Lo/r3;->ͱ:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˋ()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lo/r3;->Ͱ:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lo/r3;->ͳ:Lo/s3;

    .line 14
    .line 15
    iget-object v2, v1, Lo/s3;->Ͱ:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-boolean v1, v1, Lo/s3;->ˏ:Z

    .line 28
    .line 29
    if-ne v2, v1, :cond_0

    .line 30
    .line 31
    iput-object v0, p0, Lo/r3;->Ͳ:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :goto_0
    iput v0, p0, Lo/r3;->ͱ:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method
