.class public final synthetic Lo/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Ͱ:I

.field public final synthetic ͱ:Lo/fb;


# direct methods
.method public synthetic constructor <init>(Lo/fb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/db;->Ͱ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/db;->ͱ:Lo/fb;

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
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lo/db;->Ͱ:I

    .line 3
    .line 4
    iget-object v2, p0, Lo/db;->ͱ:Lo/fb;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v1, v2, Lo/fb;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 11
    .line 12
    iget-object v3, v1, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Lo/a9;->ͺ()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v3, Lo/db;

    .line 22
    .line 23
    invoke-direct {v3, v2, v0}, Lo/db;-><init>(Lo/fb;I)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v4, 0x1f4

    .line 27
    .line 28
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :goto_0
    iget-object v1, v2, Lo/fb;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    invoke-virtual {v2}, Lo/a9;->ͷ()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v1, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;

    .line 42
    .line 43
    iget-object v2, v2, Lo/a9;->ͳ:Landroid/media/session/MediaController;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v0, v3

    .line 50
    :goto_1
    if-nez v0, :cond_4

    .line 51
    .line 52
    iput-boolean v3, v1, Lcom/byd/launcher/NavBarService;->ϵ:Z

    .line 53
    .line 54
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const-string v4, "\u7b49\u5f85\u64ad\u653e"

    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    invoke-virtual {v0, v2, v4, v5}, Lo/vl;->Ϊ(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->ͻ:Lo/vl;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lo/vl;->Ϋ(Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v1, v2}, Lcom/byd/launcher/NavBarService;->ϫ(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v1, Lcom/byd/launcher/NavBarService;->γ:Landroid/widget/ImageView;

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/16 v1, 0x8

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_2
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
