.class public final synthetic Lo/r9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/byd/launcher/NavBarService;

.field public final synthetic Ͱ:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;Landroid/widget/ImageButton;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/r9;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/r9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput-object p2, p0, Lo/r9;->Ͱ:Landroid/widget/ImageButton;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lo/r9;->ˋ:I

    .line 2
    .line 3
    iget-object v0, p0, Lo/r9;->Ͱ:Landroid/widget/ImageButton;

    .line 4
    .line 5
    iget-object v1, p0, Lo/r9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 12
    .line 13
    const-string p1, "seat_cool_l"

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/byd/launcher/NavBarService;->Ε(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 20
    .line 21
    const-string p1, "seat_heat_r"

    .line 22
    .line 23
    invoke-virtual {v1, v0, p1}, Lcom/byd/launcher/NavBarService;->Ε(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 28
    .line 29
    const-string p1, "seat_heat_l"

    .line 30
    .line 31
    invoke-virtual {v1, v0, p1}, Lcom/byd/launcher/NavBarService;->Ε(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_0
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 36
    .line 37
    const-string p1, "seat_cool_r"

    .line 38
    .line 39
    invoke-virtual {v1, v0, p1}, Lcom/byd/launcher/NavBarService;->Ε(Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
