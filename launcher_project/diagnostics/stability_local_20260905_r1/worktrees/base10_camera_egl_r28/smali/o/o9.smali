.class public final synthetic Lo/o9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:I

.field public final synthetic ˏ:Lcom/byd/launcher/NavBarService;

.field public final synthetic Ͱ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/byd/launcher/NavBarService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/o9;->ˋ:I

    .line 2
    .line 3
    iput-object p2, p0, Lo/o9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 4
    .line 5
    iput-object p3, p0, Lo/o9;->Ͱ:Ljava/lang/String;

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
    .locals 3

    .line 1
    iget v0, p0, Lo/o9;->ˋ:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/o9;->Ͱ:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lo/o9;->ˏ:Lcom/byd/launcher/NavBarService;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    iget-boolean v0, v2, Lcom/byd/launcher/NavBarService;->lII:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2, p1, v1}, Lcom/byd/launcher/NavBarService;->ι(Landroid/view/View;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :goto_1
    iget-boolean v0, v2, Lcom/byd/launcher/NavBarService;->lII:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-virtual {v2, p1, v1}, Lcom/byd/launcher/NavBarService;->ι(Landroid/view/View;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_2
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
