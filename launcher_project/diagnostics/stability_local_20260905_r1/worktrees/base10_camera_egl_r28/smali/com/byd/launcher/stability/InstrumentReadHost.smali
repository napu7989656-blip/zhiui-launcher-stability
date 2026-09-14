.class public final Lcom/byd/launcher/stability/InstrumentReadHost;
.super Ljava/lang/Object;
.implements Lcom/byd/launcher/stability/InstrumentReads$Host;
.field private final owner:Lo/ff;

.method public constructor <init>(Lo/ff;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    return-void
.end method

.method public root()Ljava/lang/Object;
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->ͳ:Landroid/view/View;
    return-object v0
.end method

.method public cached()I
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    iget v0, v0, Lo/ff;->Ι:I
    return v0
.end method

.method public delays()[I
    .locals 1
    sget-object v0, Lo/ff;->Τ:[I
    return-object v0
.end method

.method public commit(I)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    iput p1, v0, Lo/ff;->Ι:I
    return-void
.end method

.method public retryState(IZ)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    iput p1, v0, Lo/ff;->Κ:I
    iput-boolean p2, v0, Lo/ff;->Θ:Z
    return-void
.end method

.method public refresh()V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    invoke-virtual {v0}, Lo/ff;->ͽ()V
    return-void
.end method

.method public post(Ljava/lang/Runnable;J)Z
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    move-result v0
    return v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    iget-object v0, v0, Lo/ff;->Ͱ:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
.end method

.method public failed(Ljava/lang/RuntimeException;)V
    .locals 2
    const-string v0, "QuickSettingsMgr"
    const-string v1, "Instrument result or retry failed"
    invoke-static {v0, v1, p1}, Lo/q3;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    return-void
.end method

.method public usable(Ljava/lang/Object;)Z
    .locals 3
    iget-object v0, p0, Lcom/byd/launcher/stability/InstrumentReadHost;->owner:Lo/ff;
    if-eqz p1, :no
    invoke-static {v0}, Lcom/byd/launcher/stability/QuickSettingsLifetime;->isDisposed(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->ˋ:Landroid/content/Context;
    sget-object v2, Lcom/byd/launcher/NavBarService;->O0:Lcom/byd/launcher/NavBarService;
    if-ne v1, v2, :no
    iget-object v1, v0, Lo/ff;->ͳ:Landroid/view/View;
    if-eq p1, v1, :yes
    if-nez v1, :no
    iget-object v1, v0, Lo/ff;->Ώ:Landroid/view/View;
    if-ne p1, v1, :no
    :yes
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
