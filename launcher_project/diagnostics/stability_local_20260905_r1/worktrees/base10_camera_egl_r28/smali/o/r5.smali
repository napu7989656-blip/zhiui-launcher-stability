.class public final Lo/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/s5;


# instance fields
.field public final Ͱ:Lo/ac;


# direct methods
.method public constructor <init>(Lo/ac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/r5;->Ͱ:Lo/ac;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˏ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final ͳ()Lo/ac;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r5;->Ͱ:Lo/ac;

    return-object v0
.end method
