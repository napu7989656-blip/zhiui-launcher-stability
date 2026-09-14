.class public final Lo/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Z

.field public final synthetic Ͱ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(ILcom/byd/launcher/NavBarService;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/jb;->Ͱ:Lcom/byd/launcher/NavBarService;

    iput p1, p0, Lo/jb;->ˋ:I

    iput-boolean p3, p0, Lo/jb;->ˏ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Set defrost failed: "

    .line 2
    .line 3
    const-string v1, "NavBarSvc"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/jb;->Ͱ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    iget v0, p0, Lo/jb;->ˋ:I

    iget-boolean v1, p0, Lo/jb;->ˏ:Z

    invoke-virtual {p1, v0, v1}, Lo/Ζ;->ʹ(IZ)V

    return-void
.end method
