.class public final Lo/Α;
.super Lo/rg;
.source "SourceFile"


# instance fields
.field public final ͳ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/rg;-><init>()V

    iput-object p1, p0, Lo/Α;->ͳ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendBuffered@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lo/a2;->ͼ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Α;->ͳ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Ό()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Ύ()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Α;->ͳ:Ljava/lang/Object;

    return-object v0
.end method

.method public final Ώ(Lo/v;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final ΐ()Lo/vh;
    .locals 1

    .line 1
    sget-object v0, Lo/a2;->ʹ:Lo/vh;

    return-object v0
.end method
