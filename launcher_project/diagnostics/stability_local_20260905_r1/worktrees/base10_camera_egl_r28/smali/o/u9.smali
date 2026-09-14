.class public final synthetic Lo/u9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lo/u9;->Ͱ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/u9;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lo/u9;->Ͱ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/u9;->ͱ:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    check-cast v1, Lcom/byd/launcher/NavBarService;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    iget v0, v1, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "func:"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, v0, p1}, Lcom/byd/launcher/NavBarService;->Ά(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget p1, v1, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/byd/launcher/NavBarService;->ψ(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :goto_1
    check-cast v1, Lo/pb;

    .line 42
    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, v1, Lo/pb;->ͱ:Lcom/byd/launcher/NavBarService;

    .line 46
    .line 47
    iget v1, v0, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 48
    .line 49
    if-gez v1, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "app:"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, v1, p1}, Lcom/byd/launcher/NavBarService;->Ά(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p1, v0, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/byd/launcher/NavBarService;->ψ(I)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
