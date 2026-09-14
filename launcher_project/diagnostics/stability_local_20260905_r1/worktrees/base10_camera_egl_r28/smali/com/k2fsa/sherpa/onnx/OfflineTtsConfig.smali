.class public final Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ˋ:Lo/fc;

.field public final ˏ:Ljava/lang/String;

.field public final Ͱ:Ljava/lang/String;

.field public final ͱ:I

.field public final Ͳ:F


# direct methods
.method public constructor <init>(Lo/fc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "ruleFsts"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    invoke-static {p3, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˋ:Lo/fc;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˏ:Ljava/lang/String;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͱ:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ͱ:I

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͳ:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    iget-object v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˋ:Lo/fc;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˋ:Lo/fc;

    invoke-static {v3, v1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˏ:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˏ:Ljava/lang/String;

    invoke-static {v1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͱ:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͱ:Ljava/lang/String;

    invoke-static {v1, v3}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ͱ:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ͱ:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͳ:F

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͳ:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˋ:Lo/fc;

    invoke-virtual {v0}, Lo/fc;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˏ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͱ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ͱ:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͳ:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineTtsConfig(model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˋ:Lo/fc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ruleFsts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ˏ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ruleFars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͱ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumSentences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ͱ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", silenceScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->Ͳ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
