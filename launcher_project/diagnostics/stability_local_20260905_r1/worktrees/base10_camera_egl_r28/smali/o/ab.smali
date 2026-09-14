.class public final synthetic Lo/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/bb;


# direct methods
.method public synthetic constructor <init>(Lo/bb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/ab;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/ab;->ͱ:Lo/bb;

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
    iget v0, p0, Lo/ab;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/ab;->ͱ:Lo/bb;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 13
    .line 14
    iget-object v0, v1, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ω()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 24
    .line 25
    iget-object v0, v1, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ω()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 35
    .line 36
    iget-object v0, v1, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/byd/launcher/NavBarService;->ω()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
