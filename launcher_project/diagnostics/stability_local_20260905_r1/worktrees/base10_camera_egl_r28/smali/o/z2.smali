.class public final Lo/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/k1;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J

.field public static final Ͱ:Lo/z2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/z2;

    invoke-direct {v0}, Lo/z2;-><init>()V

    sput-object v0, Lo/z2;->Ͱ:Lo/z2;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo/z2;->Ͱ:Lo/z2;

    return-object v0
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lo/u4;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final get(Lo/j1;)Lo/i1;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final minusKey(Lo/j1;)Lo/k1;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final plus(Lo/k1;)Lo/k1;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
