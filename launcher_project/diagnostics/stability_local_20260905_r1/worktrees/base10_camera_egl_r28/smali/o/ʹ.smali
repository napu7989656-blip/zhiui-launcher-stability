.class public final Lo/ʹ;
.super Lo/lI;
.source "SourceFile"


# instance fields
.field public final Ͱ:Lo/Ͱ;

.field public final synthetic ͱ:Lo/ͻ;


# direct methods
.method public constructor <init>(Lo/ͻ;Lo/Ͱ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ʹ;->ͱ:Lo/ͻ;

    invoke-direct {p0}, Lo/lI;-><init>()V

    iput-object p2, p0, Lo/ʹ;->Ͱ:Lo/Ͱ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/ʹ;->ˋ(Ljava/lang/Throwable;)V

    sget-object p1, Lo/ui;->ˋ:Lo/ui;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveReceiveOnCancel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ʹ;->Ͱ:Lo/Ͱ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˋ(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/ʹ;->Ͱ:Lo/Ͱ;

    invoke-virtual {p1}, Lo/q7;->Έ()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/ʹ;->ͱ:Lo/ͻ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
