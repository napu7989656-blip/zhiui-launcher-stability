.class public final synthetic Lo/s9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public synthetic constructor <init>(Lcom/byd/launcher/NavBarService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/s9;->ˋ:Lcom/byd/launcher/NavBarService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/s9;->ˋ:Lcom/byd/launcher/NavBarService;

    .line 2
    .line 3
    iget v0, p1, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "func:empty"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/byd/launcher/NavBarService;->Ά(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/byd/launcher/NavBarService;->Τ()[Landroid/widget/ImageButton;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    aget-object v0, v1, v0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->ͻ(Landroid/widget/ImageButton;)V

    .line 19
    .line 20
    .line 21
    iget v0, p1, Lcom/byd/launcher/NavBarService;->lIl:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/byd/launcher/NavBarService;->ψ(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
