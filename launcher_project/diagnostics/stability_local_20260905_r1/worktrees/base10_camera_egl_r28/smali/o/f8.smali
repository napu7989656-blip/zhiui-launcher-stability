.class public final Lo/f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public final ˏ:Ljava/lang/Object;

.field public final Ͱ:Ljava/lang/Object;

.field public final ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lo/f8;->ˋ:I

    iput-object p1, p0, Lo/f8;->ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/f8;->Ͱ:Ljava/lang/Object;

    iput-object p4, p0, Lo/f8;->ˏ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lo/f8;->ˋ:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/f8;->Ͱ:Ljava/lang/Object;

    iput-object p2, p0, Lo/f8;->ˏ:Ljava/lang/Object;

    iput-object p3, p0, Lo/f8;->ͱ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lo/f8;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/f8;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    const-string v0, "syncWallpapersViaIpc listWallpapers error: "

    .line 10
    .line 11
    const-string v2, "MainActivity"

    .line 12
    .line 13
    invoke-static {v0, p1, v2}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget v0, p0, Lo/f8;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/f8;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lo/f8;->Ͱ:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v3, [Lorg/json/JSONArray;

    .line 13
    .line 14
    const-string v0, "files"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v3, v2

    .line 21
    .line 22
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    check-cast v3, [I

    .line 29
    .line 30
    const-string v0, "value"

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aput p1, v3, v2

    .line 38
    .line 39
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
