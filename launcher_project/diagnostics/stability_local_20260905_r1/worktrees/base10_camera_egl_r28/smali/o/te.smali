.class public final Lo/te;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:[I

.field public final synthetic Ͱ:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([ILjava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/te;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/te;->ˏ:[I

    .line 4
    .line 5
    iput-object p2, p0, Lo/te;->Ͱ:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p1, p0, Lo/te;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/te;->Ͱ:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    iget v0, p0, Lo/te;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/te;->Ͱ:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lo/te;->ˏ:[I

    .line 7
    .line 8
    const/4 v4, -0x1

    .line 9
    const-string v5, "value"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aput p1, v3, v2

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_0
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    aput p1, v3, v2

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
