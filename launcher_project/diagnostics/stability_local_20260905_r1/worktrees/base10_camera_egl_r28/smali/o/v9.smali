.class public final synthetic Lo/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/byd/launcher/NavBarService;

.field public final synthetic Ͱ:I


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lo/v9;->ˋ:I

    .line 2
    .line 3
    iput-object p1, p0, Lo/v9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput p2, p0, Lo/v9;->Ͱ:I

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
    iget p1, p0, Lo/v9;->ˋ:I

    .line 2
    .line 3
    iget v0, p0, Lo/v9;->Ͱ:I

    .line 4
    .line 5
    iget-object v1, p0, Lo/v9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iput v0, v1, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/byd/launcher/NavBarService;->ή(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iput v0, v1, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/byd/launcher/NavBarService;->ή(I)V

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
