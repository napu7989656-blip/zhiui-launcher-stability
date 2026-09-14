.class public final Lo/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/k1;
.implements Ljava/io/Serializable;


# instance fields
.field public final Ͱ:Lo/k1;

.field public final ͱ:Lo/i1;


# direct methods
.method public constructor <init>(Lo/i1;Lo/k1;)V
    .locals 1

    .line 1
    const-string v0, "left"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/k0;->Ͱ:Lo/k1;

    iput-object p1, p0, Lo/k0;->ͱ:Lo/i1;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo/k0;->Ͱ()I

    move-result v0

    new-array v1, v0, [Lo/k1;

    new-instance v2, Lo/tf;

    invoke-direct {v2}, Lo/tf;-><init>()V

    sget-object v3, Lo/ui;->ˋ:Lo/ui;

    new-instance v4, Lo/j0;

    invoke-direct {v4, v1, v2}, Lo/j0;-><init>([Lo/k1;Lo/tf;)V

    invoke-virtual {p0, v3, v4}, Lo/k0;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    iget v2, v2, Lo/tf;->Ͱ:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lo/h0;

    invoke-direct {v0, v1}, Lo/h0;-><init>([Lo/k1;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-eq p0, p1, :cond_2

    .line 2
    .line 3
    instance-of v0, p1, Lo/k0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    check-cast p1, Lo/k0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lo/k0;->Ͱ()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lo/k0;->Ͱ()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v0, v2, :cond_3

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    :goto_0
    iget-object v2, v0, Lo/k0;->ͱ:Lo/i1;

    .line 22
    .line 23
    invoke-interface {v2}, Lo/i1;->getKey()Lo/j1;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1, v3}, Lo/k0;->get(Lo/j1;)Lo/i1;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, v2}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    move p1, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, v0, Lo/k0;->Ͱ:Lo/k1;

    .line 40
    .line 41
    instance-of v2, v0, Lo/k0;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    check-cast v0, Lo/k0;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 49
    .line 50
    invoke-static {v0, v2}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v0, Lo/i1;

    .line 54
    .line 55
    invoke-interface {v0}, Lo/i1;->getKey()Lo/j1;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Lo/k0;->get(Lo/j1;)Lo/i1;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v0}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    :goto_1
    if-eqz p1, :cond_3

    .line 68
    .line 69
    :cond_2
    const/4 v1, 0x1

    .line 70
    :cond_3
    return v1
.end method

.method public final fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/k0;->Ͱ:Lo/k1;

    invoke-interface {v0, p1, p2}, Lo/k1;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/k0;->ͱ:Lo/i1;

    invoke-interface {p2, p1, v0}, Lo/u4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lo/j1;)Lo/i1;
    .locals 2

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lo/k0;->ͱ:Lo/i1;

    invoke-interface {v1, p1}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lo/k0;->Ͱ:Lo/k1;

    instance-of v1, v0, Lo/k0;

    if-eqz v1, :cond_1

    check-cast v0, Lo/k0;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/k0;->Ͱ:Lo/k1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/k0;->ͱ:Lo/i1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final minusKey(Lo/j1;)Lo/k1;
    .locals 3

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/k0;->ͱ:Lo/i1;

    invoke-interface {v0, p1}, Lo/k1;->get(Lo/j1;)Lo/i1;

    move-result-object v1

    iget-object v2, p0, Lo/k0;->Ͱ:Lo/k1;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lo/k1;->minusKey(Lo/j1;)Lo/k1;

    move-result-object p1

    if-ne p1, v2, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v1, Lo/z2;->Ͱ:Lo/z2;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lo/k0;

    invoke-direct {v1, v0, p1}, Lo/k0;-><init>(Lo/i1;Lo/k1;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final plus(Lo/k1;)Lo/k1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/a2;->Ό(Lo/k1;Lo/k1;)Lo/k1;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/i0;->ͱ:Lo/i0;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lo/k0;->fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Ͱ()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Lo/k0;->Ͱ:Lo/k1;

    instance-of v2, v1, Lo/k0;

    if-eqz v2, :cond_0

    check-cast v1, Lo/k0;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
