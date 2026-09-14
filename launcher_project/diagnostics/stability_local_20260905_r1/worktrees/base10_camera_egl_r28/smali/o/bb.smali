.class public final Lo/bb;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic ˋ:Lcom/byd/launcher/NavBarService;


# direct methods
.method public constructor <init>(Lcom/byd/launcher/NavBarService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v0, Lo/ab;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lo/ab;-><init>(Lo/bb;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance p2, Lo/ab;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lo/ab;-><init>(Lo/bb;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/bb;->ˋ:Lcom/byd/launcher/NavBarService;

    iget-object p1, p1, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;

    new-instance v0, Lo/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ab;-><init>(Lo/bb;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
