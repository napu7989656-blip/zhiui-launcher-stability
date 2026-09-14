.class public final Lo/pd;
.super Lo/ΐ;
.source "SourceFile"


# virtual methods
.method public final ˋ()Ljava/util/Random;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-string v1, "current()"

    invoke-static {v0, v1}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
