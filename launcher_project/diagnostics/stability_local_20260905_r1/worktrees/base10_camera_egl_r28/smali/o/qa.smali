.class public final synthetic Lo/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/ka;


# direct methods
.method public synthetic constructor <init>(Lo/ka;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/qa;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/qa;->ͱ:Lo/ka;

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
    .locals 3

    .line 1
    iget v0, p0, Lo/qa;->Ͱ:I

    .line 2
    .line 3
    const-string v1, "\u540e\u5907\u7bb1\u64cd\u4f5c\u5931\u8d25"

    .line 4
    .line 5
    iget-object v2, p0, Lo/qa;->ͱ:Lo/ka;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 14
    .line 15
    sget-object v1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->υ()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    iget-object v0, v2, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 24
    .line 25
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    iget-object v0, v2, Lo/ka;->ͱ:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/byd/launcher/NavBarService;

    .line 34
    .line 35
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/byd/launcher/NavBarService;->ϡ(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
