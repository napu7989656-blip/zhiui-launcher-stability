.class public final Lcom/k2fsa/sherpa/onnx/OfflineTts;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ˋ:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ:J

    return-void
.end method

.method private final native delete(J)V
.end method

.method private final native generateImpl(JLjava/lang/String;IF)[Ljava/lang/Object;
.end method

.method private final native getNumSpeakers(J)I
.end method

.method private final native getSampleRate(J)I
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;)J
.end method


# virtual methods
.method public final finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->delete(J)V

    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ:J

    :cond_0
    return-void
.end method

.method public final ˋ(ILjava/lang/String;F)Lcom/k2fsa/sherpa/onnx/GeneratedAudio;
    .locals 7

    .line 1
    const-string v0, "text"

    invoke-static {p2, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ:J

    move-object v1, p0

    move-object v4, p2

    move v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->generateImpl(JLjava/lang/String;IF)[Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p3, v0}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, [F

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lo/e6;->ͱ(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;-><init>([FI)V

    return-object p2
.end method

.method public final ˏ()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->getNumSpeakers(J)I

    move-result v0

    return v0
.end method

.method public final Ͱ()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTts;->ˋ:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineTts;->getSampleRate(J)I

    move-result v0

    return v0
.end method
