.class public final Lo/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ʹ:Lo/nd;

.field public final synthetic ˋ:[[Ljava/lang/String;

.field public final synthetic ˏ:I

.field public final synthetic Ͱ:[Z

.field public final synthetic ͱ:Landroid/widget/GridLayout;

.field public final synthetic Ͳ:I

.field public final synthetic ͳ:I


# direct methods
.method public constructor <init>(Lo/nd;[[Ljava/lang/String;I[ZLandroid/widget/GridLayout;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/fd;->ʹ:Lo/nd;

    iput-object p2, p0, Lo/fd;->ˋ:[[Ljava/lang/String;

    iput p3, p0, Lo/fd;->ˏ:I

    iput-object p4, p0, Lo/fd;->Ͱ:[Z

    iput-object p5, p0, Lo/fd;->ͱ:Landroid/widget/GridLayout;

    iput p6, p0, Lo/fd;->Ͳ:I

    iput p7, p0, Lo/fd;->ͳ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/fd;->ˋ:[[Ljava/lang/String;

    iget v0, p0, Lo/fd;->ˏ:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-void
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lo/fd;->ʹ:Lo/nd;

    iget-object v0, v0, Lo/nd;->ͱ:Landroid/os/Handler;

    iget-object v4, p0, Lo/fd;->ˋ:[[Ljava/lang/String;

    iget v5, p0, Lo/fd;->ˏ:I

    iget-object v6, p0, Lo/fd;->Ͱ:[Z

    iget-object v7, p0, Lo/fd;->ͱ:Landroid/widget/GridLayout;

    iget v8, p0, Lo/fd;->Ͳ:I

    iget v9, p0, Lo/fd;->ͳ:I

    new-instance v10, Lo/ed;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lo/ed;-><init>(Lo/fd;Lorg/json/JSONObject;[[Ljava/lang/String;I[ZLandroid/widget/GridLayout;II)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
