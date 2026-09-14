.class public final Lo/f2;
.super Lo/ig;
.source "SourceFile"


# static fields
.field public static final ͱ:Lo/f2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/f2;

    invoke-direct {v0}, Lo/f2;-><init>()V

    sput-object v0, Lo/f2;->ͱ:Lo/f2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lo/bi;->ˏ:I

    sget v1, Lo/bi;->Ͱ:I

    sget-wide v2, Lo/bi;->ͱ:J

    invoke-direct {p0, v0, v1, v2, v3}, Lo/ig;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
