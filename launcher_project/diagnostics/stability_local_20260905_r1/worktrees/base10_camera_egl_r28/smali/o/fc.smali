.class public final Lo/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ˋ:Lo/gc;

.field public final ˏ:Lo/ec;

.field public final Ͱ:Lo/dc;

.field public ͱ:I

.field public Ͳ:Z

.field public ͳ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    new-instance v9, Lo/gc;

    .line 2
    .line 3
    const-string v5, ""

    .line 4
    .line 5
    const v6, 0x3f2ac083    # 0.667f

    .line 6
    .line 7
    .line 8
    const v7, 0x3f4ccccd    # 0.8f

    .line 9
    .line 10
    .line 11
    const/high16 v8, 0x3f800000    # 1.0f

    .line 12
    .line 13
    move-object v0, v9

    .line 14
    move-object v1, v5

    .line 15
    move-object v2, v5

    .line 16
    move-object v3, v5

    .line 17
    move-object v4, v5

    .line 18
    invoke-direct/range {v0 .. v8}, Lo/gc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lo/ec;

    .line 22
    .line 23
    invoke-direct {v0}, Lo/ec;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lo/dc;

    .line 27
    .line 28
    invoke-direct {v1}, Lo/dc;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v9, p0, Lo/fc;->ˋ:Lo/gc;

    .line 35
    .line 36
    iput-object v0, p0, Lo/fc;->ˏ:Lo/ec;

    .line 37
    .line 38
    iput-object v1, p0, Lo/fc;->Ͱ:Lo/dc;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lo/fc;->ͱ:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/fc;->Ͳ:Z

    .line 45
    .line 46
    const-string v0, "cpu"

    .line 47
    .line 48
    iput-object v0, p0, Lo/fc;->ͳ:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/fc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo/fc;

    iget-object v1, p0, Lo/fc;->ˋ:Lo/gc;

    iget-object v3, p1, Lo/fc;->ˋ:Lo/gc;

    invoke-static {v1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lo/fc;->ˏ:Lo/ec;

    iget-object v3, p1, Lo/fc;->ˏ:Lo/ec;

    invoke-static {v1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lo/fc;->Ͱ:Lo/dc;

    iget-object v3, p1, Lo/fc;->Ͱ:Lo/dc;

    invoke-static {v1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lo/fc;->ͱ:I

    iget v3, p1, Lo/fc;->ͱ:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lo/fc;->Ͳ:Z

    iget-boolean v3, p1, Lo/fc;->Ͳ:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lo/fc;->ͳ:Ljava/lang/String;

    iget-object p1, p1, Lo/fc;->ͳ:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/fc;->ˋ:Lo/gc;

    invoke-virtual {v0}, Lo/gc;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/fc;->ˏ:Lo/ec;

    invoke-virtual {v1}, Lo/ec;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lo/fc;->Ͱ:Lo/dc;

    invoke-virtual {v0}, Lo/dc;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/fc;->ͱ:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lo/fc;->Ͳ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lo/fc;->ͳ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineTtsModelConfig(vits="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/fc;->ˋ:Lo/gc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matcha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/fc;->ˏ:Lo/ec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kokoro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/fc;->Ͱ:Lo/dc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/fc;->ͱ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/fc;->Ͳ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/fc;->ͳ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
