.class public final Lo/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:[I

.field public final synthetic ˏ:Ljava/lang/String;

.field public final synthetic Ͱ:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>([ILjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ve;->ˋ:[I

    iput-object p2, p0, Lo/ve;->ˏ:Ljava/lang/String;

    iput-object p3, p0, Lo/ve;->Ͱ:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/ve;->Ͱ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ve;->ˏ:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lo/ve;->ˋ:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Lo/ve;->Ͱ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
