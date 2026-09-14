.class public abstract Lo/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static final ˋ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of v0, p0, Lo/eg;

    if-eqz v0, :cond_0

    check-cast p0, Lo/eg;

    iget-object p0, p0, Lo/eg;->Ͱ:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
