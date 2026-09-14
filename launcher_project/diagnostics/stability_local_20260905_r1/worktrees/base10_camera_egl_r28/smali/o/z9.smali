.class public final synthetic Lo/z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/z9;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/z9;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p1, p0, Lo/z9;->ˋ:I

    .line 2
    .line 3
    iget-object p2, p0, Lo/z9;->ˏ:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p2, Lcom/byd/launcher/NavBarService;

    .line 10
    .line 11
    sget-object p1, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p2, p1}, Lcom/byd/launcher/NavBarService;->Ν(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :goto_0
    check-cast p2, Ljava/lang/Runnable;

    .line 19
    .line 20
    sget-object p1, Lo/nd;->χ:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
