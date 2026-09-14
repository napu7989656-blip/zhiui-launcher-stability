.class public final Lo/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:Z

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/String;

.field public final synthetic Ͳ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iput-boolean p2, p0, Lo/mb;->ˋ:Z

    iput-boolean p3, p0, Lo/mb;->ˏ:Z

    iput p4, p0, Lo/mb;->Ͱ:I

    iput-object p5, p0, Lo/mb;->ͱ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/mb;->ˋ:Z

    const-string v1, "NavBarSvc"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/byd/launcher/NavBarService;->Ͽ:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Seat control not supported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/mb;->ͱ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/mb;->Ͱ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " query error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iget-boolean p1, p0, Lo/mb;->ˋ:Z

    const-string v1, "NavBarSvc"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    if-ltz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iput-boolean v4, p1, Lcom/byd/launcher/NavBarService;->Ͽ:Z

    iget-object p1, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iget-boolean p1, p1, Lcom/byd/launcher/NavBarService;->Ͽ:Z

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Seat control not supported (query returned "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-gez v0, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, v0, -0x1

    const/4 v4, 0x2

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-boolean v2, p0, Lo/mb;->ˏ:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lo/mb;->Ͱ:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iput p1, v2, Lcom/byd/launcher/NavBarService;->ϻ:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iput p1, v2, Lcom/byd/launcher/NavBarService;->ϼ:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lo/mb;->Ͱ:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iput p1, v2, Lcom/byd/launcher/NavBarService;->Ͻ:I

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iput p1, v2, Lcom/byd/launcher/NavBarService;->Ͼ:I

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/mb;->ͱ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " seat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/mb;->Ͱ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " internal="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/mb;->Ͳ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    iget v0, p0, Lo/mb;->Ͱ:I

    iget-boolean v1, p0, Lo/mb;->ˏ:Z

    new-instance v2, Lo/lb;

    invoke-direct {v2, p0, v0, v1}, Lo/lb;-><init>(Lo/mb;IZ)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
