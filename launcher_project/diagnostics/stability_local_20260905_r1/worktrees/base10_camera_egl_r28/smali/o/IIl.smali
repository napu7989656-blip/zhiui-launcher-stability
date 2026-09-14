.class public final Lo/IIl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Ͱ:Lo/IIl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/IIl;

    invoke-direct {v0}, Lo/IIl;-><init>()V

    sput-object v0, Lo/IIl;->Ͱ:Lo/IIl;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    sget-object v0, Lo/IIl;->Ͱ:Lo/IIl;

    return-object v0
.end method
