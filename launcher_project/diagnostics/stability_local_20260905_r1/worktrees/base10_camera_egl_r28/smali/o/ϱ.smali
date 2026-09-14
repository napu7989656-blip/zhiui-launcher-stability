.class public final Lo/ϱ;
.super Lo/Ώ;
.source "SourceFile"


# static fields
.field public static final ͳ:[Ljava/lang/Object;


# instance fields
.field public Ͱ:I

.field public ͱ:[Ljava/lang/Object;

.field public Ͳ:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lo/ϱ;->ͳ:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/Ώ;-><init>()V

    sget-object v0, Lo/ϱ;->ͳ:[Ljava/lang/Object;

    iput-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    if-ltz p1, :cond_8

    if-gt p1, v0, :cond_8

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lo/ϱ;->ˋ(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "<this>"

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͱ(I)V

    iget p1, p0, Lo/ϱ;->Ͱ:I

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 5
    invoke-static {p1, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 6
    iput p1, p0, Lo/ϱ;->Ͱ:I

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 7
    iget p1, p0, Lo/ϱ;->Ͳ:I

    add-int/2addr p1, v1

    .line 8
    iput p1, p0, Lo/ϱ;->Ͳ:I

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͱ(I)V

    iget v0, p0, Lo/ϱ;->Ͱ:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    move-result v0

    .line 10
    iget v3, p0, Lo/ϱ;->Ͳ:I

    add-int/lit8 v4, v3, 0x1

    shr-int/2addr v4, v1

    const/4 v5, 0x0

    if-ge p1, v4, :cond_6

    if-nez v0, :cond_3

    .line 11
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 12
    invoke-static {p1, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 13
    iget p1, p0, Lo/ϱ;->Ͱ:I

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 15
    invoke-static {p1, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 16
    iget v2, p0, Lo/ϱ;->Ͱ:I

    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    if-lt v0, v2, :cond_5

    aget-object v4, v3, v2

    aput-object v4, v3, p1

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v3, v2, v4, v5}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v2, -0x1

    array-length v6, v3

    invoke-static {v3, v3, v4, v2, v6}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v3, v2

    sub-int/2addr v3, v1

    aget-object v4, v2, v5

    aput-object v4, v2, v3

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v5, v1, v3}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    aput-object p2, v2, v0

    iput p1, p0, Lo/ϱ;->Ͱ:I

    goto :goto_2

    :cond_6
    iget p1, p0, Lo/ϱ;->Ͱ:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lo/ϱ;->Ͳ(I)I

    move-result p1

    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    if-ge v0, p1, :cond_7

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, p1}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    invoke-static {v2, v2, v1, v5, p1}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v5

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, p1, v2, v0, v3}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 17
    :goto_2
    iget p1, p0, Lo/ϱ;->Ͳ:I

    add-int/2addr p1, v1

    .line 18
    iput p1, p0, Lo/ϱ;->Ͳ:I

    return-void

    .line 19
    :cond_8
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/ϱ;->ˋ(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    const-string v0, "elements"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    if-ltz p1, :cond_c

    if-gt p1, v0, :cond_c

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lo/ϱ;->Ͳ:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lo/ϱ;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lo/ϱ;->Ͱ(I)V

    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 5
    iget v2, p0, Lo/ϱ;->Ͳ:I

    add-int/2addr v0, v2

    .line 6
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    move-result v0

    iget v2, p0, Lo/ϱ;->Ͱ:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lo/ϱ;->Ͳ(I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 7
    iget v4, p0, Lo/ϱ;->Ͳ:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    .line 8
    iget p1, p0, Lo/ϱ;->Ͱ:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    iget-object v1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    invoke-static {v1, v1, v0, p1, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    invoke-static {v4, v4, v0, p1, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    invoke-static {v4, v4, v0, p1, v6}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    iget v4, p0, Lo/ϱ;->Ͱ:I

    add-int/2addr v4, v7

    invoke-static {p1, p1, v1, v4, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    if-lt v3, v2, :cond_5

    invoke-static {p1, p1, v4, v1, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    invoke-static {p1, p1, v4, v1, v3}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iput v0, p0, Lo/ϱ;->Ͱ:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_b

    .line 9
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v2, p1

    goto :goto_2

    :cond_6
    add-int p1, v2, v3

    if-ge v2, v0, :cond_9

    add-int/2addr v3, v0

    .line 10
    iget-object v4, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_7

    goto :goto_1

    :cond_7
    array-length v6, v4

    if-lt p1, v6, :cond_8

    array-length v1, v4

    sub-int/2addr p1, v1

    :goto_1
    invoke-static {v4, v4, p1, v2, v0}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_2

    :cond_8
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    invoke-static {v4, v4, v1, v3, v0}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    invoke-static {v4, v4, v3, v1, v0}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_a

    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_2

    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_b
    :goto_2
    invoke-virtual {p0, v2, p2}, Lo/ϱ;->ˏ(ILjava/util/Collection;)V

    return v5

    .line 11
    :cond_c
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    iget v0, p0, Lo/ϱ;->Ͳ:I

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lo/ϱ;->Ͱ(I)V

    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 14
    iget v1, p0, Lo/ϱ;->Ͳ:I

    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lo/ϱ;->ˏ(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final clear()V
    .locals 7

    .line 1
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 2
    .line 3
    iget v1, p0, Lo/ϱ;->Ͳ:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 11
    .line 12
    const-string v2, "<this>"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v5, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v5, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lo/ϱ;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    xor-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 36
    .line 37
    iget v5, p0, Lo/ϱ;->Ͱ:I

    .line 38
    .line 39
    array-length v6, v1

    .line 40
    invoke-static {v1, v5, v6, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v1, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v4, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    iput v4, p0, Lo/ϱ;->Ͱ:I

    .line 52
    .line 53
    iput v4, p0, Lo/ϱ;->Ͳ:I

    .line 54
    .line 55
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/ϱ;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    invoke-virtual {p0, v1}, Lo/ϱ;->Ͳ(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget-object p1, v0, p1

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "index: "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", size: "

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 2
    .line 3
    iget v1, p0, Lo/ϱ;->Ͳ:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 11
    .line 12
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-static {p1, v2}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    :goto_1
    iget p1, p0, Lo/ϱ;->Ͱ:I

    .line 27
    .line 28
    sub-int/2addr v1, p1

    .line 29
    return v1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-lt v1, v0, :cond_5

    .line 34
    .line 35
    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 36
    .line 37
    array-length v2, v2

    .line 38
    :goto_2
    if-ge v1, v2, :cond_3

    .line 39
    .line 40
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v3, v3, v1

    .line 43
    .line 44
    invoke-static {p1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    :goto_3
    if-ge v1, v0, :cond_5

    .line 56
    .line 57
    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 58
    .line 59
    aget-object v2, v2, v1

    .line 60
    .line 61
    invoke-static {p1, v2}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 68
    .line 69
    array-length p1, p1

    .line 70
    add-int/2addr v1, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    const/4 p1, -0x1

    .line 76
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 2
    .line 3
    iget v1, p0, Lo/ϱ;->Ͳ:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    if-gt v1, v0, :cond_5

    .line 17
    .line 18
    :goto_0
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    invoke-static {p1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    if-eq v0, v1, :cond_5

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-le v1, v0, :cond_5

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    :goto_1
    if-ge v2, v0, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 40
    .line 41
    aget-object v1, v1, v0

    .line 42
    .line 43
    invoke-static {p1, v1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 50
    .line 51
    array-length p1, p1

    .line 52
    add-int/2addr v0, p1

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 58
    .line 59
    const-string v1, "<this>"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    array-length v0, v0

    .line 65
    add-int/2addr v0, v2

    .line 66
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 67
    .line 68
    if-gt v1, v0, :cond_5

    .line 69
    .line 70
    :goto_2
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 71
    .line 72
    aget-object v3, v3, v0

    .line 73
    .line 74
    invoke-static {p1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    :goto_3
    iget p1, p0, Lo/ϱ;->Ͱ:I

    .line 81
    .line 82
    sub-int/2addr v0, p1

    .line 83
    return v0

    .line 84
    :cond_4
    if-eq v0, v1, :cond_5

    .line 85
    .line 86
    add-int/lit8 v0, v0, -0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    return v2
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/ϱ;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lo/Ώ;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lo/ϱ;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_a

    .line 12
    .line 13
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 27
    .line 28
    iget v3, p0, Lo/ϱ;->Ͳ:I

    .line 29
    .line 30
    add-int/2addr v0, v3

    .line 31
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v3, p0, Lo/ϱ;->Ͱ:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-ge v3, v0, :cond_4

    .line 39
    .line 40
    move v5, v3

    .line 41
    :goto_1
    if-ge v3, v0, :cond_3

    .line 42
    .line 43
    iget-object v6, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 44
    .line 45
    aget-object v6, v6, v3

    .line 46
    .line 47
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    xor-int/2addr v7, v2

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    iget-object v7, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 55
    .line 56
    add-int/lit8 v8, v5, 0x1

    .line 57
    .line 58
    aput-object v6, v7, v5

    .line 59
    .line 60
    move v5, v8

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v1, v2

    .line 63
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 67
    .line 68
    const-string v2, "<this>"

    .line 69
    .line 70
    invoke-static {p1, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_4
    iget-object v5, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 78
    .line 79
    array-length v5, v5

    .line 80
    move v7, v1

    .line 81
    move v6, v3

    .line 82
    :goto_3
    if-ge v3, v5, :cond_6

    .line 83
    .line 84
    iget-object v8, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 85
    .line 86
    aget-object v9, v8, v3

    .line 87
    .line 88
    aput-object v4, v8, v3

    .line 89
    .line 90
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    xor-int/2addr v8, v2

    .line 95
    if-eqz v8, :cond_5

    .line 96
    .line 97
    iget-object v8, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 98
    .line 99
    add-int/lit8 v10, v6, 0x1

    .line 100
    .line 101
    aput-object v9, v8, v6

    .line 102
    .line 103
    move v6, v10

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v7, v2

    .line 106
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    invoke-virtual {p0, v6}, Lo/ϱ;->Ͳ(I)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    move v5, v3

    .line 114
    :goto_5
    if-ge v1, v0, :cond_8

    .line 115
    .line 116
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 117
    .line 118
    aget-object v6, v3, v1

    .line 119
    .line 120
    aput-object v4, v3, v1

    .line 121
    .line 122
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    xor-int/2addr v3, v2

    .line 127
    if-eqz v3, :cond_7

    .line 128
    .line 129
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 130
    .line 131
    aput-object v6, v3, v5

    .line 132
    .line 133
    invoke-virtual {p0, v5}, Lo/ϱ;->ͱ(I)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    goto :goto_6

    .line 138
    :cond_7
    move v7, v2

    .line 139
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_8
    move v1, v7

    .line 143
    :goto_7
    if-eqz v1, :cond_a

    .line 144
    .line 145
    iget p1, p0, Lo/ϱ;->Ͱ:I

    .line 146
    .line 147
    sub-int/2addr v5, p1

    .line 148
    if-gez v5, :cond_9

    .line 149
    .line 150
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 151
    .line 152
    array-length p1, p1

    .line 153
    add-int/2addr v5, p1

    .line 154
    :cond_9
    iput v5, p0, Lo/ϱ;->Ͳ:I

    .line 155
    .line 156
    :cond_a
    :goto_8
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lo/ϱ;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_a

    .line 12
    .line 13
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 27
    .line 28
    iget v3, p0, Lo/ϱ;->Ͳ:I

    .line 29
    .line 30
    add-int/2addr v0, v3

    .line 31
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v3, p0, Lo/ϱ;->Ͱ:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-ge v3, v0, :cond_4

    .line 39
    .line 40
    move v5, v3

    .line 41
    :goto_1
    if-ge v3, v0, :cond_3

    .line 42
    .line 43
    iget-object v6, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 44
    .line 45
    aget-object v6, v6, v3

    .line 46
    .line 47
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    iget-object v7, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 54
    .line 55
    add-int/lit8 v8, v5, 0x1

    .line 56
    .line 57
    aput-object v6, v7, v5

    .line 58
    .line 59
    move v5, v8

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v1, v2

    .line 62
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 66
    .line 67
    const-string v2, "<this>"

    .line 68
    .line 69
    invoke-static {p1, v2}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_7

    .line 76
    :cond_4
    iget-object v5, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 77
    .line 78
    array-length v5, v5

    .line 79
    move v7, v1

    .line 80
    move v6, v3

    .line 81
    :goto_3
    if-ge v3, v5, :cond_6

    .line 82
    .line 83
    iget-object v8, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 84
    .line 85
    aget-object v9, v8, v3

    .line 86
    .line 87
    aput-object v4, v8, v3

    .line 88
    .line 89
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_5

    .line 94
    .line 95
    iget-object v8, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 96
    .line 97
    add-int/lit8 v10, v6, 0x1

    .line 98
    .line 99
    aput-object v9, v8, v6

    .line 100
    .line 101
    move v6, v10

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v7, v2

    .line 104
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    invoke-virtual {p0, v6}, Lo/ϱ;->Ͳ(I)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    move v5, v3

    .line 112
    :goto_5
    if-ge v1, v0, :cond_8

    .line 113
    .line 114
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 115
    .line 116
    aget-object v6, v3, v1

    .line 117
    .line 118
    aput-object v4, v3, v1

    .line 119
    .line 120
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    iget-object v3, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v6, v3, v5

    .line 129
    .line 130
    invoke-virtual {p0, v5}, Lo/ϱ;->ͱ(I)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move v7, v2

    .line 136
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_8
    move v1, v7

    .line 140
    :goto_7
    if-eqz v1, :cond_a

    .line 141
    .line 142
    iget p1, p0, Lo/ϱ;->Ͱ:I

    .line 143
    .line 144
    sub-int/2addr v5, p1

    .line 145
    if-gez v5, :cond_9

    .line 146
    .line 147
    iget-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 148
    .line 149
    array-length p1, p1

    .line 150
    add-int/2addr v5, p1

    .line 151
    :cond_9
    iput v5, p0, Lo/ϱ;->Ͳ:I

    .line 152
    .line 153
    :cond_a
    :goto_8
    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v1, v0, p1

    .line 17
    .line 18
    aput-object p2, v0, p1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "index: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", size: "

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lo/ϱ;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    const-string v0, "array"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    .line 3
    iget v1, p0, Lo/ϱ;->Ͳ:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>"

    invoke-static {p1, v0}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 5
    :goto_0
    iget v0, p0, Lo/ϱ;->Ͱ:I

    .line 6
    iget v1, p0, Lo/ϱ;->Ͳ:I

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͳ(I)I

    move-result v4

    iget v3, p0, Lo/ϱ;->Ͱ:I

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lo/ϲ;->Ξ([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo/ϱ;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    iget v1, p0, Lo/ϱ;->Ͱ:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lo/ϱ;->Ͱ:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v4}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    array-length v0, p1

    .line 8
    iget v1, p0, Lo/ϱ;->Ͳ:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    .line 9
    aput-object v0, p1, v1

    :cond_3
    return-object p1
.end method

.method public final ˋ(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lo/ϱ;->Ͳ:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lo/ϱ;->Ͱ(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 11
    .line 12
    iget v2, p0, Lo/ϱ;->Ͳ:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-virtual {p0, v1}, Lo/ϱ;->Ͳ(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aput-object p1, v0, v1

    .line 20
    .line 21
    iget p1, p0, Lo/ϱ;->Ͳ:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lo/ϱ;->Ͳ:I

    .line 26
    .line 27
    return-void
.end method

.method public final ˏ(ILjava/util/Collection;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    :goto_0
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v2, p1

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lo/ϱ;->Ͱ:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, p1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v2, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget p1, p0, Lo/ϱ;->Ͳ:I

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    add-int/2addr p2, p1

    .line 56
    iput p2, p0, Lo/ϱ;->Ͳ:I

    .line 57
    .line 58
    return-void
.end method

.method public final Ͱ(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v1, Lo/ϱ;->ͳ:[Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    move p1, v0

    .line 18
    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    array-length v1, v0

    .line 24
    shr-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    sub-int v2, v1, p1

    .line 28
    .line 29
    if-gez v2, :cond_3

    .line 30
    .line 31
    move v1, p1

    .line 32
    :cond_3
    const v2, 0x7ffffff7

    .line 33
    .line 34
    .line 35
    sub-int v3, v1, v2

    .line 36
    .line 37
    if-lez v3, :cond_5

    .line 38
    .line 39
    if-le p1, v2, :cond_4

    .line 40
    .line 41
    const v1, 0x7fffffff

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move v1, v2

    .line 46
    :cond_5
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    iget v1, p0, Lo/ϱ;->Ͱ:I

    .line 49
    .line 50
    array-length v2, v0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v0, p1, v3, v1, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 56
    .line 57
    array-length v1, v0

    .line 58
    iget v2, p0, Lo/ϱ;->Ͱ:I

    .line 59
    .line 60
    sub-int/2addr v1, v2

    .line 61
    invoke-static {v0, p1, v1, v3, v2}, Lo/ϲ;->Ν([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 62
    .line 63
    .line 64
    iput v3, p0, Lo/ϱ;->Ͱ:I

    .line 65
    .line 66
    iput-object p1, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v0, "Deque is too big."

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final ͱ(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v0, v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    :goto_0
    return p1
.end method

.method public final Ͳ(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ϱ;->ͱ:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v0, v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method
