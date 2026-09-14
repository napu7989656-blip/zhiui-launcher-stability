.class public final synthetic Lo/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lcom/byd/launcher/ipc/CoreServiceClient;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/ipc/CoreServiceClient;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/h1;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/h1;->ͱ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo/h1;->Ͱ:I

    iget-object v1, p0, Lo/h1;->ͱ:Lcom/byd/launcher/ipc/CoreServiceClient;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->ͼ(Lcom/byd/launcher/ipc/CoreServiceClient;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->Ή(Lcom/byd/launcher/ipc/CoreServiceClient;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->Ί(Lcom/byd/launcher/ipc/CoreServiceClient;)V

    return-void

    :pswitch_3
    invoke-static {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->Ό(Lcom/byd/launcher/ipc/CoreServiceClient;)V

    return-void

    :pswitch_4
    invoke-static {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->ˏ(Lcom/byd/launcher/ipc/CoreServiceClient;)V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/byd/launcher/ipc/CoreServiceClient;->ͽ(Lcom/byd/launcher/ipc/CoreServiceClient;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
