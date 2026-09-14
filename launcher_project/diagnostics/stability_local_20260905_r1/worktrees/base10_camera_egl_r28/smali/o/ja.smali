.class public final Lo/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:Ljava/lang/String;

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:Ljava/lang/String;

.field public final synthetic ͱ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ja;->ͱ:Lcom/byd/launcher/NavBarService;

    iput-object p2, p0, Lo/ja;->ˋ:Ljava/lang/String;

    iput-boolean p3, p0, Lo/ja;->ˏ:Z

    iput-object p4, p0, Lo/ja;->Ͱ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ja;->ˋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBarSvc"

    invoke-static {v0, p1}, Lo/q3;->ͷ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/ja;->ͱ:Lcom/byd/launcher/NavBarService;

    iget-object v0, p1, Lcom/byd/launcher/NavBarService;->ί:Ljava/util/HashMap;

    iget-boolean v1, p0, Lo/ja;->ˏ:Z

    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lo/ja;->Ͱ:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    if-eqz p1, :cond_0

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v3, v0}, Lo/vl;->ί(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lo/ja;->ˋ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OK -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lo/ja;->ˏ:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBarSvc"

    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
