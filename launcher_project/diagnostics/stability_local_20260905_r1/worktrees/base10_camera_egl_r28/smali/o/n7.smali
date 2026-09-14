.class public Lo/n7;
.super Lo/q7;
.source "SourceFile"


# virtual methods
.method public final Ά()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final Έ()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "head cannot be removed"

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method
