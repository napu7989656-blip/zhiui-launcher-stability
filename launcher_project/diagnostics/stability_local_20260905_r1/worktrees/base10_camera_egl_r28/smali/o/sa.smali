.class public final synthetic Lo/sa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/oa;

.field public final synthetic Ͳ:I


# direct methods
.method public synthetic constructor <init>(Lo/oa;II)V
    .locals 0

    .line 1
    iput p3, p0, Lo/sa;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/sa;->ͱ:Lo/oa;

    .line 4
    .line 5
    iput p2, p0, Lo/sa;->Ͳ:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lo/sa;->Ͱ:I

    .line 2
    .line 3
    iget v1, p0, Lo/sa;->Ͳ:I

    .line 4
    .line 5
    iget-object v2, p0, Lo/sa;->ͱ:Lo/oa;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ς(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :goto_0
    iget-object v0, v2, Lo/oa;->Ͱ:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ʹ:Lcom/byd/launcher/ipc/CoreServiceClient;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/byd/launcher/ipc/CoreServiceClient;->isConnected()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ς(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
