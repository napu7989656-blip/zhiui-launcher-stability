.class public final Lo/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/n2;
.implements Lo/m;


# static fields
.field public static final Ͱ:Lo/bc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/bc;

    invoke-direct {v0}, Lo/bc;-><init>()V

    sput-object v0, Lo/bc;->Ͱ:Lo/bc;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NonDisposableHandle"

    return-object v0
.end method

.method public final Ͳ(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
