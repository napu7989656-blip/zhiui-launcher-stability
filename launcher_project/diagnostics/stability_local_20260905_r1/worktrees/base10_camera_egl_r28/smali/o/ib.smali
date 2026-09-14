.class public final Lo/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byd/launcher/ipc/ICoreServiceCallback;


# instance fields
.field public final synthetic ˋ:I

.field public ˏ:I

.field public Ͱ:I

.field public ͱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo/ib;->ˋ:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lo/ib;->ͱ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 2
    iput p4, p0, Lo/ib;->ˋ:I

    iput-object p1, p0, Lo/ib;->ͱ:Ljava/lang/Object;

    iput p2, p0, Lo/ib;->ˏ:I

    iput p3, p0, Lo/ib;->Ͱ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/ib;->ˋ:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const-string v0, "Set temperature failed: "

    .line 8
    .line 9
    const-string v1, "NavBarSvc"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    const-string v0, "BYD screen on failed: "

    .line 16
    .line 17
    const-string v1, "VehicleCtrlMgr"

    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lo/v1;->ͽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget p1, p0, Lo/ib;->ˋ:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p1, p0, Lo/ib;->ͱ:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/byd/launcher/NavBarService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->ͳ:Lo/Ζ;

    .line 12
    .line 13
    iget v0, p0, Lo/ib;->ˏ:I

    .line 14
    .line 15
    iget v1, p0, Lo/ib;->Ͱ:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lo/Ζ;->ͱ(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lo/Ζ;->ͱ(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, v1}, Lo/Ζ;->Ͳ(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void

    .line 41
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "BYD screen on: restored IAL="

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lo/ib;->ˏ:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " backlight="

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v0, p0, Lo/ib;->Ͱ:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "VehicleCtrlMgr"

    .line 68
    .line 69
    invoke-static {v0, p1}, Lo/q3;->Ͳ(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
